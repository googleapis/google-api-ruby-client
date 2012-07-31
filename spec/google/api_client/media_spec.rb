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
  it 'should reject invalid file paths' do
    (lambda do
      media = Google::APIClient::UploadIO.new('doesnotexist', 'text/plain')
    end).should raise_error
  end

  describe 'with a file' do
    before do
      @file = File.expand_path('files/sample.txt', fixtures_path)
      @media = Google::APIClient::UploadIO.new(@file, 'text/plain')
    end

    it 'should report the correct file length' do
      @media.length.should == File.size(@file)
    end

    it 'should have a mime type' do
      @media.content_type.should == 'text/plain'
    end
  end

  describe 'with StringIO' do
    before do
      @content = "hello world"
      @media = Google::APIClient::UploadIO.new(StringIO.new(@content), 'text/plain', 'test.txt')
    end

    it 'should report the correct file length' do
      @media.length.should == @content.length
    end

    it 'should have a mime type' do
      @media.content_type.should == 'text/plain'
    end
  end
end

describe Google::APIClient::ResumableUpload do
  CLIENT ||= Google::APIClient.new

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
      mock_result(308),
      @media,
      'https://www.googleapis.com/upload/drive/v1/files/12345')
  end

  it 'should consider 20x status as complete' do
    api_client = stub('api', :execute => mock_result(200))
    @uploader.send_chunk(api_client)
    @uploader.complete?.should == true
  end

  it 'should consider 30x status as incomplete' do
    api_client = stub('api', :execute => mock_result(308))
    @uploader.send_chunk(api_client)
    @uploader.complete?.should == false
    @uploader.expired?.should == false
  end

  it 'should consider 40x status as fatal' do
    api_client = stub('api', :execute => mock_result(404))
    @uploader.send_chunk(api_client)
    @uploader.expired?.should == true
  end

  it 'should detect changes to location' do
    api_client = stub('api', :execute => mock_result(308, 'location' => 'https://www.googleapis.com/upload/drive/v1/files/abcdef'))
    @uploader.send_chunk(api_client)
    @uploader.location.should == 'https://www.googleapis.com/upload/drive/v1/files/abcdef'
  end

  it 'should resume from the saved range reported by the server' do
    api_client = mock('api')
    api_client.should_receive(:execute).and_return(mock_result(308, 'range' => '0-99'))
    api_client.should_receive(:execute).with(
      hash_including(:headers => hash_including(
        "Content-Range" => "bytes 100-299/#{@media.length}",
        "Content-Length" => "200"
      ))).and_return(mock_result(308))

    @uploader.chunk_size = 200
    @uploader.send_chunk(api_client) # Send bytes 0-199, only 0-99 saved
    @uploader.send_chunk(api_client) # Send bytes 100-299
  end

  it 'should resync the offset after 5xx errors' do
    api_client = mock('api')
    api_client.should_receive(:execute).and_return(mock_result(500))
    api_client.should_receive(:execute).with(
      hash_including(:headers => hash_including(
        "Content-Range" => "bytes */#{@media.length}",
        "Content-Length" => "0"
      ))).and_return(mock_result(308, 'range' => '0-99'))
    api_client.should_receive(:execute).with(
      hash_including(:headers => hash_including(
        "Content-Range" => "bytes 100-299/#{@media.length}",
        "Content-Length" => "200"
      ))).and_return(mock_result(308))

    @uploader.chunk_size = 200
    @uploader.send_chunk(api_client) # 500, invalidate
    @uploader.send_chunk(api_client) # Just resyncs, doesn't actually upload
    @uploader.send_chunk(api_client) # Send next chunk at correct range
  end

  def mock_result(status, headers = {})
    reference = Google::APIClient::Reference.new(:api_method => @drive.files.insert)
    stub('result', :status => status, :headers => headers, :reference => reference)
  end

end
