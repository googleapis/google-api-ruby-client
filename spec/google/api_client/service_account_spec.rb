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

describe Google::APIClient::JWTAsserter do

  before do
    @key = OpenSSL::PKey::RSA.new 2048
  end

  it 'should generate valid JWTs' do
    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    jwt = asserter.to_jwt
    jwt.should_not == nil

    claim = JWT.decode(jwt, @key.public_key, true)
    claim["iss"].should == 'client1'
    claim["scope"].should == 'scope1 scope2'
  end

  it 'should send valid access token request' do
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.post('/o/oauth2/token') do |env|
        params = Addressable::URI.form_unencode(env[:body])
        JWT.decode(params.assoc("assertion").last, @key.public_key)
        params.assoc("grant_type").should == ['grant_type','urn:ietf:params:oauth:grant-type:jwt-bearer']
        [200, {}, '{
          "access_token" : "1/abcdef1234567890",
          "token_type" : "Bearer",
          "expires_in" : 3600
        }']
      end
    end
    connection = Faraday.new(:url => 'https://accounts.google.com') do |builder|
      builder.adapter(:test, stubs)
    end

    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    auth = asserter.authorize(nil, { :connection => connection})
    auth.should_not == nil?
    auth.access_token.should == "1/abcdef1234567890"
  end
end

