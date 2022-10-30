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
    module DataplexV1
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionIncompatibleDataSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataOrganization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionMissingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionMissingResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionUnauthorizedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatusStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetResourceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetSecurityStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ContentNotebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ContentSqlScript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventConfigDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventEntityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventPartitionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1JobEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Lake
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1LakeMetastore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1LakeMetastoreStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListLakesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListPartitionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListZonesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Partition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SchemaPartitionField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SchemaSchemaField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SessionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SessionEventQueryDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormatCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormatJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskExecutionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskExecutionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskNotebookTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskSparkTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskTriggerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Zone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneResourceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          property :category, as: 'category'
          collection :data_locations, as: 'dataLocations'
          property :detect_time, as: 'detectTime'
          property :failed_security_policy_apply, as: 'failedSecurityPolicyApply', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionFailedSecurityPolicyApply, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionFailedSecurityPolicyApply::Representation
      
          property :incompatible_data_schema, as: 'incompatibleDataSchema', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionIncompatibleDataSchema, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionIncompatibleDataSchema::Representation
      
          property :invalid_data_format, as: 'invalidDataFormat', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataFormat, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataFormat::Representation
      
          property :invalid_data_organization, as: 'invalidDataOrganization', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataOrganization, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataOrganization::Representation
      
          property :invalid_data_partition, as: 'invalidDataPartition', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataPartition, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataPartition::Representation
      
          property :issue, as: 'issue'
          property :lake, as: 'lake'
          property :missing_data, as: 'missingData', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingData, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingData::Representation
      
          property :missing_resource, as: 'missingResource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingResource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingResource::Representation
      
          property :name, as: 'name'
          property :unauthorized_resource, as: 'unauthorizedResource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionUnauthorizedResource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionUnauthorizedResource::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
        end
      end
      
      class GoogleCloudDataplexV1ActionIncompatibleDataSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :existing_schema, as: 'existingSchema'
          property :new_schema, as: 'newSchema'
          collection :sampled_data_locations, as: 'sampledDataLocations'
          property :schema_change, as: 'schemaChange'
          property :table, as: 'table'
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_format, as: 'expectedFormat'
          property :new_format, as: 'newFormat'
          collection :sampled_data_locations, as: 'sampledDataLocations'
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataOrganization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_structure, as: 'expectedStructure'
        end
      end
      
      class GoogleCloudDataplexV1ActionMissingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionMissingResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionUnauthorizedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovery_spec, as: 'discoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpec::Representation
      
          property :discovery_status, as: 'discoveryStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatus::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_spec, as: 'resourceSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceSpec::Representation
      
          property :resource_status, as: 'resourceStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceStatus::Representation
      
          property :security_status, as: 'securityStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetSecurityStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetSecurityStatus::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_options, as: 'csvOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions::Representation
      
          property :enabled, as: 'enabled'
          collection :exclude_patterns, as: 'excludePatterns'
          collection :include_patterns, as: 'includePatterns'
          property :json_options, as: 'jsonOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions::Representation
      
          property :schedule, as: 'schedule'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_run_duration, as: 'lastRunDuration'
          property :last_run_time, as: 'lastRunTime'
          property :message, as: 'message'
          property :state, as: 'state'
          property :stats, as: 'stats', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatusStats, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatusStats::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatusStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_items, :numeric_string => true, as: 'dataItems'
          property :data_size, :numeric_string => true, as: 'dataSize'
          property :filesets, :numeric_string => true, as: 'filesets'
          property :tables, :numeric_string => true, as: 'tables'
        end
      end
      
      class GoogleCloudDataplexV1AssetResourceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1AssetResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetSecurityStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_assets, as: 'activeAssets'
          property :security_policy_applying_assets, as: 'securityPolicyApplyingAssets'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_text, as: 'dataText'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notebook, as: 'notebook', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentNotebook, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentNotebook::Representation
      
          property :path, as: 'path'
          property :sql_script, as: 'sqlScript', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentSqlScript, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentSqlScript::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ContentNotebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kernel_type, as: 'kernelType'
        end
      end
      
      class GoogleCloudDataplexV1ContentSqlScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_profile, as: 'dataProfile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult::Representation
      
          property :data_quality, as: 'dataQuality', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult::Representation
      
          property :data_source, as: 'dataSource'
          property :end_time, as: 'endTime'
          property :job_id, as: 'jobId'
          property :message, as: 'message'
          property :scope, as: 'scope'
          property :spec_version, as: 'specVersion'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :trigger, as: 'trigger'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :dimension_passed, as: 'dimensionPassed'
          property :passed, as: 'passed'
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventActionDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventActionDetails::Representation
      
          property :asset_id, as: 'assetId'
          property :config, as: 'config', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventConfigDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventConfigDetails::Representation
      
          property :data_location, as: 'dataLocation'
          property :entity, as: 'entity', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventEntityDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventEntityDetails::Representation
      
          property :lake_id, as: 'lakeId'
          property :message, as: 'message'
          property :partition, as: 'partition', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventPartitionDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventPartitionDetails::Representation
      
          property :type, as: 'type'
          property :zone_id, as: 'zoneId'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventConfigDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventEntityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventPartitionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :partition, as: 'partition'
          collection :sampled_data_locations, as: 'sampledDataLocations'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          property :catalog_entry, as: 'catalogEntry'
          property :compatibility, as: 'compatibility', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatus::Representation
      
          property :create_time, as: 'createTime'
          property :data_path, as: 'dataPath'
          property :data_path_pattern, as: 'dataPathPattern'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :format, as: 'format', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormat, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormat::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Schema, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Schema::Representation
      
          property :system, as: 'system'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery, as: 'bigquery', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility::Representation
      
          property :hive_metastore, as: 'hiveMetastore', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatible, as: 'compatible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudDataplexV1Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :endpoints, as: 'endpoints', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentEndpoints, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentEndpoints::Representation
      
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpec::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionSpec::Representation
      
          property :session_status, as: 'sessionStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionStatus::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooks, as: 'notebooks'
          property :sql, as: 'sql'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute, as: 'compute', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources::Representation
      
          property :os_image, as: 'osImage', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, as: 'diskSizeGb'
          property :max_node_count, as: 'maxNodeCount'
          property :node_count, as: 'nodeCount'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_version, as: 'imageVersion'
          collection :java_libraries, as: 'javaLibraries'
          hash :properties, as: 'properties'
          collection :python_packages, as: 'pythonPackages'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_fast_startup, as: 'enableFastStartup'
          property :max_idle_duration, as: 'maxIdleDuration'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
        end
      end
      
      class GoogleCloudDataplexV1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :message, as: 'message'
          property :name, as: 'name'
          property :retry_count, as: 'retryCount'
          property :service, as: 'service'
          property :service_job, as: 'serviceJob'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudDataplexV1JobEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :job_id, as: 'jobId'
          property :message, as: 'message'
          property :retries, as: 'retries'
          property :service, as: 'service'
          property :service_job, as: 'serviceJob'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Lake
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_status, as: 'assetStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :metastore, as: 'metastore', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastore, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastore::Representation
      
          property :metastore_status, as: 'metastoreStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastoreStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastoreStatus::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1LakeMetastore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDataplexV1LakeMetastoreStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ListActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Action, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Action::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Content, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListLakesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lakes, as: 'lakes', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListPartitionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partitions, as: 'partitions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Session, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Session::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tasks, as: 'tasks', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Task, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Task::Representation
      
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListZonesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :zones, as: 'zones', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudDataplexV1Partition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :location, as: 'location'
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDataplexV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField::Representation
      
          collection :partition_fields, as: 'partitionFields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaPartitionField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaPartitionField::Representation
      
          property :partition_style, as: 'partitionStyle'
          property :user_managed, as: 'userManaged'
        end
      end
      
      class GoogleCloudDataplexV1SchemaPartitionField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1SchemaSchemaField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :fields, as: 'fields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField::Representation
      
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDataplexV1SessionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_succeeded, as: 'eventSucceeded'
          property :fast_startup_enabled, as: 'fastStartupEnabled'
          property :message, as: 'message'
          property :query, as: 'query', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SessionEventQueryDetail, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SessionEventQueryDetail::Representation
      
          property :session_id, as: 'sessionId'
          property :type, as: 'type'
          property :unassigned_duration, as: 'unassignedDuration'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDataplexV1SessionEventQueryDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_processed_bytes, :numeric_string => true, as: 'dataProcessedBytes'
          property :duration, as: 'duration'
          property :engine, as: 'engine'
          property :query_id, as: 'queryId'
          property :query_text, as: 'queryText'
          property :result_size_bytes, :numeric_string => true, as: 'resultSizeBytes'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression_format, as: 'compressionFormat'
          property :csv, as: 'csv', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatCsvOptions::Representation
      
          property :format, as: 'format'
          property :json, as: 'json', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatJsonOptions::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormatCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
          property :quote, as: 'quote'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormatJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :execution_spec, as: 'executionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec::Representation
      
          property :execution_status, as: 'executionStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionStatus::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notebook, as: 'notebook', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskNotebookTaskConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskNotebookTaskConfig::Representation
      
          property :spark, as: 'spark', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskSparkTaskConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskSparkTaskConfig::Representation
      
          property :state, as: 'state'
          property :trigger_spec, as: 'triggerSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskTriggerSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskTriggerSpec::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1TaskExecutionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :kms_key, as: 'kmsKey'
          property :max_job_execution_lifetime, as: 'maxJobExecutionLifetime'
          property :project, as: 'project'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudDataplexV1TaskExecutionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_job, as: 'latestJob', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch, as: 'batch', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources::Representation
      
          property :container_image, as: 'containerImage', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime::Representation
      
          property :vpc_network, as: 'vpcNetwork', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :executors_count, as: 'executorsCount'
          property :max_executors_count, as: 'maxExecutorsCount'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
          collection :java_jars, as: 'javaJars'
          hash :properties, as: 'properties'
          collection :python_packages, as: 'pythonPackages'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          collection :network_tags, as: 'networkTags'
          property :sub_network, as: 'subNetwork'
        end
      end
      
      class GoogleCloudDataplexV1TaskNotebookTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_uris, as: 'archiveUris'
          collection :file_uris, as: 'fileUris'
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec::Representation
      
          property :notebook, as: 'notebook'
        end
      end
      
      class GoogleCloudDataplexV1TaskSparkTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_uris, as: 'archiveUris'
          collection :file_uris, as: 'fileUris'
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec::Representation
      
          property :main_class, as: 'mainClass'
          property :main_jar_file_uri, as: 'mainJarFileUri'
          property :python_script_file, as: 'pythonScriptFile'
          property :sql_script, as: 'sqlScript'
          property :sql_script_file, as: 'sqlScriptFile'
        end
      end
      
      class GoogleCloudDataplexV1TaskTriggerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :max_retries, as: 'maxRetries'
          property :schedule, as: 'schedule'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Zone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_status, as: 'assetStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovery_spec, as: 'discoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpec::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_spec, as: 'resourceSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneResourceSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneResourceSpec::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_options, as: 'csvOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions::Representation
      
          property :enabled, as: 'enabled'
          collection :exclude_patterns, as: 'excludePatterns'
          collection :include_patterns, as: 'includePatterns'
          property :json_options, as: 'jsonOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions::Representation
      
          property :schedule, as: 'schedule'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1ZoneResourceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_type, as: 'locationType'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DataplexV1::GoogleCloudLocationLocation, decorator: Google::Apis::DataplexV1::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DataplexV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::DataplexV1::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DataplexV1::GoogleTypeExpr, decorator: Google::Apis::DataplexV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DataplexV1::GoogleIamV1AuditConfig, decorator: Google::Apis::DataplexV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DataplexV1::GoogleIamV1Binding, decorator: Google::Apis::DataplexV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DataplexV1::GoogleIamV1Policy, decorator: Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DataplexV1::GoogleLongrunningOperation, decorator: Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DataplexV1::GoogleRpcStatus, decorator: Google::Apis::DataplexV1::GoogleRpcStatus::Representation
      
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
