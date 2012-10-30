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
    # @example
    #
    #    client = Google::APIClient.new
    #    key = Google::APIClient::PKCS12.load_key('client.p12', 'notasecret')
    #    service_account = Google::APIClient::JWTAsserter(
    #        '123456-abcdef@developer.gserviceaccount.com',
    #        'https://www.googleapis.com/auth/prediction',
    #        key)
    #    client.authorization = service_account.authorize
    #    client.execute(...)
    #
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
      # @return [OpenSSL::PKey] key for signing assertions
      attr_writer :key

      ##
      # Initializes the asserter for a service account.
      #
      # @param [String] issuer
      #    Name/ID of the client issuing the assertion
      # @param [String, Array] scope
      #   Scopes to authorize. May be a space delimited string or array of strings
      # @param [OpenSSL::PKey] key
      #   RSA private key for signing assertions
      def initialize(issuer, scope, key)
        self.issuer = issuer
        self.scope = scope
        self.expiry = 60 # 1 min default 
        self.skew = 60      
        self.key = key
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
      # Builds & signs the assertion.
      # 
      # @param [String] person
      #   Email address of a user, if requesting a token to act on their behalf
      # @return [String] Encoded JWT
      def to_jwt(person=nil)
        now = Time.new        
        assertion = {
          "iss" => @issuer,
          "scope" => self.scope,
          "aud" => "https://accounts.google.com/o/oauth2/token",
          "exp" => (now + expiry).to_i,
          "iat" => (now - skew).to_i
        }
        assertion['prn'] = person unless person.nil?
        return JWT.encode(assertion, @key, "RS256")
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
      # @see Signet::OAuth2::Client.fetch_access_token
      def authorize(person = nil, options={})
        assertion = self.to_jwt(person)
        authorization = Signet::OAuth2::Client.new(
          :token_credential_uri => 'https://accounts.google.com/o/oauth2/token'
        )
        authorization.grant_type = 'urn:ietf:params:oauth:grant-type:jwt-bearer'
        authorization.extension_parameters = { :assertion => assertion }
        authorization.fetch_access_token!(options)
        return JWTAuthorization.new(authorization, self, person)
      end
    end
    
    class JWTAuthorization < DelegateClass(Signet::OAuth2::Client)
      def initialize(authorization, asserter, person = nil)
        @asserter = asserter
        @person = person
        super(authorization)
      end
      
      def fetch_access_token!(options={})
        new_authorization = @asserter.authorize(@person, options)
        __setobj__(new_authorization)
        self
      end
    end
  end
end
