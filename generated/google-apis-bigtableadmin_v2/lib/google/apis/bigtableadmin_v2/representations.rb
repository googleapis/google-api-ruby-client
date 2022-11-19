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
    module BigtableadminV2
      
      class AppProfile
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
      
      class AutoscalingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingTargets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckConsistencyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckConsistencyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterAutoscalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnFamilyStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DropRowRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConsistencyTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConsistencyTokenResponse
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
      
      class HotTablet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Intersection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHotTabletsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Modification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyColumnFamiliesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClusterRoutingUseAny
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptimizeRestoredTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleClusterRouting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Split
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableStats
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
      
      class UndeleteTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Union
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAppProfileMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :multi_cluster_routing_use_any, as: 'multiClusterRoutingUseAny', class: Google::Apis::BigtableadminV2::MultiClusterRoutingUseAny, decorator: Google::Apis::BigtableadminV2::MultiClusterRoutingUseAny::Representation
      
          property :name, as: 'name'
          property :single_cluster_routing, as: 'singleClusterRouting', class: Google::Apis::BigtableadminV2::SingleClusterRouting, decorator: Google::Apis::BigtableadminV2::SingleClusterRouting::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BigtableadminV2::AuditLogConfig, decorator: Google::Apis::BigtableadminV2::AuditLogConfig::Representation
      
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
      
      class AutoscalingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_serve_nodes, as: 'maxServeNodes'
          property :min_serve_nodes, as: 'minServeNodes'
        end
      end
      
      class AutoscalingTargets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_percent, as: 'cpuUtilizationPercent'
          property :storage_utilization_gib_per_node, as: 'storageUtilizationGibPerNode'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::BigtableadminV2::EncryptionInfo, decorator: Google::Apis::BigtableadminV2::EncryptionInfo::Representation
      
          property :end_time, as: 'endTime'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :source_backup, as: 'sourceBackup'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class BackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :end_time, as: 'endTime'
          property :source_backup, as: 'sourceBackup'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BigtableadminV2::Expr, decorator: Google::Apis::BigtableadminV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CheckConsistencyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistency_token, as: 'consistencyToken'
        end
      end
      
      class CheckConsistencyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistent, as: 'consistent'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_config, as: 'clusterConfig', class: Google::Apis::BigtableadminV2::ClusterConfig, decorator: Google::Apis::BigtableadminV2::ClusterConfig::Representation
      
          property :default_storage_type, as: 'defaultStorageType'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::BigtableadminV2::EncryptionConfig, decorator: Google::Apis::BigtableadminV2::EncryptionConfig::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :serve_nodes, as: 'serveNodes'
          property :state, as: 'state'
        end
      end
      
      class ClusterAutoscalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_limits, as: 'autoscalingLimits', class: Google::Apis::BigtableadminV2::AutoscalingLimits, decorator: Google::Apis::BigtableadminV2::AutoscalingLimits::Representation
      
          property :autoscaling_targets, as: 'autoscalingTargets', class: Google::Apis::BigtableadminV2::AutoscalingTargets, decorator: Google::Apis::BigtableadminV2::AutoscalingTargets::Representation
      
        end
      end
      
      class ClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_autoscaling_config, as: 'clusterAutoscalingConfig', class: Google::Apis::BigtableadminV2::ClusterAutoscalingConfig, decorator: Google::Apis::BigtableadminV2::ClusterAutoscalingConfig::Representation
      
        end
      end
      
      class ClusterState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :encryption_info, as: 'encryptionInfo', class: Google::Apis::BigtableadminV2::EncryptionInfo, decorator: Google::Apis::BigtableadminV2::EncryptionInfo::Representation
      
          property :replication_state, as: 'replicationState'
        end
      end
      
      class ColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gc_rule, as: 'gcRule', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
          property :stats, as: 'stats', class: Google::Apis::BigtableadminV2::ColumnFamilyStats, decorator: Google::Apis::BigtableadminV2::ColumnFamilyStats::Representation
      
        end
      end
      
      class ColumnFamilyStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_cells_per_column, as: 'averageCellsPerColumn'
          property :average_columns_per_row, as: 'averageColumnsPerRow'
          property :logical_data_bytes, :numeric_string => true, as: 'logicalDataBytes'
        end
      end
      
      class CopyBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
          property :source_backup_info, as: 'sourceBackupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
        end
      end
      
      class CopyBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :expire_time, as: 'expireTime'
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class CreateBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateClusterRequest, decorator: Google::Apis::BigtableadminV2::CreateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
          hash :tables, as: 'tables', class: Google::Apis::BigtableadminV2::TableProgress, decorator: Google::Apis::BigtableadminV2::TableProgress::Representation
      
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::CreateInstanceRequest, decorator: Google::Apis::BigtableadminV2::CreateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class CreateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :clusters, as: 'clusters', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :instance_id, as: 'instanceId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :initial_splits, as: 'initialSplits', class: Google::Apis::BigtableadminV2::Split, decorator: Google::Apis::BigtableadminV2::Split::Representation
      
          property :table, as: 'table', class: Google::Apis::BigtableadminV2::Table, decorator: Google::Apis::BigtableadminV2::Table::Representation
      
          property :table_id, as: 'tableId'
        end
      end
      
      class DropRowRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_all_data_from_table, as: 'deleteAllDataFromTable'
          property :row_key_prefix, :base64 => true, as: 'rowKeyPrefix'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_status, as: 'encryptionStatus', class: Google::Apis::BigtableadminV2::Status, decorator: Google::Apis::BigtableadminV2::Status::Representation
      
          property :encryption_type, as: 'encryptionType'
          property :kms_key_version, as: 'kmsKeyVersion'
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
      
      class GcRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intersection, as: 'intersection', class: Google::Apis::BigtableadminV2::Intersection, decorator: Google::Apis::BigtableadminV2::Intersection::Representation
      
          property :max_age, as: 'maxAge'
          property :max_num_versions, as: 'maxNumVersions'
          property :union, as: 'union', class: Google::Apis::BigtableadminV2::Union, decorator: Google::Apis::BigtableadminV2::Union::Representation
      
        end
      end
      
      class GenerateConsistencyTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GenerateConsistencyTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistency_token, as: 'consistencyToken'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::BigtableadminV2::GetPolicyOptions, decorator: Google::Apis::BigtableadminV2::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class HotTablet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_key, as: 'endKey'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :node_cpu_usage_percent, as: 'nodeCpuUsagePercent'
          property :start_key, as: 'startKey'
          property :start_time, as: 'startTime'
          property :table_name, as: 'tableName'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class Intersection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
        end
      end
      
      class ListAppProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_profiles, as: 'appProfiles', class: Google::Apis::BigtableadminV2::AppProfile, decorator: Google::Apis::BigtableadminV2::AppProfile::Representation
      
          collection :failed_locations, as: 'failedLocations'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::BigtableadminV2::Backup, decorator: Google::Apis::BigtableadminV2::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          collection :failed_locations, as: 'failedLocations'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListHotTabletsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hot_tablets, as: 'hotTablets', class: Google::Apis::BigtableadminV2::HotTablet, decorator: Google::Apis::BigtableadminV2::HotTablet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_locations, as: 'failedLocations'
          collection :instances, as: 'instances', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BigtableadminV2::Location, decorator: Google::Apis::BigtableadminV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BigtableadminV2::Operation, decorator: Google::Apis::BigtableadminV2::Operation::Representation
      
        end
      end
      
      class ListTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BigtableadminV2::Table, decorator: Google::Apis::BigtableadminV2::Table::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Modification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create, as: 'create', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
          property :drop, as: 'drop'
          property :id, as: 'id'
          property :update, as: 'update', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
        end
      end
      
      class ModifyColumnFamiliesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :modifications, as: 'modifications', class: Google::Apis::BigtableadminV2::Modification, decorator: Google::Apis::BigtableadminV2::Modification::Representation
      
        end
      end
      
      class MultiClusterRoutingUseAny
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_ids, as: 'clusterIds'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BigtableadminV2::Status, decorator: Google::Apis::BigtableadminV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class OptimizeRestoredTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
        end
      end
      
      class PartialUpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::PartialUpdateClusterRequest, decorator: Google::Apis::BigtableadminV2::PartialUpdateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class PartialUpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class PartialUpdateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV2::Instance, decorator: Google::Apis::BigtableadminV2::Instance::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BigtableadminV2::AuditConfig, decorator: Google::Apis::BigtableadminV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BigtableadminV2::Binding, decorator: Google::Apis::BigtableadminV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class RestoreInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class RestoreTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV2::BackupInfo, decorator: Google::Apis::BigtableadminV2::BackupInfo::Representation
      
          property :name, as: 'name'
          property :optimize_table_operation_name, as: 'optimizeTableOperationName'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV2::OperationProgress, decorator: Google::Apis::BigtableadminV2::OperationProgress::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class RestoreTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :table_id, as: 'tableId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BigtableadminV2::Policy, decorator: Google::Apis::BigtableadminV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SingleClusterRouting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_transactional_writes, as: 'allowTransactionalWrites'
          property :cluster_id, as: 'clusterId'
        end
      end
      
      class Split
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
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
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :cluster_states, as: 'clusterStates', class: Google::Apis::BigtableadminV2::ClusterState, decorator: Google::Apis::BigtableadminV2::ClusterState::Representation
      
          hash :column_families, as: 'columnFamilies', class: Google::Apis::BigtableadminV2::ColumnFamily, decorator: Google::Apis::BigtableadminV2::ColumnFamily::Representation
      
          property :deletion_protection, as: 'deletionProtection'
          property :granularity, as: 'granularity'
          property :name, as: 'name'
          property :restore_info, as: 'restoreInfo', class: Google::Apis::BigtableadminV2::RestoreInfo, decorator: Google::Apis::BigtableadminV2::RestoreInfo::Representation
      
          property :stats, as: 'stats', class: Google::Apis::BigtableadminV2::TableStats, decorator: Google::Apis::BigtableadminV2::TableStats::Representation
      
        end
      end
      
      class TableProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_copied_bytes, :numeric_string => true, as: 'estimatedCopiedBytes'
          property :estimated_size_bytes, :numeric_string => true, as: 'estimatedSizeBytes'
          property :state, as: 'state'
        end
      end
      
      class TableStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_cells_per_column, as: 'averageCellsPerColumn'
          property :average_columns_per_row, as: 'averageColumnsPerRow'
          property :logical_data_bytes, :numeric_string => true, as: 'logicalDataBytes'
          property :row_count, :numeric_string => true, as: 'rowCount'
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
      
      class UndeleteTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class UndeleteTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Union
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::BigtableadminV2::GcRule, decorator: Google::Apis::BigtableadminV2::GcRule::Representation
      
        end
      end
      
      class UpdateAppProfileMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::Cluster, decorator: Google::Apis::BigtableadminV2::Cluster::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV2::PartialUpdateInstanceRequest, decorator: Google::Apis::BigtableadminV2::PartialUpdateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
    end
  end
end
