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
    module FileV1
      
      class Backup
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
      
      class FileShareConfig
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
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
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
      
      class ListBackupsResponse
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
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
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
      
      class RestoreInstanceRequest
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
      
      class UpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :download_bytes, :numeric_string => true, as: 'downloadBytes'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :source_file_share, as: 'sourceFileShare'
          property :source_instance, as: 'sourceInstance'
          property :source_instance_tier, as: 'sourceInstanceTier'
          property :state, as: 'state'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
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
          property :start_time, as: 'startTime', class: Google::Apis::FileV1::TimeOfDay, decorator: Google::Apis::FileV1::TimeOfDay::Representation
      
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
          property :end_date, as: 'endDate', class: Google::Apis::FileV1::Date, decorator: Google::Apis::FileV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::FileV1::Date, decorator: Google::Apis::FileV1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::FileV1::TimeOfDay, decorator: Google::Apis::FileV1::TimeOfDay::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FileShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :name, as: 'name'
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata::Representation
      
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
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::FileV1::MaintenancePolicy, decorator: Google::Apis::FileV1::MaintenancePolicy::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion::Representation
      
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
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
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :reason, as: 'reason'
          property :sli_name, as: 'sliName'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligibility, as: 'eligibility', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility::Representation
      
          collection :exclusions, as: 'exclusions', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata, decorator: Google::Apis::FileV1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :file_shares, as: 'fileShares', class: Google::Apis::FileV1::FileShareConfig, decorator: Google::Apis::FileV1::FileShareConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::FileV1::NetworkConfig, decorator: Google::Apis::FileV1::NetworkConfig::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :tier, as: 'tier'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::FileV1::Backup, decorator: Google::Apis::FileV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::FileV1::Instance, decorator: Google::Apis::FileV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FileV1::Location, decorator: Google::Apis::FileV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FileV1::Operation, decorator: Google::Apis::FileV1::Operation::Representation
      
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
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::FileV1::UpdatePolicy, decorator: Google::Apis::FileV1::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::FileV1::DailyCycle, decorator: Google::Apis::FileV1::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::FileV1::WeeklyCycle, decorator: Google::Apis::FileV1::WeeklyCycle::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_addresses, as: 'ipAddresses'
          collection :modes, as: 'modes'
          property :network, as: 'network'
          property :reserved_ip_range, as: 'reservedIpRange'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FileV1::Status, decorator: Google::Apis::FileV1::Status::Representation
      
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
      
      class RestoreInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_share, as: 'fileShare'
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::FileV1::TimeOfDay, decorator: Google::Apis::FileV1::TimeOfDay::Representation
      
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
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::FileV1::DenyMaintenancePeriod, decorator: Google::Apis::FileV1::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::FileV1::MaintenanceWindow, decorator: Google::Apis::FileV1::MaintenanceWindow::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::FileV1::Schedule, decorator: Google::Apis::FileV1::Schedule::Representation
      
        end
      end
    end
  end
end
