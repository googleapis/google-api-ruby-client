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
    module AlloydbV1
      
      class AuthorizedNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomatedBackupPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrBackupSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrEnabledWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrPitrSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientConnectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudControl2SharedOperationsReconciliationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlBackupRunSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionPoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContinuousBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContinuousBackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContinuousBackupSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvExportOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvImportOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataplexConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
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
      
      class ExportClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailoverInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
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
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InjectFaultRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceUpgradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerRestrictions
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
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSupportedDatabaseFlagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceUpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservabilityInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrimaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromoteClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscAutoConnectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscInterfaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuantityBasedExpiry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuantityBasedRetention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInsightsInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadPoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadPoolInstancesUpgradeStageStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreFromCloudSqlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlExportOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlImportOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StageStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Stats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupDrMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainCustomMetadataData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainEntitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainMachineConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainObservabilityMetricData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainOperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainTags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainUserLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterProtoCommonProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterProtoCommonTypedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportedDatabaseFlag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwitchoverClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeBasedRetention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrialMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeClusterStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserPassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr_range, as: 'cidrRange'
        end
      end
      
      class AutomatedBackupPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_window, as: 'backupWindow'
          property :enabled, as: 'enabled'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1::EncryptionConfig, decorator: Google::Apis::AlloydbV1::EncryptionConfig::Representation
      
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :quantity_based_retention, as: 'quantityBasedRetention', class: Google::Apis::AlloydbV1::QuantityBasedRetention, decorator: Google::Apis::AlloydbV1::QuantityBasedRetention::Representation
      
          property :time_based_retention, as: 'timeBasedRetention', class: Google::Apis::AlloydbV1::TimeBasedRetention, decorator: Google::Apis::AlloydbV1::TimeBasedRetention::Representation
      
          property :weekly_schedule, as: 'weeklySchedule', class: Google::Apis::AlloydbV1::WeeklySchedule, decorator: Google::Apis::AlloydbV1::WeeklySchedule::Representation
      
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cluster_name, as: 'clusterName'
          property :cluster_uid, as: 'clusterUid'
          property :create_completion_time, as: 'createCompletionTime'
          property :create_time, as: 'createTime'
          property :database_version, as: 'databaseVersion'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1::EncryptionConfig, decorator: Google::Apis::AlloydbV1::EncryptionConfig::Representation
      
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1::EncryptionInfo, decorator: Google::Apis::AlloydbV1::EncryptionInfo::Representation
      
          property :etag, as: 'etag'
          property :expiry_quantity, as: 'expiryQuantity', class: Google::Apis::AlloydbV1::QuantityBasedExpiry, decorator: Google::Apis::AlloydbV1::QuantityBasedExpiry::Representation
      
          property :expiry_time, as: 'expiryTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :state, as: 'state'
          hash :tags, as: 'tags'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupDrBackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
        end
      end
      
      class BackupDrEnabledWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_previously_enabled, as: 'automatedBackupPreviouslyEnabled'
          property :backup_plan_association, as: 'backupPlanAssociation'
          property :continuous_backup_previous_recovery_window_days, as: 'continuousBackupPreviousRecoveryWindowDays'
          property :continuous_backup_previously_enabled, as: 'continuousBackupPreviouslyEnabled'
          property :continuous_backup_previously_enabled_time, as: 'continuousBackupPreviouslyEnabledTime'
          property :data_source, as: 'dataSource'
          property :disabled_time, as: 'disabledTime'
          property :enabled_time, as: 'enabledTime'
          property :log_retention_period, as: 'logRetentionPeriod'
        end
      end
      
      class BackupDrInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_window, as: 'currentWindow', class: Google::Apis::AlloydbV1::BackupDrEnabledWindow, decorator: Google::Apis::AlloydbV1::BackupDrEnabledWindow::Representation
      
          collection :previous_windows, as: 'previousWindows', class: Google::Apis::AlloydbV1::BackupDrEnabledWindow, decorator: Google::Apis::AlloydbV1::BackupDrEnabledWindow::Representation
      
        end
      end
      
      class BackupDrPitrSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source, as: 'dataSource'
          property :point_in_time, as: 'pointInTime'
        end
      end
      
      class BackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_name, as: 'backupName'
          property :backup_uid, as: 'backupUid'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ClientConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :require_connectors, as: 'requireConnectors'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::AlloydbV1::SslConfig, decorator: Google::Apis::AlloydbV1::SslConfig::Representation
      
        end
      end
      
      class CloudControl2SharedOperationsReconciliationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_resource, as: 'deleteResource'
          property :exclusive_action, as: 'exclusiveAction'
        end
      end
      
      class CloudSqlBackupRunSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_run_id, :numeric_string => true, as: 'backupRunId'
          property :instance_id, as: 'instanceId'
          property :project, as: 'project'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :automated_backup_policy, as: 'automatedBackupPolicy', class: Google::Apis::AlloydbV1::AutomatedBackupPolicy, decorator: Google::Apis::AlloydbV1::AutomatedBackupPolicy::Representation
      
          property :backup_source, as: 'backupSource', class: Google::Apis::AlloydbV1::BackupSource, decorator: Google::Apis::AlloydbV1::BackupSource::Representation
      
          property :backupdr_backup_source, as: 'backupdrBackupSource', class: Google::Apis::AlloydbV1::BackupDrBackupSource, decorator: Google::Apis::AlloydbV1::BackupDrBackupSource::Representation
      
          property :backupdr_info, as: 'backupdrInfo', class: Google::Apis::AlloydbV1::BackupDrInfo, decorator: Google::Apis::AlloydbV1::BackupDrInfo::Representation
      
          property :cloudsql_backup_run_source, as: 'cloudsqlBackupRunSource', class: Google::Apis::AlloydbV1::CloudSqlBackupRunSource, decorator: Google::Apis::AlloydbV1::CloudSqlBackupRunSource::Representation
      
          property :cluster_type, as: 'clusterType'
          property :continuous_backup_config, as: 'continuousBackupConfig', class: Google::Apis::AlloydbV1::ContinuousBackupConfig, decorator: Google::Apis::AlloydbV1::ContinuousBackupConfig::Representation
      
          property :continuous_backup_info, as: 'continuousBackupInfo', class: Google::Apis::AlloydbV1::ContinuousBackupInfo, decorator: Google::Apis::AlloydbV1::ContinuousBackupInfo::Representation
      
          property :create_time, as: 'createTime'
          property :database_version, as: 'databaseVersion'
          property :dataplex_config, as: 'dataplexConfig', class: Google::Apis::AlloydbV1::DataplexConfig, decorator: Google::Apis::AlloydbV1::DataplexConfig::Representation
      
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1::EncryptionConfig, decorator: Google::Apis::AlloydbV1::EncryptionConfig::Representation
      
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1::EncryptionInfo, decorator: Google::Apis::AlloydbV1::EncryptionInfo::Representation
      
          property :etag, as: 'etag'
          property :initial_user, as: 'initialUser', class: Google::Apis::AlloydbV1::UserPassword, decorator: Google::Apis::AlloydbV1::UserPassword::Representation
      
          hash :labels, as: 'labels'
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::AlloydbV1::MaintenanceSchedule, decorator: Google::Apis::AlloydbV1::MaintenanceSchedule::Representation
      
          property :maintenance_update_policy, as: 'maintenanceUpdatePolicy', class: Google::Apis::AlloydbV1::MaintenanceUpdatePolicy, decorator: Google::Apis::AlloydbV1::MaintenanceUpdatePolicy::Representation
      
          property :maintenance_version_selection_policy, as: 'maintenanceVersionSelectionPolicy'
          property :migration_source, as: 'migrationSource', class: Google::Apis::AlloydbV1::MigrationSource, decorator: Google::Apis::AlloydbV1::MigrationSource::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_config, as: 'networkConfig', class: Google::Apis::AlloydbV1::NetworkConfig, decorator: Google::Apis::AlloydbV1::NetworkConfig::Representation
      
          property :primary_config, as: 'primaryConfig', class: Google::Apis::AlloydbV1::PrimaryConfig, decorator: Google::Apis::AlloydbV1::PrimaryConfig::Representation
      
          property :psc_config, as: 'pscConfig', class: Google::Apis::AlloydbV1::PscConfig, decorator: Google::Apis::AlloydbV1::PscConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :secondary_config, as: 'secondaryConfig', class: Google::Apis::AlloydbV1::SecondaryConfig, decorator: Google::Apis::AlloydbV1::SecondaryConfig::Representation
      
          property :ssl_config, as: 'sslConfig', class: Google::Apis::AlloydbV1::SslConfig, decorator: Google::Apis::AlloydbV1::SslConfig::Representation
      
          property :state, as: 'state'
          property :subscription_type, as: 'subscriptionType'
          hash :tags, as: 'tags'
          property :trial_metadata, as: 'trialMetadata', class: Google::Apis::AlloydbV1::TrialMetadata, decorator: Google::Apis::AlloydbV1::TrialMetadata::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ClusterUpgradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_type, as: 'clusterType'
          property :database_version, as: 'databaseVersion'
          collection :instance_upgrade_details, as: 'instanceUpgradeDetails', class: Google::Apis::AlloydbV1::InstanceUpgradeDetails, decorator: Google::Apis::AlloydbV1::InstanceUpgradeDetails::Representation
      
          property :name, as: 'name'
          collection :stage_info, as: 'stageInfo', class: Google::Apis::AlloydbV1::StageInfo, decorator: Google::Apis::AlloydbV1::StageInfo::Representation
      
          property :upgrade_status, as: 'upgradeStatus'
        end
      end
      
      class ConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_uid, as: 'instanceUid'
          property :ip_address, as: 'ipAddress'
          property :name, as: 'name'
          property :public_ip_address, as: 'publicIpAddress'
        end
      end
      
      class ConnectionPoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          hash :flags, as: 'flags'
          property :pooler_count, as: 'poolerCount'
        end
      end
      
      class ContinuousBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1::EncryptionConfig, decorator: Google::Apis::AlloydbV1::EncryptionConfig::Representation
      
          property :recovery_window_days, as: 'recoveryWindowDays'
        end
      end
      
      class ContinuousBackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :earliest_restorable_time, as: 'earliestRestorableTime'
          property :enabled_time, as: 'enabledTime'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1::EncryptionInfo, decorator: Google::Apis::AlloydbV1::EncryptionInfo::Representation
      
          collection :schedule, as: 'schedule'
        end
      end
      
      class ContinuousBackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :point_in_time, as: 'pointInTime'
        end
      end
      
      class CsvExportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :escape_character, as: 'escapeCharacter'
          property :field_delimiter, as: 'fieldDelimiter'
          property :quote_character, as: 'quoteCharacter'
          property :select_query, as: 'selectQuery'
        end
      end
      
      class CsvImportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :escape_character, as: 'escapeCharacter'
          property :field_delimiter, as: 'fieldDelimiter'
          property :quote_character, as: 'quoteCharacter'
          property :table, as: 'table'
        end
      end
      
      class DataplexConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::AlloydbV1::GoogleTypeDate, decorator: Google::Apis::AlloydbV1::GoogleTypeDate::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AlloydbV1::GoogleTypeDate, decorator: Google::Apis::AlloydbV1::GoogleTypeDate::Representation
      
          property :time, as: 'time', class: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay::Representation
      
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
          property :encryption_type, as: 'encryptionType'
          collection :kms_key_versions, as: 'kmsKeyVersions'
        end
      end
      
      class ExportClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_export_options, as: 'csvExportOptions', class: Google::Apis::AlloydbV1::CsvExportOptions, decorator: Google::Apis::AlloydbV1::CsvExportOptions::Representation
      
          property :database, as: 'database'
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AlloydbV1::GcsDestination, decorator: Google::Apis::AlloydbV1::GcsDestination::Representation
      
          property :sql_export_options, as: 'sqlExportOptions', class: Google::Apis::AlloydbV1::SqlExportOptions, decorator: Google::Apis::AlloydbV1::SqlExportOptions::Representation
      
        end
      end
      
      class ExportClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AlloydbV1::GcsDestination, decorator: Google::Apis::AlloydbV1::GcsDestination::Representation
      
        end
      end
      
      class FailoverInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AlloydbV1::GoogleCloudLocationLocation, decorator: Google::Apis::AlloydbV1::GoogleCloudLocationLocation::Representation
      
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeTimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class ImportClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_import_options, as: 'csvImportOptions', class: Google::Apis::AlloydbV1::CsvImportOptions, decorator: Google::Apis::AlloydbV1::CsvImportOptions::Representation
      
          property :database, as: 'database'
          property :gcs_uri, as: 'gcsUri'
          property :sql_import_options, as: 'sqlImportOptions', class: Google::Apis::AlloydbV1::SqlImportOptions, decorator: Google::Apis::AlloydbV1::SqlImportOptions::Representation
      
          property :user, as: 'user'
        end
      end
      
      class ImportClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_downloaded, :numeric_string => true, as: 'bytesDownloaded'
        end
      end
      
      class InjectFaultRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fault_type, as: 'faultType'
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          hash :annotations, as: 'annotations'
          property :availability_type, as: 'availabilityType'
          property :client_connection_config, as: 'clientConnectionConfig', class: Google::Apis::AlloydbV1::ClientConnectionConfig, decorator: Google::Apis::AlloydbV1::ClientConnectionConfig::Representation
      
          property :connection_pool_config, as: 'connectionPoolConfig', class: Google::Apis::AlloydbV1::ConnectionPoolConfig, decorator: Google::Apis::AlloydbV1::ConnectionPoolConfig::Representation
      
          property :create_time, as: 'createTime'
          property :data_api_access, as: 'dataApiAccess'
          hash :database_flags, as: 'databaseFlags'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :gce_zone, as: 'gceZone'
          property :instance_type, as: 'instanceType'
          property :ip_address, as: 'ipAddress'
          hash :labels, as: 'labels'
          property :machine_config, as: 'machineConfig', class: Google::Apis::AlloydbV1::MachineConfig, decorator: Google::Apis::AlloydbV1::MachineConfig::Representation
      
          property :maintenance_version_name, as: 'maintenanceVersionName'
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::AlloydbV1::InstanceNetworkConfig, decorator: Google::Apis::AlloydbV1::InstanceNetworkConfig::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::AlloydbV1::Node, decorator: Google::Apis::AlloydbV1::Node::Representation
      
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::AlloydbV1::ObservabilityInstanceConfig, decorator: Google::Apis::AlloydbV1::ObservabilityInstanceConfig::Representation
      
          collection :outbound_public_ip_addresses, as: 'outboundPublicIpAddresses'
          property :psc_instance_config, as: 'pscInstanceConfig', class: Google::Apis::AlloydbV1::PscInstanceConfig, decorator: Google::Apis::AlloydbV1::PscInstanceConfig::Representation
      
          property :public_ip_address, as: 'publicIpAddress'
          property :query_insights_config, as: 'queryInsightsConfig', class: Google::Apis::AlloydbV1::QueryInsightsInstanceConfig, decorator: Google::Apis::AlloydbV1::QueryInsightsInstanceConfig::Representation
      
          property :read_pool_config, as: 'readPoolConfig', class: Google::Apis::AlloydbV1::ReadPoolConfig, decorator: Google::Apis::AlloydbV1::ReadPoolConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :writable_node, as: 'writableNode', class: Google::Apis::AlloydbV1::Node, decorator: Google::Apis::AlloydbV1::Node::Representation
      
        end
      end
      
      class InstanceNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range_override, as: 'allocatedIpRangeOverride'
          collection :authorized_external_networks, as: 'authorizedExternalNetworks', class: Google::Apis::AlloydbV1::AuthorizedNetwork, decorator: Google::Apis::AlloydbV1::AuthorizedNetwork::Representation
      
          property :enable_outbound_public_ip, as: 'enableOutboundPublicIp'
          property :enable_public_ip, as: 'enablePublicIp'
          property :network, as: 'network'
        end
      end
      
      class InstanceUpgradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_type, as: 'instanceType'
          property :name, as: 'name'
          property :upgrade_status, as: 'upgradeStatus'
        end
      end
      
      class IntegerRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::AlloydbV1::Backup, decorator: Google::Apis::AlloydbV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::AlloydbV1::Cluster, decorator: Google::Apis::AlloydbV1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AlloydbV1::Instance, decorator: Google::Apis::AlloydbV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AlloydbV1::Operation, decorator: Google::Apis::AlloydbV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSupportedDatabaseFlagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :supported_database_flags, as: 'supportedDatabaseFlags', class: Google::Apis::AlloydbV1::SupportedDatabaseFlag, decorator: Google::Apis::AlloydbV1::SupportedDatabaseFlag::Representation
      
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :users, as: 'users', class: Google::Apis::AlloydbV1::User, decorator: Google::Apis::AlloydbV1::User::Representation
      
        end
      end
      
      class MachineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_count, as: 'cpuCount'
          property :machine_type, as: 'machineType'
        end
      end
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class MaintenanceUpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::AlloydbV1::DenyMaintenancePeriod, decorator: Google::Apis::AlloydbV1::DenyMaintenancePeriod::Representation
      
          collection :maintenance_windows, as: 'maintenanceWindows', class: Google::Apis::AlloydbV1::MaintenanceWindow, decorator: Google::Apis::AlloydbV1::MaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :start_time, as: 'startTime', class: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay::Representation
      
        end
      end
      
      class MigrationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_port, as: 'hostPort'
          property :reference_id, as: 'referenceId'
          property :source_type, as: 'sourceType'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range, as: 'allocatedIpRange'
          property :network, as: 'network'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :ip, as: 'ip'
          property :state, as: 'state'
          property :zone_id, as: 'zoneId'
        end
      end
      
      class ObservabilityInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :max_query_string_length, as: 'maxQueryStringLength'
          property :preserve_comments, as: 'preserveComments'
          property :query_plans_per_minute, as: 'queryPlansPerMinute'
          property :record_application_tags, as: 'recordApplicationTags'
          property :track_active_queries, as: 'trackActiveQueries'
          property :track_wait_event_types, as: 'trackWaitEventTypes'
          property :track_wait_events, as: 'trackWaitEvents'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AlloydbV1::Status, decorator: Google::Apis::AlloydbV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :upgrade_cluster_status, as: 'upgradeClusterStatus', class: Google::Apis::AlloydbV1::UpgradeClusterStatus, decorator: Google::Apis::AlloydbV1::UpgradeClusterStatus::Representation
      
          property :verb, as: 'verb'
        end
      end
      
      class PrimaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :secondary_cluster_names, as: 'secondaryClusterNames'
        end
      end
      
      class PromoteClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class PscAutoConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_network, as: 'consumerNetwork'
          property :consumer_network_status, as: 'consumerNetworkStatus'
          property :consumer_project, as: 'consumerProject'
          property :ip_address, as: 'ipAddress'
          property :status, as: 'status'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :psc_enabled, as: 'pscEnabled'
          property :service_owned_project_number, :numeric_string => true, as: 'serviceOwnedProjectNumber'
        end
      end
      
      class PscInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_consumer_projects, as: 'allowedConsumerProjects'
          collection :psc_auto_connections, as: 'pscAutoConnections', class: Google::Apis::AlloydbV1::PscAutoConnectionConfig, decorator: Google::Apis::AlloydbV1::PscAutoConnectionConfig::Representation
      
          property :psc_dns_name, as: 'pscDnsName'
          collection :psc_interface_configs, as: 'pscInterfaceConfigs', class: Google::Apis::AlloydbV1::PscInterfaceConfig, decorator: Google::Apis::AlloydbV1::PscInterfaceConfig::Representation
      
          property :service_attachment_link, as: 'serviceAttachmentLink'
        end
      end
      
      class PscInterfaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_attachment_resource, as: 'networkAttachmentResource'
        end
      end
      
      class QuantityBasedExpiry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_count, as: 'retentionCount'
          property :total_retention_count, as: 'totalRetentionCount'
        end
      end
      
      class QuantityBasedRetention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
        end
      end
      
      class QueryInsightsInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_plans_per_minute, as: 'queryPlansPerMinute'
          property :query_string_length, as: 'queryStringLength'
          property :record_application_tags, as: 'recordApplicationTags'
          property :record_client_address, as: 'recordClientAddress'
        end
      end
      
      class ReadPoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_count, as: 'nodeCount'
        end
      end
      
      class ReadPoolInstancesUpgradeStageStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upgrade_stats, as: 'upgradeStats', class: Google::Apis::AlloydbV1::Stats, decorator: Google::Apis::AlloydbV1::Stats::Representation
      
        end
      end
      
      class RestartInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_ids, as: 'nodeIds'
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class RestoreClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_source, as: 'backupSource', class: Google::Apis::AlloydbV1::BackupSource, decorator: Google::Apis::AlloydbV1::BackupSource::Representation
      
          property :backupdr_backup_source, as: 'backupdrBackupSource', class: Google::Apis::AlloydbV1::BackupDrBackupSource, decorator: Google::Apis::AlloydbV1::BackupDrBackupSource::Representation
      
          property :backupdr_pitr_source, as: 'backupdrPitrSource', class: Google::Apis::AlloydbV1::BackupDrPitrSource, decorator: Google::Apis::AlloydbV1::BackupDrPitrSource::Representation
      
          property :cluster, as: 'cluster', class: Google::Apis::AlloydbV1::Cluster, decorator: Google::Apis::AlloydbV1::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :continuous_backup_source, as: 'continuousBackupSource', class: Google::Apis::AlloydbV1::ContinuousBackupSource, decorator: Google::Apis::AlloydbV1::ContinuousBackupSource::Representation
      
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class RestoreFromCloudSqlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloudsql_backup_run_source, as: 'cloudsqlBackupRunSource', class: Google::Apis::AlloydbV1::CloudSqlBackupRunSource, decorator: Google::Apis::AlloydbV1::CloudSqlBackupRunSource::Representation
      
          property :cluster, as: 'cluster', class: Google::Apis::AlloydbV1::Cluster, decorator: Google::Apis::AlloydbV1::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
        end
      end
      
      class SecondaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_cluster_name, as: 'primaryClusterName'
        end
      end
      
      class SqlExportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clean_target_objects, as: 'cleanTargetObjects'
          property :if_exist_target_objects, as: 'ifExistTargetObjects'
          property :schema_only, as: 'schemaOnly'
          collection :tables, as: 'tables'
        end
      end
      
      class SqlImportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_source, as: 'caSource'
          property :ssl_mode, as: 'sslMode'
        end
      end
      
      class StageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logs_url, as: 'logsUrl'
          property :stage, as: 'stage'
          property :status, as: 'status'
        end
      end
      
      class StageStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_pool_instances_upgrade, as: 'readPoolInstancesUpgrade', class: Google::Apis::AlloydbV1::ReadPoolInstancesUpgradeStageStatus, decorator: Google::Apis::AlloydbV1::ReadPoolInstancesUpgradeStageStatus::Representation
      
          property :stage, as: 'stage'
          property :state, as: 'state'
        end
      end
      
      class Stats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed, as: 'failed'
          property :not_started, as: 'notStarted'
          property :ongoing, as: 'ongoing'
          property :success, as: 'success'
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
      
      class StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_failover_routing_configured, as: 'automaticFailoverRoutingConfigured'
          property :availability_type, as: 'availabilityType'
          property :cross_region_replica_configured, as: 'crossRegionReplicaConfigured'
          property :external_replica_configured, as: 'externalReplicaConfigured'
          property :promotable_replica_configured, as: 'promotableReplicaConfigured'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_enabled, as: 'automatedBackupEnabled'
          property :backup_retention_settings, as: 'backupRetentionSettings', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainRetentionSettings, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainRetentionSettings::Representation
      
          property :point_in_time_recovery_enabled, as: 'pointInTimeRecoveryEnabled'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backupdr_managed, as: 'backupdrManaged'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupDrMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun::Representation
      
          property :backupdr_configuration, as: 'backupdrConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration::Representation
      
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainOperationError, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainOperationError::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
          property :version, as: 'version'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :signal_bool_value, as: 'signalBoolValue'
          property :signal_type, as: 'signalType'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainCustomMetadataData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :internal_resource_metadata, as: 'internalResourceMetadata', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backupdr_metadata, as: 'backupdrMetadata', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrMetadata, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrMetadata::Representation
      
          property :config_based_signal_data, as: 'configBasedSignalData', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData::Representation
      
          property :database_resource_signal_data, as: 'databaseResourceSignalData', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData::Representation
      
          property :feed_timestamp, as: 'feedTimestamp'
          property :feed_type, as: 'feedType'
          property :observability_metric_data, as: 'observabilityMetricData', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainObservabilityMetricData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainObservabilityMetricData::Representation
      
          property :recommendation_signal_data, as: 'recommendationSignalData', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData::Representation
      
          property :resource_health_signal_data, as: 'resourceHealthSignalData', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :resource_metadata, as: 'resourceMetadata', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata::Representation
      
          property :skip_ingestion, as: 'skipIngestion'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_metadata, as: 'additionalMetadata'
          collection :compliance, as: 'compliance', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCompliance, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCompliance::Representation
      
          property :description, as: 'description'
          property :event_time, as: 'eventTime'
          property :external_uri, as: 'externalUri'
          property :location, as: 'location'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :resource_container, as: 'resourceContainer'
          property :resource_name, as: 'resourceName'
          property :signal_class, as: 'signalClass'
          property :signal_id, as: 'signalId'
          property :signal_severity, as: 'signalSeverity'
          property :signal_type, as: 'signalType'
          property :state, as: 'state'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
          property :provider_description, as: 'providerDescription'
          property :resource_type, as: 'resourceType'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_configuration, as: 'availabilityConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration::Representation
      
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun::Representation
      
          property :backupdr_configuration, as: 'backupdrConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupDrConfiguration::Representation
      
          property :creation_time, as: 'creationTime'
          property :current_state, as: 'currentState'
          property :custom_metadata, as: 'customMetadata', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCustomMetadataData, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCustomMetadataData::Representation
      
          property :edition, as: 'edition'
          collection :entitlements, as: 'entitlements', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainEntitlement, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainEntitlement::Representation
      
          property :expected_state, as: 'expectedState'
          property :gcbdr_configuration, as: 'gcbdrConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration::Representation
      
          property :id, as: 'id', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :instance_type, as: 'instanceType'
          property :is_deletion_protection_enabled, as: 'isDeletionProtectionEnabled'
          property :location, as: 'location'
          property :machine_configuration, as: 'machineConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainMachineConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainMachineConfiguration::Representation
      
          property :maintenance_info, as: 'maintenanceInfo', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo::Representation
      
          property :primary_resource_id, as: 'primaryResourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :primary_resource_location, as: 'primaryResourceLocation'
          property :product, as: 'product', class: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct::Representation
      
          property :resource_container, as: 'resourceContainer'
          collection :resource_flags, as: 'resourceFlags', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceFlags, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceFlags::Representation
      
          property :resource_name, as: 'resourceName'
          property :suspension_reason, as: 'suspensionReason'
          property :tags_set, as: 'tagsSet', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainTags, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainTags::Representation
      
          property :updation_time, as: 'updationTime'
          property :user_label_set, as: 'userLabelSet', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainUserLabels, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainUserLabels::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_metadata, as: 'additionalMetadata'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :recommendation_state, as: 'recommendationState'
          property :recommender, as: 'recommender'
          property :recommender_id, as: 'recommenderId'
          property :recommender_subtype, as: 'recommenderSubtype'
          property :resource_name, as: 'resourceName'
          property :signal_type, as: 'signalType'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :signal_bool_value, as: 'signalBoolValue'
          property :signal_state, as: 'signalState'
          property :signal_type, as: 'signalType'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainEntitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement_state, as: 'entitlementState'
          property :type, as: 'type'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcbdr_managed, as: 'gcbdrManaged'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun::Representation
      
          property :is_deletion_protection_enabled, as: 'isDeletionProtectionEnabled'
          property :product, as: 'product', class: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :resource_name, as: 'resourceName'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainMachineConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_slots, :numeric_string => true, as: 'baselineSlots'
          property :cpu_count, as: 'cpuCount'
          property :max_reservation_slots, :numeric_string => true, as: 'maxReservationSlots'
          property :memory_size_in_bytes, :numeric_string => true, as: 'memorySizeInBytes'
          property :shard_count, as: 'shardCount'
          property :vcpu_count, as: 'vcpuCount'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainObservabilityMetricData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_type, as: 'aggregationType'
          property :metric_type, as: 'metricType'
          property :observation_time, as: 'observationTime'
          property :resource_name, as: 'resourceName'
          property :value, as: 'value', class: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonTypedValue, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonTypedValue::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainOperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error_type, as: 'errorType'
          property :message, as: 'message'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::AlloydbV1::GoogleTypeDate, decorator: Google::Apis::AlloydbV1::GoogleTypeDate::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AlloydbV1::GoogleTypeDate, decorator: Google::Apis::AlloydbV1::GoogleTypeDate::Representation
      
          property :time, as: 'time', class: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deny_maintenance_schedules, as: 'denyMaintenanceSchedules', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule::Representation
      
          property :is_instance_stopped, as: 'isInstanceStopped'
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule::Representation
      
          property :maintenance_state, as: 'maintenanceState'
          property :maintenance_version, as: 'maintenanceVersion'
          property :upcoming_maintenance, as: 'upcomingMaintenance', class: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance, decorator: Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance::Representation
      
          property :version_update_time, as: 'versionUpdateTime'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :phase, as: 'phase'
          property :time, as: 'time', class: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_based_retention, as: 'durationBasedRetention'
          property :quantity_based_retention, as: 'quantityBasedRetention'
          property :retention_unit, as: 'retentionUnit'
          property :time_based_retention, as: 'timeBasedRetention'
          property :timestamp_based_retention_time, as: 'timestampBasedRetentionTime'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainTags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :tags, as: 'tags'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainUserLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class StorageDatabasecenterProtoCommonProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :minor_version, as: 'minorVersion'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class StorageDatabasecenterProtoCommonTypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class StringRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
        end
      end
      
      class SupportedDatabaseFlag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepts_multiple_values, as: 'acceptsMultipleValues'
          property :flag_name, as: 'flagName'
          property :integer_restrictions, as: 'integerRestrictions', class: Google::Apis::AlloydbV1::IntegerRestrictions, decorator: Google::Apis::AlloydbV1::IntegerRestrictions::Representation
      
          property :name, as: 'name'
          property :recommended_integer_value, :numeric_string => true, as: 'recommendedIntegerValue'
          property :recommended_string_value, as: 'recommendedStringValue'
          property :requires_db_restart, as: 'requiresDbRestart'
          property :scope, as: 'scope'
          property :string_restrictions, as: 'stringRestrictions', class: Google::Apis::AlloydbV1::StringRestrictions, decorator: Google::Apis::AlloydbV1::StringRestrictions::Representation
      
          collection :supported_db_versions, as: 'supportedDbVersions'
          property :value_type, as: 'valueType'
        end
      end
      
      class SwitchoverClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class TimeBasedRetention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_period, as: 'retentionPeriod'
        end
      end
      
      class TrialMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :grace_end_time, as: 'graceEndTime'
          property :start_time, as: 'startTime'
          property :upgrade_time, as: 'upgradeTime'
        end
      end
      
      class UpgradeClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
          property :version, as: 'version'
        end
      end
      
      class UpgradeClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_upgrade_details, as: 'clusterUpgradeDetails', class: Google::Apis::AlloydbV1::ClusterUpgradeDetails, decorator: Google::Apis::AlloydbV1::ClusterUpgradeDetails::Representation
      
          property :message, as: 'message'
          property :status, as: 'status'
        end
      end
      
      class UpgradeClusterStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancellable, as: 'cancellable'
          property :source_version, as: 'sourceVersion'
          collection :stages, as: 'stages', class: Google::Apis::AlloydbV1::StageStatus, decorator: Google::Apis::AlloydbV1::StageStatus::Representation
      
          property :state, as: 'state'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_roles, as: 'databaseRoles'
          property :keep_extra_roles, as: 'keepExtraRoles'
          property :name, as: 'name'
          property :password, as: 'password'
          property :user_type, as: 'userType'
        end
      end
      
      class UserPassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :user, as: 'user'
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :days_of_week, as: 'daysOfWeek'
          collection :start_times, as: 'startTimes', class: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1::GoogleTypeTimeOfDay::Representation
      
        end
      end
    end
  end
end
