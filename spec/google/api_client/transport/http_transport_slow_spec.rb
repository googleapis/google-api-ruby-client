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

class AlwaysFail
  def initialize(*args)
    raise IOError, "This would never work."
  end
end

Google::APIClient::HTTPTransport::METHOD_MAPPING[:fail] = AlwaysFail

describe Google::APIClient::HTTPTransport, 'in the default configuration' do
  before do
    @http = Google::APIClient::HTTPTransport.new
  end

  it 'should send a GET request' do
    request = @http.build_request(:get, "http://www.google.com/")
    response = @http.send_request(request)
    status, headers, body = response
    status.should >= 100
    body.size.should > 0
    headers.size.should > 0
  end

  it 'should send a GET request using SSL' do
    request = @http.build_request(:get, "https://www.google.com/")
    response = @http.send_request(request)
    status, headers, body = response
    status.should >= 100
    body.size.should > 0
    headers.size.should > 0
  end

  it 'should send a POST request' do
    request = @http.build_request(
      :post, "http://www.google.com/", :body => "A Body."
    )
    response = @http.send_request(request)
    status, headers, body = response
    status.should >= 100
    body.size.should > 0
    headers.size.should > 0
  end

  it 'should send a PUT request' do
    request = @http.build_request(
      :put, "http://www.google.com/", :body => "A Body."
    )
    response = @http.send_request(request)
    status, headers, body = response
    status.should >= 100
    body.size.should > 0
    headers.size.should > 0
  end

  it 'should send a DELETE request' do
    request = @http.build_request(:delete, "http://www.google.com/")
    response = @http.send_request(request)
    status, headers, body = response
    status.should >= 100
    body.size.should > 0
    headers.size.should > 0
  end

  it 'should fail to send a FAIL request' do
    (lambda do
      request = @http.build_request(:fail, "http://www.google.com/")
      response = @http.send_request(request)
    end).should raise_error(IOError)
  end

  it 'should fail to send a BOGUS request' do
    (lambda do
      response = @http.send_request(
        ["BOGUS", "http://www.google.com/", {}, [""]]
      )
    end).should raise_error(ArgumentError)
  end

  it 'should fail to connect to a non-addressable URI' do
    (lambda do
      request = @http.build_request(:get, "bogus://www.google.com/")
      response = @http.send_request(request)
    end).should raise_error(ArgumentError)
  end
end
