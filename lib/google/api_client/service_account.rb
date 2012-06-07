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

module Google
  class APIClient
    ##
    # Helper for loading keys from the PKCS12 files downloaded when
    # setting up service accounts at the APIs Console.
    module PKCS12
      
      ##
      # Loads a key from PKCS12 file, assuming a single private key
      # is present.
      #
      # @param [String] keyfile
      #    Path of the PKCS12 file to load. If not a path to an actual file,
      #    assumes the string is the content of the file itself. 
      # @param [String] passphrase
      #   Passphrase for unlocking the private key
      #
      # @return [OpenSSL::PKey] The private key for signing assertions.
      def self.load_key(keyfile, passphrase)
        begin
          if File.exists?(keyfile)
            content = File.read(keyfile)
          else
            content = keyfile
          end  
          pkcs12 = OpenSSL::PKCS12.new(content, passphrase)
          return pkcs12.key
        rescue OpenSSL::PKCS12::PKCS12Error
          raise ArgumentError.new("Invalid keyfile or passphrase")
        end
      end
    end

    ##
    # Generates access tokens using the JWT assertion profile. Requires a
    # service account & access to the private key.
    class JWTAsserter
      attr_accessor :issuer, :expiry
      attr_reader :scope
      attr_writer :key

      ##
      # Initializes the asserter for a service account.
      #
      # @param [String] issuer
      #    Name/ID of the client issuing the assertion
      # @param [String or Array] scope
      #   Scopes to authorize. May be a space delimited string or array of strings
      # @param [OpenSSL::PKey]
      #   RSA private key for signing assertions
      def initialize(issuer, scope, key)
        self.issuer = issuer
        self.scope = scope
        self.expiry = 60 # 1 min default        
        self.key = key
      end

      ##
      # Set the scopes to authorize
      #
      # @param [String or Array] scope
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
          "iat" => now.to_i
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
        return authorization
      end
    end
  end
end
