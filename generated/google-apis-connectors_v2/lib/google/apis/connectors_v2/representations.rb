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
    module ConnectorsV2
      
      class AccessCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckReadinessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckStatusResponse
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
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeAuthCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeAuthCodeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteActionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteSqlQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteSqlQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntityTypesResponse
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
      
      class MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerSliSloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshAccessTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshAccessTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateEntitiesWithConditionsResponse
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
      
      class AccessCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :expires_in, as: 'expiresIn'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :input_json_schema, as: 'inputJsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :input_parameters, as: 'inputParameters', class: Google::Apis::ConnectorsV2::InputParameter, decorator: Google::Apis::ConnectorsV2::InputParameter::Representation
      
          property :name, as: 'name'
          property :result_json_schema, as: 'resultJsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :result_metadata, as: 'resultMetadata', class: Google::Apis::ConnectorsV2::ResultMetadata, decorator: Google::Apis::ConnectorsV2::ResultMetadata::Representation
      
        end
      end
      
      class CheckReadinessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class CheckStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
        end
      end
      
      class DailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ConnectorsV2::TimeOfDay, decorator: Google::Apis::ConnectorsV2::TimeOfDay::Representation
      
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
          property :end_date, as: 'endDate', class: Google::Apis::ConnectorsV2::Date, decorator: Google::Apis::ConnectorsV2::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::ConnectorsV2::Date, decorator: Google::Apis::ConnectorsV2::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::ConnectorsV2::TimeOfDay, decorator: Google::Apis::ConnectorsV2::TimeOfDay::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields'
          property :name, as: 'name'
        end
      end
      
      class EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::ConnectorsV2::Field, decorator: Google::Apis::ConnectorsV2::Field::Representation
      
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ExchangeAuthCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExchangeAuthCodeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_credentials, as: 'accessCredentials', class: Google::Apis::ConnectorsV2::AccessCredentials, decorator: Google::Apis::ConnectorsV2::AccessCredentials::Representation
      
        end
      end
      
      class ExecuteActionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
        end
      end
      
      class ExecuteActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results'
        end
      end
      
      class ExecuteSqlQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query', class: Google::Apis::ConnectorsV2::Query, decorator: Google::Apis::ConnectorsV2::Query::Representation
      
        end
      end
      
      class ExecuteSqlQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :key, as: 'key'
          property :name, as: 'name'
          property :nullable, as: 'nullable'
          property :reference, as: 'reference', class: Google::Apis::ConnectorsV2::Reference, decorator: Google::Apis::ConnectorsV2::Reference::Representation
      
        end
      end
      
      class InputParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
          property :nullable, as: 'nullable'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :create_time, as: 'createTime'
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::ConnectorsV2::MaintenanceSchedule, decorator: Google::Apis::ConnectorsV2::MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::ConnectorsV2::MaintenanceSettings, decorator: Google::Apis::ConnectorsV2::MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :notification_parameters, as: 'notificationParameters', class: Google::Apis::ConnectorsV2::NotificationParameter, decorator: Google::Apis::ConnectorsV2::NotificationParameter::Representation
      
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::ConnectorsV2::ProvisionedResource, decorator: Google::Apis::ConnectorsV2::ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::ConnectorsV2::SloMetadata, decorator: Google::Apis::ConnectorsV2::SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class JsonSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :default, as: 'default'
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :jdbc_type, as: 'jdbcType'
          hash :properties, as: 'properties', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :required, as: 'required'
          collection :type, as: 'type'
        end
      end
      
      class ListActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ConnectorsV2::Action, decorator: Google::Apis::ConnectorsV2::Action::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unsupported_action_names, as: 'unsupportedActionNames'
        end
      end
      
      class ListEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::ConnectorsV2::Entity, decorator: Google::Apis::ConnectorsV2::Entity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::ConnectorsV2::EntityType, decorator: Google::Apis::ConnectorsV2::EntityType::Representation
      
          collection :unsupported_type_names, as: 'unsupportedTypeNames'
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
          property :update_policy, as: 'updatePolicy', class: Google::Apis::ConnectorsV2::UpdatePolicy, decorator: Google::Apis::ConnectorsV2::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          property :is_rollback, as: 'isRollback'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::ConnectorsV2::MaintenancePolicy, decorator: Google::Apis::ConnectorsV2::MaintenancePolicy::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::ConnectorsV2::DailyCycle, decorator: Google::Apis::ConnectorsV2::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::ConnectorsV2::WeeklyCycle, decorator: Google::Apis::ConnectorsV2::WeeklyCycle::Representation
      
        end
      end
      
      class NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ConnectorsV2::PerSliSloEligibility, decorator: Google::Apis::ConnectorsV2::PerSliSloEligibility::Representation
      
        end
      end
      
      class NotificationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class PerSliSloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :eligibilities, as: 'eligibilities', class: Google::Apis::ConnectorsV2::SloEligibility, decorator: Google::Apis::ConnectorsV2::SloEligibility::Representation
      
        end
      end
      
      class ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_rows, :numeric_string => true, as: 'maxRows'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::ConnectorsV2::QueryParameter, decorator: Google::Apis::ConnectorsV2::QueryParameter::Representation
      
          property :timeout, :numeric_string => true, as: 'timeout'
        end
      end
      
      class QueryParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :value, as: 'value'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class RefreshAccessTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RefreshAccessTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_credentials, as: 'accessCredentials', class: Google::Apis::ConnectorsV2::AccessCredentials, decorator: Google::Apis::ConnectorsV2::AccessCredentials::Representation
      
        end
      end
      
      class ResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ConnectorsV2::TimeOfDay, decorator: Google::Apis::ConnectorsV2::TimeOfDay::Representation
      
        end
      end
      
      class SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::ConnectorsV2::NodeSloMetadata, decorator: Google::Apis::ConnectorsV2::NodeSloMetadata::Representation
      
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ConnectorsV2::PerSliSloEligibility, decorator: Google::Apis::ConnectorsV2::PerSliSloEligibility::Representation
      
          property :tier, as: 'tier'
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
      
      class UpdateEntitiesWithConditionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::ConnectorsV2::DenyMaintenancePeriod, decorator: Google::Apis::ConnectorsV2::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::ConnectorsV2::MaintenanceWindow, decorator: Google::Apis::ConnectorsV2::MaintenanceWindow::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::ConnectorsV2::Schedule, decorator: Google::Apis::ConnectorsV2::Schedule::Representation
      
        end
      end
    end
  end
end
