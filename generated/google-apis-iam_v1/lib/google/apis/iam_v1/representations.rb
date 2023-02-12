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
    module IamV1
      
      class AdminAuditData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditableService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aws
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BindingDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateRoleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateServiceAccountKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableServiceAccountKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableServiceAccountKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamAdminV1WorkforcePoolProviderOidc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamAdminV1WorkforcePoolProviderSaml
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LintPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LintPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LintResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRolesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceAccountKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkforcePoolProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkforcePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkloadIdentityPoolProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkloadIdentityPoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oidc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PermissionDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryAuditableServicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryAuditableServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryGrantableRolesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryGrantableRolesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTestablePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTestablePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Role
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Saml
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignBlobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignBlobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignJwtRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignJwtResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteRoleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteServiceAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteWorkforcePoolProviderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteWorkforcePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteWorkforcePoolSubjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteWorkloadIdentityPoolProviderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteWorkloadIdentityPoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadServiceAccountKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforcePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforcePoolProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadIdentityPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadIdentityPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadIdentityPoolProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminAuditData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_delta, as: 'permissionDelta', class: Google::Apis::IamV1::PermissionDelta, decorator: Google::Apis::IamV1::PermissionDelta::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::IamV1::AuditLogConfig, decorator: Google::Apis::IamV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_delta, as: 'policyDelta', class: Google::Apis::IamV1::PolicyDelta, decorator: Google::Apis::IamV1::PolicyDelta::Representation
      
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class AuditableService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Aws
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::IamV1::Expr, decorator: Google::Apis::IamV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BindingDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :condition, as: 'condition', class: Google::Apis::IamV1::Expr, decorator: Google::Apis::IamV1::Expr::Representation
      
          property :member, as: 'member'
          property :role, as: 'role'
        end
      end
      
      class CreateRoleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role', class: Google::Apis::IamV1::Role, decorator: Google::Apis::IamV1::Role::Representation
      
          property :role_id, as: 'roleId'
        end
      end
      
      class CreateServiceAccountKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_algorithm, as: 'keyAlgorithm'
          property :private_key_type, as: 'privateKeyType'
        end
      end
      
      class CreateServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :service_account, as: 'serviceAccount', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
        end
      end
      
      class DisableServiceAccountKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisableServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableServiceAccountKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::IamV1::GetPolicyOptions, decorator: Google::Apis::IamV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleIamAdminV1WorkforcePoolProviderOidc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :issuer_uri, as: 'issuerUri'
        end
      end
      
      class GoogleIamAdminV1WorkforcePoolProviderSaml
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_metadata_xml, as: 'idpMetadataXml'
        end
      end
      
      class LintPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::IamV1::Expr, decorator: Google::Apis::IamV1::Expr::Representation
      
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class LintPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lint_results, as: 'lintResults', class: Google::Apis::IamV1::LintResult, decorator: Google::Apis::IamV1::LintResult::Representation
      
        end
      end
      
      class LintResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_message, as: 'debugMessage'
          property :field_name, as: 'fieldName'
          property :level, as: 'level'
          property :location_offset, as: 'locationOffset'
          property :severity, as: 'severity'
          property :validation_unit_name, as: 'validationUnitName'
        end
      end
      
      class ListRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :roles, as: 'roles', class: Google::Apis::IamV1::Role, decorator: Google::Apis::IamV1::Role::Representation
      
        end
      end
      
      class ListServiceAccountKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::IamV1::ServiceAccountKey, decorator: Google::Apis::IamV1::ServiceAccountKey::Representation
      
        end
      end
      
      class ListServiceAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListWorkforcePoolProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workforce_pool_providers, as: 'workforcePoolProviders', class: Google::Apis::IamV1::WorkforcePoolProvider, decorator: Google::Apis::IamV1::WorkforcePoolProvider::Representation
      
        end
      end
      
      class ListWorkforcePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workforce_pools, as: 'workforcePools', class: Google::Apis::IamV1::WorkforcePool, decorator: Google::Apis::IamV1::WorkforcePool::Representation
      
        end
      end
      
      class ListWorkloadIdentityPoolProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workload_identity_pool_providers, as: 'workloadIdentityPoolProviders', class: Google::Apis::IamV1::WorkloadIdentityPoolProvider, decorator: Google::Apis::IamV1::WorkloadIdentityPoolProvider::Representation
      
        end
      end
      
      class ListWorkloadIdentityPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workload_identity_pools, as: 'workloadIdentityPools', class: Google::Apis::IamV1::WorkloadIdentityPool, decorator: Google::Apis::IamV1::WorkloadIdentityPool::Representation
      
        end
      end
      
      class Oidc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_audiences, as: 'allowedAudiences'
          property :issuer_uri, as: 'issuerUri'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::IamV1::Status, decorator: Google::Apis::IamV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PatchServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Permission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_disabled, as: 'apiDisabled'
          property :custom_roles_support_level, as: 'customRolesSupportLevel'
          property :description, as: 'description'
          property :name, as: 'name'
          property :only_in_predefined_roles, as: 'onlyInPredefinedRoles'
          property :primary_permission, as: 'primaryPermission'
          property :stage, as: 'stage'
          property :title, as: 'title'
        end
      end
      
      class PermissionDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :added_permissions, as: 'addedPermissions'
          collection :removed_permissions, as: 'removedPermissions'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::IamV1::AuditConfig, decorator: Google::Apis::IamV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::IamV1::Binding, decorator: Google::Apis::IamV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :binding_deltas, as: 'bindingDeltas', class: Google::Apis::IamV1::BindingDelta, decorator: Google::Apis::IamV1::BindingDelta::Representation
      
        end
      end
      
      class QueryAuditableServicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class QueryAuditableServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::IamV1::AuditableService, decorator: Google::Apis::IamV1::AuditableService::Representation
      
        end
      end
      
      class QueryGrantableRolesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :view, as: 'view'
        end
      end
      
      class QueryGrantableRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :roles, as: 'roles', class: Google::Apis::IamV1::Role, decorator: Google::Apis::IamV1::Role::Representation
      
        end
      end
      
      class QueryTestablePermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class QueryTestablePermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :permissions, as: 'permissions', class: Google::Apis::IamV1::Permission, decorator: Google::Apis::IamV1::Permission::Representation
      
        end
      end
      
      class Role
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :etag, :base64 => true, as: 'etag'
          collection :included_permissions, as: 'includedPermissions'
          property :name, as: 'name'
          property :stage, as: 'stage'
          property :title, as: 'title'
        end
      end
      
      class Saml
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_metadata_xml, as: 'idpMetadataXml'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :etag, :base64 => true, as: 'etag'
          property :name, as: 'name'
          property :oauth2_client_id, as: 'oauth2ClientId'
          property :project_id, as: 'projectId'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class ServiceAccountKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :key_algorithm, as: 'keyAlgorithm'
          property :key_origin, as: 'keyOrigin'
          property :key_type, as: 'keyType'
          property :name, as: 'name'
          property :private_key_data, :base64 => true, as: 'privateKeyData'
          property :private_key_type, as: 'privateKeyType'
          property :public_key_data, :base64 => true, as: 'publicKeyData'
          property :valid_after_time, as: 'validAfterTime'
          property :valid_before_time, as: 'validBeforeTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::IamV1::Policy, decorator: Google::Apis::IamV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SignBlobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_to_sign, :base64 => true, as: 'bytesToSign'
        end
      end
      
      class SignBlobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class SignJwtRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload'
        end
      end
      
      class SignJwtResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :signed_jwt, as: 'signedJwt'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UndeleteRoleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, :base64 => true, as: 'etag'
        end
      end
      
      class UndeleteServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndeleteServiceAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restored_account, as: 'restoredAccount', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
        end
      end
      
      class UndeleteWorkforcePoolProviderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndeleteWorkforcePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndeleteWorkforcePoolSubjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndeleteWorkloadIdentityPoolProviderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndeleteWorkloadIdentityPoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadServiceAccountKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_data, :base64 => true, as: 'publicKeyData'
        end
      end
      
      class WorkforcePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :session_duration, as: 'sessionDuration'
          property :state, as: 'state'
        end
      end
      
      class WorkforcePoolProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_condition, as: 'attributeCondition'
          hash :attribute_mapping, as: 'attributeMapping'
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :oidc, as: 'oidc', class: Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderOidc, decorator: Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderOidc::Representation
      
          property :saml, as: 'saml', class: Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderSaml, decorator: Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderSaml::Representation
      
          property :state, as: 'state'
        end
      end
      
      class WorkloadIdentityPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class WorkloadIdentityPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WorkloadIdentityPoolProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_condition, as: 'attributeCondition'
          hash :attribute_mapping, as: 'attributeMapping'
          property :aws, as: 'aws', class: Google::Apis::IamV1::Aws, decorator: Google::Apis::IamV1::Aws::Representation
      
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :oidc, as: 'oidc', class: Google::Apis::IamV1::Oidc, decorator: Google::Apis::IamV1::Oidc::Representation
      
          property :saml, as: 'saml', class: Google::Apis::IamV1::Saml, decorator: Google::Apis::IamV1::Saml::Representation
      
          property :state, as: 'state'
        end
      end
    end
  end
end
