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
    module MemcacheV1
      
      class ApplyParametersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
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
      
      class GoogleCloudMemcacheV1LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMemcacheV1MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMemcacheV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMemcacheV1UpgradeInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMemcacheV1ZoneMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceMessage
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
      
      class LocationMetadata
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
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemcacheParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
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
      
      class RescheduleMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
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
      
      class UpdateParametersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyParametersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_all, as: 'applyAll'
          collection :node_ids, as: 'nodeIds'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::MemcacheV1::TimeOfDay, decorator: Google::Apis::MemcacheV1::TimeOfDay::Representation
      
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
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::MemcacheV1::Date, decorator: Google::Apis::MemcacheV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::MemcacheV1::Date, decorator: Google::Apis::MemcacheV1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::MemcacheV1::TimeOfDay, decorator: Google::Apis::MemcacheV1::TimeOfDay::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMemcacheV1LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :available_zones, as: 'availableZones', class: Google::Apis::MemcacheV1::GoogleCloudMemcacheV1ZoneMetadata, decorator: Google::Apis::MemcacheV1::GoogleCloudMemcacheV1ZoneMetadata::Representation
      
        end
      end
      
      class GoogleCloudMemcacheV1MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :update_time, as: 'updateTime'
          collection :weekly_maintenance_window, as: 'weeklyMaintenanceWindow', class: Google::Apis::MemcacheV1::WeeklyMaintenanceWindow, decorator: Google::Apis::MemcacheV1::WeeklyMaintenanceWindow::Representation
      
        end
      end
      
      class GoogleCloudMemcacheV1OperationMetadata
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
      
      class GoogleCloudMemcacheV1UpgradeInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memcache_version, as: 'memcacheVersion'
        end
      end
      
      class GoogleCloudMemcacheV1ZoneMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :create_time, as: 'createTime'
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :notification_parameters, as: 'notificationParameters', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter::Representation
      
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          property :is_rollback, as: 'isRollback'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::MemcacheV1::MaintenancePolicy, decorator: Google::Apis::MemcacheV1::MaintenancePolicy::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :eligibilities, as: 'eligibilities', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata::Representation
      
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::MemcacheV1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_network, as: 'authorizedNetwork'
          property :create_time, as: 'createTime'
          property :discovery_endpoint, as: 'discoveryEndpoint'
          property :display_name, as: 'displayName'
          collection :instance_messages, as: 'instanceMessages', class: Google::Apis::MemcacheV1::InstanceMessage, decorator: Google::Apis::MemcacheV1::InstanceMessage::Representation
      
          hash :labels, as: 'labels'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::MemcacheV1::GoogleCloudMemcacheV1MaintenancePolicy, decorator: Google::Apis::MemcacheV1::GoogleCloudMemcacheV1MaintenancePolicy::Representation
      
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::MemcacheV1::MaintenanceSchedule, decorator: Google::Apis::MemcacheV1::MaintenanceSchedule::Representation
      
          property :memcache_full_version, as: 'memcacheFullVersion'
          collection :memcache_nodes, as: 'memcacheNodes', class: Google::Apis::MemcacheV1::Node, decorator: Google::Apis::MemcacheV1::Node::Representation
      
          property :memcache_version, as: 'memcacheVersion'
          property :name, as: 'name'
          property :node_config, as: 'nodeConfig', class: Google::Apis::MemcacheV1::NodeConfig, decorator: Google::Apis::MemcacheV1::NodeConfig::Representation
      
          property :node_count, as: 'nodeCount'
          property :parameters, as: 'parameters', class: Google::Apis::MemcacheV1::MemcacheParameters, decorator: Google::Apis::MemcacheV1::MemcacheParameters::Representation
      
          collection :reserved_ip_range_id, as: 'reservedIpRangeId'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          collection :zones, as: 'zones'
        end
      end
      
      class InstanceMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::MemcacheV1::Instance, decorator: Google::Apis::MemcacheV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MemcacheV1::Location, decorator: Google::Apis::MemcacheV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::MemcacheV1::Operation, decorator: Google::Apis::MemcacheV1::Operation::Representation
      
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
          hash :available_zones, as: 'availableZones', class: Google::Apis::MemcacheV1::ZoneMetadata, decorator: Google::Apis::MemcacheV1::ZoneMetadata::Representation
      
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::MemcacheV1::UpdatePolicy, decorator: Google::Apis::MemcacheV1::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::MemcacheV1::DailyCycle, decorator: Google::Apis::MemcacheV1::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::MemcacheV1::WeeklyCycle, decorator: Google::Apis::MemcacheV1::WeeklyCycle::Representation
      
        end
      end
      
      class MemcacheParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :params, as: 'params'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :memcache_full_version, as: 'memcacheFullVersion'
          property :memcache_version, as: 'memcacheVersion'
          property :node_id, as: 'nodeId'
          property :parameters, as: 'parameters', class: Google::Apis::MemcacheV1::MemcacheParameters, decorator: Google::Apis::MemcacheV1::MemcacheParameters::Representation
      
          property :port, as: 'port'
          property :state, as: 'state'
          property :zone, as: 'zone'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_count, as: 'cpuCount'
          property :memory_size_mb, as: 'memorySizeMb'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MemcacheV1::Status, decorator: Google::Apis::MemcacheV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
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
      
      class RescheduleMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule_type, as: 'rescheduleType'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::MemcacheV1::TimeOfDay, decorator: Google::Apis::MemcacheV1::TimeOfDay::Representation
      
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
      
      class UpdateParametersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameters, as: 'parameters', class: Google::Apis::MemcacheV1::MemcacheParameters, decorator: Google::Apis::MemcacheV1::MemcacheParameters::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::MemcacheV1::DenyMaintenancePeriod, decorator: Google::Apis::MemcacheV1::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::MemcacheV1::MaintenanceWindow, decorator: Google::Apis::MemcacheV1::MaintenanceWindow::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::MemcacheV1::Schedule, decorator: Google::Apis::MemcacheV1::Schedule::Representation
      
        end
      end
      
      class WeeklyMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::MemcacheV1::TimeOfDay, decorator: Google::Apis::MemcacheV1::TimeOfDay::Representation
      
        end
      end
      
      class ZoneMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
