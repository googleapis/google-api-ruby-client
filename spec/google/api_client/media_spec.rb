# Copyright 2012 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'

require 'google/api_client'
require 'google/api_client/version'

fixtures_path = File.expand_path('../../../fixtures', __FILE__)

describe Google::APIClient::UploadIO do
  it 'rejects invalid file paths' do
    expect(lambda do
      media = Google::APIClient::UploadIO.new('doesnotexist', 'text/plain')
    end).to raise_error
  end

  describe 'with a file' do
    before do
      @file = File.expand_path('files/sample.txt', fixtures_path)
      @media = Google::APIClient::UploadIO.new(@file, 'text/plain')
    end

    it 'reports the correct file length' do
      expect(@media.length).to eq(File.size(@file))
    end

    it 'has a mime type' do
      expect(@media.content_type).to eq('text/plain')
    end
  end

  describe 'with StringIO' do
    before do
      @content = "hello world"
      @media = Google::APIClient::UploadIO.new(StringIO.new(@content), 'text/plain', 'test.txt')
    end

    it 'reports the correct file length' do
      expect(@media.length).to eq(@content.length)
    end

    it 'has a mime type' do
      expect(@media.content_type).to eq('text/plain')
    end
  end
end

describe Google::APIClient::RangedIO do
  before do
    @source = StringIO.new("1234567890abcdef")
    @io = Google::APIClient::RangedIO.new(@source, 1, 5)
  end

  it 'returns the correct range when read entirely' do
    expect(@io.read).to eq("23456")
  end

  it 'maintains position' do
    expect(@io.read(1)).to eq('2')
    expect(@io.read(2)).to eq('34')
    expect(@io.read(2)).to eq('56')
  end

  it 'allows rewinds' do
    expect(@io.read(2)).to eq('23')
    @io.rewind()
    expect(@io.read(2)).to eq('23')
  end

  it 'allows setting position' do
    @io.pos = 3
    expect(@io.read).to eq('56')
  end

  it 'does not allow position to be set beyond range' do
    @io.pos = 10
    expect(@io.read).to eq('')
  end

  it 'returns empty string when read amount is zero' do
    expect(@io.read(0)).to eq('')
  end

  it 'returns empty string at EOF if amount is nil' do
    @io.read
    expect(@io.read).to eq('')
  end

  it 'returns nil at EOF if amount is positive int' do
    @io.read
    expect(@io.read(1)).to be_nil
  end
end

describe Google::APIClient::ResumableUpload do
  CLIENT = Google::APIClient.new(:application_name => 'API Client Tests') unless defined?(CLIENT)

  after do
    # Reset client to not-quite-pristine state
    CLIENT.key = nil
    CLIENT.user_ip = nil
  end

  before do
    @drive = CLIENT.discovered_api('drive', 'v1')
    @file = File.expand_path('files/sample.txt', fixtures_path)
    @media = Google::APIClient::UploadIO.new(@file, 'text/plain')
    @uploader = Google::APIClient::ResumableUpload.new(
      :media => @media,
      :api_method => @drive.files.insert,
      :uri => 'https://www.googleapis.com/upload/drive/v1/files/12345')
  end

  it 'considers 20x status as complete' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(200))
    expect(@uploader.complete?).to be_true
  end

  it 'considers 30x status as incomplete' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(308))
    expect(@uploader.complete?).to be_false
    expect(@uploader.expired?).to be_false
  end

  it 'considers 40x status as fatal' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(404))
    expect(@uploader.expired?).to be_true
  end

  it 'detects changes to location' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(308, 'location' => 'https://www.googleapis.com/upload/drive/v1/files/abcdef'))
    expect(@uploader.uri.to_s).to eq('https://www.googleapis.com/upload/drive/v1/files/abcdef')
  end

  it 'resumes from the saved range reported by the server' do
    @uploader.chunk_size = 200
    @uploader.to_http_request # Send bytes 0-199, only 0-99 saved
    @uploader.process_http_response(mock_result(308, 'range' => '0-99'))
    method, url, headers, body = @uploader.to_http_request # Send bytes 100-299
    expect(headers['Content-Range']).to eq("bytes 100-299/#{@media.length}")
    expect(headers['Content-length']).to eq("200")
  end

  it 'resyncs the offset after 5xx errors' do
    @uploader.chunk_size = 200
    @uploader.to_http_request
    @uploader.process_http_response(mock_result(500)) # Invalidates range
    method, url, headers, body = @uploader.to_http_request # Resync
    expect(headers['Content-Range']).to eq("bytes */#{@media.length}")
    expect(headers['Content-length']).to eq("0")
    @uploader.process_http_response(mock_result(308, 'range' => '0-99'))
    method, url, headers, body = @uploader.to_http_request # Send next chunk at correct range
    expect(headers['Content-Range']).to eq("bytes 100-299/#{@media.length}")
    expect(headers['Content-length']).to eq("200")
  end

  def mock_result(status, headers = {})
    reference = Google::APIClient::Reference.new(:api_method => @drive.files.insert)
    double('result', :status => status, :headers => headers, :reference => reference)
  end
end
