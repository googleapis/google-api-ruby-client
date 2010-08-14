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
      ##
      # The default OAuth 1.0a configuration values.  These may be overrided
      # simply by passing in the same key to the constructor.
      DEFAULTS = {
        :request_token_uri =>
          'https://www.google.com/accounts/OAuthGetRequestToken',
        :authorization_uri =>
          'https://www.google.com/accounts/OAuthAuthorizeToken',
        :access_token_uri =>
          'https://www.google.com/accounts/OAuthGetAccessToken',
        :scopes => [],
        :callback => OAuth::OUT_OF_BAND,
        :display_name => nil,
        :consumer_key => "anonymous",
        :consumer_secret => "anonymous"
      }
      
      ##
      # A set of default configuration values specific to each service.  These
      # may be overrided simply by passing in the same key to the constructor.
      SERVICE_DEFAULTS = {
        :buzz => {
          :authorization_uri =>
            'https://www.google.com/buzz/api/auth/OAuthAuthorizeToken',
          :scopes => ["https://www.googleapis.com/auth/buzz"]
        }
      }

      ##
      # Creates a new OAuth 1.0a handler.  This object obtains the tokens from
      # the provider and handles signing any requests to the API.
      #
      # @param [Hash] options
      #   The configuration options.
      #   <code>:request_token_uri</code>::
      #     The OAuth endpoint for obtaining a request token.
      #   <code>:authorization_uri</code>::
      #     The OAuth endpoint for obtaining user permission.
      #   <code>:access_token_uri</code>::
      #     The OAuth endpoint for obtaining an access token.
      #   <code>:scopes</code>::
      #     An <code>Array</code> of scopes that define the access being
      #     requested to the API.
      #   <code>:callback</code>::
      #     The URI the user will be redirected to if access is granted to the
      #     API.  For development purposes, the special value
      #     <code>OAuth::OUT_OF_BAND</code> may also be used.
      #   <code>:display_name</code>::
      #     A human-readable service name to present to the user when they
      #     visit the <code>:authorization_uri</code>.
      #   <code>:consumer_key</code>::
      #     The consumer key you registered with the Google Accounts API.
      #   <code>:consumer_secret</code>::
      #     The consumer secret issued to you when you registered with the
      #     Google Accounts API.
      #
      # @return [Google::APIClient::OAuth1] The OAuth 1.0a handler.
      def initialize(options={})
        if options[:service] && SERVICE_DEFAULTS[options[:service]]
          @options = DEFAULTS.merge(SERVICE_DEFAULTS[options[:service]])
        else
          @options = DEFAULTS.clone
        end
        @options.merge!(options)
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
      
      ##
      # Returns the configuration of the handler.  Configuration options that
      # are not recognized by the handler are ignored.
      #
      # @return [Hash] The configuration options.
      def options
        return @options
      end

      ##
      # Returns the current request token.  Obtains a new request token if
      # one hasn't already been obtained.
      #
      # @return [OAuth::RequestToken] The request token.
      def request_token
        oauth_parameters = {
          :oauth_callback => @options[:callback]
        }
        app_parameters = {
          :scope => @options[:scopes].join(" ")
        }
        if @options[:display_name]
          app_parameters[:xoauth_displayname] = @options[:display_name]
        end
        return @request_token ||= @oauth_consumer.get_request_token(
          oauth_parameters,
          app_parameters
        )
      end

      ##
      # Sets the request token for the handler.
      #
      # @param [OAuth::RequestToken] new_request_token The request token.
      def request_token=(new_request_token)
        if new_request_token.kind_of?(OAuth::RequestToken)
          @request_token = new_request_token
        else
          raise TypeError,
            "Expected OAuth::RequestToken, got #{new_request_token.class}."
        end
      end

      ##
      # Returns the current access token.  Obtains a new access token if
      # one hasn't already been obtained.  An request token must have already
      # been obtained and authorized or this method will fail.
      #
      # @return [OAuth::AccessToken] The access token.
      def access_token
        return @access_token ||=
          @oauth_consumer.get_access_token(self.request_token)
      end

      ##
      # Sets the access token for the handler.
      #
      # @param [OAuth::AccessToken] new_access_token The access token.
      def access_token=(new_access_token)
        if new_access_token.kind_of?(OAuth::AccessToken)
          @access_token = new_access_token
        else
          raise TypeError,
            "Expected OAuth::AccessToken, got #{new_access_token.class}."
        end
      end

      ##
      # Returns the list of scopes for the handler.
      #
      # @return [Array] An <code>Array</code> of access scopes.
      def scopes
        return @options[:scopes]
      end

      ##
      # Returns the callback for the handler.
      #
      # @return [String] The OAuth 1.0a callback for the consumer.
      def callback
        return @options[:callback]
      end

      ##
      # Returns a human-readable service name to present to the user when they
      # visit the <code>:authorization_uri</code>.
      #
      # @return [String] The display name for the consumer.
      def display_name
        return @options[:display_name]
      end

      ##
      # Returns the consumer key.
      #
      # @return [String]
      #   The consumer key you registered with the Google Accounts API.
      def consumer_key
        return @oauth_consumer.key
      end

      ##
      # Returns the consumer key.
      #
      # @return [String]
      #   The consumer secret issued to you when you registered with the
      #   Google Accounts API.
      def consumer_secret
        return @oauth_consumer.secret
      end

      ##
      # Returns the request token URI.
      #
      # @return [String]
      #   The OAuth endpoint for obtaining a request token.
      def request_token_uri
        return @oauth_consumer.request_token_url
      end

      ##
      # Returns the authorization endpoint URI.  This URI is used to construct
      # the {#authorization_uri}.
      #
      # @return [String]
      #   The OAuth endpoint for obtaining user permission.
      def authorization_endpoint_uri
        return @oauth_consumer.authorize_url
      end

      ##
      # Builds the authorization URI that the user will be redirected to. 
      # Note that this value is derived from the
      # {#authorization_endpoint_uri}.
      #
      # @param [Hash] parameters
      #   The extra URI query parameters appended to the
      #   {#authorization_endpoint_uri}.
      #
      # @return [String]
      #   The URI to redirect the user to to obtain permission.
      def authorization_uri(parameters={})
        return self.request_token.authorize_url(parameters)
      end

      ##
      # Returns the access token URI.
      #
      # @return [String]
      #   The OAuth endpoint for obtaining an access token.
      def access_token_uri
        return @oauth_consumer.access_token_url
      end
    end
  end
end
