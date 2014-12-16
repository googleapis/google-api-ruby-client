# Encoding: utf-8
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

RSpec.describe Google::APIClient::Gzip do

  def create_connection(&block)
    Faraday.new do |b|
      b.response :charset
      b.response :gzip
      b.adapter :test do |stub|
        stub.get '/', &block
      end
    end
  end  

  it 'should ignore non-zipped content' do
    conn = create_connection do |env|
      [200, {}, 'Hello world']
    end
    result = conn.get('/')
    expect(result.body).to eq("Hello world")
  end

  it 'should decompress gziped content' do
    conn = create_connection do |env|
      [200, { 'Content-Encoding' => 'gzip'}, Base64.decode64('H4sICLVGwlEAA3RtcADzSM3JyVcozy/KSeECANXgObcMAAAA')]
    end
    result = conn.get('/')
    expect(result.body).to eq("Hello world\n")
  end
  
  it 'should inflate with the correct charset encoding' do
    conn = create_connection do |env|
      [200, 
        { 'Content-Encoding' => 'deflate', 'Content-Type' => 'application/json;charset=BIG5'}, 
        Base64.decode64('eJxb8nLp7t2VAA8fBCI=')]
    end
    result = conn.get('/')
    expect(result.body.encoding).to eq(Encoding::BIG5)
    expect(result.body).to eq('日本語'.encode("BIG5"))
  end

  describe 'with API Client' do

    before do
      @client = Google::APIClient.new(:application_name => 'test')
      @client.authorization = nil
    end
    
    
    it 'should send gzip in user agent' do
      conn = create_connection do |env|
        agent = env[:request_headers]['User-Agent']
        expect(agent).not_to be_nil
        expect(agent).to include 'gzip'
        [200, {}, 'Hello world']
      end
      @client.execute(:uri => 'http://www.example.com/', :connection => conn)
    end

    it 'should send gzip in accept-encoding' do
      conn = create_connection do |env|
        encoding = env[:request_headers]['Accept-Encoding']
        expect(encoding).not_to be_nil
        expect(encoding).to include 'gzip'
        [200, {}, 'Hello world']
      end
      @client.execute(:uri => 'http://www.example.com/', :connection => conn)
    end
    
    it 'should not send gzip in accept-encoding if disabled for request' do
      conn = create_connection do |env|
        encoding = env[:request_headers]['Accept-Encoding']
        expect(encoding).not_to include('gzip') unless encoding.nil?
        [200, {}, 'Hello world']
      end
      response = @client.execute(:uri => 'http://www.example.com/', :gzip => false, :connection => conn)
      puts response.status
    end
    
  end
end
