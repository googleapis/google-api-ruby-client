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
    module SqladminV1beta3
      
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRunsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinLogCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Flag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceSetRootPasswordRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesCloneRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesCloneResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesDeleteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesExportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesExportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesImportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesImportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesPromoteReplicaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesResetSslConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRestartResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRestoreBackupResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetRootPasswordResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesUpdateResponse
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
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetRootPasswordContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsDeleteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsInsertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TiersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_log_enabled, as: 'binaryLogEnabled'
          property :enabled, as: 'enabled'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
        end
      end
      
      class BackupRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_configuration, as: 'backupConfiguration'
          property :due_time, as: 'dueTime', type: DateTime
      
          property :end_time, as: 'endTime', type: DateTime
      
          property :enqueued_time, as: 'enqueuedTime', type: DateTime
      
          property :error, as: 'error', class: Google::Apis::SqladminV1beta3::OperationError, decorator: Google::Apis::SqladminV1beta3::OperationError::Representation
      
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime', type: DateTime
      
          property :status, as: 'status'
        end
      end
      
      class BackupRunsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::BackupRun, decorator: Google::Apis::SqladminV1beta3::BackupRun::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BinLogCoordinates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bin_log_file_name, as: 'binLogFileName'
          property :bin_log_position, :numeric_string => true, as: 'binLogPosition'
          property :kind, as: 'kind'
        end
      end
      
      class CloneContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bin_log_coordinates, as: 'binLogCoordinates', class: Google::Apis::SqladminV1beta3::BinLogCoordinates, decorator: Google::Apis::SqladminV1beta3::BinLogCoordinates::Representation
      
          property :destination_instance_name, as: 'destinationInstanceName'
          property :kind, as: 'kind'
          property :source_instance_name, as: 'sourceInstanceName'
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
          property :connection_name, as: 'connectionName'
          property :current_disk_size, :numeric_string => true, as: 'currentDiskSize'
          property :database_version, as: 'databaseVersion'
          property :etag, as: 'etag'
          property :instance, as: 'instance'
          property :instance_type, as: 'instanceType'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1beta3::IpMapping, decorator: Google::Apis::SqladminV1beta3::IpMapping::Representation
      
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
          property :master_instance_name, as: 'masterInstanceName'
          property :max_disk_size, :numeric_string => true, as: 'maxDiskSize'
          property :project, as: 'project'
          property :region, as: 'region'
          collection :replica_names, as: 'replicaNames'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta3::SslCert, decorator: Google::Apis::SqladminV1beta3::SslCert::Representation
      
          property :service_account_email_address, as: 'serviceAccountEmailAddress'
          property :settings, as: 'settings', class: Google::Apis::SqladminV1beta3::Settings, decorator: Google::Apis::SqladminV1beta3::Settings::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ExportContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database, as: 'database'
          property :kind, as: 'kind'
          collection :table, as: 'table'
          property :uri, as: 'uri'
        end
      end
      
      class Flag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_string_values, as: 'allowedStringValues'
          collection :applies_to, as: 'appliesTo'
          property :kind, as: 'kind'
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class FlagsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::Flag, decorator: Google::Apis::SqladminV1beta3::Flag::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ImportContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :kind, as: 'kind'
          collection :uri, as: 'uri'
        end
      end
      
      class InstanceOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime', type: DateTime
      
          property :enqueued_time, as: 'enqueuedTime', type: DateTime
      
          collection :error, as: 'error', class: Google::Apis::SqladminV1beta3::OperationError, decorator: Google::Apis::SqladminV1beta3::OperationError::Representation
      
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta3::ExportContext, decorator: Google::Apis::SqladminV1beta3::ExportContext::Representation
      
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta3::ImportContext, decorator: Google::Apis::SqladminV1beta3::ImportContext::Representation
      
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :operation, as: 'operation'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime', type: DateTime
      
          property :state, as: 'state'
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class InstanceSetRootPasswordRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :set_root_password_context, as: 'setRootPasswordContext', class: Google::Apis::SqladminV1beta3::SetRootPasswordContext, decorator: Google::Apis::SqladminV1beta3::SetRootPasswordContext::Representation
      
        end
      end
      
      class InstancesCloneRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clone_context, as: 'cloneContext', class: Google::Apis::SqladminV1beta3::CloneContext, decorator: Google::Apis::SqladminV1beta3::CloneContext::Representation
      
        end
      end
      
      class InstancesCloneResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesDeleteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesExportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta3::ExportContext, decorator: Google::Apis::SqladminV1beta3::ExportContext::Representation
      
        end
      end
      
      class InstancesExportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesImportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta3::ImportContext, decorator: Google::Apis::SqladminV1beta3::ImportContext::Representation
      
        end
      end
      
      class InstancesImportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::DatabaseInstance, decorator: Google::Apis::SqladminV1beta3::DatabaseInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class InstancesPromoteReplicaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesResetSslConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesRestartResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesRestoreBackupResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesSetRootPasswordResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class InstancesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class IpConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_networks, as: 'authorizedNetworks'
          property :enabled, as: 'enabled'
          property :kind, as: 'kind'
          property :require_ssl, as: 'requireSsl'
        end
      end
      
      class IpMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :time_to_retire, as: 'timeToRetire', type: DateTime
      
        end
      end
      
      class LocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :follow_gae_application, as: 'followGaeApplication'
          property :kind, as: 'kind'
          property :zone, as: 'zone'
        end
      end
      
      class OperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :kind, as: 'kind'
        end
      end
      
      class OperationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::InstanceOperation, decorator: Google::Apis::SqladminV1beta3::InstanceOperation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SetRootPasswordContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :password, as: 'password'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          collection :authorized_gae_applications, as: 'authorizedGaeApplications'
          collection :backup_configuration, as: 'backupConfiguration', class: Google::Apis::SqladminV1beta3::BackupConfiguration, decorator: Google::Apis::SqladminV1beta3::BackupConfiguration::Representation
      
          collection :database_flags, as: 'databaseFlags', class: Google::Apis::SqladminV1beta3::DatabaseFlags, decorator: Google::Apis::SqladminV1beta3::DatabaseFlags::Representation
      
          property :database_replication_enabled, as: 'databaseReplicationEnabled'
          property :ip_configuration, as: 'ipConfiguration', class: Google::Apis::SqladminV1beta3::IpConfiguration, decorator: Google::Apis::SqladminV1beta3::IpConfiguration::Representation
      
          property :kind, as: 'kind'
          property :location_preference, as: 'locationPreference', class: Google::Apis::SqladminV1beta3::LocationPreference, decorator: Google::Apis::SqladminV1beta3::LocationPreference::Representation
      
          property :pricing_plan, as: 'pricingPlan'
          property :replication_type, as: 'replicationType'
          property :settings_version, :numeric_string => true, as: 'settingsVersion'
          property :tier, as: 'tier'
        end
      end
      
      class SslCert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert'
          property :cert_serial_number, as: 'certSerialNumber'
          property :common_name, as: 'commonName'
          property :create_time, as: 'createTime', type: DateTime
      
          property :expiration_time, as: 'expirationTime', type: DateTime
      
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      class SslCertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_info, as: 'certInfo', class: Google::Apis::SqladminV1beta3::SslCert, decorator: Google::Apis::SqladminV1beta3::SslCert::Representation
      
          property :cert_private_key, as: 'certPrivateKey'
        end
      end
      
      class SslCertsDeleteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :operation, as: 'operation'
        end
      end
      
      class SslCertsInsertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_name, as: 'commonName'
        end
      end
      
      class SslCertsInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_cert, as: 'clientCert', class: Google::Apis::SqladminV1beta3::SslCertDetail, decorator: Google::Apis::SqladminV1beta3::SslCertDetail::Representation
      
          property :kind, as: 'kind'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta3::SslCert, decorator: Google::Apis::SqladminV1beta3::SslCert::Representation
      
        end
      end
      
      class SslCertsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::SslCert, decorator: Google::Apis::SqladminV1beta3::SslCert::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class Tier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_quota, :numeric_string => true, as: 'DiskQuota'
          property :ram, :numeric_string => true, as: 'RAM'
          property :kind, as: 'kind'
          collection :region, as: 'region'
          property :tier, as: 'tier'
        end
      end
      
      class TiersListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta3::Tier, decorator: Google::Apis::SqladminV1beta3::Tier::Representation
      
          property :kind, as: 'kind'
        end
      end
    end
  end
end
