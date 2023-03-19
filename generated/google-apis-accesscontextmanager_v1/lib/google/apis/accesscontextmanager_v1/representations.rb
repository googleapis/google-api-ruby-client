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
    module AccesscontextmanagerV1
      
      class AccessContextManagerOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedOrgsDesc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitServicePerimetersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitServicePerimetersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DevicePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EgressFrom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EgressPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EgressTo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpUserAccessBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpUserAccessBindingOperationMetadata
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
      
      class IngressFrom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngressPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngressSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngressTo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccessLevelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccessPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthorizedOrgsDescsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGcpUserAccessBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicePerimetersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceAccessLevelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceAccessLevelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceServicePerimetersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceServicePerimetersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServicePerimeter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServicePerimeterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
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
      
      class VpcAccessibleServices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessContextManagerOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AccessLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic, as: 'basic', class: Google::Apis::AccesscontextmanagerV1::BasicLevel, decorator: Google::Apis::AccesscontextmanagerV1::BasicLevel::Representation
      
          property :custom, as: 'custom', class: Google::Apis::AccesscontextmanagerV1::CustomLevel, decorator: Google::Apis::AccesscontextmanagerV1::CustomLevel::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          property :title, as: 'title'
        end
      end
      
      class AccessPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :parent, as: 'parent'
          collection :scopes, as: 'scopes'
          property :title, as: 'title'
        end
      end
      
      class ApiOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :method_selectors, as: 'methodSelectors', class: Google::Apis::AccesscontextmanagerV1::MethodSelector, decorator: Google::Apis::AccesscontextmanagerV1::MethodSelector::Representation
      
          property :service_name, as: 'serviceName'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::AccesscontextmanagerV1::AuditLogConfig, decorator: Google::Apis::AccesscontextmanagerV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class AuthorizedOrgsDesc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_type, as: 'assetType'
          property :authorization_direction, as: 'authorizationDirection'
          property :authorization_type, as: 'authorizationType'
          property :name, as: 'name'
          collection :orgs, as: 'orgs'
        end
      end
      
      class BasicLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combining_function, as: 'combiningFunction'
          collection :conditions, as: 'conditions', class: Google::Apis::AccesscontextmanagerV1::Condition, decorator: Google::Apis::AccesscontextmanagerV1::Condition::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::AccesscontextmanagerV1::Expr, decorator: Google::Apis::AccesscontextmanagerV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CommitServicePerimetersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
        end
      end
      
      class CommitServicePerimetersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_perimeters, as: 'servicePerimeters', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeter, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
      
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_policy, as: 'devicePolicy', class: Google::Apis::AccesscontextmanagerV1::DevicePolicy, decorator: Google::Apis::AccesscontextmanagerV1::DevicePolicy::Representation
      
          collection :ip_subnetworks, as: 'ipSubnetworks'
          collection :members, as: 'members'
          property :negate, as: 'negate'
          collection :regions, as: 'regions'
          collection :required_access_levels, as: 'requiredAccessLevels'
        end
      end
      
      class CustomLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expr, as: 'expr', class: Google::Apis::AccesscontextmanagerV1::Expr, decorator: Google::Apis::AccesscontextmanagerV1::Expr::Representation
      
        end
      end
      
      class DevicePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_device_management_levels, as: 'allowedDeviceManagementLevels'
          collection :allowed_encryption_statuses, as: 'allowedEncryptionStatuses'
          collection :os_constraints, as: 'osConstraints', class: Google::Apis::AccesscontextmanagerV1::OsConstraint, decorator: Google::Apis::AccesscontextmanagerV1::OsConstraint::Representation
      
          property :require_admin_approval, as: 'requireAdminApproval'
          property :require_corp_owned, as: 'requireCorpOwned'
          property :require_screenlock, as: 'requireScreenlock'
        end
      end
      
      class EgressFrom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identities, as: 'identities'
          property :identity_type, as: 'identityType'
        end
      end
      
      class EgressPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_from, as: 'egressFrom', class: Google::Apis::AccesscontextmanagerV1::EgressFrom, decorator: Google::Apis::AccesscontextmanagerV1::EgressFrom::Representation
      
          property :egress_to, as: 'egressTo', class: Google::Apis::AccesscontextmanagerV1::EgressTo, decorator: Google::Apis::AccesscontextmanagerV1::EgressTo::Representation
      
        end
      end
      
      class EgressTo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :external_resources, as: 'externalResources'
          collection :operations, as: 'operations', class: Google::Apis::AccesscontextmanagerV1::ApiOperation, decorator: Google::Apis::AccesscontextmanagerV1::ApiOperation::Representation
      
          collection :resources, as: 'resources'
        end
      end
      
      class Empty
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
      
      class GcpUserAccessBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels'
          collection :dry_run_access_levels, as: 'dryRunAccessLevels'
          property :group_key, as: 'groupKey'
          property :name, as: 'name'
        end
      end
      
      class GcpUserAccessBindingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::AccesscontextmanagerV1::GetPolicyOptions, decorator: Google::Apis::AccesscontextmanagerV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class IngressFrom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identities, as: 'identities'
          property :identity_type, as: 'identityType'
          collection :sources, as: 'sources', class: Google::Apis::AccesscontextmanagerV1::IngressSource, decorator: Google::Apis::AccesscontextmanagerV1::IngressSource::Representation
      
        end
      end
      
      class IngressPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingress_from, as: 'ingressFrom', class: Google::Apis::AccesscontextmanagerV1::IngressFrom, decorator: Google::Apis::AccesscontextmanagerV1::IngressFrom::Representation
      
          property :ingress_to, as: 'ingressTo', class: Google::Apis::AccesscontextmanagerV1::IngressTo, decorator: Google::Apis::AccesscontextmanagerV1::IngressTo::Representation
      
        end
      end
      
      class IngressSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_level, as: 'accessLevel'
          property :resource, as: 'resource'
        end
      end
      
      class IngressTo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::AccesscontextmanagerV1::ApiOperation, decorator: Google::Apis::AccesscontextmanagerV1::ApiOperation::Representation
      
          collection :resources, as: 'resources'
        end
      end
      
      class ListAccessLevelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels', class: Google::Apis::AccesscontextmanagerV1::AccessLevel, decorator: Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAccessPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_policies, as: 'accessPolicies', class: Google::Apis::AccesscontextmanagerV1::AccessPolicy, decorator: Google::Apis::AccesscontextmanagerV1::AccessPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAuthorizedOrgsDescsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_orgs_descs, as: 'authorizedOrgsDescs', class: Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc, decorator: Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGcpUserAccessBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcp_user_access_bindings, as: 'gcpUserAccessBindings', class: Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding, decorator: Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AccesscontextmanagerV1::Operation, decorator: Google::Apis::AccesscontextmanagerV1::Operation::Representation
      
        end
      end
      
      class ListServicePerimetersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_perimeters, as: 'servicePerimeters', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeter, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
      
        end
      end
      
      class MethodSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :permission, as: 'permission'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AccesscontextmanagerV1::Status, decorator: Google::Apis::AccesscontextmanagerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OsConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_version, as: 'minimumVersion'
          property :os_type, as: 'osType'
          property :require_verified_chrome_os, as: 'requireVerifiedChromeOs'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::AccesscontextmanagerV1::AuditConfig, decorator: Google::Apis::AccesscontextmanagerV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::AccesscontextmanagerV1::Binding, decorator: Google::Apis::AccesscontextmanagerV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReplaceAccessLevelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels', class: Google::Apis::AccesscontextmanagerV1::AccessLevel, decorator: Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
      
          property :etag, as: 'etag'
        end
      end
      
      class ReplaceAccessLevelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels', class: Google::Apis::AccesscontextmanagerV1::AccessLevel, decorator: Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
      
        end
      end
      
      class ReplaceServicePerimetersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :service_perimeters, as: 'servicePerimeters', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeter, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
      
        end
      end
      
      class ReplaceServicePerimetersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_perimeters, as: 'servicePerimeters', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeter, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
      
        end
      end
      
      class ServicePerimeter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :perimeter_type, as: 'perimeterType'
          property :spec, as: 'spec', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig::Representation
      
          property :status, as: 'status', class: Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig, decorator: Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig::Representation
      
          property :title, as: 'title'
          property :use_explicit_dry_run_spec, as: 'useExplicitDryRunSpec'
        end
      end
      
      class ServicePerimeterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels'
          collection :egress_policies, as: 'egressPolicies', class: Google::Apis::AccesscontextmanagerV1::EgressPolicy, decorator: Google::Apis::AccesscontextmanagerV1::EgressPolicy::Representation
      
          collection :ingress_policies, as: 'ingressPolicies', class: Google::Apis::AccesscontextmanagerV1::IngressPolicy, decorator: Google::Apis::AccesscontextmanagerV1::IngressPolicy::Representation
      
          collection :resources, as: 'resources'
          collection :restricted_services, as: 'restrictedServices'
          property :vpc_accessible_services, as: 'vpcAccessibleServices', class: Google::Apis::AccesscontextmanagerV1::VpcAccessibleServices, decorator: Google::Apis::AccesscontextmanagerV1::VpcAccessibleServices::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::AccesscontextmanagerV1::Policy, decorator: Google::Apis::AccesscontextmanagerV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class VpcAccessibleServices
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_services, as: 'allowedServices'
          property :enable_restriction, as: 'enableRestriction'
        end
      end
    end
  end
end
