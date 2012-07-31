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

gem 'faraday', '~> 0.8.1'
require 'faraday'
require 'faraday/utils'

gem 'signet', '~> 0.4.0'
require 'signet/oauth_1/client'

require 'google/api_client'
require 'google/api_client/version'

shared_examples_for 'configurable user agent' do
  it 'should allow the user agent to be modified' do
    client.user_agent = 'Custom User Agent/1.2.3'
    client.user_agent.should == 'Custom User Agent/1.2.3'
  end

  it 'should allow the user agent to be set to nil' do
    client.user_agent = nil
    client.user_agent.should == nil
  end

  it 'should not allow the user agent to be used with bogus values' do
    (lambda do
      client.user_agent = 42
      client.transmit(
        ['GET', 'http://www.google.com/', [], []]
      )
    end).should raise_error(TypeError)
  end

  it 'should transmit a User-Agent header when sending requests' do
    client.user_agent = 'Custom User Agent/1.2.3'
    request = Faraday::Request.new(:get) do |req|
      req.url('http://www.google.com/')
    end
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/') do |env|
        headers = env[:request_headers]
        headers.should have_key('User-Agent')
        headers['User-Agent'].should == client.user_agent
        [200, {}, ['']]
      end
    end
    connection = Faraday.new(:url => 'https://www.google.com') do |builder|
      builder.adapter(:test, stubs)
    end
    client.transmit(:request => request, :connection => connection)
    stubs.verify_stubbed_calls
  end
end

describe Google::APIClient do
  let(:client) { Google::APIClient.new }

  it 'should make its version number available' do
    Google::APIClient::VERSION::STRING.should be_instance_of(String)
  end

  it 'should default to OAuth 2' do
    Signet::OAuth2::Client.should === client.authorization
  end

  it_should_behave_like 'configurable user agent'

  describe 'configured for OAuth 1' do
    before do
      client.authorization = :oauth_1
    end

    it 'should use the default OAuth1 client configuration' do
      client.authorization.temporary_credential_uri.to_s.should ==
        'https://www.google.com/accounts/OAuthGetRequestToken'
      client.authorization.authorization_uri.to_s.should include(
        'https://www.google.com/accounts/OAuthAuthorizeToken'
      )
      client.authorization.token_credential_uri.to_s.should ==
        'https://www.google.com/accounts/OAuthGetAccessToken'
      client.authorization.client_credential_key.should == 'anonymous'
      client.authorization.client_credential_secret.should == 'anonymous'
    end

    it_should_behave_like 'configurable user agent'
  end

  describe 'configured for OAuth 2' do
    before do
      client.authorization = :oauth_2
    end

    # TODO
    it_should_behave_like 'configurable user agent'
  end
  
  describe 'when executing requests' do
    before do
      client.authorization = :oauth_2
      @connection = Faraday.new(:url => 'https://www.googleapis.com') do |builder|
        stubs = Faraday::Adapter::Test::Stubs.new do |stub|
          stub.get('/test') do |env|
            env[:request_headers]['Authorization'].should == 'Bearer 12345'
          end
        end
        builder.adapter(:test, stubs)
      end
    end
     
    it 'should use default authorization' do
      client.authorization.access_token = "12345"
      client.execute(:http_method => :get, 
                      :uri => 'https://www.googleapis.com/test',
                      :connection => @connection)
    end

    it 'should use request scoped authorization when provided' do
      client.authorization.access_token = "abcdef"
      new_auth = Signet::OAuth2::Client.new(:access_token => '12345')
      client.execute(:http_method => :get, 
                      :uri => 'https://www.googleapis.com/test',
                      :connection => @connection,
                      :authorization => new_auth)
    end
  end  
end
