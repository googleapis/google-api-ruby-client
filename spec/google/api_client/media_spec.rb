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

describe Google::APIClient::RangedIO do
  before do
    @source = StringIO.new("1234567890abcdef")
    @io = Google::APIClient::RangedIO.new(@source, 1, 5)
  end
  
  it 'should return the correct range when read entirely' do
    @io.read.should == "23456"
  end
  
  it 'should maintain position' do
    @io.read(1).should == '2'
    @io.read(2).should == '34'
    @io.read(2).should == '56'
  end
  
  it 'should allow rewinds' do
    @io.read(2).should == '23'
    @io.rewind()
    @io.read(2).should == '23'
  end
  
  it 'should allow setting position' do
    @io.pos = 3
    @io.read.should == '56'
  end
  
  it 'should not allow position to be set beyond range' do
    @io.pos = 10
    @io.read.should == ''
  end
  
  it 'should return empty string when read amount is zero' do
    @io.read(0).should == ''
  end
  
  it 'should return empty string at EOF if amount is nil' do
    @io.read
    @io.read.should == ''
  end
  
  it 'should return nil at EOF if amount is positive int' do
    @io.read
    @io.read(1).should == nil
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

  it 'should consider 20x status as complete' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(200))
    @uploader.complete?.should == true
  end

  it 'should consider 30x status as incomplete' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(308))
    @uploader.complete?.should == false
    @uploader.expired?.should == false
  end

  it 'should consider 40x status as fatal' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(404))
    @uploader.expired?.should == true
  end

  it 'should detect changes to location' do
    request = @uploader.to_http_request
    @uploader.process_http_response(mock_result(308, 'location' => 'https://www.googleapis.com/upload/drive/v1/files/abcdef'))
    @uploader.uri.to_s.should == 'https://www.googleapis.com/upload/drive/v1/files/abcdef'
  end

  it 'should resume from the saved range reported by the server' do    
    @uploader.chunk_size = 200
    @uploader.to_http_request # Send bytes 0-199, only 0-99 saved
    @uploader.process_http_response(mock_result(308, 'range' => '0-99'))
    method, url, headers, body = @uploader.to_http_request # Send bytes 100-299
    headers['Content-Range'].should == "bytes 100-299/#{@media.length}"
    headers['Content-length'].should == "200"
  end

  it 'should resync the offset after 5xx errors' do
    @uploader.chunk_size = 200
    @uploader.to_http_request
    @uploader.process_http_response(mock_result(500)) # Invalidates range
    method, url, headers, body = @uploader.to_http_request # Resync
    headers['Content-Range'].should == "bytes */#{@media.length}"
    headers['Content-length'].should == "0"
    @uploader.process_http_response(mock_result(308, 'range' => '0-99'))
    method, url, headers, body = @uploader.to_http_request # Send next chunk at correct range
    headers['Content-Range'].should == "bytes 100-299/#{@media.length}"
    headers['Content-length'].should == "200"
  end

  def mock_result(status, headers = {})
    reference = Google::APIClient::Reference.new(:api_method => @drive.files.insert)
    double('result', :status => status, :headers => headers, :reference => reference)
  end

end
