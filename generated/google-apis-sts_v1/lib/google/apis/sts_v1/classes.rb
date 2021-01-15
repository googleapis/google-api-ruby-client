# Copyright 2020 Google LLC
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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module StsV1
      
      # Request message for ExchangeToken.
      class GoogleIdentityStsV1ExchangeTokenRequest
        include Google::Apis::Core::Hashable
      
        # The full resource name of the identity provider; for example: `//iam.
        # googleapis.com/projects//workloadIdentityPools//providers/`. Required when
        # exchanging an external credential for a Google access token.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Required. The grant type. Must be `urn:ietf:params:oauth:grant-type:token-
        # exchange`, which indicates a token exchange.
        # Corresponds to the JSON property `grantType`
        # @return [String]
        attr_accessor :grant_type
      
        # A set of features that Security Token Service supports, in addition to the
        # standard OAuth 2.0 token exchange, formatted as a serialized JSON object of
        # Options.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # Required. An identifier for the type of requested security token. Must be `urn:
        # ietf:params:oauth:token-type:access_token`.
        # Corresponds to the JSON property `requestedTokenType`
        # @return [String]
        attr_accessor :requested_token_type
      
        # The OAuth 2.0 scopes to include on the resulting access token, formatted as a
        # list of space-delimited, case-sensitive strings. Required when exchanging an
        # external credential for a Google access token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Required. The input token. You can use a Google-issued OAuth 2.0 access token
        # with this field to obtain an access token with new security attributes applied,
        # such as a Credential Access Boundary. If an access token already contains
        # security attributes, you cannot apply additional security attributes.
        # Corresponds to the JSON property `subjectToken`
        # @return [String]
        attr_accessor :subject_token
      
        # Required. An identifier that indicates the type of the security token in the `
        # subject_token` parameter. Must be `urn:ietf:params:oauth:token-type:
        # access_token`.
        # Corresponds to the JSON property `subjectTokenType`
        # @return [String]
        attr_accessor :subject_token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @grant_type = args[:grant_type] if args.key?(:grant_type)
          @options = args[:options] if args.key?(:options)
          @requested_token_type = args[:requested_token_type] if args.key?(:requested_token_type)
          @scope = args[:scope] if args.key?(:scope)
          @subject_token = args[:subject_token] if args.key?(:subject_token)
          @subject_token_type = args[:subject_token_type] if args.key?(:subject_token_type)
        end
      end
      
      # Response message for ExchangeToken.
      class GoogleIdentityStsV1ExchangeTokenResponse
        include Google::Apis::Core::Hashable
      
        # An OAuth 2.0 security token, issued by Google, in response to the token
        # exchange request.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # The amount of time, in seconds, between the time when the access token was
        # issued and the time when the access token will expire. This field is absent
        # when the `subject_token` in the request is a Google-issued, short-lived access
        # token. In this case, the access token has the same expiration time as the `
        # subject_token`.
        # Corresponds to the JSON property `expires_in`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # The token type. Always matches the value of `requested_token_type` from the
        # request.
        # Corresponds to the JSON property `issued_token_type`
        # @return [String]
        attr_accessor :issued_token_type
      
        # The type of access token. Always has the value `Bearer`.
        # Corresponds to the JSON property `token_type`
        # @return [String]
        attr_accessor :token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @issued_token_type = args[:issued_token_type] if args.key?(:issued_token_type)
          @token_type = args[:token_type] if args.key?(:token_type)
        end
      end
    end
  end
end
