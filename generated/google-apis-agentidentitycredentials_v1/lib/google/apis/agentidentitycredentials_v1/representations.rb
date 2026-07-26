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
      
      class GoogleCloudAgentidentitycredentialsV1ConsentRejected
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1Pending
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1Success
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1UriConsentRequired
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAgentidentitycredentialsV1ConsentRejected
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_nonce, as: 'consentNonce'
          property :user_id, as: 'userId'
          property :user_id_validation_state, :base64 => true, as: 'userIdValidationState'
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1Pending
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continue_uri, as: 'continueUri'
          property :force_refresh_token, as: 'forceRefreshToken'
          collection :scopes, as: 'scopes'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_rejected, as: 'consentRejected', class: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1ConsentRejected, decorator: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1ConsentRejected::Representation
      
          property :pending, as: 'pending', class: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Pending, decorator: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Pending::Representation
      
          property :success, as: 'success', class: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Success, decorator: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1Success::Representation
      
          property :uri_consent_required, as: 'uriConsentRequired', class: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1UriConsentRequired, decorator: Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1UriConsentRequired::Representation
      
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1Success
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :header, as: 'header'
          collection :scopes, as: 'scopes'
          property :token, as: 'token'
        end
      end
      
      class GoogleCloudAgentidentitycredentialsV1UriConsentRequired
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_uri, as: 'authorizationUri'
          property :consent_nonce, as: 'consentNonce'
          property :uid, as: 'uid'
        end
      end
    end
  end
end
