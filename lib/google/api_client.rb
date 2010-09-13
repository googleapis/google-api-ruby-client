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

module Google #:nodoc:
  ##
  # This class manages communication with a single API.
  class APIClient

    def initialize(options={})
      @options = {
        # TODO: What configuration options need to go here?
      }.merge(options)
      unless @options[:parser]
        require 'google/api_client/parser/json_parser'
        # NOTE: Do not rely on this default value, as it may change
        @options[:parser] = JSONParser.new
      end
      unless @options[:authorization]
        require 'signet/oauth_1/client'
        # NOTE: Do not rely on this default value, as it may change
        @options[:authorization] = Signet::OAuth1::Client.new(
          :temporary_credential_uri =>
            'https://www.google.com/accounts/OAuthGetRequestToken',
          :authorization_uri =>
            'https://www.google.com/accounts/OAuthAuthorizeToken',
          :token_credential_uri =>
            'https://www.google.com/accounts/OAuthGetAccessToken',
          :client_credential_key => 'anonymous',
          :client_credential_secret => 'anonymous'
        )
      end
      unless @options[:http_adapter]
        require 'httpadapter/adapters/net_http'
        @options[:http_adapter] = HTTPAdapter::NetHTTPRequestAdapter
      end
    end

    ##
    # Returns the parser used by the client.
    def parser
      return @options[:parser]
    end

    ##
    # Returns the authorization mechanism used by the client.
    def authorization
      return @options[:authorization]
    end

    def build_request(*args, &block)
      if !args.empty? || block
        # Build the request!
        # TODO(bobaman): No-op / Debug code!
        return args
      else
        require 'google/api_client/discovery/method_builder'
        return ::Google::APIClient::MethodBuilder.new(self, :build_request)
      end
    end
  end
end

require 'google/api_client/version'
