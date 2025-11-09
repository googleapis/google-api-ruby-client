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
    module RedisV1beta1
      
      class AofConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomatedBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailabilityConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertChain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateAuthority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterMaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterMaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterPersistenceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterWeeklyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Compliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigBasedSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrossClusterReplicationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomMetadataData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceFeed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceHealthSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceRecommendationSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceSignalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailoverInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedFrequencySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcbdrConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsBackupSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudCommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRedisV1beta1LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRedisV1beta1ZoneMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceAuthString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InternalResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupCollectionsResponse
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
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedBackupSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedCertificateAuthority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservabilityMetricData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersistenceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscAutoConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscServiceAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RdbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReconciliationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RescheduleClusterMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RescheduleMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceMaintenanceDenySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceMaintenanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceMaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneDistributionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AofConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append_fsync, as: 'appendFsync'
        end
      end
      
      class AutomatedBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_mode, as: 'automatedBackupMode'
          property :fixed_frequency_schedule, as: 'fixedFrequencySchedule', class: Google::Apis::RedisV1beta1::FixedFrequencySchedule, decorator: Google::Apis::RedisV1beta1::FixedFrequencySchedule::Representation
      
          property :retention, as: 'retention'
        end
      end
      
      class AvailabilityConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_failover_routing_configured, as: 'automaticFailoverRoutingConfigured'
          property :availability_type, as: 'availabilityType'
          property :cross_region_replica_configured, as: 'crossRegionReplicaConfigured'
          property :external_replica_configured, as: 'externalReplicaConfigured'
          property :promotable_replica_configured, as: 'promotableReplicaConfigured'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_files, as: 'backupFiles', class: Google::Apis::RedisV1beta1::BackupFile, decorator: Google::Apis::RedisV1beta1::BackupFile::Representation
      
          property :backup_type, as: 'backupType'
          property :cluster, as: 'cluster'
          property :cluster_uid, as: 'clusterUid'
          property :create_time, as: 'createTime'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::RedisV1beta1::EncryptionInfo, decorator: Google::Apis::RedisV1beta1::EncryptionInfo::Representation
      
          property :engine_version, as: 'engineVersion'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :node_type, as: 'nodeType'
          property :replica_count, as: 'replicaCount'
          property :shard_count, as: 'shardCount'
          property :state, as: 'state'
          property :total_size_bytes, :numeric_string => true, as: 'totalSizeBytes'
          property :uid, as: 'uid'
        end
      end
      
      class BackupClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :ttl, as: 'ttl'
        end
      end
      
      class BackupCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :cluster_uid, as: 'clusterUid'
          property :create_time, as: 'createTime'
          property :kms_key, as: 'kmsKey'
          property :last_backup_time, as: 'lastBackupTime'
          property :name, as: 'name'
          property :total_backup_count, :numeric_string => true, as: 'totalBackupCount'
          property :total_backup_size_bytes, :numeric_string => true, as: 'totalBackupSizeBytes'
          property :uid, as: 'uid'
        end
      end
      
      class BackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_enabled, as: 'automatedBackupEnabled'
          property :backup_retention_settings, as: 'backupRetentionSettings', class: Google::Apis::RedisV1beta1::RetentionSettings, decorator: Google::Apis::RedisV1beta1::RetentionSettings::Representation
      
          property :point_in_time_recovery_enabled, as: 'pointInTimeRecoveryEnabled'
        end
      end
      
      class BackupDrConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backupdr_managed, as: 'backupdrManaged'
        end
      end
      
      class BackupDrMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::RedisV1beta1::BackupConfiguration, decorator: Google::Apis::RedisV1beta1::BackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::RedisV1beta1::BackupRun, decorator: Google::Apis::RedisV1beta1::BackupRun::Representation
      
          property :backupdr_configuration, as: 'backupdrConfiguration', class: Google::Apis::RedisV1beta1::BackupDrConfiguration, decorator: Google::Apis::RedisV1beta1::BackupDrConfiguration::Representation
      
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
        end
      end
      
      class BackupFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :file_name, as: 'fileName'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
        end
      end
      
      class BackupRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::RedisV1beta1::OperationError, decorator: Google::Apis::RedisV1beta1::OperationError::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
        end
      end
      
      class CertChain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates'
        end
      end
      
      class CertificateAuthority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :managed_server_ca, as: 'managedServerCa', class: Google::Apis::RedisV1beta1::ManagedCertificateAuthority, decorator: Google::Apis::RedisV1beta1::ManagedCertificateAuthority::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_fewer_zones_deployment, as: 'allowFewerZonesDeployment'
          property :async_cluster_endpoints_deletion_enabled, as: 'asyncClusterEndpointsDeletionEnabled'
          property :authorization_mode, as: 'authorizationMode'
          property :automated_backup_config, as: 'automatedBackupConfig', class: Google::Apis::RedisV1beta1::AutomatedBackupConfig, decorator: Google::Apis::RedisV1beta1::AutomatedBackupConfig::Representation
      
          collection :available_maintenance_versions, as: 'availableMaintenanceVersions'
          property :backup_collection, as: 'backupCollection'
          collection :cluster_endpoints, as: 'clusterEndpoints', class: Google::Apis::RedisV1beta1::ClusterEndpoint, decorator: Google::Apis::RedisV1beta1::ClusterEndpoint::Representation
      
          property :create_time, as: 'createTime'
          property :cross_cluster_replication_config, as: 'crossClusterReplicationConfig', class: Google::Apis::RedisV1beta1::CrossClusterReplicationConfig, decorator: Google::Apis::RedisV1beta1::CrossClusterReplicationConfig::Representation
      
          property :deletion_protection_enabled, as: 'deletionProtectionEnabled'
          collection :discovery_endpoints, as: 'discoveryEndpoints', class: Google::Apis::RedisV1beta1::DiscoveryEndpoint, decorator: Google::Apis::RedisV1beta1::DiscoveryEndpoint::Representation
      
          property :effective_maintenance_version, as: 'effectiveMaintenanceVersion'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::RedisV1beta1::EncryptionInfo, decorator: Google::Apis::RedisV1beta1::EncryptionInfo::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RedisV1beta1::GcsBackupSource, decorator: Google::Apis::RedisV1beta1::GcsBackupSource::Representation
      
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::RedisV1beta1::ClusterMaintenancePolicy, decorator: Google::Apis::RedisV1beta1::ClusterMaintenancePolicy::Representation
      
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::RedisV1beta1::ClusterMaintenanceSchedule, decorator: Google::Apis::RedisV1beta1::ClusterMaintenanceSchedule::Representation
      
          property :maintenance_version, as: 'maintenanceVersion'
          property :managed_backup_source, as: 'managedBackupSource', class: Google::Apis::RedisV1beta1::ManagedBackupSource, decorator: Google::Apis::RedisV1beta1::ManagedBackupSource::Representation
      
          property :name, as: 'name'
          property :node_type, as: 'nodeType'
          property :ondemand_maintenance, as: 'ondemandMaintenance'
          property :persistence_config, as: 'persistenceConfig', class: Google::Apis::RedisV1beta1::ClusterPersistenceConfig, decorator: Google::Apis::RedisV1beta1::ClusterPersistenceConfig::Representation
      
          property :precise_size_gb, as: 'preciseSizeGb'
          collection :psc_configs, as: 'pscConfigs', class: Google::Apis::RedisV1beta1::PscConfig, decorator: Google::Apis::RedisV1beta1::PscConfig::Representation
      
          collection :psc_connections, as: 'pscConnections', class: Google::Apis::RedisV1beta1::PscConnection, decorator: Google::Apis::RedisV1beta1::PscConnection::Representation
      
          collection :psc_service_attachments, as: 'pscServiceAttachments', class: Google::Apis::RedisV1beta1::PscServiceAttachment, decorator: Google::Apis::RedisV1beta1::PscServiceAttachment::Representation
      
          hash :redis_configs, as: 'redisConfigs'
          property :replica_count, as: 'replicaCount'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :shard_count, as: 'shardCount'
          property :simulate_maintenance_event, as: 'simulateMaintenanceEvent'
          property :size_gb, as: 'sizeGb'
          property :state, as: 'state'
          property :state_info, as: 'stateInfo', class: Google::Apis::RedisV1beta1::StateInfo, decorator: Google::Apis::RedisV1beta1::StateInfo::Representation
      
          property :transit_encryption_mode, as: 'transitEncryptionMode'
          property :uid, as: 'uid'
          property :zone_distribution_config, as: 'zoneDistributionConfig', class: Google::Apis::RedisV1beta1::ZoneDistributionConfig, decorator: Google::Apis::RedisV1beta1::ZoneDistributionConfig::Representation
      
        end
      end
      
      class ClusterEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::RedisV1beta1::ConnectionDetail, decorator: Google::Apis::RedisV1beta1::ConnectionDetail::Representation
      
        end
      end
      
      class ClusterMaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
          collection :weekly_maintenance_window, as: 'weeklyMaintenanceWindow', class: Google::Apis::RedisV1beta1::ClusterWeeklyMaintenanceWindow, decorator: Google::Apis::RedisV1beta1::ClusterWeeklyMaintenanceWindow::Representation
      
        end
      end
      
      class ClusterMaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ClusterPersistenceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aof_config, as: 'aofConfig', class: Google::Apis::RedisV1beta1::AofConfig, decorator: Google::Apis::RedisV1beta1::AofConfig::Representation
      
          property :mode, as: 'mode'
          property :rdb_config, as: 'rdbConfig', class: Google::Apis::RedisV1beta1::RdbConfig, decorator: Google::Apis::RedisV1beta1::RdbConfig::Representation
      
        end
      end
      
      class ClusterWeeklyMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :start_time, as: 'startTime', class: Google::Apis::RedisV1beta1::TimeOfDay, decorator: Google::Apis::RedisV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class Compliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
          property :version, as: 'version'
        end
      end
      
      class ConfigBasedSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :signal_bool_value, as: 'signalBoolValue'
          property :signal_type, as: 'signalType'
        end
      end
      
      class ConnectionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :psc_auto_connection, as: 'pscAutoConnection', class: Google::Apis::RedisV1beta1::PscAutoConnection, decorator: Google::Apis::RedisV1beta1::PscAutoConnection::Representation
      
          property :psc_connection, as: 'pscConnection', class: Google::Apis::RedisV1beta1::PscConnection, decorator: Google::Apis::RedisV1beta1::PscConnection::Representation
      
        end
      end
      
      class CrossClusterReplicationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_role, as: 'clusterRole'
          property :membership, as: 'membership', class: Google::Apis::RedisV1beta1::Membership, decorator: Google::Apis::RedisV1beta1::Membership::Representation
      
          property :primary_cluster, as: 'primaryCluster', class: Google::Apis::RedisV1beta1::RemoteCluster, decorator: Google::Apis::RedisV1beta1::RemoteCluster::Representation
      
          collection :secondary_clusters, as: 'secondaryClusters', class: Google::Apis::RedisV1beta1::RemoteCluster, decorator: Google::Apis::RedisV1beta1::RemoteCluster::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class CustomMetadataData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :internal_resource_metadata, as: 'internalResourceMetadata', class: Google::Apis::RedisV1beta1::InternalResourceMetadata, decorator: Google::Apis::RedisV1beta1::InternalResourceMetadata::Representation
      
        end
      end
      
      class DatabaseResourceFeed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backupdr_metadata, as: 'backupdrMetadata', class: Google::Apis::RedisV1beta1::BackupDrMetadata, decorator: Google::Apis::RedisV1beta1::BackupDrMetadata::Representation
      
          property :config_based_signal_data, as: 'configBasedSignalData', class: Google::Apis::RedisV1beta1::ConfigBasedSignalData, decorator: Google::Apis::RedisV1beta1::ConfigBasedSignalData::Representation
      
          property :database_resource_signal_data, as: 'databaseResourceSignalData', class: Google::Apis::RedisV1beta1::DatabaseResourceSignalData, decorator: Google::Apis::RedisV1beta1::DatabaseResourceSignalData::Representation
      
          property :feed_timestamp, as: 'feedTimestamp'
          property :feed_type, as: 'feedType'
          property :observability_metric_data, as: 'observabilityMetricData', class: Google::Apis::RedisV1beta1::ObservabilityMetricData, decorator: Google::Apis::RedisV1beta1::ObservabilityMetricData::Representation
      
          property :recommendation_signal_data, as: 'recommendationSignalData', class: Google::Apis::RedisV1beta1::DatabaseResourceRecommendationSignalData, decorator: Google::Apis::RedisV1beta1::DatabaseResourceRecommendationSignalData::Representation
      
          property :resource_health_signal_data, as: 'resourceHealthSignalData', class: Google::Apis::RedisV1beta1::DatabaseResourceHealthSignalData, decorator: Google::Apis::RedisV1beta1::DatabaseResourceHealthSignalData::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :resource_metadata, as: 'resourceMetadata', class: Google::Apis::RedisV1beta1::DatabaseResourceMetadata, decorator: Google::Apis::RedisV1beta1::DatabaseResourceMetadata::Representation
      
          property :skip_ingestion, as: 'skipIngestion'
        end
      end
      
      class DatabaseResourceHealthSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_metadata, as: 'additionalMetadata'
          collection :compliance, as: 'compliance', class: Google::Apis::RedisV1beta1::Compliance, decorator: Google::Apis::RedisV1beta1::Compliance::Representation
      
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
      
      class DatabaseResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
          property :provider_description, as: 'providerDescription'
          property :resource_type, as: 'resourceType'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class DatabaseResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_configuration, as: 'availabilityConfiguration', class: Google::Apis::RedisV1beta1::AvailabilityConfiguration, decorator: Google::Apis::RedisV1beta1::AvailabilityConfiguration::Representation
      
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::RedisV1beta1::BackupConfiguration, decorator: Google::Apis::RedisV1beta1::BackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::RedisV1beta1::BackupRun, decorator: Google::Apis::RedisV1beta1::BackupRun::Representation
      
          property :backupdr_configuration, as: 'backupdrConfiguration', class: Google::Apis::RedisV1beta1::BackupDrConfiguration, decorator: Google::Apis::RedisV1beta1::BackupDrConfiguration::Representation
      
          property :creation_time, as: 'creationTime'
          property :current_state, as: 'currentState'
          property :custom_metadata, as: 'customMetadata', class: Google::Apis::RedisV1beta1::CustomMetadataData, decorator: Google::Apis::RedisV1beta1::CustomMetadataData::Representation
      
          property :edition, as: 'edition'
          collection :entitlements, as: 'entitlements', class: Google::Apis::RedisV1beta1::Entitlement, decorator: Google::Apis::RedisV1beta1::Entitlement::Representation
      
          property :expected_state, as: 'expectedState'
          property :gcbdr_configuration, as: 'gcbdrConfiguration', class: Google::Apis::RedisV1beta1::GcbdrConfiguration, decorator: Google::Apis::RedisV1beta1::GcbdrConfiguration::Representation
      
          property :id, as: 'id', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :instance_type, as: 'instanceType'
          property :is_deletion_protection_enabled, as: 'isDeletionProtectionEnabled'
          property :location, as: 'location'
          property :machine_configuration, as: 'machineConfiguration', class: Google::Apis::RedisV1beta1::MachineConfiguration, decorator: Google::Apis::RedisV1beta1::MachineConfiguration::Representation
      
          property :maintenance_info, as: 'maintenanceInfo', class: Google::Apis::RedisV1beta1::ResourceMaintenanceInfo, decorator: Google::Apis::RedisV1beta1::ResourceMaintenanceInfo::Representation
      
          property :primary_resource_id, as: 'primaryResourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :primary_resource_location, as: 'primaryResourceLocation'
          property :product, as: 'product', class: Google::Apis::RedisV1beta1::Product, decorator: Google::Apis::RedisV1beta1::Product::Representation
      
          property :resource_container, as: 'resourceContainer'
          property :resource_name, as: 'resourceName'
          property :suspension_reason, as: 'suspensionReason'
          property :tags_set, as: 'tagsSet', class: Google::Apis::RedisV1beta1::Tags, decorator: Google::Apis::RedisV1beta1::Tags::Representation
      
          property :updation_time, as: 'updationTime'
          property :user_label_set, as: 'userLabelSet', class: Google::Apis::RedisV1beta1::UserLabels, decorator: Google::Apis::RedisV1beta1::UserLabels::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class DatabaseResourceRecommendationSignalData
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
      
      class DatabaseResourceSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :resource_id, as: 'resourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :signal_bool_value, as: 'signalBoolValue'
          property :signal_state, as: 'signalState'
          property :signal_type, as: 'signalType'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DiscoveryEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :port, as: 'port'
          property :psc_config, as: 'pscConfig', class: Google::Apis::RedisV1beta1::PscConfig, decorator: Google::Apis::RedisV1beta1::PscConfig::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_type, as: 'encryptionType'
          property :kms_key_primary_state, as: 'kmsKeyPrimaryState'
          collection :kms_key_versions, as: 'kmsKeyVersions'
          property :last_update_time, as: 'lastUpdateTime'
        end
      end
      
      class Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement_state, as: 'entitlementState'
          property :type, as: 'type'
        end
      end
      
      class ExportBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_bucket, as: 'gcsBucket'
        end
      end
      
      class ExportInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::RedisV1beta1::OutputConfig, decorator: Google::Apis::RedisV1beta1::OutputConfig::Representation
      
        end
      end
      
      class FailoverInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_protection_mode, as: 'dataProtectionMode'
        end
      end
      
      class FixedFrequencySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime', class: Google::Apis::RedisV1beta1::TimeOfDay, decorator: Google::Apis::RedisV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class GcbdrConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcbdr_managed, as: 'gcbdrManaged'
        end
      end
      
      class GcsBackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudCommonOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudRedisV1beta1LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :available_zones, as: 'availableZones', class: Google::Apis::RedisV1beta1::GoogleCloudRedisV1beta1ZoneMetadata, decorator: Google::Apis::RedisV1beta1::GoogleCloudRedisV1beta1ZoneMetadata::Representation
      
        end
      end
      
      class GoogleCloudRedisV1beta1ZoneMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::RedisV1beta1::InputConfig, decorator: Google::Apis::RedisV1beta1::InputConfig::Representation
      
        end
      end
      
      class InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RedisV1beta1::GcsSource, decorator: Google::Apis::RedisV1beta1::GcsSource::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternative_location_id, as: 'alternativeLocationId'
          property :auth_enabled, as: 'authEnabled'
          property :authorized_network, as: 'authorizedNetwork'
          collection :available_maintenance_versions, as: 'availableMaintenanceVersions'
          property :connect_mode, as: 'connectMode'
          property :create_time, as: 'createTime'
          property :current_location_id, as: 'currentLocationId'
          property :customer_managed_key, as: 'customerManagedKey'
          property :display_name, as: 'displayName'
          property :host, as: 'host'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::RedisV1beta1::MaintenancePolicy, decorator: Google::Apis::RedisV1beta1::MaintenancePolicy::Representation
      
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::RedisV1beta1::MaintenanceSchedule, decorator: Google::Apis::RedisV1beta1::MaintenanceSchedule::Representation
      
          property :maintenance_version, as: 'maintenanceVersion'
          property :memory_size_gb, as: 'memorySizeGb'
          property :name, as: 'name'
          collection :nodes, as: 'nodes', class: Google::Apis::RedisV1beta1::NodeInfo, decorator: Google::Apis::RedisV1beta1::NodeInfo::Representation
      
          property :persistence_config, as: 'persistenceConfig', class: Google::Apis::RedisV1beta1::PersistenceConfig, decorator: Google::Apis::RedisV1beta1::PersistenceConfig::Representation
      
          property :persistence_iam_identity, as: 'persistenceIamIdentity'
          property :port, as: 'port'
          property :read_endpoint, as: 'readEndpoint'
          property :read_endpoint_port, as: 'readEndpointPort'
          property :read_replicas_mode, as: 'readReplicasMode'
          hash :redis_configs, as: 'redisConfigs'
          property :redis_version, as: 'redisVersion'
          property :replica_count, as: 'replicaCount'
          property :reserved_ip_range, as: 'reservedIpRange'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :secondary_ip_range, as: 'secondaryIpRange'
          collection :server_ca_certs, as: 'serverCaCerts', class: Google::Apis::RedisV1beta1::TlsCertificate, decorator: Google::Apis::RedisV1beta1::TlsCertificate::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          collection :suspension_reasons, as: 'suspensionReasons'
          hash :tags, as: 'tags'
          property :tier, as: 'tier'
          property :transit_encryption_mode, as: 'transitEncryptionMode'
        end
      end
      
      class InstanceAuthString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_string, as: 'authString'
        end
      end
      
      class InternalResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::RedisV1beta1::BackupConfiguration, decorator: Google::Apis::RedisV1beta1::BackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::RedisV1beta1::BackupRun, decorator: Google::Apis::RedisV1beta1::BackupRun::Representation
      
          property :is_deletion_protection_enabled, as: 'isDeletionProtectionEnabled'
          property :product, as: 'product', class: Google::Apis::RedisV1beta1::Product, decorator: Google::Apis::RedisV1beta1::Product::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::RedisV1beta1::DatabaseResourceId, decorator: Google::Apis::RedisV1beta1::DatabaseResourceId::Representation
      
          property :resource_name, as: 'resourceName'
        end
      end
      
      class ListBackupCollectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_collections, as: 'backupCollections', class: Google::Apis::RedisV1beta1::BackupCollection, decorator: Google::Apis::RedisV1beta1::BackupCollection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::RedisV1beta1::Backup, decorator: Google::Apis::RedisV1beta1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::RedisV1beta1::Cluster, decorator: Google::Apis::RedisV1beta1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::RedisV1beta1::Instance, decorator: Google::Apis::RedisV1beta1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::RedisV1beta1::Location, decorator: Google::Apis::RedisV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RedisV1beta1::Operation, decorator: Google::Apis::RedisV1beta1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class MachineConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_count, as: 'cpuCount'
          property :memory_size_in_bytes, :numeric_string => true, as: 'memorySizeInBytes'
          property :shard_count, as: 'shardCount'
          property :vcpu_count, as: 'vcpuCount'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :update_time, as: 'updateTime'
          collection :weekly_maintenance_window, as: 'weeklyMaintenanceWindow', class: Google::Apis::RedisV1beta1::WeeklyMaintenanceWindow, decorator: Google::Apis::RedisV1beta1::WeeklyMaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ManagedBackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
        end
      end
      
      class ManagedCertificateAuthority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca_certs, as: 'caCerts', class: Google::Apis::RedisV1beta1::CertChain, decorator: Google::Apis::RedisV1beta1::CertChain::Representation
      
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_cluster, as: 'primaryCluster', class: Google::Apis::RedisV1beta1::RemoteCluster, decorator: Google::Apis::RedisV1beta1::RemoteCluster::Representation
      
          collection :secondary_clusters, as: 'secondaryClusters', class: Google::Apis::RedisV1beta1::RemoteCluster, decorator: Google::Apis::RedisV1beta1::RemoteCluster::Representation
      
        end
      end
      
      class NodeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :zone, as: 'zone'
        end
      end
      
      class ObservabilityMetricData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_type, as: 'aggregationType'
          property :metric_type, as: 'metricType'
          property :observation_time, as: 'observationTime'
          property :resource_name, as: 'resourceName'
          property :value, as: 'value', class: Google::Apis::RedisV1beta1::TypedValue, decorator: Google::Apis::RedisV1beta1::TypedValue::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RedisV1beta1::Status, decorator: Google::Apis::RedisV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error_type, as: 'errorType'
          property :message, as: 'message'
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
          property :verb, as: 'verb'
        end
      end
      
      class OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::RedisV1beta1::GcsDestination, decorator: Google::Apis::RedisV1beta1::GcsDestination::Representation
      
        end
      end
      
      class PersistenceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :persistence_mode, as: 'persistenceMode'
          property :rdb_next_snapshot_time, as: 'rdbNextSnapshotTime'
          property :rdb_snapshot_period, as: 'rdbSnapshotPeriod'
          property :rdb_snapshot_start_time, as: 'rdbSnapshotStartTime'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :minor_version, as: 'minorVersion'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PscAutoConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :connection_type, as: 'connectionType'
          property :forwarding_rule, as: 'forwardingRule'
          property :network, as: 'network'
          property :project_id, as: 'projectId'
          property :psc_connection_id, as: 'pscConnectionId'
          property :psc_connection_status, as: 'pscConnectionStatus'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
        end
      end
      
      class PscConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :connection_type, as: 'connectionType'
          property :forwarding_rule, as: 'forwardingRule'
          property :network, as: 'network'
          property :port, as: 'port'
          property :project_id, as: 'projectId'
          property :psc_connection_id, as: 'pscConnectionId'
          property :psc_connection_status, as: 'pscConnectionStatus'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class PscServiceAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_type, as: 'connectionType'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class RdbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rdb_snapshot_period, as: 'rdbSnapshotPeriod'
          property :rdb_snapshot_start_time, as: 'rdbSnapshotStartTime'
        end
      end
      
      class ReconciliationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_resource, as: 'deleteResource'
          property :exclusive_action, as: 'exclusiveAction'
        end
      end
      
      class RemoteCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :uid, as: 'uid'
        end
      end
      
      class RescheduleClusterMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule_type, as: 'rescheduleType'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class RescheduleMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule_type, as: 'rescheduleType'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class ResourceMaintenanceDenySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::RedisV1beta1::Date, decorator: Google::Apis::RedisV1beta1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::RedisV1beta1::Date, decorator: Google::Apis::RedisV1beta1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::RedisV1beta1::TimeOfDay, decorator: Google::Apis::RedisV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class ResourceMaintenanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deny_maintenance_schedules, as: 'denyMaintenanceSchedules', class: Google::Apis::RedisV1beta1::ResourceMaintenanceDenySchedule, decorator: Google::Apis::RedisV1beta1::ResourceMaintenanceDenySchedule::Representation
      
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::RedisV1beta1::ResourceMaintenanceSchedule, decorator: Google::Apis::RedisV1beta1::ResourceMaintenanceSchedule::Representation
      
          property :maintenance_version, as: 'maintenanceVersion'
        end
      end
      
      class ResourceMaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :phase, as: 'phase'
          property :time, as: 'time', class: Google::Apis::RedisV1beta1::TimeOfDay, decorator: Google::Apis::RedisV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class RetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_based_retention, as: 'durationBasedRetention'
          property :quantity_based_retention, as: 'quantityBasedRetention'
          property :retention_unit, as: 'retentionUnit'
          property :time_based_retention, as: 'timeBasedRetention'
          property :timestamp_based_retention_time, as: 'timestampBasedRetentionTime'
        end
      end
      
      class StateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_info, as: 'updateInfo', class: Google::Apis::RedisV1beta1::UpdateInfo, decorator: Google::Apis::RedisV1beta1::UpdateInfo::Representation
      
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
      
      class Tags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :tags, as: 'tags'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TlsCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert'
          property :create_time, as: 'createTime'
          property :expire_time, as: 'expireTime'
          property :serial_number, as: 'serialNumber'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      class TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class UpdateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_node_type, as: 'targetNodeType'
          property :target_replica_count, as: 'targetReplicaCount'
          property :target_shard_count, as: 'targetShardCount'
        end
      end
      
      class UpgradeInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redis_version, as: 'redisVersion'
        end
      end
      
      class UserLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class WeeklyMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::RedisV1beta1::TimeOfDay, decorator: Google::Apis::RedisV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class ZoneDistributionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :zone, as: 'zone'
        end
      end
    end
  end
end
