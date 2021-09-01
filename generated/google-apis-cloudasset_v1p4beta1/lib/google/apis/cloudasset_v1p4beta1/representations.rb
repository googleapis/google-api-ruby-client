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
    module CloudassetV1p4beta1
      
      class AccessSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyLongrunningMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyLongrunningResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyResponse
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
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportIamPolicyAnalysisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1AccessControlList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1AnalysisState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Edge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1IdentityList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p7beta1Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p7beta1RelatedAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p7beta1RelatedAssets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p7beta1RelationshipAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p7beta1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV1BooleanPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV1ListPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV1RestoreDefault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1AccessLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1AccessPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1ApiOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1BasicLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1CustomLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1DevicePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressFrom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressTo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressFrom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressTo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1MethodSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1OsConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentitySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
          collection :roles, as: 'roles'
        end
      end
      
      class AnalyzeIamPolicyLongrunningMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
        end
      end
      
      class AnalyzeIamPolicyLongrunningResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AnalyzeIamPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_explored, as: 'fullyExplored'
          property :main_analysis, as: 'mainAnalysis', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis::Representation
      
          collection :non_critical_errors, as: 'nonCriticalErrors', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          collection :service_account_impersonation_analysis, as: 'serviceAccountImpersonationAnalysis', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudassetV1p4beta1::AuditLogConfig, decorator: Google::Apis::CloudassetV1p4beta1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudassetV1p4beta1::Expr, decorator: Google::Apis::CloudassetV1p4beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ExportIamPolicyAnalysisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery::Representation
      
          property :options, as: 'options', class: Google::Apis::CloudassetV1p4beta1::Options, decorator: Google::Apis::CloudassetV1p4beta1::Options::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisOutputConfig, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisOutputConfig::Representation
      
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
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :permission, as: 'permission'
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudAssetV1p4beta1AccessControlList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accesses, as: 'accesses', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Access, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Access::Representation
      
          collection :resource_edges, as: 'resourceEdges', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Resource, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Resource::Representation
      
        end
      end
      
      class GoogleCloudAssetV1p4beta1AnalysisState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :code, as: 'code'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Edge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_node, as: 'sourceNode'
          property :target_node, as: 'targetNode'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAssetV1p4beta1IdentityList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_edges, as: 'groupEdges', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge::Representation
      
          collection :identities, as: 'identities', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Identity, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Identity::Representation
      
        end
      end
      
      class GoogleCloudAssetV1p4beta1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class GoogleCloudAssetV1p7beta1Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_level, as: 'accessLevel', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1AccessLevel, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1AccessLevel::Representation
      
          property :access_policy, as: 'accessPolicy', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1AccessPolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1AccessPolicy::Representation
      
          collection :ancestors, as: 'ancestors'
          property :asset_type, as: 'assetType'
          property :iam_policy, as: 'iamPolicy', class: Google::Apis::CloudassetV1p4beta1::Policy, decorator: Google::Apis::CloudassetV1p4beta1::Policy::Representation
      
          property :name, as: 'name'
          collection :org_policy, as: 'orgPolicy', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1Policy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1Policy::Representation
      
          property :related_assets, as: 'relatedAssets', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelatedAssets, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelatedAssets::Representation
      
          property :resource, as: 'resource', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1Resource, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1Resource::Representation
      
          property :service_perimeter, as: 'servicePerimeter', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssetV1p7beta1RelatedAsset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ancestors, as: 'ancestors'
          property :asset, as: 'asset'
          property :asset_type, as: 'assetType'
        end
      end
      
      class GoogleCloudAssetV1p7beta1RelatedAssets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelatedAsset, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelatedAsset::Representation
      
          property :relationship_attributes, as: 'relationshipAttributes', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelationshipAttributes, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p7beta1RelationshipAttributes::Representation
      
        end
      end
      
      class GoogleCloudAssetV1p7beta1RelationshipAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :source_resource_type, as: 'sourceResourceType'
          property :target_resource_type, as: 'targetResourceType'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAssetV1p7beta1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          property :discovery_document_uri, as: 'discoveryDocumentUri'
          property :discovery_name, as: 'discoveryName'
          property :location, as: 'location'
          property :parent, as: 'parent'
          property :resource_url, as: 'resourceUrl'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudOrgpolicyV1BooleanPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforced, as: 'enforced'
        end
      end
      
      class GoogleCloudOrgpolicyV1ListPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_values, as: 'allValues'
          collection :allowed_values, as: 'allowedValues'
          collection :denied_values, as: 'deniedValues'
          property :inherit_from_parent, as: 'inheritFromParent'
          property :suggested_value, as: 'suggestedValue'
        end
      end
      
      class GoogleCloudOrgpolicyV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_policy, as: 'booleanPolicy', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1BooleanPolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1BooleanPolicy::Representation
      
          property :constraint, as: 'constraint'
          property :etag, :base64 => true, as: 'etag'
          property :list_policy, as: 'listPolicy', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1ListPolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1ListPolicy::Representation
      
          property :restore_default, as: 'restoreDefault', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1RestoreDefault, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudOrgpolicyV1RestoreDefault::Representation
      
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudOrgpolicyV1RestoreDefault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1AccessLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic, as: 'basic', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1BasicLevel, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1BasicLevel::Representation
      
          property :custom, as: 'custom', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1CustomLevel, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1CustomLevel::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          property :title, as: 'title'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1AccessPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :title, as: 'title'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1ApiOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :method_selectors, as: 'methodSelectors', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1MethodSelector, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1MethodSelector::Representation
      
          property :service_name, as: 'serviceName'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1BasicLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combining_function, as: 'combiningFunction'
          collection :conditions, as: 'conditions', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1Condition, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1Condition::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_policy, as: 'devicePolicy', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1DevicePolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1DevicePolicy::Representation
      
          collection :ip_subnetworks, as: 'ipSubnetworks'
          collection :members, as: 'members'
          property :negate, as: 'negate'
          collection :regions, as: 'regions'
          collection :required_access_levels, as: 'requiredAccessLevels'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1CustomLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expr, as: 'expr', class: Google::Apis::CloudassetV1p4beta1::Expr, decorator: Google::Apis::CloudassetV1p4beta1::Expr::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1DevicePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_device_management_levels, as: 'allowedDeviceManagementLevels'
          collection :allowed_encryption_statuses, as: 'allowedEncryptionStatuses'
          collection :os_constraints, as: 'osConstraints', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1OsConstraint, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1OsConstraint::Representation
      
          property :require_admin_approval, as: 'requireAdminApproval'
          property :require_corp_owned, as: 'requireCorpOwned'
          property :require_screenlock, as: 'requireScreenlock'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressFrom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identities, as: 'identities'
          property :identity_type, as: 'identityType'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_from, as: 'egressFrom', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressFrom, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressFrom::Representation
      
          property :egress_to, as: 'egressTo', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressTo, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressTo::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1EgressTo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation::Representation
      
          collection :resources, as: 'resources'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressFrom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identities, as: 'identities'
          property :identity_type, as: 'identityType'
          collection :sources, as: 'sources', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressSource, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressSource::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingress_from, as: 'ingressFrom', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressFrom, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressFrom::Representation
      
          property :ingress_to, as: 'ingressTo', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressTo, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressTo::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_level, as: 'accessLevel'
          property :resource, as: 'resource'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1IngressTo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ApiOperation::Representation
      
          collection :resources, as: 'resources'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1MethodSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :permission, as: 'permission'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1OsConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_version, as: 'minimumVersion'
          property :os_type, as: 'osType'
          property :require_verified_chrome_os, as: 'requireVerifiedChromeOs'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :perimeter_type, as: 'perimeterType'
          property :spec, as: 'spec', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig::Representation
      
          property :title, as: 'title'
          property :use_explicit_dry_run_spec, as: 'useExplicitDryRunSpec'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels'
          collection :egress_policies, as: 'egressPolicies', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressPolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1EgressPolicy::Representation
      
          collection :ingress_policies, as: 'ingressPolicies', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressPolicy, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1IngressPolicy::Representation
      
          collection :resources, as: 'resources'
          collection :restricted_services, as: 'restrictedServices'
          property :vpc_accessible_services, as: 'vpcAccessibleServices', class: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices, decorator: Google::Apis::CloudassetV1p4beta1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_services, as: 'allowedServices'
          property :enable_restriction, as: 'enableRestriction'
        end
      end
      
      class IamPolicyAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery::Representation
      
          collection :analysis_results, as: 'analysisResults', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisResult, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisResult::Representation
      
          property :fully_explored, as: 'fullyExplored'
        end
      end
      
      class IamPolicyAnalysisOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::CloudassetV1p4beta1::GcsDestination, decorator: Google::Apis::CloudassetV1p4beta1::GcsDestination::Representation
      
        end
      end
      
      class IamPolicyAnalysisQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_selector, as: 'accessSelector', class: Google::Apis::CloudassetV1p4beta1::AccessSelector, decorator: Google::Apis::CloudassetV1p4beta1::AccessSelector::Representation
      
          property :identity_selector, as: 'identitySelector', class: Google::Apis::CloudassetV1p4beta1::IdentitySelector, decorator: Google::Apis::CloudassetV1p4beta1::IdentitySelector::Representation
      
          property :parent, as: 'parent'
          property :resource_selector, as: 'resourceSelector', class: Google::Apis::CloudassetV1p4beta1::ResourceSelector, decorator: Google::Apis::CloudassetV1p4beta1::ResourceSelector::Representation
      
        end
      end
      
      class IamPolicyAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_control_lists, as: 'accessControlLists', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AccessControlList, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AccessControlList::Representation
      
          property :attached_resource_full_name, as: 'attachedResourceFullName'
          property :fully_explored, as: 'fullyExplored'
          property :iam_binding, as: 'iamBinding', class: Google::Apis::CloudassetV1p4beta1::Binding, decorator: Google::Apis::CloudassetV1p4beta1::Binding::Representation
      
          property :identity_list, as: 'identityList', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1IdentityList, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1IdentityList::Representation
      
        end
      end
      
      class IdentitySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudassetV1p4beta1::Status, decorator: Google::Apis::CloudassetV1p4beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyze_service_account_impersonation, as: 'analyzeServiceAccountImpersonation'
          property :expand_groups, as: 'expandGroups'
          property :expand_resources, as: 'expandResources'
          property :expand_roles, as: 'expandRoles'
          property :output_group_edges, as: 'outputGroupEdges'
          property :output_resource_edges, as: 'outputResourceEdges'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudassetV1p4beta1::AuditConfig, decorator: Google::Apis::CloudassetV1p4beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudassetV1p4beta1::Binding, decorator: Google::Apis::CloudassetV1p4beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ResourceSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
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
    end
  end
end
