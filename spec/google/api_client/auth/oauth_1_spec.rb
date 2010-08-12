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
require "google/api_client/auth/oauth_1"

describe Google::APIClient::OAuth1, "in the default configuration" do
  before do
    @oauth = Google::APIClient::OAuth1.new
  end

  it "should have the correct request_token_uri" do
    @oauth.request_token_uri.should ==
      "https://www.google.com/accounts/OAuthGetRequestToken"
  end

  it "should have the correct authorization_uri" do
    @oauth.authorization_endpoint_uri.should ==
      "https://www.google.com/accounts/OAuthAuthorizeToken"
  end

  it "should have the correct access_token_uri" do
    @oauth.access_token_uri.should ==
      "https://www.google.com/accounts/OAuthGetAccessToken"
  end

  it "should have the correct consumer_key" do
    @oauth.consumer_key.should == "anonymous"
  end

  it "should have the correct consumer_secret" do
    @oauth.consumer_secret.should == "anonymous"
  end

  it "should allow the request_token to be set manually" do
    @oauth.request_token = OAuth::RequestToken.new(@oauth, "key", "secret")
    @oauth.request_token.token.should == "key"
    @oauth.request_token.secret.should == "secret"
  end

  it "should not allow the request_token to be set to bogus value" do
    (lambda do
      @oauth.request_token = 42
    end).should raise_error(TypeError)
  end
end
