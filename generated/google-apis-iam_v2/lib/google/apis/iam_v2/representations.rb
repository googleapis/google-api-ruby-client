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
    module IamV2
      
      class GoogleIamAdminV1AuditData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamAdminV1AuditDataPermissionDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1BindingDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1LoggingAuditData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1PolicyDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2DenyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2ListPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2PolicyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2PolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamAdminV1AuditData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_delta, as: 'permissionDelta', class: Google::Apis::IamV2::GoogleIamAdminV1AuditDataPermissionDelta, decorator: Google::Apis::IamV2::GoogleIamAdminV1AuditDataPermissionDelta::Representation
      
        end
      end
      
      class GoogleIamAdminV1AuditDataPermissionDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :added_permissions, as: 'addedPermissions'
          collection :removed_permissions, as: 'removedPermissions'
        end
      end
      
      class GoogleIamV1BindingDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :condition, as: 'condition', class: Google::Apis::IamV2::GoogleTypeExpr, decorator: Google::Apis::IamV2::GoogleTypeExpr::Representation
      
          property :member, as: 'member'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1LoggingAuditData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_delta, as: 'policyDelta', class: Google::Apis::IamV2::GoogleIamV1PolicyDelta, decorator: Google::Apis::IamV2::GoogleIamV1PolicyDelta::Representation
      
        end
      end
      
      class GoogleIamV1PolicyDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :binding_deltas, as: 'bindingDeltas', class: Google::Apis::IamV2::GoogleIamV1BindingDelta, decorator: Google::Apis::IamV2::GoogleIamV1BindingDelta::Representation
      
        end
      end
      
      class GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleIamV2DenyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :denial_condition, as: 'denialCondition', class: Google::Apis::IamV2::GoogleTypeExpr, decorator: Google::Apis::IamV2::GoogleTypeExpr::Representation
      
          collection :denied_permissions, as: 'deniedPermissions'
          collection :denied_principals, as: 'deniedPrincipals'
          collection :exception_permissions, as: 'exceptionPermissions'
          collection :exception_principals, as: 'exceptionPrincipals'
        end
      end
      
      class GoogleIamV2ListPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::IamV2::GoogleIamV2Policy, decorator: Google::Apis::IamV2::GoogleIamV2Policy::Representation
      
        end
      end
      
      class GoogleIamV2Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::IamV2::GoogleIamV2PolicyRule, decorator: Google::Apis::IamV2::GoogleIamV2PolicyRule::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleIamV2PolicyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleIamV2PolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deny_rule, as: 'denyRule', class: Google::Apis::IamV2::GoogleIamV2DenyRule, decorator: Google::Apis::IamV2::GoogleIamV2DenyRule::Representation
      
          property :description, as: 'description'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::IamV2::GoogleRpcStatus, decorator: Google::Apis::IamV2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
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
