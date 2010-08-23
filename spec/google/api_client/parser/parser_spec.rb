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
require 'google/api_client/parser/json_parser'

describe Google::APIClient::JSONParser, 'generates json from hash' do
  before do
    @parser = Google::APIClient::JSONParser.new
  end

  it 'should translate simple hash to JSON string' do
    @parser.generate('test' => 23).should == "{\"test\":23}"
  end
end

describe Google::APIClient::JSONParser, 'parses json string into hash' do
  before do
    @parser = Google::APIClient::JSONParser.new
  end

  it 'should parse simple json string into hash' do
    @parser.parse('{"test":23}').should == {'test' => 23}
  end
end

