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

require "addressable/uri"
require "oauth"

module Google #:nodoc:
  class APIClient #:nodoc:
    class OAuth1
      def initialize(options={})
        @options = {
          :request_token_uri =>
            'https://www.google.com/accounts/OAuthGetRequestToken',
          :authorization_uri =>
            'https://www.google.com/accounts/OAuthAuthorizeToken',
          :access_token_uri =>
            'https://www.google.com/accounts/OAuthGetAccessToken',
          :scopes => [],
          :callback => OAuth::OUT_OF_BAND,
          :displayname => nil,
          :consumer_key => "anonymous",
          :consumer_secret => "anonymous"
        }.merge(options)
        @options[:request_token_uri] =
          Addressable::URI.parse(@options[:request_token_uri])
        @options[:authorization_uri] =
          Addressable::URI.parse(@options[:authorization_uri])
        @options[:access_token_uri] =
          Addressable::URI.parse(@options[:access_token_uri])
        if (@options[:request_token_uri].site !=
            @options[:authorization_uri].site) ||
            (@options[:request_token_uri].site !=
            @options[:authorization_uri].site)
          raise ArgumentError, "All OAuth endpoints must be on the same site."
        end
        @oauth_consumer = ::OAuth::Consumer.new(
          @options[:consumer_key], @options[:consumer_secret], {
            # This is an extremely unfortunate way to configure the consumer,
            # but not worth forking or patching to resolve.  Yet.
            :site               => @options[:request_token_uri].site,
            :scheme             => :header,
            :http_method        => :post,
            :request_token_path => @options[:request_token_uri].request_uri,
            :access_token_path  => @options[:access_token_uri].request_uri,
            :authorize_path     => @options[:authorization_uri].request_uri
          }
        )
      end

      def request_token
        oauth_parameters = {
          :oauth_callback => @options[:callback]
        }
        app_parameters = {
          :scope => @options[:scopes].join(" ")
        }
        if @options[:displayname]
          app_parameters[:xoauth_displayname] = @options[:displayname]
        end
        return @request_token ||= @oauth_consumer.get_request_token(
          oauth_parameters,
          app_parameters
        )
      end

      def request_token=(new_request_token)
        if new_request_token.kind_of?(OAuth::RequestToken)
          @request_token = new_request_token
        else
          raise TypeError,
            "Expected OAuth::RequestToken, got #{new_request_token.class}."
        end
      end

      def access_token
        return @access_token ||=
          @oauth_consumer.get_access_token(self.request_token)
      end

      def access_token=(new_access_token)
        if new_access_token.kind_of?(OAuth::AccessToken)
          @access_token = new_access_token
        else
          raise TypeError,
            "Expected OAuth::AccessToken, got #{new_access_token.class}."
        end
      end

      def scopes
        return @options[:scopes]
      end

      def consumer_key
        return @oauth_consumer.key
      end

      def consumer_secret
        return @oauth_consumer.secret
      end

      def request_token_uri
        return @oauth_consumer.request_token_url
      end

      def authorization_endpoint_uri
        return @oauth_consumer.authorize_url
      end

      def authorization_uri(parameters={})
        return self.request_token.authorize_url(parameters)
      end

      def access_token_uri
        return @oauth_consumer.access_token_url
      end
    end
  end
end
