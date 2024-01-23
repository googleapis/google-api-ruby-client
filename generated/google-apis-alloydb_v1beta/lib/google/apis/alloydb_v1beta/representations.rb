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
    module AlloydbV1beta
      
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
      
      class BackupSource
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
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionInfo
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
      
      class FailoverInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateClientCertificateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateClientCertificateResponse
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
      
      class GoogleTypeTimeOfDay
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
      
      class RestartInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfig
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
      
      class StorageDatabasecenterPartnerapiV1mainBackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainCustomMetadataData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseMetadata
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
      
      class StorageDatabasecenterPartnerapiV1mainOperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterPartnerapiV1mainRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDatabasecenterProtoCommonProduct
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
      
      class TimeBasedRetention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePolicy
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
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1beta::EncryptionConfig, decorator: Google::Apis::AlloydbV1beta::EncryptionConfig::Representation
      
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :quantity_based_retention, as: 'quantityBasedRetention', class: Google::Apis::AlloydbV1beta::QuantityBasedRetention, decorator: Google::Apis::AlloydbV1beta::QuantityBasedRetention::Representation
      
          property :time_based_retention, as: 'timeBasedRetention', class: Google::Apis::AlloydbV1beta::TimeBasedRetention, decorator: Google::Apis::AlloydbV1beta::TimeBasedRetention::Representation
      
          property :weekly_schedule, as: 'weeklySchedule', class: Google::Apis::AlloydbV1beta::WeeklySchedule, decorator: Google::Apis::AlloydbV1beta::WeeklySchedule::Representation
      
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cluster_name, as: 'clusterName'
          property :cluster_uid, as: 'clusterUid'
          property :create_time, as: 'createTime'
          property :database_version, as: 'databaseVersion'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1beta::EncryptionConfig, decorator: Google::Apis::AlloydbV1beta::EncryptionConfig::Representation
      
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1beta::EncryptionInfo, decorator: Google::Apis::AlloydbV1beta::EncryptionInfo::Representation
      
          property :etag, as: 'etag'
          property :expiry_quantity, as: 'expiryQuantity', class: Google::Apis::AlloydbV1beta::QuantityBasedExpiry, decorator: Google::Apis::AlloydbV1beta::QuantityBasedExpiry::Representation
      
          property :expiry_time, as: 'expiryTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_name, as: 'backupName'
          property :backup_uid, as: 'backupUid'
        end
      end
      
      class ClientConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :require_connectors, as: 'requireConnectors'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::AlloydbV1beta::SslConfig, decorator: Google::Apis::AlloydbV1beta::SslConfig::Representation
      
        end
      end
      
      class CloudControl2SharedOperationsReconciliationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_resource, as: 'deleteResource'
          property :exclusive_action, as: 'exclusiveAction'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :automated_backup_policy, as: 'automatedBackupPolicy', class: Google::Apis::AlloydbV1beta::AutomatedBackupPolicy, decorator: Google::Apis::AlloydbV1beta::AutomatedBackupPolicy::Representation
      
          property :backup_source, as: 'backupSource', class: Google::Apis::AlloydbV1beta::BackupSource, decorator: Google::Apis::AlloydbV1beta::BackupSource::Representation
      
          property :cluster_type, as: 'clusterType'
          property :continuous_backup_config, as: 'continuousBackupConfig', class: Google::Apis::AlloydbV1beta::ContinuousBackupConfig, decorator: Google::Apis::AlloydbV1beta::ContinuousBackupConfig::Representation
      
          property :continuous_backup_info, as: 'continuousBackupInfo', class: Google::Apis::AlloydbV1beta::ContinuousBackupInfo, decorator: Google::Apis::AlloydbV1beta::ContinuousBackupInfo::Representation
      
          property :create_time, as: 'createTime'
          property :database_version, as: 'databaseVersion'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1beta::EncryptionConfig, decorator: Google::Apis::AlloydbV1beta::EncryptionConfig::Representation
      
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1beta::EncryptionInfo, decorator: Google::Apis::AlloydbV1beta::EncryptionInfo::Representation
      
          property :etag, as: 'etag'
          property :initial_user, as: 'initialUser', class: Google::Apis::AlloydbV1beta::UserPassword, decorator: Google::Apis::AlloydbV1beta::UserPassword::Representation
      
          hash :labels, as: 'labels'
          property :migration_source, as: 'migrationSource', class: Google::Apis::AlloydbV1beta::MigrationSource, decorator: Google::Apis::AlloydbV1beta::MigrationSource::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_config, as: 'networkConfig', class: Google::Apis::AlloydbV1beta::NetworkConfig, decorator: Google::Apis::AlloydbV1beta::NetworkConfig::Representation
      
          property :primary_config, as: 'primaryConfig', class: Google::Apis::AlloydbV1beta::PrimaryConfig, decorator: Google::Apis::AlloydbV1beta::PrimaryConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :secondary_config, as: 'secondaryConfig', class: Google::Apis::AlloydbV1beta::SecondaryConfig, decorator: Google::Apis::AlloydbV1beta::SecondaryConfig::Representation
      
          property :ssl_config, as: 'sslConfig', class: Google::Apis::AlloydbV1beta::SslConfig, decorator: Google::Apis::AlloydbV1beta::SslConfig::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_uid, as: 'instanceUid'
          property :ip_address, as: 'ipAddress'
          property :name, as: 'name'
          collection :pem_certificate_chain, as: 'pemCertificateChain'
          property :public_ip_address, as: 'publicIpAddress'
        end
      end
      
      class ContinuousBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::AlloydbV1beta::EncryptionConfig, decorator: Google::Apis::AlloydbV1beta::EncryptionConfig::Representation
      
          property :recovery_window_days, as: 'recoveryWindowDays'
        end
      end
      
      class ContinuousBackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :earliest_restorable_time, as: 'earliestRestorableTime'
          property :enabled_time, as: 'enabledTime'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::AlloydbV1beta::EncryptionInfo, decorator: Google::Apis::AlloydbV1beta::EncryptionInfo::Representation
      
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
      
      class FailoverInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GenerateClientCertificateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_duration, as: 'certDuration'
          property :pem_csr, as: 'pemCsr'
          property :public_key, as: 'publicKey'
          property :request_id, as: 'requestId'
          property :use_metadata_exchange, as: 'useMetadataExchange'
        end
      end
      
      class GenerateClientCertificateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_cert, as: 'caCert'
          property :pem_certificate, as: 'pemCertificate'
          collection :pem_certificate_chain, as: 'pemCertificateChain'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AlloydbV1beta::GoogleCloudLocationLocation, decorator: Google::Apis::AlloydbV1beta::GoogleCloudLocationLocation::Representation
      
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
      
      class GoogleTypeTimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
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
          hash :annotations, as: 'annotations'
          property :availability_type, as: 'availabilityType'
          property :client_connection_config, as: 'clientConnectionConfig', class: Google::Apis::AlloydbV1beta::ClientConnectionConfig, decorator: Google::Apis::AlloydbV1beta::ClientConnectionConfig::Representation
      
          property :create_time, as: 'createTime'
          hash :database_flags, as: 'databaseFlags'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :gce_zone, as: 'gceZone'
          property :instance_type, as: 'instanceType'
          property :ip_address, as: 'ipAddress'
          hash :labels, as: 'labels'
          property :machine_config, as: 'machineConfig', class: Google::Apis::AlloydbV1beta::MachineConfig, decorator: Google::Apis::AlloydbV1beta::MachineConfig::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::AlloydbV1beta::InstanceNetworkConfig, decorator: Google::Apis::AlloydbV1beta::InstanceNetworkConfig::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::AlloydbV1beta::Node, decorator: Google::Apis::AlloydbV1beta::Node::Representation
      
          property :public_ip_address, as: 'publicIpAddress'
          property :query_insights_config, as: 'queryInsightsConfig', class: Google::Apis::AlloydbV1beta::QueryInsightsInstanceConfig, decorator: Google::Apis::AlloydbV1beta::QueryInsightsInstanceConfig::Representation
      
          property :read_pool_config, as: 'readPoolConfig', class: Google::Apis::AlloydbV1beta::ReadPoolConfig, decorator: Google::Apis::AlloydbV1beta::ReadPoolConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::AlloydbV1beta::UpdatePolicy, decorator: Google::Apis::AlloydbV1beta::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
          property :writable_node, as: 'writableNode', class: Google::Apis::AlloydbV1beta::Node, decorator: Google::Apis::AlloydbV1beta::Node::Representation
      
        end
      end
      
      class InstanceNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_external_networks, as: 'authorizedExternalNetworks', class: Google::Apis::AlloydbV1beta::AuthorizedNetwork, decorator: Google::Apis::AlloydbV1beta::AuthorizedNetwork::Representation
      
          property :enable_public_ip, as: 'enablePublicIp'
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
          collection :backups, as: 'backups', class: Google::Apis::AlloydbV1beta::Backup, decorator: Google::Apis::AlloydbV1beta::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::AlloydbV1beta::Cluster, decorator: Google::Apis::AlloydbV1beta::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AlloydbV1beta::Instance, decorator: Google::Apis::AlloydbV1beta::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AlloydbV1beta::Operation, decorator: Google::Apis::AlloydbV1beta::Operation::Representation
      
        end
      end
      
      class ListSupportedDatabaseFlagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :supported_database_flags, as: 'supportedDatabaseFlags', class: Google::Apis::AlloydbV1beta::SupportedDatabaseFlag, decorator: Google::Apis::AlloydbV1beta::SupportedDatabaseFlag::Representation
      
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :users, as: 'users', class: Google::Apis::AlloydbV1beta::User, decorator: Google::Apis::AlloydbV1beta::User::Representation
      
        end
      end
      
      class MachineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_count, as: 'cpuCount'
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AlloydbV1beta::Status, decorator: Google::Apis::AlloydbV1beta::Status::Representation
      
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
      
      class RestartInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class RestoreClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_source, as: 'backupSource', class: Google::Apis::AlloydbV1beta::BackupSource, decorator: Google::Apis::AlloydbV1beta::BackupSource::Representation
      
          property :cluster, as: 'cluster', class: Google::Apis::AlloydbV1beta::Cluster, decorator: Google::Apis::AlloydbV1beta::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :continuous_backup_source, as: 'continuousBackupSource', class: Google::Apis::AlloydbV1beta::ContinuousBackupSource, decorator: Google::Apis::AlloydbV1beta::ContinuousBackupSource::Representation
      
          property :request_id, as: 'requestId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class SecondaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_cluster_name, as: 'primaryClusterName'
        end
      end
      
      class SslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_source, as: 'caSource'
          property :ssl_mode, as: 'sslMode'
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
          property :availability_type, as: 'availabilityType'
          property :external_replica_configured, as: 'externalReplicaConfigured'
          property :promotable_replica_configured, as: 'promotableReplicaConfigured'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_enabled, as: 'automatedBackupEnabled'
          property :backup_retention_settings, as: 'backupRetentionSettings', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainRetentionSettings, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainRetentionSettings::Representation
      
          property :point_in_time_recovery_enabled, as: 'pointInTimeRecoveryEnabled'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainBackupRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainOperationError, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainOperationError::Representation
      
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
      
      class StorageDatabasecenterPartnerapiV1mainCustomMetadataData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_metadata, as: 'databaseMetadata', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseMetadata, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseMetadata::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupConfiguration, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupRun, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupRun::Representation
      
          property :product, as: 'product', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterProtoCommonProduct, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterProtoCommonProduct::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :resource_name, as: 'resourceName'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feed_timestamp, as: 'feedTimestamp'
          property :feed_type, as: 'feedType'
          property :resource_health_signal_data, as: 'resourceHealthSignalData', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData::Representation
      
          property :resource_id, as: 'resourceId', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :resource_metadata, as: 'resourceMetadata', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata::Representation
      
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_metadata, as: 'additionalMetadata'
          collection :compliance, as: 'compliance', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainCompliance, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainCompliance::Representation
      
          property :description, as: 'description'
          property :event_time, as: 'eventTime'
          property :external_uri, as: 'externalUri'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :resource_container, as: 'resourceContainer'
          property :resource_name, as: 'resourceName'
          property :signal_class, as: 'signalClass'
          property :signal_id, as: 'signalId'
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
          property :availability_configuration, as: 'availabilityConfiguration', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration::Representation
      
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupConfiguration, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupConfiguration::Representation
      
          property :backup_run, as: 'backupRun', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupRun, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainBackupRun::Representation
      
          property :creation_time, as: 'creationTime'
          property :current_state, as: 'currentState'
          property :custom_metadata, as: 'customMetadata', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainCustomMetadataData, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainCustomMetadataData::Representation
      
          property :expected_state, as: 'expectedState'
          property :id, as: 'id', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :instance_type, as: 'instanceType'
          property :location, as: 'location'
          property :primary_resource_id, as: 'primaryResourceId', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId::Representation
      
          property :product, as: 'product', class: Google::Apis::AlloydbV1beta::StorageDatabasecenterProtoCommonProduct, decorator: Google::Apis::AlloydbV1beta::StorageDatabasecenterProtoCommonProduct::Representation
      
          property :resource_container, as: 'resourceContainer'
          property :resource_name, as: 'resourceName'
          property :updation_time, as: 'updationTime'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainOperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class StorageDatabasecenterPartnerapiV1mainRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity_based_retention, as: 'quantityBasedRetention'
          property :retention_unit, as: 'retentionUnit'
          property :time_based_retention, as: 'timeBasedRetention'
        end
      end
      
      class StorageDatabasecenterProtoCommonProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :type, as: 'type'
          property :version, as: 'version'
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
          property :integer_restrictions, as: 'integerRestrictions', class: Google::Apis::AlloydbV1beta::IntegerRestrictions, decorator: Google::Apis::AlloydbV1beta::IntegerRestrictions::Representation
      
          property :name, as: 'name'
          property :requires_db_restart, as: 'requiresDbRestart'
          property :string_restrictions, as: 'stringRestrictions', class: Google::Apis::AlloydbV1beta::StringRestrictions, decorator: Google::Apis::AlloydbV1beta::StringRestrictions::Representation
      
          collection :supported_db_versions, as: 'supportedDbVersions'
          property :value_type, as: 'valueType'
        end
      end
      
      class TimeBasedRetention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_period, as: 'retentionPeriod'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_roles, as: 'databaseRoles'
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
          collection :start_times, as: 'startTimes', class: Google::Apis::AlloydbV1beta::GoogleTypeTimeOfDay, decorator: Google::Apis::AlloydbV1beta::GoogleTypeTimeOfDay::Representation
      
        end
      end
    end
  end
end
