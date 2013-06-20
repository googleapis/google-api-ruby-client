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

require 'jwt'
require 'signet/oauth_2/client'
require 'delegate'

module Google
  class APIClient
    ##
    # Generates access tokens using the JWT assertion profile. Requires a
    # service account & access to the private key.
    #
    # @example Using Signet
    #
    #   key = Google::APIClient::KeyUtils.load_from_pkcs12('client.p12', 'notasecret')
    #   client.authorization = Signet::OAuth2::Client.new(
    #     :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
    #     :audience => 'https://accounts.google.com/o/oauth2/token',
    #     :scope => 'https://www.googleapis.com/auth/prediction',
    #     :issuer => '123456-abcdef@developer.gserviceaccount.com',
    #     :signing_key => key)
    #   client.authorization.fetch_access_token!
    #   client.execute(...)
    #
    # @deprecated
    #  Service accounts are now supported directly in Signet
    # @see https://developers.google.com/accounts/docs/OAuth2ServiceAccount
    class JWTAsserter
      # @return [String] ID/email of the issuing party
      attr_accessor :issuer
      # @return [Fixnum] How long, in seconds, the assertion is valid for
      attr_accessor :expiry
      # @return [Fixnum] Seconds to expand the issued at/expiry window to account for clock skew
      attr_accessor :skew
      # @return [String] Scopes to authorize
      attr_reader :scope
      # @return [String,OpenSSL::PKey] key for signing assertions
      attr_writer :key
      # @return [String] Algorithm used for signing
      attr_accessor :algorithm
      
      ##
      # Initializes the asserter for a service account.
      #
      # @param [String] issuer
      #    Name/ID of the client issuing the assertion
      # @param [String, Array] scope
      #   Scopes to authorize. May be a space delimited string or array of strings
      # @param [String,OpenSSL::PKey] key
      #   Key for signing assertions
      # @param [String] algorithm
      #   Algorithm to use, either 'RS256' for RSA with SHA-256 
      #   or 'HS256' for HMAC with SHA-256
      def initialize(issuer, scope, key, algorithm = "RS256")
        self.issuer = issuer
        self.scope = scope
        self.expiry = 60 # 1 min default 
        self.skew = 60      
        self.key = key
        self.algorithm = algorithm
      end

      ##
      # Set the scopes to authorize
      #
      # @param [String, Array] new_scope
      #   Scopes to authorize. May be a space delimited string or array of strings
      def scope=(new_scope)
        case new_scope
        when Array
          @scope = new_scope.join(' ')
        when String
          @scope = new_scope
        when nil
          @scope = ''
        else
          raise TypeError, "Expected Array or String, got #{new_scope.class}"
        end
      end
      
      ##
      # Request a new access token.
      # 
      # @param [String] person
      #   Email address of a user, if requesting a token to act on their behalf
      # @param [Hash] options
      #   Pass through to Signet::OAuth2::Client.fetch_access_token
      # @return [Signet::OAuth2::Client] Access token 
      #
      # @see Signet::OAuth2::Client.fetch_access_token!
      def authorize(person = nil, options={})
        authorization = self.to_authorization(person)
        authorization.fetch_access_token!(options)
        return authorization
      end
      
      ##
      # Builds a Signet OAuth2 client
      #
      # @return [Signet::OAuth2::Client] Access token 
      def to_authorization(person = nil)
        return Signet::OAuth2::Client.new(
          :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
          :audience => 'https://accounts.google.com/o/oauth2/token',
          :scope => self.scope,
          :issuer => @issuer,
          :signing_key => @key,
          :signing_algorithm => @algorithm,
          :person => person
        )
      end      
    end
  end
end
