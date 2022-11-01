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
      
      class Empty
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
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
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
      
      class ReconciliationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RescheduleMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
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
      
      class UpgradeInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :secondary_ip_range, as: 'secondaryIpRange'
          collection :server_ca_certs, as: 'serverCaCerts', class: Google::Apis::RedisV1beta1::TlsCertificate, decorator: Google::Apis::RedisV1beta1::TlsCertificate::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          collection :suspension_reasons, as: 'suspensionReasons'
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
      
      class NodeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :zone, as: 'zone'
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
      
      class ReconciliationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_resource, as: 'deleteResource'
          property :exclusive_action, as: 'exclusiveAction'
        end
      end
      
      class RescheduleMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule_type, as: 'rescheduleType'
          property :schedule_time, as: 'scheduleTime'
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
      
      class UpgradeInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redis_version, as: 'redisVersion'
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
    end
  end
end
