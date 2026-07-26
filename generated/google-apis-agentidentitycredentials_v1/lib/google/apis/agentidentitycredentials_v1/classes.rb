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
    module AgentidentitycredentialsV1
      
      # Indicates the user has rejected the permission delegation or cancelled the
      # request.
      class GoogleCloudAgentidentitycredentialsV1ConsentRejected
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for FinalizeCredentials.
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The same consent_nonce value that was provided during redirect in
        # the UriConsentRequired metadata.
        # Corresponds to the JSON property `consentNonce`
        # @return [String]
        attr_accessor :consent_nonce
      
        # Required. The identity of the end user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Required. The encrypted state passed back from the consent flow.
        # Corresponds to the JSON property `userIdValidationState`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :user_id_validation_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent_nonce = args[:consent_nonce] if args.key?(:consent_nonce)
          @user_id = args[:user_id] if args.key?(:user_id)
          @user_id_validation_state = args[:user_id_validation_state] if args.key?(:user_id_validation_state)
        end
      end
      
      # Response message for FinalizeCredentials. Intentionally empty
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Indicates that the credential retrieval is pending. The caller should retry
      # the RetrieveCredentials request after some time.
      class GoogleCloudAgentidentitycredentialsV1Pending
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for RetrieveCredentials.
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The URI to redirect the user to after consent is completed. This
        # field is required for authproviders using the 3-legged OAuth flow. For other
        # authprovider types, this field is unused but not rejected.
        # Corresponds to the JSON property `continueUri`
        # @return [String]
        attr_accessor :continue_uri
      
        # Optional. Input only. Set this field only if the previous token was expired or
        # invalid. This value must be the full, previously returned token string. Will
        # trigger a refresh of the access token with a stored refresh token, if possible,
        # or a new consent flow.
        # Corresponds to the JSON property `forceRefreshToken`
        # @return [String]
        attr_accessor :force_refresh_token
      
        # Optional. The OAuth scopes required for this access.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Required. The identity of the end user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_uri = args[:continue_uri] if args.key?(:continue_uri)
          @force_refresh_token = args[:force_refresh_token] if args.key?(:force_refresh_token)
          @scopes = args[:scopes] if args.key?(:scopes)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Response message for RetrieveCredentials. Contains the access tokens and
      # related artifacts.
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse
        include Google::Apis::Core::Hashable
      
        # Indicates the user has rejected the permission delegation or cancelled the
        # request.
        # Corresponds to the JSON property `consentRejected`
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1ConsentRejected]
        attr_accessor :consent_rejected
      
        # Indicates that the credential retrieval is pending. The caller should retry
        # the RetrieveCredentials request after some time.
        # Corresponds to the JSON property `pending`
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Pending]
        attr_accessor :pending
      
        # Message indicating successful retrieval of credentials.
        # Corresponds to the JSON property `success`
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Success]
        attr_accessor :success
      
        # Indicates that the user must visit the provided URI to consent to delegate
        # permission to the agent to act on their behalf. The caller can either poll the
        # `RetrieveCredentials` method, or await the /ValidateUserId callback
        # Corresponds to the JSON property `uriConsentRequired`
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1UriConsentRequired]
        attr_accessor :uri_consent_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent_rejected = args[:consent_rejected] if args.key?(:consent_rejected)
          @pending = args[:pending] if args.key?(:pending)
          @success = args[:success] if args.key?(:success)
          @uri_consent_required = args[:uri_consent_required] if args.key?(:uri_consent_required)
        end
      end
      
      # Message indicating successful retrieval of credentials.
      class GoogleCloudAgentidentitycredentialsV1Success
        include Google::Apis::Core::Hashable
      
        # The expiration time of the token. This does not guarantee that the token will
        # be valid until this time, since the token could be revoked earlier. There
        # could also be clock skew between the auth provider and the client so it may
        # expire slightly earlier. If not set, the token might be permanent or it may be
        # that the service does not (or cannot) know when it will expire.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The HTTP header name where the token should be placed.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The scopes actually associated with the retrieved token. End users may have
        # rejected some requested scopes, or the third-party authorization servers can
        # return a different set of scopes than what was asked for. Callers should
        # verify that all required scopes for their intended use are included in this
        # list.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # The retrieved access token or credential for the end user. On MCPTool call,
        # for an invalid token OAuth spec says this should return 401 or 403, but
        # MCPServers may implement this differently. If you get any flavor of `
        # PERMISSION_DENIED`, retry your original request to RetrieveCredentials with
        # force_refresh_token set to the expired/invalid token string, which will fetch
        # a new token or initiate a new consent flow.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @header = args[:header] if args.key?(:header)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Indicates that the user must visit the provided URI to consent to delegate
      # permission to the agent to act on their behalf. The caller can either poll the
      # `RetrieveCredentials` method, or await the /ValidateUserId callback
      class GoogleCloudAgentidentitycredentialsV1UriConsentRequired
        include Google::Apis::Core::Hashable
      
        # Output only. The URL where the user should be redirected to grant consent.
        # This will always be present.
        # Corresponds to the JSON property `authorizationUri`
        # @return [String]
        attr_accessor :authorization_uri
      
        # Output only. A one-time, randomly generated value that validates the entire
        # consent flow is handled by a single user, avoiding CSRF attacks. It must be
        # submitted with the FinalizeCredentials request to complete the OAuth exchange.
        # This will always be present. Implemented per https://www.rfc-editor.org/rfc/
        # rfc6819#section-5.3.5
        # Corresponds to the JSON property `consentNonce`
        # @return [String]
        attr_accessor :consent_nonce
      
        # Output only. The unique ID of the credentials retrieval operation.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_uri = args[:authorization_uri] if args.key?(:authorization_uri)
          @consent_nonce = args[:consent_nonce] if args.key?(:consent_nonce)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
    end
  end
end
