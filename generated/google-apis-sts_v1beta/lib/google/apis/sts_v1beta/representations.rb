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
    module StsV1beta
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1AccessBoundary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1AccessBoundaryRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaAccessBoundary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaAccessBoundaryRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaExchangeTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaExchangeTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::StsV1beta::GoogleTypeExpr, decorator: Google::Apis::StsV1beta::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIdentityStsV1AccessBoundary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_boundary_rules, as: 'accessBoundaryRules', class: Google::Apis::StsV1beta::GoogleIdentityStsV1AccessBoundaryRule, decorator: Google::Apis::StsV1beta::GoogleIdentityStsV1AccessBoundaryRule::Representation
      
        end
      end
      
      class GoogleIdentityStsV1AccessBoundaryRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_condition, as: 'availabilityCondition', class: Google::Apis::StsV1beta::GoogleTypeExpr, decorator: Google::Apis::StsV1beta::GoogleTypeExpr::Representation
      
          collection :available_permissions, as: 'availablePermissions'
          property :available_resource, as: 'availableResource'
        end
      end
      
      class GoogleIdentityStsV1Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_boundary, as: 'accessBoundary', class: Google::Apis::StsV1beta::GoogleIdentityStsV1AccessBoundary, decorator: Google::Apis::StsV1beta::GoogleIdentityStsV1AccessBoundary::Representation
      
          property :user_project, as: 'userProject'
        end
      end
      
      class GoogleIdentityStsV1betaAccessBoundary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_boundary_rules, as: 'accessBoundaryRules', class: Google::Apis::StsV1beta::GoogleIdentityStsV1betaAccessBoundaryRule, decorator: Google::Apis::StsV1beta::GoogleIdentityStsV1betaAccessBoundaryRule::Representation
      
        end
      end
      
      class GoogleIdentityStsV1betaAccessBoundaryRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_condition, as: 'availabilityCondition', class: Google::Apis::StsV1beta::GoogleTypeExpr, decorator: Google::Apis::StsV1beta::GoogleTypeExpr::Representation
      
          collection :available_permissions, as: 'availablePermissions'
          property :available_resource, as: 'availableResource'
        end
      end
      
      class GoogleIdentityStsV1betaExchangeTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :grant_type, as: 'grantType'
          property :options, as: 'options'
          property :requested_token_type, as: 'requestedTokenType'
          property :scope, as: 'scope'
          property :subject_token, as: 'subjectToken'
          property :subject_token_type, as: 'subjectTokenType'
        end
      end
      
      class GoogleIdentityStsV1betaExchangeTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :expires_in, as: 'expires_in'
          property :issued_token_type, as: 'issued_token_type'
          property :token_type, as: 'token_type'
        end
      end
      
      class GoogleIdentityStsV1betaOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_boundary, as: 'accessBoundary', class: Google::Apis::StsV1beta::GoogleIdentityStsV1betaAccessBoundary, decorator: Google::Apis::StsV1beta::GoogleIdentityStsV1betaAccessBoundary::Representation
      
          property :user_project, as: 'userProject'
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
