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

require 'json'
require 'google/api_client/parsers/json_parser'
require 'google/api_client/parsers/json/error_parser'
require 'google/api_client/parsers/json/pagination'

describe Google::APIClient::JSONParser, 'with error data' do
  before do
    @data = {
      'error' => {
        'code' => 401,
        'message' => 'Token invalid - Invalid AuthSub token.',
        'errors' => [
          {
            'location' => 'Authorization',
            'domain' => 'global',
            'locationType' => 'header',
            'reason' => 'authError',
            'message' => 'Token invalid - Invalid AuthSub token.'
          }
        ]
      }
    }
  end

  it 'should correctly match as an error' do
    parser = Google::APIClient::JSONParser.match(@data)
    parser.should == Google::APIClient::JSON::ErrorParser
  end

  it 'should be automatically handled as an error when parsed' do
    data = Google::APIClient::JSONParser.parse(@data)
    data.should be_kind_of(Google::APIClient::JSON::ErrorParser)
  end

  it 'should correctly expose error message' do
    data = Google::APIClient::JSONParser.parse(@data)
    data.error.should == 'Token invalid - Invalid AuthSub token.'
  end
end
