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
    module NetappV1
      
      class ActiveDirectory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupVault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationVolumeParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptVolumesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HourlySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KmsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActiveDirectoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupVaultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListKmsConfigsResponse
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
      
      class ListReplicationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStoragePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVolumesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonthlySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MountOption
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
      
      class Replication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeReplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReverseReplicationDirectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevertVolumeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleExportPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopReplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwitchActiveReplicaZoneRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TieringPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyKmsConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyKmsConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveDirectory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :administrators, as: 'administrators'
          property :aes_encryption, as: 'aesEncryption'
          collection :backup_operators, as: 'backupOperators'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :dns, as: 'dns'
          property :domain, as: 'domain'
          property :encrypt_dc_connections, as: 'encryptDcConnections'
          property :kdc_hostname, as: 'kdcHostname'
          property :kdc_ip, as: 'kdcIp'
          hash :labels, as: 'labels'
          property :ldap_signing, as: 'ldapSigning'
          property :name, as: 'name'
          property :net_bios_prefix, as: 'netBiosPrefix'
          property :nfs_users_with_ldap, as: 'nfsUsersWithLdap'
          property :organizational_unit, as: 'organizationalUnit'
          property :password, as: 'password'
          collection :security_operators, as: 'securityOperators'
          property :site, as: 'site'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :username, as: 'username'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_type, as: 'backupType'
          property :chain_storage_bytes, :numeric_string => true, as: 'chainStorageBytes'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :source_snapshot, as: 'sourceSnapshot'
          property :source_volume, as: 'sourceVolume'
          property :state, as: 'state'
          property :volume_usage_bytes, :numeric_string => true, as: 'volumeUsageBytes'
        end
      end
      
      class BackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_chain_bytes, :numeric_string => true, as: 'backupChainBytes'
          collection :backup_policies, as: 'backupPolicies'
          property :backup_vault, as: 'backupVault'
          property :scheduled_backup_enabled, as: 'scheduledBackupEnabled'
        end
      end
      
      class BackupPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_volume_count, as: 'assignedVolumeCount'
          property :create_time, as: 'createTime'
          property :daily_backup_limit, as: 'dailyBackupLimit'
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          hash :labels, as: 'labels'
          property :monthly_backup_limit, as: 'monthlyBackupLimit'
          property :name, as: 'name'
          property :state, as: 'state'
          property :weekly_backup_limit, as: 'weeklyBackupLimit'
        end
      end
      
      class BackupVault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DailySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :snapshots_to_keep, as: 'snapshotsToKeep'
        end
      end
      
      class DestinationVolumeParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :share_name, as: 'shareName'
          property :storage_pool, as: 'storagePool'
          property :volume_id, as: 'volumeId'
        end
      end
      
      class EncryptVolumesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::NetappV1::SimpleExportPolicyRule, decorator: Google::Apis::NetappV1::SimpleExportPolicyRule::Representation
      
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HourlySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minute, as: 'minute'
          property :snapshots_to_keep, as: 'snapshotsToKeep'
        end
      end
      
      class KmsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          property :description, as: 'description'
          property :instructions, as: 'instructions'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
        end
      end
      
      class ListActiveDirectoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_directories, as: 'activeDirectories', class: Google::Apis::NetappV1::ActiveDirectory, decorator: Google::Apis::NetappV1::ActiveDirectory::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_policies, as: 'backupPolicies', class: Google::Apis::NetappV1::BackupPolicy, decorator: Google::Apis::NetappV1::BackupPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupVaultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_vaults, as: 'backupVaults', class: Google::Apis::NetappV1::BackupVault, decorator: Google::Apis::NetappV1::BackupVault::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::NetappV1::Backup, decorator: Google::Apis::NetappV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListKmsConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :kms_configs, as: 'kmsConfigs', class: Google::Apis::NetappV1::KmsConfig, decorator: Google::Apis::NetappV1::KmsConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetappV1::Location, decorator: Google::Apis::NetappV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetappV1::Operation, decorator: Google::Apis::NetappV1::Operation::Representation
      
        end
      end
      
      class ListReplicationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :replications, as: 'replications', class: Google::Apis::NetappV1::Replication, decorator: Google::Apis::NetappV1::Replication::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots', class: Google::Apis::NetappV1::Snapshot, decorator: Google::Apis::NetappV1::Snapshot::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListStoragePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :storage_pools, as: 'storagePools', class: Google::Apis::NetappV1::StoragePool, decorator: Google::Apis::NetappV1::StoragePool::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListVolumesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :volumes, as: 'volumes', class: Google::Apis::NetappV1::Volume, decorator: Google::Apis::NetappV1::Volume::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :supported_service_levels, as: 'supportedServiceLevels'
        end
      end
      
      class MonthlySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :days_of_month, as: 'daysOfMonth'
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :snapshots_to_keep, as: 'snapshotsToKeep'
        end
      end
      
      class MountOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export, as: 'export'
          property :export_full, as: 'exportFull'
          property :instructions, as: 'instructions'
          property :protocol, as: 'protocol'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetappV1::Status, decorator: Google::Apis::NetappV1::Status::Representation
      
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
          property :verb, as: 'verb'
        end
      end
      
      class Replication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :destination_volume, as: 'destinationVolume'
          property :destination_volume_parameters, as: 'destinationVolumeParameters', class: Google::Apis::NetappV1::DestinationVolumeParameters, decorator: Google::Apis::NetappV1::DestinationVolumeParameters::Representation
      
          property :healthy, as: 'healthy'
          hash :labels, as: 'labels'
          property :mirror_state, as: 'mirrorState'
          property :name, as: 'name'
          property :replication_schedule, as: 'replicationSchedule'
          property :role, as: 'role'
          property :source_volume, as: 'sourceVolume'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :transfer_stats, as: 'transferStats', class: Google::Apis::NetappV1::TransferStats, decorator: Google::Apis::NetappV1::TransferStats::Representation
      
        end
      end
      
      class RestoreParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_backup, as: 'sourceBackup'
          property :source_snapshot, as: 'sourceSnapshot'
        end
      end
      
      class ResumeReplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReverseReplicationDirectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RevertVolumeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_id, as: 'snapshotId'
        end
      end
      
      class SimpleExportPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :allowed_clients, as: 'allowedClients'
          property :has_root_access, as: 'hasRootAccess'
          property :kerberos5_read_only, as: 'kerberos5ReadOnly'
          property :kerberos5_read_write, as: 'kerberos5ReadWrite'
          property :kerberos5i_read_only, as: 'kerberos5iReadOnly'
          property :kerberos5i_read_write, as: 'kerberos5iReadWrite'
          property :kerberos5p_read_only, as: 'kerberos5pReadOnly'
          property :kerberos5p_read_write, as: 'kerberos5pReadWrite'
          property :nfsv3, as: 'nfsv3'
          property :nfsv4, as: 'nfsv4'
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :used_bytes, as: 'usedBytes'
        end
      end
      
      class SnapshotPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_schedule, as: 'dailySchedule', class: Google::Apis::NetappV1::DailySchedule, decorator: Google::Apis::NetappV1::DailySchedule::Representation
      
          property :enabled, as: 'enabled'
          property :hourly_schedule, as: 'hourlySchedule', class: Google::Apis::NetappV1::HourlySchedule, decorator: Google::Apis::NetappV1::HourlySchedule::Representation
      
          property :monthly_schedule, as: 'monthlySchedule', class: Google::Apis::NetappV1::MonthlySchedule, decorator: Google::Apis::NetappV1::MonthlySchedule::Representation
      
          property :weekly_schedule, as: 'weeklySchedule', class: Google::Apis::NetappV1::WeeklySchedule, decorator: Google::Apis::NetappV1::WeeklySchedule::Representation
      
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
      
      class StopReplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
        end
      end
      
      class StoragePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_directory, as: 'activeDirectory'
          property :allow_auto_tiering, as: 'allowAutoTiering'
          property :capacity_gib, :numeric_string => true, as: 'capacityGib'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :encryption_type, as: 'encryptionType'
          property :global_access_allowed, as: 'globalAccessAllowed'
          property :kms_config, as: 'kmsConfig'
          hash :labels, as: 'labels'
          property :ldap_enabled, as: 'ldapEnabled'
          property :name, as: 'name'
          property :network, as: 'network'
          property :psa_range, as: 'psaRange'
          property :replica_zone, as: 'replicaZone'
          property :service_level, as: 'serviceLevel'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :volume_capacity_gib, :numeric_string => true, as: 'volumeCapacityGib'
          property :volume_count, as: 'volumeCount'
          property :zone, as: 'zone'
        end
      end
      
      class SwitchActiveReplicaZoneRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TieringPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cooling_threshold_days, as: 'coolingThresholdDays'
          property :tier_action, as: 'tierAction'
        end
      end
      
      class TransferStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lag_duration, as: 'lagDuration'
          property :last_transfer_bytes, :numeric_string => true, as: 'lastTransferBytes'
          property :last_transfer_duration, as: 'lastTransferDuration'
          property :last_transfer_end_time, as: 'lastTransferEndTime'
          property :last_transfer_error, as: 'lastTransferError'
          property :total_transfer_duration, as: 'totalTransferDuration'
          property :transfer_bytes, :numeric_string => true, as: 'transferBytes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class VerifyKmsConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VerifyKmsConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_error, as: 'healthError'
          property :healthy, as: 'healthy'
          property :instructions, as: 'instructions'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_directory, as: 'activeDirectory'
          property :backup_config, as: 'backupConfig', class: Google::Apis::NetappV1::BackupConfig, decorator: Google::Apis::NetappV1::BackupConfig::Representation
      
          property :capacity_gib, :numeric_string => true, as: 'capacityGib'
          property :cold_tier_size_gib, :numeric_string => true, as: 'coldTierSizeGib'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :encryption_type, as: 'encryptionType'
          property :export_policy, as: 'exportPolicy', class: Google::Apis::NetappV1::ExportPolicy, decorator: Google::Apis::NetappV1::ExportPolicy::Representation
      
          property :has_replication, as: 'hasReplication'
          property :kerberos_enabled, as: 'kerberosEnabled'
          property :kms_config, as: 'kmsConfig'
          hash :labels, as: 'labels'
          property :large_capacity, as: 'largeCapacity'
          property :ldap_enabled, as: 'ldapEnabled'
          collection :mount_options, as: 'mountOptions', class: Google::Apis::NetappV1::MountOption, decorator: Google::Apis::NetappV1::MountOption::Representation
      
          property :multiple_endpoints, as: 'multipleEndpoints'
          property :name, as: 'name'
          property :network, as: 'network'
          collection :protocols, as: 'protocols'
          property :psa_range, as: 'psaRange'
          property :replica_zone, as: 'replicaZone'
          property :restore_parameters, as: 'restoreParameters', class: Google::Apis::NetappV1::RestoreParameters, decorator: Google::Apis::NetappV1::RestoreParameters::Representation
      
          collection :restricted_actions, as: 'restrictedActions'
          property :security_style, as: 'securityStyle'
          property :service_level, as: 'serviceLevel'
          property :share_name, as: 'shareName'
          collection :smb_settings, as: 'smbSettings'
          property :snap_reserve, as: 'snapReserve'
          property :snapshot_directory, as: 'snapshotDirectory'
          property :snapshot_policy, as: 'snapshotPolicy', class: Google::Apis::NetappV1::SnapshotPolicy, decorator: Google::Apis::NetappV1::SnapshotPolicy::Representation
      
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :storage_pool, as: 'storagePool'
          property :tiering_policy, as: 'tieringPolicy', class: Google::Apis::NetappV1::TieringPolicy, decorator: Google::Apis::NetappV1::TieringPolicy::Representation
      
          property :unix_permissions, as: 'unixPermissions'
          property :used_gib, :numeric_string => true, as: 'usedGib'
          property :zone, as: 'zone'
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :snapshots_to_keep, as: 'snapshotsToKeep'
        end
      end
    end
  end
end
