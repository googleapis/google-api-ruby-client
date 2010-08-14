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
require "addressable/uri"

describe Google::APIClient::OAuth1, "configured for use with Buzz" do
  before do
    @oauth = Google::APIClient::OAuth1.new(:service => :buzz)
  end

  it "should not have the default configuration" do
    @oauth.authorization_endpoint_uri.should_not ==
      Google::APIClient::OAuth1::DEFAULTS[:authorization_uri]
    @oauth.scopes.should_not ==
      Google::APIClient::OAuth1::DEFAULTS[:scopes]
  end

  it "should have the correct authorization_uri" do
    @oauth.authorization_endpoint_uri.should ==
      "https://www.google.com/buzz/api/auth/OAuthAuthorizeToken"
  end

  it "should have the correct scope" do
    @oauth.scopes.should include("https://www.googleapis.com/auth/buzz")
  end
  
  it "should be able to get a request token" do
    @oauth.request_token.token.should =~ /^[a-zA-Z0-9\/\-\_\+]+$/
    @oauth.request_token.secret.should =~ /^[a-zA-Z0-9\/\-\_\+]+$/
  end
  
  it "should issue only a single request token" do
    @oauth.request_token.token.should == @oauth.request_token.token
    @oauth.request_token.secret.should == @oauth.request_token.secret
  end
  
  it "should build the correct authorization URI" do
    icon_uri = "http://www.google.com/images/icons/feature/padlock-g128.png"
    uri = @oauth.authorization_uri(
      :domain => @oauth.consumer_key,
      :iconUrl => icon_uri,
      :scope => @oauth.scopes.join(" ")
    )
    uri.should =~
      /^https:\/\/www.google.com\/buzz\/api\/auth\/OAuthAuthorizeToken/
    Addressable::URI.unencode(uri).should =~
      Regexp.new(Regexp.escape(@oauth.request_token.token))
    Addressable::URI.unencode(uri).should =~
      Regexp.new(Regexp.escape(icon_uri))
    for scope in @oauth.scopes
      Addressable::URI.unencode(uri).should =~
        Regexp.new(Regexp.escape(scope))
    end
  end
  
  # Not much we can do to test any further into the OAuth flow
end
