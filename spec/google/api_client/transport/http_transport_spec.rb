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

require 'google/api_client/transport/http_transport'
require 'google/api_client/parser/json_parser'

describe Google::APIClient::HTTPTransport, 'with default configuration' do
  before do
    @transport = Google::APIClient::HTTPTransport.new
    @parser = Google::APIClient::JSONParser.new
  end

  it 'should use the default json parser' do
    @transport.parser.should be_instance_of Google::APIClient::JSONParser
  end
end
