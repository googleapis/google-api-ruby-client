# Copyright 2015 Google Inc.
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
    module CloudresourcemanagerV1
      
      class OrgPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lien
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Ancestor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetOrgPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Organization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAvailableOrgPolicyConstraintsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetAncestryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchOrganizationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetAncestryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FolderOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAvailableOrgPolicyConstraintsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetEffectiveOrgPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrgPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLiensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Constraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetOrgPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreDefault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearOrgPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteProjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectCreationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationOwner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrgPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchOrganizationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FolderOperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrgPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
          property :restore_default, as: 'restoreDefault', class: Google::Apis::CloudresourcemanagerV1::RestoreDefault, decorator: Google::Apis::CloudresourcemanagerV1::RestoreDefault::Representation
      
          property :list_policy, as: 'listPolicy', class: Google::Apis::CloudresourcemanagerV1::ListPolicy, decorator: Google::Apis::CloudresourcemanagerV1::ListPolicy::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :constraint, as: 'constraint'
          property :boolean_policy, as: 'booleanPolicy', class: Google::Apis::CloudresourcemanagerV1::BooleanPolicy, decorator: Google::Apis::CloudresourcemanagerV1::BooleanPolicy::Representation
      
        end
      end
      
      class BooleanPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforced, as: 'enforced'
        end
      end
      
      class Lien
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reason, as: 'reason'
          property :origin, as: 'origin'
          collection :restrictions, as: 'restrictions'
          property :parent, as: 'parent'
          property :create_time, as: 'createTime'
        end
      end
      
      class Ancestor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::CloudresourcemanagerV1::ResourceId, decorator: Google::Apis::CloudresourcemanagerV1::ResourceId::Representation
      
        end
      end
      
      class ListConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_value, as: 'suggestedValue'
        end
      end
      
      class SetOrgPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudresourcemanagerV1::OrgPolicy, decorator: Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_mask, as: 'updateMask'
          property :policy, as: 'policy', class: Google::Apis::CloudresourcemanagerV1::Policy, decorator: Google::Apis::CloudresourcemanagerV1::Policy::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Organization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :owner, as: 'owner', class: Google::Apis::CloudresourcemanagerV1::OrganizationOwner, decorator: Google::Apis::CloudresourcemanagerV1::OrganizationOwner::Representation
      
          property :lifecycle_state, as: 'lifecycleState'
          property :name, as: 'name'
          property :display_name, as: 'displayName'
        end
      end
      
      class ListAvailableOrgPolicyConstraintsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :constraints, as: 'constraints', class: Google::Apis::CloudresourcemanagerV1::Constraint, decorator: Google::Apis::CloudresourcemanagerV1::Constraint::Representation
      
        end
      end
      
      class ListPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          property :suggested_value, as: 'suggestedValue'
          property :inherit_from_parent, as: 'inheritFromParent'
          collection :denied_values, as: 'deniedValues'
          property :all_values, as: 'allValues'
        end
      end
      
      class GetAncestryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ancestor, as: 'ancestor', class: Google::Apis::CloudresourcemanagerV1::Ancestor, decorator: Google::Apis::CloudresourcemanagerV1::Ancestor::Representation
      
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class SearchOrganizationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class GetAncestryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class FolderOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_type, as: 'operationType'
          property :display_name, as: 'displayName'
          property :source_parent, as: 'sourceParent'
          property :destination_parent, as: 'destinationParent'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudresourcemanagerV1::AuditConfig, decorator: Google::Apis::CloudresourcemanagerV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudresourcemanagerV1::Binding, decorator: Google::Apis::CloudresourcemanagerV1::Binding::Representation
      
        end
      end
      
      class ListAvailableOrgPolicyConstraintsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class ResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class GetEffectiveOrgPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint, as: 'constraint'
        end
      end
      
      class ListOrgPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::CloudresourcemanagerV1::Status, decorator: Google::Apis::CloudresourcemanagerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudresourcemanagerV1::AuditLogConfig, decorator: Google::Apis::CloudresourcemanagerV1::AuditLogConfig::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class ListLiensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :liens, as: 'liens', class: Google::Apis::CloudresourcemanagerV1::Lien, decorator: Google::Apis::CloudresourcemanagerV1::Lien::Representation
      
        end
      end
      
      class Constraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :description, as: 'description'
          property :boolean_constraint, as: 'booleanConstraint', class: Google::Apis::CloudresourcemanagerV1::BooleanConstraint, decorator: Google::Apis::CloudresourcemanagerV1::BooleanConstraint::Representation
      
          property :constraint_default, as: 'constraintDefault'
          property :name, as: 'name'
          property :version, as: 'version'
          property :list_constraint, as: 'listConstraint', class: Google::Apis::CloudresourcemanagerV1::ListConstraint, decorator: Google::Apis::CloudresourcemanagerV1::ListConstraint::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GetOrgPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint, as: 'constraint'
        end
      end
      
      class RestoreDefault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ClearOrgPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, :base64 => true, as: 'etag'
          property :constraint, as: 'constraint'
        end
      end
      
      class UndeleteProjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ProjectCreationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ready, as: 'ready'
          property :create_time, as: 'createTime'
          property :gettable, as: 'gettable'
        end
      end
      
      class BooleanConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class OrganizationOwner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory_customer_id, as: 'directoryCustomerId'
        end
      end
      
      class ListProjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :projects, as: 'projects', class: Google::Apis::CloudresourcemanagerV1::Project, decorator: Google::Apis::CloudresourcemanagerV1::Project::Representation
      
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :lifecycle_state, as: 'lifecycleState'
          property :project_number, :numeric_string => true, as: 'projectNumber'
          property :parent, as: 'parent', class: Google::Apis::CloudresourcemanagerV1::ResourceId, decorator: Google::Apis::CloudresourcemanagerV1::ResourceId::Representation
      
          hash :labels, as: 'labels'
          property :create_time, as: 'createTime'
        end
      end
      
      class ListOrgPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::CloudresourcemanagerV1::OrgPolicy, decorator: Google::Apis::CloudresourcemanagerV1::OrgPolicy::Representation
      
        end
      end
      
      class SearchOrganizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :organizations, as: 'organizations', class: Google::Apis::CloudresourcemanagerV1::Organization, decorator: Google::Apis::CloudresourcemanagerV1::Organization::Representation
      
        end
      end
      
      class FolderOperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message_id, as: 'errorMessageId'
        end
      end
    end
  end
end
