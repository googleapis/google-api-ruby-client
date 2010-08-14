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

require "spec_helper"

require "oauth"
require "google/api_client/discovery/discovery"

describe Google::APIClient::Discovery, "configured for use with a service" do
  before do
    @discovery = Google::APIClient::Discovery.new(:service => :magic)
  end

  it "should have the correct discovery document URI" do
    @discovery.discovery_uri.should ==
      "http://www.googleapis.com/discovery/0.1/describe" +
      "?api=magic&apiVersion=1.0"
  end
end

describe Google::APIClient::Discovery,
    "configured for use with a specific service version" do
  before do
    @discovery = Google::APIClient::Discovery.new(
      :service => :magic,
      :service_version => 42.0
    )
  end

  it "should have the correct discovery document URI" do
    @discovery.discovery_uri.should ==
      "http://www.googleapis.com/discovery/0.1/describe" +
      "?api=magic&apiVersion=42.0"
  end
end
