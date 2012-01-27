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

gem 'faraday', '~> 0.7.0'
require 'faraday'
require 'faraday/utils'
require 'multi_json'

gem 'signet', '~> 0.3.0'
require 'signet/oauth_1/client'

require 'google/api_client'
require 'google/api_client/version'
require 'google/api_client/parsers/json_parser'

describe Google::APIClient do
  before do
    @client = Google::APIClient.new
  end

  it 'should raise a type error for bogus authorization' do
    (lambda do
      Google::APIClient.new(:authorization => 42)
    end).should raise_error(TypeError)
  end

  it 'should not be able to retrieve the discovery document for a bogus API' do
    (lambda do
      @client.discovery_document('bogus')
    end).should raise_error(Google::APIClient::TransmissionError)
    (lambda do
      @client.discovered_api('bogus')
    end).should raise_error(Google::APIClient::TransmissionError)
  end

  it 'should raise an error for bogus services' do
    (lambda do
      @client.discovered_api(42)
    end).should raise_error(TypeError)
  end

  it 'should raise an error for bogus services' do
    (lambda do
      @client.preferred_version(42)
    end).should raise_error(TypeError)
  end

  it 'should raise an error for bogus methods' do
    (lambda do
      @client.generate_request(42)
    end).should raise_error(TypeError)
  end

  it 'should not return a preferred version for bogus service names' do
    @client.preferred_version('bogus').should == nil
  end

  describe 'with the prediction API' do
    before do
      @client.authorization = nil
      # The prediction API no longer exposes a v1, so we have to be
      # careful about looking up the wrong API version.
      @prediction = @client.discovered_api('prediction', 'v1.2')
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('prediction').should ===
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1/rest'
    end

    it 'should correctly determine the discovery URI if :user_ip is set' do
      @client.user_ip = '127.0.0.1'
      request = @client.generate_request(
        :http_method => 'GET',
        :uri => @client.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should === (
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1.2/rest' +
        '?userIp=127.0.0.1'
      )
    end

    it 'should correctly determine the discovery URI if :key is set' do
      @client.key = 'qwerty'
      request = @client.generate_request(
        :http_method => 'GET',
        :uri => @client.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should === (
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1.2/rest' +
        '?key=qwerty'
      )
    end

    it 'should correctly determine the discovery URI if both are set' do
      @client.key = 'qwerty'
      @client.user_ip = '127.0.0.1'
      request = @client.generate_request(
        :http_method => 'GET',
        :uri => @client.discovery_uri('prediction', 'v1.2'),
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].query_values.should == {
        'key' => 'qwerty',
        'userIp' => '127.0.0.1'
      }
    end

    it 'should correctly generate API objects' do
      @client.discovered_api('prediction', 'v1.2').name.should == 'prediction'
      @client.discovered_api('prediction', 'v1.2').version.should == 'v1.2'
      @client.discovered_api(:prediction, 'v1.2').name.should == 'prediction'
      @client.discovered_api(:prediction, 'v1.2').version.should == 'v1.2'
    end

    it 'should discover methods' do
      @client.discovered_method(
        'prediction.training.insert', 'prediction', 'v1.2'
      ).name.should == 'insert'
      @client.discovered_method(
        :'prediction.training.insert', :prediction, 'v1.2'
      ).name.should == 'insert'
      @client.discovered_method(
        'prediction.training.delete', 'prediction', 'v1.2'
      ).name.should == 'delete'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method(
        'prediction.bogus', 'prediction', 'v1.2'
      ).should == nil
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        @client.discovered_method(42, 'prediction', 'v1.2')
      end).should raise_error(TypeError)
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        @client.generate_request(@client.discovered_api('prediction', 'v1.2'))
      end).should raise_error(TypeError)
    end

    it 'should correctly determine the preferred version' do
      @client.preferred_version('prediction').version.should_not == 'v1'
      @client.preferred_version(:prediction).version.should_not == 'v1'
    end

    it 'should generate valid requests' do
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345', }
      )
      request.method.should == :post
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
      request.headers.should be_empty
      request.body.should == ''
    end

    it 'should generate valid requests when repeated parameters are passed' do
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => [['data', '1'],['data','2']]
      )
      request.method.should == :post
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=1&data=2'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/prediction/v1.2/training?data=12345'
    end

    it 'should allow modification to the base URIs for testing purposes' do
      prediction = @client.discovered_api('prediction', 'v1.2')
      prediction.method_base =
        'https://testing-domain.googleapis.com/prediction/v1.2/'
      request = @client.generate_request(
        :api_method => prediction.training.insert,
        :parameters => {'data' => '123'}
      )
      request.to_env(Faraday.default_connection)[:url].should === (
        'https://testing-domain.googleapis.com/' +
        'prediction/v1.2/training?data=123'
      )
    end

    it 'should generate OAuth 1 requests' do
      @client.authorization = :oauth_1
      @client.authorization.token_credential_key = '12345'
      @client.authorization.token_credential_secret = '12345'
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.headers.should have_key('Authorization')
      request.headers['Authorization'].should =~ /^OAuth/
    end

    it 'should generate OAuth 2 requests' do
      @client.authorization = :oauth_2
      @client.authorization.access_token = '12345'
      request = @client.generate_request(
        :api_method => @prediction.training.insert,
        :parameters => {'data' => '12345'}
      )
      request.headers.should have_key('Authorization')
      request.headers['Authorization'].should =~ /^Bearer/
    end

    it 'should not be able to execute improperly authorized requests' do
      @client.authorization = :oauth_1
      @client.authorization.token_credential_key = '12345'
      @client.authorization.token_credential_secret = '12345'
      result = @client.execute(
        @prediction.training.insert,
        {'data' => '12345'}
      )
      result.response.status.should == 401
    end

    it 'should not be able to execute improperly authorized requests' do
      @client.authorization = :oauth_2
      @client.authorization.access_token = '12345'
      result = @client.execute(
        @prediction.training.insert,
        {'data' => '12345'}
      )
      result.response.status.should == 401
    end

    it 'should not be able to execute improperly authorized requests' do
      (lambda do
        @client.authorization = :oauth_1
        @client.authorization.token_credential_key = '12345'
        @client.authorization.token_credential_secret = '12345'
        result = @client.execute!(
          @prediction.training.insert,
          {'data' => '12345'}
        )
      end).should raise_error(Google::APIClient::ClientError)
    end

    it 'should not be able to execute improperly authorized requests' do
      (lambda do
        @client.authorization = :oauth_2
        @client.authorization.access_token = '12345'
        result = @client.execute!(
          @prediction.training.insert,
          {'data' => '12345'}
        )
      end).should raise_error(Google::APIClient::ClientError)
    end

    it 'should correctly handle unnamed parameters' do
      @client.authorization = :oauth_2
      @client.authorization.access_token = '12345'
      result = @client.execute(
        @prediction.training.insert,
        {},
        MultiJson.encode({"id" => "bucket/object"}),
        {'Content-Type' => 'application/json'}
      )
      result.request.headers['Content-Type'].should == 'application/json'
    end
  end

  describe 'with the plus API' do
    before do
      @client.authorization = nil
      @plus = @client.discovered_api('plus')
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('plus').should ===
        'https://www.googleapis.com/discovery/v1/apis/plus/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      @client.discovered_api('plus').name.should == 'plus'
      @client.discovered_api('plus').version.should == 'v1'
      @client.discovered_api(:plus).name.should == 'plus'
      @client.discovered_api(:plus).version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      # TODO(bobaman) Fix this when the RPC names are correct
      @client.discovered_method(
        'plus.activities.list', 'plus'
      ).name.should == 'list'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method('plus.bogus', 'plus').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => @plus.activities.list,
        :parameters => {
          'userId' => '107807692475771887386', 'collection' => 'public'
        },
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should === (
        'https://www.googleapis.com/plus/v1/' +
        'people/107807692475771887386/activities/public'
      )
    end

    it 'should correctly validate parameters' do
      (lambda do
        @client.generate_request(
          :api_method => @plus.activities.list,
          :parameters => {'alt' => 'json'},
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end

    it 'should correctly validate parameters' do
      (lambda do
        @client.generate_request(
          :api_method => @plus.activities.list,
          :parameters => {
            'userId' => '107807692475771887386', 'collection' => 'bogus'
          },
          :authenticated => false
        )
      end).should raise_error(ArgumentError)
    end
  end

  describe 'with the latitude API' do
    before do
      @client.authorization = nil
      @latitude = @client.discovered_api('latitude')
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('latitude').should ===
        'https://www.googleapis.com/discovery/v1/apis/latitude/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      @client.discovered_api('latitude').name.should == 'latitude'
      @client.discovered_api('latitude').version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      @client.discovered_method(
        'latitude.currentLocation.get', 'latitude'
      ).name.should == 'get'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method('latitude.bogus', 'latitude').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => 'latitude.currentLocation.get',
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => @latitude.current_location.get,
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should not be able to execute requests without authorization' do
      result = @client.execute(
        :api_method => 'latitude.currentLocation.get',
        :authenticated => false
      )
      result.response.status.should == 401
    end
  end

  describe 'with the moderator API' do
    before do
      @client.authorization = nil
      @moderator = @client.discovered_api('moderator')
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('moderator').should ===
        'https://www.googleapis.com/discovery/v1/apis/moderator/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      @client.discovered_api('moderator').name.should == 'moderator'
      @client.discovered_api('moderator').version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      @client.discovered_method(
        'moderator.profiles.get', 'moderator'
      ).name.should == 'get'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method('moderator.bogus', 'moderator').should == nil
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => 'moderator.profiles.get',
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :api_method => @moderator.profiles.get,
        :authenticated => false
      )
      request.to_env(Faraday.default_connection)[:url].should ===
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should not be able to execute requests without authorization' do
      result = @client.execute(
        'moderator.profiles.get',
        {},
        '',
        [],
        {:authenticated => false}
      )
      result.response.status.should == 401
    end
  end
end
