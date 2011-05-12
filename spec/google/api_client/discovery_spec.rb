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

require 'signet/oauth_1/client'
require 'httpadapter/adapters/net_http'

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
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('prediction').should ===
        'https://www.googleapis.com/discovery/v1/apis/prediction/v1/rest'
    end

    it 'should correctly generate API objects' do
      @client.discovered_api('prediction').name.should == 'prediction'
      @client.discovered_api('prediction').version.should == 'v1'
      @client.discovered_api(:prediction).name.should == 'prediction'
      @client.discovered_api(:prediction).version.should == 'v1'
    end

    it 'should discover methods' do
      @client.discovered_method(
        'prediction.training.insert', 'prediction'
      ).name.should == 'insert'
      @client.discovered_method(
        :'prediction.training.insert', :prediction
      ).name.should == 'insert'
    end

    it 'should discover methods' do
      @client.discovered_method(
        'prediction.training.delete', 'prediction', 'v1.1'
      ).name.should == 'delete'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method(
        'prediction.training.delete', 'prediction', 'v1'
      ).should == nil
      @client.discovered_method(
        'prediction.bogus', 'prediction', 'v1'
      ).should == nil
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        @client.discovered_method(42, 'prediction', 'v1')
      end).should raise_error(TypeError)
    end

    it 'should raise an error for bogus methods' do
      (lambda do
        @client.generate_request(@client.discovered_api('prediction'))
      end).should raise_error(TypeError)
    end

    it 'should correctly determine the preferred version' do
      @client.preferred_version('prediction').version.should_not == 'v1'
      @client.preferred_version(:prediction).version.should_not == 'v1'
    end

    it 'should generate valid requests' do
      request = @client.generate_request(
        'prediction.training.insert',
        {'data' => '12345', }
      )
      method, uri, headers, body = request
      method.should == 'POST'
      uri.should ==
        'https://www.googleapis.com/prediction/v1/training?data=12345'
      (headers.inject({}) { |h,(k,v)| h[k]=v; h }).should == {}
      body.should respond_to(:each)
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        :'prediction.training.insert',
        {'data' => '12345'}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/prediction/v1/training?data=12345'
    end

    it 'should generate requests against the correct URIs' do
      prediction = @client.discovered_api('prediction', 'v1')
      request = @client.generate_request(
        prediction.training.insert,
        {'data' => '12345'}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/prediction/v1/training?data=12345'
    end

    it 'should allow modification to the base URIs for testing purposes' do
      prediction = @client.discovered_api('prediction', 'v1')
      prediction.method_base =
        'https://testing-domain.googleapis.com/prediction/v1/'
      request = @client.generate_request(
        prediction.training.insert,
        {'data' => '123'}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://testing-domain.googleapis.com/prediction/v1/training?data=123'
    end

    it 'should generate OAuth 1 requests' do
      @client.authorization = :oauth_1
      @client.authorization.token_credential_key = '12345'
      @client.authorization.token_credential_secret = '12345'
      request = @client.generate_request(
        'prediction.training.insert',
        {'data' => '12345'}
      )
      method, uri, headers, body = request
      headers = headers.inject({}) { |h,(k,v)| h[k]=v; h }
      headers.keys.should include('Authorization')
      headers['Authorization'].should =~ /^OAuth/
    end

    it 'should generate OAuth 2 requests' do
      @client.authorization = :oauth_2
      @client.authorization.access_token = '12345'
      request = @client.generate_request(
        'prediction.training.insert',
        {'data' => '12345'}
      )
      method, uri, headers, body = request
      headers = headers.inject({}) { |h,(k,v)| h[k]=v; h }
      headers.keys.should include('Authorization')
      headers['Authorization'].should =~ /^OAuth/
    end

    it 'should not be able to execute improperly authorized requests' do
      @client.authorization = :oauth_1
      @client.authorization.token_credential_key = '12345'
      @client.authorization.token_credential_secret = '12345'
      response = @client.execute(
        'prediction.training.insert',
        {'data' => '12345'}
      )
      status, headers, body = response
      status.should == 401
    end

    it 'should not be able to execute improperly authorized requests' do
      @client.authorization = :oauth_2
      @client.authorization.access_token = '12345'
      response = @client.execute(
        'prediction.training.insert',
        {'data' => '12345'}
      )
      status, headers, body = response
      status.should == 401
    end
  end

  describe 'with the buzz API' do
    before do
      @client.authorization = nil
      @buzz = @client.discovered_api('buzz')
    end

    it 'should correctly determine the discovery URI' do
      @client.discovery_uri('buzz').should ===
        'https://www.googleapis.com/discovery/v1/apis/buzz/v1/rest'
    end

    it 'should find APIs that are in the discovery document' do
      @client.discovered_api('buzz').name.should == 'buzz'
      @client.discovered_api('buzz').version.should == 'v1'
      @client.discovered_api(:buzz).name.should == 'buzz'
      @client.discovered_api(:buzz).version.should == 'v1'
    end

    it 'should find methods that are in the discovery document' do
      # TODO(bobaman) Fix this when the RPC names are correct
      @client.discovered_method(
        'chili.activities.list', 'buzz'
      ).name.should == 'list'
    end

    it 'should not find methods that are not in the discovery document' do
      @client.discovered_method('buzz.bogus', 'buzz').should == nil
    end

    it 'should fail for string RPC names that do not match API name' do
      (lambda do
        @client.generate_request(
          'chili.activities.list',
          {'alt' => 'json'},
          '',
          [],
          {:signed => false}
        )
      end).should raise_error(Google::APIClient::TransmissionError)
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        @buzz.activities.list,
        {'userId' => 'hikingfan', 'scope' => '@public'},
        '',
        [],
        {:signed => false}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/buzz/v1/activities/hikingfan/@public'
    end

    it 'should correctly validate parameters' do
      (lambda do
        @client.generate_request(
          @buzz.activities.list,
          {'alt' => 'json'},
          '',
          [],
          {:signed => false}
        )
      end).should raise_error(ArgumentError)
    end

    it 'should correctly validate parameters' do
      (lambda do
        @client.generate_request(
          @buzz.activities.list,
          {'userId' => 'hikingfan', 'scope' => '@bogus'},
          '',
          [],
          {:signed => false}
        )
      end).should raise_error(ArgumentError)
    end

    it 'should be able to execute requests without authorization' do
      response = @client.execute(
        @buzz.activities.list,
        {'alt' => 'json', 'userId' => 'hikingfan', 'scope' => '@public'},
        '',
        [],
        {:signed => false}
      )
      status, headers, body = response
      status.should == 200
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
        'latitude.currentLocation.get',
        {},
        '',
        [],
        {:signed => false}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        @latitude.current_location.get,
        {},
        '',
        [],
        {:signed => false}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/latitude/v1/currentLocation'
    end

    it 'should not be able to execute requests without authorization' do
      response = @client.execute(
        'latitude.currentLocation.get',
        {},
        '',
        [],
        {:signed => false}
      )
      status, headers, body = response
      status.should == 401
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
        'moderator.profiles.get',
        {},
        '',
        [],
        {:signed => false}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should generate requests against the correct URIs' do
      request = @client.generate_request(
        @moderator.profiles.get,
        {},
        '',
        [],
        {:signed => false}
      )
      method, uri, headers, body = request
      uri.should ==
        'https://www.googleapis.com/moderator/v1/profiles/@me'
    end

    it 'should not be able to execute requests without authorization' do
      response = @client.execute(
        'moderator.profiles.get',
        {},
        '',
        [],
        {:signed => false}
      )
      status, headers, body = response
      status.should == 401
    end
  end
end
