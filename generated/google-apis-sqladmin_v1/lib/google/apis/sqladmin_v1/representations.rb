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
    module SqladminV1
      
      class AclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class FailoverReplica
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEncryptionConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEncryptionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateEphemeralCertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateEphemeralCertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsightsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremisesConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlActiveDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlOutOfDiskReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlScheduledMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsCreateEphemeralRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class ApiWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          property :region, as: 'region'
        end
      end
      
      class BackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_retention_settings, as: 'backupRetentionSettings', class: Google::Apis::SqladminV1::BackupRetentionSettings, decorator: Google::Apis::SqladminV1::BackupRetentionSettings::Representation
      
          property :binary_log_enabled, as: 'binaryLogEnabled'
          property :enabled, as: 'enabled'
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :point_in_time_recovery_enabled, as: 'pointInTimeRecoveryEnabled'
          property :replication_log_archiving_enabled, as: 'replicationLogArchivingEnabled'
          property :start_time, as: 'startTime'
          property :transaction_log_retention_days, as: 'transactionLogRetentionDays'
        end
      end
      
      class BackupRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retained_backups, as: 'retainedBackups'
          property :retention_unit, as: 'retentionUnit'
        end
      end
      
      class ConnectSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_type, as: 'backendType'
          property :database_version, as: 'databaseVersion'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :kind, as: 'kind'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
        end
      end
      
      class DatabaseFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DatabaseInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_type, as: 'backendType'
          property :connection_name, as: 'connectionName'
          property :current_disk_size, :numeric_string => true, as: 'currentDiskSize'
          property :database_version, as: 'databaseVersion'
          property :disk_encryption_configuration, as: 'diskEncryptionConfiguration', class: Google::Apis::SqladminV1::DiskEncryptionConfiguration, decorator: Google::Apis::SqladminV1::DiskEncryptionConfiguration::Representation
      
          property :disk_encryption_status, as: 'diskEncryptionStatus', class: Google::Apis::SqladminV1::DiskEncryptionStatus, decorator: Google::Apis::SqladminV1::DiskEncryptionStatus::Representation
      
          property :encrypted_root_password, :base64 => true, as: 'encryptedRootPassword'
          property :etag, as: 'etag'
          property :failover_replica, as: 'failoverReplica', class: Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica, decorator: Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica::Representation
      
          property :gce_zone, as: 'gceZone'
          property :installed_version, as: 'installedVersion'
          property :instance_type, as: 'instanceType'
          property :instance_uid, as: 'instanceUid'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
          property :master_instance, as: 'masterInstance', class: Google::Apis::SqladminV1::InstanceReference, decorator: Google::Apis::SqladminV1::InstanceReference::Representation
      
          property :master_instance_name, as: 'masterInstanceName'
          property :max_disk_size, :numeric_string => true, as: 'maxDiskSize'
          property :name, as: 'name'
          property :on_premises_configuration, as: 'onPremisesConfiguration', class: Google::Apis::SqladminV1::OnPremisesConfiguration, decorator: Google::Apis::SqladminV1::OnPremisesConfiguration::Representation
      
          property :out_of_disk_report, as: 'outOfDiskReport', class: Google::Apis::SqladminV1::SqlOutOfDiskReport, decorator: Google::Apis::SqladminV1::SqlOutOfDiskReport::Representation
      
          property :project, as: 'project'
          property :region, as: 'region'
          property :replica_configuration, as: 'replicaConfiguration', class: Google::Apis::SqladminV1::ReplicaConfiguration, decorator: Google::Apis::SqladminV1::ReplicaConfiguration::Representation
      
          collection :replica_instances, as: 'replicaInstances', class: Google::Apis::SqladminV1::InstanceReference, decorator: Google::Apis::SqladminV1::InstanceReference::Representation
      
          collection :replica_names, as: 'replicaNames'
          property :root_password, as: 'rootPassword'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :scheduled_maintenance, as: 'scheduledMaintenance', class: Google::Apis::SqladminV1::SqlScheduledMaintenance, decorator: Google::Apis::SqladminV1::SqlScheduledMaintenance::Representation
      
          property :secondary_gce_zone, as: 'secondaryGceZone'
          property :self_link, as: 'selfLink'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :service_account_email_address, as: 'serviceAccountEmailAddress'
          property :settings, as: 'settings', class: Google::Apis::SqladminV1::Settings, decorator: Google::Apis::SqladminV1::Settings::Representation
      
          property :state, as: 'state'
          collection :suspension_reason, as: 'suspensionReason'
        end
        
        class FailoverReplica
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :available, as: 'available'
            property :failover_instance, as: 'failoverInstance', class: Google::Apis::SqladminV1::InstanceReference, decorator: Google::Apis::SqladminV1::InstanceReference::Representation
        
            property :name, as: 'name'
          end
        end
      end
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
          property :time, as: 'time'
        end
      end
      
      class DiskEncryptionConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class DiskEncryptionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
        end
      end
      
      class GenerateEphemeralCertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :public_key, as: 'public_key'
          property :read_time, as: 'readTime'
        end
      end
      
      class GenerateEphemeralCertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ephemeral_cert, as: 'ephemeralCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
        end
      end
      
      class InsightsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_insights_enabled, as: 'queryInsightsEnabled'
          property :query_plans_per_minute, as: 'queryPlansPerMinute'
          property :query_string_length, as: 'queryStringLength'
          property :record_application_tags, as: 'recordApplicationTags'
          property :record_client_address, as: 'recordClientAddress'
        end
      end
      
      class InstanceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :region, as: 'region'
        end
      end
      
      class InstancesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::DatabaseInstance, decorator: Google::Apis::SqladminV1::DatabaseInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :warnings, as: 'warnings', class: Google::Apis::SqladminV1::ApiWarning, decorator: Google::Apis::SqladminV1::ApiWarning::Representation
      
        end
      end
      
      class IpConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::SqladminV1::AclEntry, decorator: Google::Apis::SqladminV1::AclEntry::Representation
      
          property :ipv4_enabled, as: 'ipv4Enabled'
          property :private_network, as: 'privateNetwork'
          property :require_ssl, as: 'requireSsl'
        end
      end
      
      class IpMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :time_to_retire, as: 'timeToRetire'
          property :type, as: 'type'
        end
      end
      
      class LocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :secondary_zone, as: 'secondaryZone'
          property :zone, as: 'zone'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hour, as: 'hour'
          property :kind, as: 'kind'
          property :update_track, as: 'updateTrack'
        end
      end
      
      class MySqlReplicaConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :connect_retry_interval, as: 'connectRetryInterval'
          property :dump_file_path, as: 'dumpFilePath'
          property :kind, as: 'kind'
          property :master_heartbeat_period, :numeric_string => true, as: 'masterHeartbeatPeriod'
          property :password, as: 'password'
          property :ssl_cipher, as: 'sslCipher'
          property :username, as: 'username'
          property :verify_server_certificate, as: 'verifyServerCertificate'
        end
      end
      
      class OnPremisesConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :dump_file_path, as: 'dumpFilePath'
          property :host_port, as: 'hostPort'
          property :kind, as: 'kind'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class ReplicaConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failover_target, as: 'failoverTarget'
          property :kind, as: 'kind'
          property :mysql_replica_configuration, as: 'mysqlReplicaConfiguration', class: Google::Apis::SqladminV1::MySqlReplicaConfiguration, decorator: Google::Apis::SqladminV1::MySqlReplicaConfiguration::Representation
      
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          property :active_directory_config, as: 'activeDirectoryConfig', class: Google::Apis::SqladminV1::SqlActiveDirectoryConfig, decorator: Google::Apis::SqladminV1::SqlActiveDirectoryConfig::Representation
      
          property :availability_type, as: 'availabilityType'
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::SqladminV1::BackupConfiguration, decorator: Google::Apis::SqladminV1::BackupConfiguration::Representation
      
          property :collation, as: 'collation'
          property :crash_safe_replication_enabled, as: 'crashSafeReplicationEnabled'
          property :data_disk_size_gb, :numeric_string => true, as: 'dataDiskSizeGb'
          property :data_disk_type, as: 'dataDiskType'
          collection :database_flags, as: 'databaseFlags', class: Google::Apis::SqladminV1::DatabaseFlags, decorator: Google::Apis::SqladminV1::DatabaseFlags::Representation
      
          property :database_replication_enabled, as: 'databaseReplicationEnabled'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::SqladminV1::DenyMaintenancePeriod, decorator: Google::Apis::SqladminV1::DenyMaintenancePeriod::Representation
      
          property :insights_config, as: 'insightsConfig', class: Google::Apis::SqladminV1::InsightsConfig, decorator: Google::Apis::SqladminV1::InsightsConfig::Representation
      
          property :ip_configuration, as: 'ipConfiguration', class: Google::Apis::SqladminV1::IpConfiguration, decorator: Google::Apis::SqladminV1::IpConfiguration::Representation
      
          property :kind, as: 'kind'
          property :location_preference, as: 'locationPreference', class: Google::Apis::SqladminV1::LocationPreference, decorator: Google::Apis::SqladminV1::LocationPreference::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::SqladminV1::MaintenanceWindow, decorator: Google::Apis::SqladminV1::MaintenanceWindow::Representation
      
          property :pricing_plan, as: 'pricingPlan'
          property :replication_type, as: 'replicationType'
          property :settings_version, :numeric_string => true, as: 'settingsVersion'
          property :storage_auto_resize, as: 'storageAutoResize'
          property :storage_auto_resize_limit, :numeric_string => true, as: 'storageAutoResizeLimit'
          property :tier, as: 'tier'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class SqlActiveDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :kind, as: 'kind'
        end
      end
      
      class SqlOutOfDiskReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_min_recommended_increase_size_gb, as: 'sqlMinRecommendedIncreaseSizeGb'
          property :sql_out_of_disk_state, as: 'sqlOutOfDiskState'
        end
      end
      
      class SqlScheduledMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_defer, as: 'canDefer'
          property :can_reschedule, as: 'canReschedule'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class SslCert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert'
          property :cert_serial_number, as: 'certSerialNumber'
          property :common_name, as: 'commonName'
          property :create_time, as: 'createTime'
          property :expiration_time, as: 'expirationTime'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      class SslCertsCreateEphemeralRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :public_key, as: 'public_key'
        end
      end
    end
  end
end
