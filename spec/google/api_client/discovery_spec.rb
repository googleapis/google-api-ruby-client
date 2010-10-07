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

describe Google::APIClient, 'unconfigured' do
  before do
    @client = Google::APIClient.new
  end

  it 'should not be able to determine the discovery URI' do
    (lambda do
      @client.discovery_uri
    end).should raise_error(ArgumentError)
  end
end

describe Google::APIClient, 'configured for a bogus API' do
  before do
    @client = Google::APIClient.new(:service => 'bogus')
  end

  it 'should not be able to retrieve the discovery document' do
    (lambda do
      @client.discovery_document
    end).should raise_error(Google::APIClient::TransmissionError)
  end
end

describe Google::APIClient, 'configured for bogus authorization' do
  it 'should raise a type error' do
    (lambda do
      Google::APIClient.new(:service => 'prediction', :authorization => 42)
    end).should raise_error(TypeError)
  end
end

describe Google::APIClient, 'configured for the prediction API' do
  before do
    @client = Google::APIClient.new(:service => 'prediction')
  end

  it 'should correctly determine the discovery URI' do
    @client.discovery_uri.should ===
      'http://www.googleapis.com/discovery/0.1/describe?api=prediction'
  end

  it 'should have multiple versions available' do
    @client.discovered_services.size.should > 1
  end

  it 'should find APIs that are in the discovery document' do
    @client.discovered_service('prediction').name.should == 'prediction'
    @client.discovered_service('prediction').version.should == 'v1'
    @client.discovered_service(:prediction).name.should == 'prediction'
    @client.discovered_service(:prediction).version.should == 'v1'
  end

  it 'should find API versions that are in the discovery document' do
    @client.discovered_service('prediction', 'v1.1').version.should == 'v1.1'
  end

  it 'should not find APIs that are not in the discovery document' do
    @client.discovered_service('bogus').should == nil
  end

  it 'should raise an error for bogus services' do
    (lambda do
      @client.discovered_service(42)
    end).should raise_error(TypeError)
  end

  it 'should find methods that are in the discovery document' do
    @client.discovered_method('prediction.training.insert').name.should ==
      'insert'
    @client.discovered_method(:'prediction.training.insert').name.should ==
      'insert'
  end

  it 'should find methods for versions that are in the discovery document' do
    @client.discovered_method(
      'prediction.training.delete', 'v1.1'
    ).should_not == nil
  end

  it 'should not find methods that are not in the discovery document' do
    @client.discovered_method('prediction.training.delete', 'v1').should == nil
    @client.discovered_method('prediction.bogus').should == nil
  end

  it 'should raise an error for bogus methods' do
    (lambda do
      @client.discovered_method(42)
    end).should raise_error(TypeError)
  end

  it 'should correctly determine the latest version' do
    @client.latest_service('prediction').version.should_not == 'v1'
    @client.latest_service(:prediction).version.should_not == 'v1'
  end

  it 'should raise an error for bogus services' do
    (lambda do
      @client.latest_service(42)
    end).should raise_error(TypeError)
  end

  it 'should correctly determine the latest version' do
    # Sanity check the algorithm
    @client.discovered_services.clear
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v1', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v1.1', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v1.10', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v10.1', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v2.1', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('magic', 'v10.0', {})
    @client.latest_service('magic').version.should == 'v10.1'
  end

  it 'should correctly determine the latest version' do
    # Sanity check the algorithm
    @client.discovered_services.clear
    @client.discovered_services <<
      Google::APIClient::Service.new('one', 'v3', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('two', 'v1', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('two', 'v1.1-r1c3', {})
    @client.discovered_services <<
      Google::APIClient::Service.new('two', 'v2', {})
    @client.latest_service('two').version.should == 'v2'
  end

  it 'should return nil for bogus service names' do
    # Sanity check the algorithm
    @client.latest_service('bogus').should == nil
  end

  it 'should generate requests against the correct URIs' do
    request = @client.generate_request(
      'prediction.training.insert',
      {'query' => '12345'},
      '',
      [],
      {:signed => false}
    )
    method, uri, headers, body = request
    uri.should ==
      'https://www.googleapis.com/prediction/v1/training?query=12345'
  end

  it 'should generate requests against the correct URIs' do
    request = @client.generate_request(
      :'prediction.training.insert',
      {'query' => '12345'},
      '',
      [],
      {:signed => false}
    )
    method, uri, headers, body = request
    uri.should ==
      'https://www.googleapis.com/prediction/v1/training?query=12345'
  end

  it 'should generate signed requests' do
    @client.authorization.token_credential_key = '12345'
    @client.authorization.token_credential_secret = '12345'
    request = @client.generate_request(
      'prediction.training.insert',
      {'query' => '12345'},
      '',
      [],
      {:signed => true}
    )
    method, uri, headers, body = request
    headers = Hash[headers]
    headers.keys.should include('Authorization')
    headers['Authorization'].should =~ /^OAuth/
  end

  it 'should not be able to execute improperly authorized requests' do
    @client.authorization.token_credential_key = '12345'
    @client.authorization.token_credential_secret = '12345'
    response = @client.execute(
      'prediction.training.insert',
      {'query' => '12345'},
      '',
      [],
      {:signed => true}
    )
    status, headers, body = response
    status.should == 401
  end

  it 'should raise an error for bogus methods' do
    (lambda do
      @client.generate_request(42)
    end).should raise_error(TypeError)
  end
end

describe Google::APIClient, 'configured for the buzz API' do
  before do
    @client = Google::APIClient.new(:service => 'buzz')
  end

  it 'should correctly determine the discovery URI' do
    @client.discovery_uri.should ===
      'http://www.googleapis.com/discovery/0.1/describe?api=buzz'
  end

  it 'should find APIs that are in the discovery document' do
    @client.discovered_service('buzz').name.should == 'buzz'
    @client.discovered_service('buzz').version.should == 'v1'
  end

  it 'should not find APIs that are not in the discovery document' do
    @client.discovered_service('bogus').should == nil
  end

  it 'should find methods that are in the discovery document' do
    # TODO(bobaman) Fix this when the RPC names are correct
    @client.discovered_method('chili.activities.list').name.should == 'list'
  end

  it 'should not find methods that are not in the discovery document' do
    @client.discovered_method('buzz.bogus').should == nil
  end

  it 'should generate requests against the correct URIs' do
    # TODO(bobaman) Fix this when the RPC names are correct
    request = @client.generate_request(
      'chili.activities.list',
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
    # TODO(bobaman) Fix this when the RPC names are correct
    (lambda do
      @client.generate_request(
        'chili.activities.list',
        {'alt' => 'json'},
        '',
        [],
        {:signed => false}
      )
    end).should raise_error(ArgumentError)
  end

  it 'should correctly validate parameters' do
    # TODO(bobaman) Fix this when the RPC names are correct
    (lambda do
      @client.generate_request(
        'chili.activities.list',
        {'userId' => 'hikingfan', 'scope' => '@bogus'},
        '',
        [],
        {:signed => false}
      )
    end).should raise_error(ArgumentError)
  end

  it 'should be able to execute requests without authorization' do
    # TODO(bobaman) Fix this when the RPC names are correct
    response = @client.execute(
      'chili.activities.list',
      {'alt' => 'json', 'userId' => 'hikingfan', 'scope' => '@public'},
      '',
      [],
      {:signed => false}
    )
    status, headers, body = response
    status.should == 200
  end
end

describe Google::APIClient, 'configured for the latitude API' do
  before do
    @client = Google::APIClient.new(:service => 'latitude')
  end

  it 'should correctly determine the discovery URI' do
    @client.discovery_uri.should ===
      'http://www.googleapis.com/discovery/0.1/describe?api=latitude'
  end

  it 'should find APIs that are in the discovery document' do
    @client.discovered_service('latitude').name.should == 'latitude'
    @client.discovered_service('latitude').version.should == 'v1'
  end

  it 'should not find APIs that are not in the discovery document' do
    @client.discovered_service('bogus').should == nil
  end

  it 'should find methods that are in the discovery document' do
    @client.discovered_method('latitude.currentLocation.get').name.should ==
      'get'
  end

  it 'should not find methods that are not in the discovery document' do
    @client.discovered_method('latitude.bogus').should == nil
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

describe Google::APIClient, 'configured for the moderator API' do
  before do
    @client = Google::APIClient.new(:service => 'moderator')
  end

  it 'should correctly determine the discovery URI' do
    @client.discovery_uri.should ===
      'http://www.googleapis.com/discovery/0.1/describe?api=moderator'
  end

  it 'should find APIs that are in the discovery document' do
    @client.discovered_service('moderator').name.should == 'moderator'
    @client.discovered_service('moderator').version.should == 'v1'
  end

  it 'should not find APIs that are not in the discovery document' do
    @client.discovered_service('bogus').should == nil
  end

  it 'should find methods that are in the discovery document' do
    @client.discovered_method('moderator.profiles.get').name.should ==
      'get'
  end

  it 'should not find methods that are not in the discovery document' do
    @client.discovered_method('moderator.bogus').should == nil
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
