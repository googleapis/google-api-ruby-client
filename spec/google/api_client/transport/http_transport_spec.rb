# Copyright 2010 Google Inc.
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

require 'net/http'
require 'net/https'
require 'google/api_client/transport/http_transport'

def assemble_body_string(body)
  body_string = ""
  body.each do |chunk|
    body_string += chunk
  end
  return body_string
end

describe Google::APIClient::HTTPTransport, 'in the default configuration' do
  before do
    @http = Google::APIClient::HTTPTransport.new
  end

  it 'should build a valid GET request' do
    method, uri, headers, body =
      @http.build_request(:get, "http://www.example.com/")
    body_string = assemble_body_string(body)
    method.should == "GET"
    uri.should === "http://www.example.com/"
    headers.keys.should_not include("Content-Length")
    body_string.should == ""
  end

  it 'should build a valid POST request' do
    method, uri, headers, body = @http.build_request(
      :post, "http://www.example.com/", :body => "A body."
    )
    body_string = assemble_body_string(body)
    method.should == "POST"
    uri.should === "http://www.example.com/"
    headers["Content-Length"].should == "7"
    body_string.should == "A body."
  end

  it 'should build a valid PUT request' do
    method, uri, headers, body = @http.build_request(
      :put, "http://www.example.com/", :body => "A body."
    )
    body_string = assemble_body_string(body)
    method.should == "PUT"
    uri.should === "http://www.example.com/"
    headers["Content-Length"].should == "7"
    body_string.should == "A body."
  end

  it 'should build a valid DELETE request' do
    method, uri, headers, body =
      @http.build_request(:delete, "http://www.example.com/")
    body_string = assemble_body_string(body)
    method.should == "DELETE"
    uri.should === "http://www.example.com/"
    headers.keys.should_not include("Content-Length")
    body_string.should == ""
  end

  it 'should not build a BOGUS request' do
    (lambda do
      @http.build_request(:bogus, "http://www.example.com/")
    end).should raise_error(ArgumentError)
  end
end

describe Google::APIClient::HTTPTransport,
    'with a certificate store and connection pool' do
  before do
    @http = Google::APIClient::HTTPTransport.new(
      :cert_store => OpenSSL::X509::Store.new,
      :connection_pool => {
        "http://www.example.com" => Net::HTTP.new("www.example.com", 80)
      }
    )
  end

  it 'should have the correct certificate store' do
    # TODO(bobaman) Write a real test
    @http.cert_store.should_not == nil
  end

  it 'should have the correct connection pool' do
    @http.connection_pool.keys.should include("http://www.example.com")
  end
end
