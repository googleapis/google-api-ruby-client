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
    module CloudassetV1
      
      class AccessSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyLongrunningRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
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
      
      class BatchGetAssetsHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateFeedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Explanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeedOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1AccessControlList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1Edge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1IdentityList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1Resource
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
      
      class IamPolicyAnalysisState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicySearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentitySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Inventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFeedsResponse
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
      
      class OsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAllIamPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAllResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwarePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TemporalAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateFeedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VersionedPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsQuickFixEngineeringPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdateCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdatePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZypperPatch
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
      
      class AnalyzeIamPolicyLongrunningRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisQuery::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::CloudassetV1::IamPolicyAnalysisOutputConfig, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisOutputConfig::Representation
      
        end
      end
      
      class AnalyzeIamPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_explored, as: 'fullyExplored'
          property :main_analysis, as: 'mainAnalysis', class: Google::Apis::CloudassetV1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysis::Representation
      
          collection :service_account_impersonation_analysis, as: 'serviceAccountImpersonationAnalysis', class: Google::Apis::CloudassetV1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysis::Representation
      
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_level, as: 'accessLevel', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessLevel, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessLevel::Representation
      
          property :access_policy, as: 'accessPolicy', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessPolicy, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessPolicy::Representation
      
          collection :ancestors, as: 'ancestors'
          property :asset_type, as: 'assetType'
          property :iam_policy, as: 'iamPolicy', class: Google::Apis::CloudassetV1::Policy, decorator: Google::Apis::CloudassetV1::Policy::Representation
      
          property :name, as: 'name'
          collection :org_policy, as: 'orgPolicy', class: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1Policy, decorator: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1Policy::Representation
      
          property :os_inventory, as: 'osInventory', class: Google::Apis::CloudassetV1::Inventory, decorator: Google::Apis::CloudassetV1::Inventory::Representation
      
          property :resource, as: 'resource', class: Google::Apis::CloudassetV1::Resource, decorator: Google::Apis::CloudassetV1::Resource::Representation
      
          property :service_perimeter, as: 'servicePerimeter', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudassetV1::AuditLogConfig, decorator: Google::Apis::CloudassetV1::AuditLogConfig::Representation
      
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
      
      class BatchGetAssetsHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::CloudassetV1::TemporalAsset, decorator: Google::Apis::CloudassetV1::TemporalAsset::Representation
      
        end
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :force, as: 'force'
          property :partition_spec, as: 'partitionSpec', class: Google::Apis::CloudassetV1::PartitionSpec, decorator: Google::Apis::CloudassetV1::PartitionSpec::Representation
      
          property :separate_tables_per_asset_type, as: 'separateTablesPerAssetType'
          property :table, as: 'table'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudassetV1::Expr, decorator: Google::Apis::CloudassetV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CreateFeedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feed, as: 'feed', class: Google::Apis::CloudassetV1::Feed, decorator: Google::Apis::CloudassetV1::Feed::Representation
      
          property :feed_id, as: 'feedId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Explanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :matched_permissions, as: 'matchedPermissions', class: Google::Apis::CloudassetV1::Permissions, decorator: Google::Apis::CloudassetV1::Permissions::Representation
      
        end
      end
      
      class ExportAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_types, as: 'assetTypes'
          property :content_type, as: 'contentType'
          property :output_config, as: 'outputConfig', class: Google::Apis::CloudassetV1::OutputConfig, decorator: Google::Apis::CloudassetV1::OutputConfig::Representation
      
          property :read_time, as: 'readTime'
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
      
      class Feed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_names, as: 'assetNames'
          collection :asset_types, as: 'assetTypes'
          property :condition, as: 'condition', class: Google::Apis::CloudassetV1::Expr, decorator: Google::Apis::CloudassetV1::Expr::Representation
      
          property :content_type, as: 'contentType'
          property :feed_output_config, as: 'feedOutputConfig', class: Google::Apis::CloudassetV1::FeedOutputConfig, decorator: Google::Apis::CloudassetV1::FeedOutputConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class FeedOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_destination, as: 'pubsubDestination', class: Google::Apis::CloudassetV1::PubsubDestination, decorator: Google::Apis::CloudassetV1::PubsubDestination::Representation
      
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class GoogleCloudAssetV1Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1::IamPolicyAnalysisState, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisState::Representation
      
          property :permission, as: 'permission'
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudAssetV1AccessControlList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accesses, as: 'accesses', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1Access, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1Access::Representation
      
          collection :resource_edges, as: 'resourceEdges', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1Resource, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1Resource::Representation
      
        end
      end
      
      class GoogleCloudAssetV1BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :partition_key, as: 'partitionKey'
          property :table_prefix, as: 'tablePrefix'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class GoogleCloudAssetV1Edge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_node, as: 'sourceNode'
          property :target_node, as: 'targetNode'
        end
      end
      
      class GoogleCloudAssetV1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAssetV1Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1::IamPolicyAnalysisState, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisState::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAssetV1IdentityList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_edges, as: 'groupEdges', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge::Representation
      
          collection :identities, as: 'identities', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1Identity, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1Identity::Representation
      
        end
      end
      
      class GoogleCloudAssetV1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1::IamPolicyAnalysisState, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisState::Representation
      
          property :full_resource_name, as: 'fullResourceName'
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
          property :boolean_policy, as: 'booleanPolicy', class: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1BooleanPolicy, decorator: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1BooleanPolicy::Representation
      
          property :constraint, as: 'constraint'
          property :etag, :base64 => true, as: 'etag'
          property :list_policy, as: 'listPolicy', class: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1ListPolicy, decorator: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1ListPolicy::Representation
      
          property :restore_default, as: 'restoreDefault', class: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1RestoreDefault, decorator: Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1RestoreDefault::Representation
      
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
          property :basic, as: 'basic', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1BasicLevel, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1BasicLevel::Representation
      
          property :custom, as: 'custom', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1CustomLevel, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1CustomLevel::Representation
      
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
      
      class GoogleIdentityAccesscontextmanagerV1BasicLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combining_function, as: 'combiningFunction'
          collection :conditions, as: 'conditions', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1Condition, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1Condition::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_policy, as: 'devicePolicy', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1DevicePolicy, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1DevicePolicy::Representation
      
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
          property :expr, as: 'expr', class: Google::Apis::CloudassetV1::Expr, decorator: Google::Apis::CloudassetV1::Expr::Representation
      
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1DevicePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_device_management_levels, as: 'allowedDeviceManagementLevels'
          collection :allowed_encryption_statuses, as: 'allowedEncryptionStatuses'
          collection :os_constraints, as: 'osConstraints', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1OsConstraint, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1OsConstraint::Representation
      
          property :require_admin_approval, as: 'requireAdminApproval'
          property :require_corp_owned, as: 'requireCorpOwned'
          property :require_screenlock, as: 'requireScreenlock'
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
          property :spec, as: 'spec', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig::Representation
      
          property :title, as: 'title'
          property :use_explicit_dry_run_spec, as: 'useExplicitDryRunSpec'
        end
      end
      
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels'
          collection :resources, as: 'resources'
          collection :restricted_services, as: 'restrictedServices'
          property :vpc_accessible_services, as: 'vpcAccessibleServices', class: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices, decorator: Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices::Representation
      
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
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisQuery::Representation
      
          collection :analysis_results, as: 'analysisResults', class: Google::Apis::CloudassetV1::IamPolicyAnalysisResult, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisResult::Representation
      
          property :fully_explored, as: 'fullyExplored'
          collection :non_critical_errors, as: 'nonCriticalErrors', class: Google::Apis::CloudassetV1::IamPolicyAnalysisState, decorator: Google::Apis::CloudassetV1::IamPolicyAnalysisState::Representation
      
        end
      end
      
      class IamPolicyAnalysisOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1BigQueryDestination, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1BigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1GcsDestination, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1GcsDestination::Representation
      
        end
      end
      
      class IamPolicyAnalysisQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_selector, as: 'accessSelector', class: Google::Apis::CloudassetV1::AccessSelector, decorator: Google::Apis::CloudassetV1::AccessSelector::Representation
      
          property :identity_selector, as: 'identitySelector', class: Google::Apis::CloudassetV1::IdentitySelector, decorator: Google::Apis::CloudassetV1::IdentitySelector::Representation
      
          property :options, as: 'options', class: Google::Apis::CloudassetV1::Options, decorator: Google::Apis::CloudassetV1::Options::Representation
      
          property :resource_selector, as: 'resourceSelector', class: Google::Apis::CloudassetV1::ResourceSelector, decorator: Google::Apis::CloudassetV1::ResourceSelector::Representation
      
          property :scope, as: 'scope'
        end
      end
      
      class IamPolicyAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_control_lists, as: 'accessControlLists', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1AccessControlList, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1AccessControlList::Representation
      
          property :attached_resource_full_name, as: 'attachedResourceFullName'
          property :fully_explored, as: 'fullyExplored'
          property :iam_binding, as: 'iamBinding', class: Google::Apis::CloudassetV1::Binding, decorator: Google::Apis::CloudassetV1::Binding::Representation
      
          property :identity_list, as: 'identityList', class: Google::Apis::CloudassetV1::GoogleCloudAssetV1IdentityList, decorator: Google::Apis::CloudassetV1::GoogleCloudAssetV1IdentityList::Representation
      
        end
      end
      
      class IamPolicyAnalysisState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :code, as: 'code'
        end
      end
      
      class IamPolicySearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation, as: 'explanation', class: Google::Apis::CloudassetV1::Explanation, decorator: Google::Apis::CloudassetV1::Explanation::Representation
      
          property :policy, as: 'policy', class: Google::Apis::CloudassetV1::Policy, decorator: Google::Apis::CloudassetV1::Policy::Representation
      
          property :project, as: 'project'
          property :resource, as: 'resource'
        end
      end
      
      class IdentitySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity'
        end
      end
      
      class Inventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items', class: Google::Apis::CloudassetV1::Item, decorator: Google::Apis::CloudassetV1::Item::Representation
      
          property :os_info, as: 'osInfo', class: Google::Apis::CloudassetV1::OsInfo, decorator: Google::Apis::CloudassetV1::OsInfo::Representation
      
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_package, as: 'availablePackage', class: Google::Apis::CloudassetV1::SoftwarePackage, decorator: Google::Apis::CloudassetV1::SoftwarePackage::Representation
      
          property :create_time, as: 'createTime'
          property :id, as: 'id'
          property :installed_package, as: 'installedPackage', class: Google::Apis::CloudassetV1::SoftwarePackage, decorator: Google::Apis::CloudassetV1::SoftwarePackage::Representation
      
          property :origin_type, as: 'originType'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListFeedsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feeds, as: 'feeds', class: Google::Apis::CloudassetV1::Feed, decorator: Google::Apis::CloudassetV1::Feed::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudassetV1::Status, decorator: Google::Apis::CloudassetV1::Status::Representation
      
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
      
      class OsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :hostname, as: 'hostname'
          property :kernel_release, as: 'kernelRelease'
          property :kernel_version, as: 'kernelVersion'
          property :long_name, as: 'longName'
          property :osconfig_agent_version, as: 'osconfigAgentVersion'
          property :short_name, as: 'shortName'
          property :version, as: 'version'
        end
      end
      
      class OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::CloudassetV1::BigQueryDestination, decorator: Google::Apis::CloudassetV1::BigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::CloudassetV1::GcsDestination, decorator: Google::Apis::CloudassetV1::GcsDestination::Representation
      
        end
      end
      
      class PartitionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_key, as: 'partitionKey'
        end
      end
      
      class Permissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudassetV1::AuditConfig, decorator: Google::Apis::CloudassetV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudassetV1::Binding, decorator: Google::Apis::CloudassetV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PubsubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class Resource
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
      
      class ResourceSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_attributes, as: 'additionalAttributes'
          property :asset_type, as: 'assetType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :name, as: 'name'
          collection :network_tags, as: 'networkTags'
          property :project, as: 'project'
        end
      end
      
      class ResourceSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class SearchAllIamPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::CloudassetV1::IamPolicySearchResult, decorator: Google::Apis::CloudassetV1::IamPolicySearchResult::Representation
      
        end
      end
      
      class SearchAllResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::CloudassetV1::ResourceSearchResult, decorator: Google::Apis::CloudassetV1::ResourceSearchResult::Representation
      
        end
      end
      
      class SoftwarePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt_package, as: 'aptPackage', class: Google::Apis::CloudassetV1::VersionedPackage, decorator: Google::Apis::CloudassetV1::VersionedPackage::Representation
      
          property :cos_package, as: 'cosPackage', class: Google::Apis::CloudassetV1::VersionedPackage, decorator: Google::Apis::CloudassetV1::VersionedPackage::Representation
      
          property :googet_package, as: 'googetPackage', class: Google::Apis::CloudassetV1::VersionedPackage, decorator: Google::Apis::CloudassetV1::VersionedPackage::Representation
      
          property :qfe_package, as: 'qfePackage', class: Google::Apis::CloudassetV1::WindowsQuickFixEngineeringPackage, decorator: Google::Apis::CloudassetV1::WindowsQuickFixEngineeringPackage::Representation
      
          property :wua_package, as: 'wuaPackage', class: Google::Apis::CloudassetV1::WindowsUpdatePackage, decorator: Google::Apis::CloudassetV1::WindowsUpdatePackage::Representation
      
          property :yum_package, as: 'yumPackage', class: Google::Apis::CloudassetV1::VersionedPackage, decorator: Google::Apis::CloudassetV1::VersionedPackage::Representation
      
          property :zypper_package, as: 'zypperPackage', class: Google::Apis::CloudassetV1::VersionedPackage, decorator: Google::Apis::CloudassetV1::VersionedPackage::Representation
      
          property :zypper_patch, as: 'zypperPatch', class: Google::Apis::CloudassetV1::ZypperPatch, decorator: Google::Apis::CloudassetV1::ZypperPatch::Representation
      
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
      
      class TemporalAsset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::CloudassetV1::Asset, decorator: Google::Apis::CloudassetV1::Asset::Representation
      
          property :deleted, as: 'deleted'
          property :prior_asset, as: 'priorAsset', class: Google::Apis::CloudassetV1::Asset, decorator: Google::Apis::CloudassetV1::Asset::Representation
      
          property :prior_asset_state, as: 'priorAssetState'
          property :window, as: 'window', class: Google::Apis::CloudassetV1::TimeWindow, decorator: Google::Apis::CloudassetV1::TimeWindow::Representation
      
        end
      end
      
      class TimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateFeedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feed, as: 'feed', class: Google::Apis::CloudassetV1::Feed, decorator: Google::Apis::CloudassetV1::Feed::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class VersionedPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :package_name, as: 'packageName'
          property :version, as: 'version'
        end
      end
      
      class WindowsQuickFixEngineeringPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caption, as: 'caption'
          property :description, as: 'description'
          property :hot_fix_id, as: 'hotFixId'
          property :install_time, as: 'installTime'
        end
      end
      
      class WindowsUpdateCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class WindowsUpdatePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::CloudassetV1::WindowsUpdateCategory, decorator: Google::Apis::CloudassetV1::WindowsUpdateCategory::Representation
      
          property :description, as: 'description'
          collection :kb_article_ids, as: 'kbArticleIds'
          property :last_deployment_change_time, as: 'lastDeploymentChangeTime'
          collection :more_info_urls, as: 'moreInfoUrls'
          property :revision_number, as: 'revisionNumber'
          property :support_url, as: 'supportUrl'
          property :title, as: 'title'
          property :update_id, as: 'updateId'
        end
      end
      
      class ZypperPatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :patch_name, as: 'patchName'
          property :severity, as: 'severity'
          property :summary, as: 'summary'
        end
      end
    end
  end
end
