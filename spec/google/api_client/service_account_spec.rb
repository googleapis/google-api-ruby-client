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

fixtures_path = File.expand_path('../../../fixtures', __FILE__)

describe Google::APIClient::KeyUtils do  
  it 'should read PKCS12 files from the filesystem' do
    pending "Reading from PKCS12 not supported on jruby" if RUBY_PLATFORM == 'java'
    path =  File.expand_path('files/privatekey.p12', fixtures_path)
    key = Google::APIClient::KeyUtils.load_from_pkcs12(path, 'notasecret')
    key.should_not == nil
  end

  it 'should read PKCS12 files from loaded files' do
    pending "Reading from PKCS12 not supported on jruby" if RUBY_PLATFORM == 'java'
    path =  File.expand_path('files/privatekey.p12', fixtures_path)
    content = File.read(path)
    key = Google::APIClient::KeyUtils.load_from_pkcs12(content, 'notasecret')
    key.should_not == nil
  end

  it 'should read PEM files from the filesystem' do
    path =  File.expand_path('files/secret.pem', fixtures_path)
    key = Google::APIClient::KeyUtils.load_from_pem(path, 'notasecret')
    key.should_not == nil
  end

  it 'should read PEM files from loaded files' do
    path =  File.expand_path('files/secret.pem', fixtures_path)
    content = File.read(path)
    key = Google::APIClient::KeyUtils.load_from_pem(content, 'notasecret')
    key.should_not == nil
  end

end

describe Google::APIClient::JWTAsserter do
  include ConnectionHelpers

  before do
    @key = OpenSSL::PKey::RSA.new 2048
  end

  it 'should generate valid JWTs' do
    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    jwt = asserter.to_authorization.to_jwt
    jwt.should_not == nil

    claim = JWT.decode(jwt, @key.public_key, true)
    claim["iss"].should == 'client1'
    claim["scope"].should == 'scope1 scope2'
  end

  it 'should allow impersonation' do
    conn = stub_connection do |stub|
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
    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    auth = asserter.authorize('user1@email.com', { :connection => conn })
    auth.should_not == nil?
    auth.person.should == 'user1@email.com'
    conn.verify
  end

  it 'should send valid access token request' do
    conn = stub_connection do |stub|
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
    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    auth = asserter.authorize(nil, { :connection => conn })
    auth.should_not == nil?
    auth.access_token.should == "1/abcdef1234567890"
    conn.verify
  end
  
  it 'should be refreshable' do
    conn = stub_connection do |stub|
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
      stub.post('/o/oauth2/token') do |env|
        params = Addressable::URI.form_unencode(env[:body])
        JWT.decode(params.assoc("assertion").last, @key.public_key)
        params.assoc("grant_type").should == ['grant_type','urn:ietf:params:oauth:grant-type:jwt-bearer']
        [200, {}, '{
          "access_token" : "1/0987654321fedcba",
          "token_type" : "Bearer",
          "expires_in" : 3600
        }']
      end
    end
    asserter = Google::APIClient::JWTAsserter.new('client1', 'scope1 scope2', @key)
    auth = asserter.authorize(nil, { :connection => conn })
    auth.should_not == nil?
    auth.access_token.should == "1/abcdef1234567890"
    
    auth.fetch_access_token!(:connection => conn)
    auth.access_token.should == "1/0987654321fedcba"
    
    conn.verify
  end    
end

describe Google::APIClient::ComputeServiceAccount do
  include ConnectionHelpers

  it 'should query metadata server' do
    conn = stub_connection do |stub|
      stub.get('/computeMetadata/v1beta1/instance/service-accounts/default/token') do |env|
        env.url.host.should == 'metadata'
        [200, {}, '{
          "access_token" : "1/abcdef1234567890",
          "token_type" : "Bearer",
          "expires_in" : 3600
        }']
      end
    end
    service_account = Google::APIClient::ComputeServiceAccount.new
    auth = service_account.fetch_access_token!({ :connection => conn })
    auth.should_not == nil?
    auth["access_token"].should == "1/abcdef1234567890"
    conn.verify
  end
end
