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
    module DatamigrationV1beta1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateSshScriptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudClouddmsV1beta1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMigrationJobsResponse
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
      
      class MigrationJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationJobVerificationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromoteMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReverseSshConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlAclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshScript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticIpConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopMigrationJobRequest
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
      
      class VerifyMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmSelectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcPeeringConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DatamigrationV1beta1::AuditLogConfig, decorator: Google::Apis::DatamigrationV1beta1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::DatamigrationV1beta1::Expr, decorator: Google::Apis::DatamigrationV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudSqlConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_id, as: 'cloudSqlId'
          property :private_ip, as: 'privateIp'
          property :public_ip, as: 'publicIp'
          property :settings, as: 'settings', class: Google::Apis::DatamigrationV1beta1::CloudSqlSettings, decorator: Google::Apis::DatamigrationV1beta1::CloudSqlSettings::Representation
      
        end
      end
      
      class CloudSqlSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          property :auto_storage_increase, as: 'autoStorageIncrease'
          property :data_disk_size_gb, :numeric_string => true, as: 'dataDiskSizeGb'
          property :data_disk_type, as: 'dataDiskType'
          hash :database_flags, as: 'databaseFlags'
          property :database_version, as: 'databaseVersion'
          property :ip_config, as: 'ipConfig', class: Google::Apis::DatamigrationV1beta1::SqlIpConfig, decorator: Google::Apis::DatamigrationV1beta1::SqlIpConfig::Representation
      
          property :root_password, as: 'rootPassword'
          property :root_password_set, as: 'rootPasswordSet'
          property :source_id, as: 'sourceId'
          property :storage_auto_resize_limit, :numeric_string => true, as: 'storageAutoResizeLimit'
          property :tier, as: 'tier'
          hash :user_labels, as: 'userLabels'
          property :zone, as: 'zone'
        end
      end
      
      class ConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloudsql, as: 'cloudsql', class: Google::Apis::DatamigrationV1beta1::CloudSqlConnectionProfile, decorator: Google::Apis::DatamigrationV1beta1::CloudSqlConnectionProfile::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1beta1::Status, decorator: Google::Apis::DatamigrationV1beta1::Status::Representation
      
          hash :labels, as: 'labels'
          property :mysql, as: 'mysql', class: Google::Apis::DatamigrationV1beta1::MySqlConnectionProfile, decorator: Google::Apis::DatamigrationV1beta1::MySqlConnectionProfile::Representation
      
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DatabaseType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :provider, as: 'provider'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GenerateSshScriptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm, as: 'vm'
          property :vm_creation_config, as: 'vmCreationConfig', class: Google::Apis::DatamigrationV1beta1::VmCreationConfig, decorator: Google::Apis::DatamigrationV1beta1::VmCreationConfig::Representation
      
          property :vm_port, as: 'vmPort'
          property :vm_selection_config, as: 'vmSelectionConfig', class: Google::Apis::DatamigrationV1beta1::VmSelectionConfig, decorator: Google::Apis::DatamigrationV1beta1::VmSelectionConfig::Representation
      
        end
      end
      
      class GoogleCloudClouddmsV1beta1OperationMetadata
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
      
      class ListConnectionProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_profiles, as: 'connectionProfiles', class: Google::Apis::DatamigrationV1beta1::ConnectionProfile, decorator: Google::Apis::DatamigrationV1beta1::ConnectionProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DatamigrationV1beta1::Location, decorator: Google::Apis::DatamigrationV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMigrationJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migration_jobs, as: 'migrationJobs', class: Google::Apis::DatamigrationV1beta1::MigrationJob, decorator: Google::Apis::DatamigrationV1beta1::MigrationJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatamigrationV1beta1::Operation, decorator: Google::Apis::DatamigrationV1beta1::Operation::Representation
      
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
      
      class MigrationJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destination, as: 'destination'
          property :destination_database, as: 'destinationDatabase', class: Google::Apis::DatamigrationV1beta1::DatabaseType, decorator: Google::Apis::DatamigrationV1beta1::DatabaseType::Representation
      
          property :display_name, as: 'displayName'
          property :dump_path, as: 'dumpPath'
          property :duration, as: 'duration'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1beta1::Status, decorator: Google::Apis::DatamigrationV1beta1::Status::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :phase, as: 'phase'
          property :reverse_ssh_connectivity, as: 'reverseSshConnectivity', class: Google::Apis::DatamigrationV1beta1::ReverseSshConnectivity, decorator: Google::Apis::DatamigrationV1beta1::ReverseSshConnectivity::Representation
      
          property :source, as: 'source'
          property :source_database, as: 'sourceDatabase', class: Google::Apis::DatamigrationV1beta1::DatabaseType, decorator: Google::Apis::DatamigrationV1beta1::DatabaseType::Representation
      
          property :state, as: 'state'
          property :static_ip_connectivity, as: 'staticIpConnectivity', class: Google::Apis::DatamigrationV1beta1::StaticIpConnectivity, decorator: Google::Apis::DatamigrationV1beta1::StaticIpConnectivity::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :vpc_peering_connectivity, as: 'vpcPeeringConnectivity', class: Google::Apis::DatamigrationV1beta1::VpcPeeringConnectivity, decorator: Google::Apis::DatamigrationV1beta1::VpcPeeringConnectivity::Representation
      
        end
      end
      
      class MigrationJobVerificationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_detail_message, as: 'errorDetailMessage'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class MySqlConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_id, as: 'cloudSqlId'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_set, as: 'passwordSet'
          property :port, as: 'port'
          property :ssl, as: 'ssl', class: Google::Apis::DatamigrationV1beta1::SslConfig, decorator: Google::Apis::DatamigrationV1beta1::SslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1beta1::Status, decorator: Google::Apis::DatamigrationV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DatamigrationV1beta1::AuditConfig, decorator: Google::Apis::DatamigrationV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DatamigrationV1beta1::Binding, decorator: Google::Apis::DatamigrationV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PromoteMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestartMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResumeMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReverseSshConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm, as: 'vm'
          property :vm_ip, as: 'vmIp'
          property :vm_port, as: 'vmPort'
          property :vpc, as: 'vpc'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DatamigrationV1beta1::Policy, decorator: Google::Apis::DatamigrationV1beta1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SqlAclEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :label, as: 'label'
          property :ttl, as: 'ttl'
          property :value, as: 'value'
        end
      end
      
      class SqlIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::DatamigrationV1beta1::SqlAclEntry, decorator: Google::Apis::DatamigrationV1beta1::SqlAclEntry::Representation
      
          property :enable_ipv4, as: 'enableIpv4'
          property :private_network, as: 'privateNetwork'
          property :require_ssl, as: 'requireSsl'
        end
      end
      
      class SshScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script, as: 'script'
        end
      end
      
      class SslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :type, as: 'type'
        end
      end
      
      class StartMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StaticIpConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StopMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class VerifyMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VmCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
          property :vm_machine_type, as: 'vmMachineType'
          property :vm_zone, as: 'vmZone'
        end
      end
      
      class VmSelectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_zone, as: 'vmZone'
        end
      end
      
      class VpcPeeringConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vpc, as: 'vpc'
        end
      end
    end
  end
end
