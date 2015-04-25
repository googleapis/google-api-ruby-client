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
    module SqladminV1beta4
      
      class AclEntryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackupConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackupRunRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackupRunsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BinLogCoordinatesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CloneContextRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatabaseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatabaseFlagsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatabaseInstanceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatabasesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExportContextRepresentation < Google::Apis::Core::JsonRepresentation
        
        class CsvExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class SqlExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class FlagRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FlagsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportContextRepresentation < Google::Apis::Core::JsonRepresentation
        
        class CsvImportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class InstancesCloneRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancesExportRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancesImportRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancesRestoreBackupRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IpConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IpMappingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationPreferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MySqlReplicaConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OnPremisesConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationErrorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationErrorsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReplicaConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RestoreBackupContextRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SslCertRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SslCertDetailRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SslCertsInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SslCertsInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SslCertsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TierRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TiersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AclEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :expiration_time, as: 'expirationTime', type: DateTime
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class BackupConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :binary_log_enabled, as: 'binaryLogEnabled'
        property :enabled, as: 'enabled'
        property :kind, as: 'kind'
        property :start_time, as: 'startTime'
      end

      # @private
      class BackupRunRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_time, as: 'endTime', type: DateTime
        property :enqueued_time, as: 'enqueuedTime', type: DateTime
        property :error, as: 'error', class: Google::Apis::SqladminV1beta4::OperationError, decorator: Google::Apis::SqladminV1beta4::OperationErrorRepresentation
        
        property :id, as: 'id'
        property :instance, as: 'instance'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :start_time, as: 'startTime', type: DateTime
        property :status, as: 'status'
        property :window_start_time, as: 'windowStartTime', type: DateTime
      end

      # @private
      class BackupRunsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::BackupRun, decorator: Google::Apis::SqladminV1beta4::BackupRunRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class BinLogCoordinatesRepresentation < Google::Apis::Core::JsonRepresentation
        property :bin_log_file_name, as: 'binLogFileName'
        property :bin_log_position, as: 'binLogPosition'
        property :kind, as: 'kind'
      end

      # @private
      class CloneContextRepresentation < Google::Apis::Core::JsonRepresentation
        property :bin_log_coordinates, as: 'binLogCoordinates', class: Google::Apis::SqladminV1beta4::BinLogCoordinates, decorator: Google::Apis::SqladminV1beta4::BinLogCoordinatesRepresentation
        
        property :destination_instance_name, as: 'destinationInstanceName'
        property :kind, as: 'kind'
      end

      # @private
      class DatabaseRepresentation < Google::Apis::Core::JsonRepresentation
        property :charset, as: 'charset'
        property :collation, as: 'collation'
        property :etag, as: 'etag'
        property :instance, as: 'instance'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :project, as: 'project'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DatabaseFlagsRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class DatabaseInstanceRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_disk_size, as: 'currentDiskSize'
        property :database_version, as: 'databaseVersion'
        property :etag, as: 'etag'
        property :instance_type, as: 'instanceType'
        collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1beta4::IpMapping, decorator: Google::Apis::SqladminV1beta4::IpMappingRepresentation
        
        
        property :ipv6_address, as: 'ipv6Address'
        property :kind, as: 'kind'
        property :master_instance_name, as: 'masterInstanceName'
        property :max_disk_size, as: 'maxDiskSize'
        property :name, as: 'name'
        property :on_premises_configuration, as: 'onPremisesConfiguration', class: Google::Apis::SqladminV1beta4::OnPremisesConfiguration, decorator: Google::Apis::SqladminV1beta4::OnPremisesConfigurationRepresentation
        
        property :project, as: 'project'
        property :region, as: 'region'
        property :replica_configuration, as: 'replicaConfiguration', class: Google::Apis::SqladminV1beta4::ReplicaConfiguration, decorator: Google::Apis::SqladminV1beta4::ReplicaConfigurationRepresentation
        
        collection :replica_names, as: 'replicaNames'
        
        property :self_link, as: 'selfLink'
        property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCertRepresentation
        
        property :service_account_email_address, as: 'serviceAccountEmailAddress'
        property :settings, as: 'settings', class: Google::Apis::SqladminV1beta4::Settings, decorator: Google::Apis::SqladminV1beta4::SettingsRepresentation
        
        property :state, as: 'state'
      end

      # @private
      class DatabasesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Database, decorator: Google::Apis::SqladminV1beta4::DatabaseRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ExportContextRepresentation < Google::Apis::Core::JsonRepresentation
        class CsvExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class SqlExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :csv_export_options, as: 'csvExportOptions', class: Google::Apis::SqladminV1beta4::ExportContext::CsvExportOptions, decorator: Google::Apis::SqladminV1beta4::ExportContextRepresentation::CsvExportOptionsRepresentation
        
        collection :databases, as: 'databases'
        
        property :file_type, as: 'fileType'
        property :kind, as: 'kind'
        property :sql_export_options, as: 'sqlExportOptions', class: Google::Apis::SqladminV1beta4::ExportContext::SqlExportOptions, decorator: Google::Apis::SqladminV1beta4::ExportContextRepresentation::SqlExportOptionsRepresentation
        
        property :uri, as: 'uri'
        
        # @private
        class CsvExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          property :select_query, as: 'selectQuery'
        end
        
        # @private
        class SqlExportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :tables, as: 'tables'
        end
      end

      # @private
      class FlagRepresentation < Google::Apis::Core::JsonRepresentation
        collection :allowed_string_values, as: 'allowedStringValues'
        
        collection :applies_to, as: 'appliesTo'
        
        property :kind, as: 'kind'
        property :max_value, as: 'maxValue'
        property :min_value, as: 'minValue'
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class FlagsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Flag, decorator: Google::Apis::SqladminV1beta4::FlagRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ImportContextRepresentation < Google::Apis::Core::JsonRepresentation
        class CsvImportOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :csv_import_options, as: 'csvImportOptions', class: Google::Apis::SqladminV1beta4::ImportContext::CsvImportOptions, decorator: Google::Apis::SqladminV1beta4::ImportContextRepresentation::CsvImportOptionsRepresentation
        
        property :database, as: 'database'
        property :file_type, as: 'fileType'
        property :kind, as: 'kind'
        property :uri, as: 'uri'
        
        # @private
        class CsvImportOptionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          
          property :table, as: 'table'
        end
      end

      # @private
      class InstancesCloneRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :clone_context, as: 'cloneContext', class: Google::Apis::SqladminV1beta4::CloneContext, decorator: Google::Apis::SqladminV1beta4::CloneContextRepresentation
      end

      # @private
      class InstancesExportRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta4::ExportContext, decorator: Google::Apis::SqladminV1beta4::ExportContextRepresentation
      end

      # @private
      class InstancesImportRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta4::ImportContext, decorator: Google::Apis::SqladminV1beta4::ImportContextRepresentation
      end

      # @private
      class InstancesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::DatabaseInstance, decorator: Google::Apis::SqladminV1beta4::DatabaseInstanceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class InstancesRestoreBackupRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :restore_backup_context, as: 'restoreBackupContext', class: Google::Apis::SqladminV1beta4::RestoreBackupContext, decorator: Google::Apis::SqladminV1beta4::RestoreBackupContextRepresentation
      end

      # @private
      class IpConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::SqladminV1beta4::AclEntry, decorator: Google::Apis::SqladminV1beta4::AclEntryRepresentation
        
        
        property :ipv4_enabled, as: 'ipv4Enabled'
        property :require_ssl, as: 'requireSsl'
      end

      # @private
      class IpMappingRepresentation < Google::Apis::Core::JsonRepresentation
        property :ip_address, as: 'ipAddress'
        property :time_to_retire, as: 'timeToRetire', type: DateTime
      end

      # @private
      class LocationPreferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :follow_gae_application, as: 'followGaeApplication'
        property :kind, as: 'kind'
        property :zone, as: 'zone'
      end

      # @private
      class MySqlReplicaConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :ca_certificate, as: 'caCertificate'
        property :client_certificate, as: 'clientCertificate'
        property :client_key, as: 'clientKey'
        property :connect_retry_interval, as: 'connectRetryInterval'
        property :dump_file_path, as: 'dumpFilePath'
        property :kind, as: 'kind'
        property :master_heartbeat_period, as: 'masterHeartbeatPeriod'
        property :password, as: 'password'
        property :ssl_cipher, as: 'sslCipher'
        property :username, as: 'username'
        property :verify_server_certificate, as: 'verifyServerCertificate'
      end

      # @private
      class OnPremisesConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :host_port, as: 'hostPort'
        property :kind, as: 'kind'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_time, as: 'endTime', type: DateTime
        property :error, as: 'error', class: Google::Apis::SqladminV1beta4::OperationErrors, decorator: Google::Apis::SqladminV1beta4::OperationErrorsRepresentation
        
        property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta4::ExportContext, decorator: Google::Apis::SqladminV1beta4::ExportContextRepresentation
        
        property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta4::ImportContext, decorator: Google::Apis::SqladminV1beta4::ImportContextRepresentation
        
        property :insert_time, as: 'insertTime', type: DateTime
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :operation_type, as: 'operationType'
        property :self_link, as: 'selfLink'
        property :start_time, as: 'startTime', type: DateTime
        property :status, as: 'status'
        property :target_id, as: 'targetId'
        property :target_link, as: 'targetLink'
        property :target_project, as: 'targetProject'
        property :user, as: 'user'
      end

      # @private
      class OperationErrorRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :kind, as: 'kind'
        property :message, as: 'message'
      end

      # @private
      class OperationErrorsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :errors, as: 'errors', class: Google::Apis::SqladminV1beta4::OperationError, decorator: Google::Apis::SqladminV1beta4::OperationErrorRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class OperationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Operation, decorator: Google::Apis::SqladminV1beta4::OperationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ReplicaConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :mysql_replica_configuration, as: 'mysqlReplicaConfiguration', class: Google::Apis::SqladminV1beta4::MySqlReplicaConfiguration, decorator: Google::Apis::SqladminV1beta4::MySqlReplicaConfigurationRepresentation
      end

      # @private
      class RestoreBackupContextRepresentation < Google::Apis::Core::JsonRepresentation
        property :backup_run_id, as: 'backupRunId'
        property :kind, as: 'kind'
      end

      # @private
      class SettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :activation_policy, as: 'activationPolicy'
        collection :authorized_gae_applications, as: 'authorizedGaeApplications'
        
        property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::SqladminV1beta4::BackupConfiguration, decorator: Google::Apis::SqladminV1beta4::BackupConfigurationRepresentation
        
        property :crash_safe_replication_enabled, as: 'crashSafeReplicationEnabled'
        collection :database_flags, as: 'databaseFlags', class: Google::Apis::SqladminV1beta4::DatabaseFlags, decorator: Google::Apis::SqladminV1beta4::DatabaseFlagsRepresentation
        
        
        property :database_replication_enabled, as: 'databaseReplicationEnabled'
        property :ip_configuration, as: 'ipConfiguration', class: Google::Apis::SqladminV1beta4::IpConfiguration, decorator: Google::Apis::SqladminV1beta4::IpConfigurationRepresentation
        
        property :kind, as: 'kind'
        property :location_preference, as: 'locationPreference', class: Google::Apis::SqladminV1beta4::LocationPreference, decorator: Google::Apis::SqladminV1beta4::LocationPreferenceRepresentation
        
        property :pricing_plan, as: 'pricingPlan'
        property :replication_type, as: 'replicationType'
        property :settings_version, as: 'settingsVersion'
        property :tier, as: 'tier'
      end

      # @private
      class SslCertRepresentation < Google::Apis::Core::JsonRepresentation
        property :cert, as: 'cert'
        property :cert_serial_number, as: 'certSerialNumber'
        property :common_name, as: 'commonName'
        property :create_time, as: 'createTime', type: DateTime
        property :expiration_time, as: 'expirationTime', type: DateTime
        property :instance, as: 'instance'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :sha1_fingerprint, as: 'sha1Fingerprint'
      end

      # @private
      class SslCertDetailRepresentation < Google::Apis::Core::JsonRepresentation
        property :cert_info, as: 'certInfo', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCertRepresentation
        
        property :cert_private_key, as: 'certPrivateKey'
      end

      # @private
      class SslCertsInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :common_name, as: 'commonName'
      end

      # @private
      class SslCertsInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :client_cert, as: 'clientCert', class: Google::Apis::SqladminV1beta4::SslCertDetail, decorator: Google::Apis::SqladminV1beta4::SslCertDetailRepresentation
        
        property :kind, as: 'kind'
        property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCertRepresentation
      end

      # @private
      class SslCertsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCertRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class TierRepresentation < Google::Apis::Core::JsonRepresentation
        property :disk_quota, as: 'DiskQuota'
        property :ram, as: 'RAM'
        property :kind, as: 'kind'
        collection :region, as: 'region'
        
        property :tier, as: 'tier'
      end

      # @private
      class TiersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Tier, decorator: Google::Apis::SqladminV1beta4::TierRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :host, as: 'host'
        property :instance, as: 'instance'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :password, as: 'password'
        property :project, as: 'project'
      end

      # @private
      class UsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::User, decorator: Google::Apis::SqladminV1beta4::UserRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
