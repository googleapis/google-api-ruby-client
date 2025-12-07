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
    module ContactcenteraiplatformV1alpha1
      
      class AdminUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Component
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactCenter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactCenterQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Critical
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Early
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmployeeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateShiftsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudCommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListContactCentersResponse
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
      
      class Normal
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
      
      class PlanningHorizon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SamlParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShiftTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SolverConfig
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
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrIs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnwantedEventInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforceDemand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforceDemandList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Component
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :service_attachment_names, as: 'serviceAttachmentNames'
        end
      end
      
      class ContactCenter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_user, as: 'adminUser', class: Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser::Representation
      
          property :advanced_reporting_enabled, as: 'advancedReportingEnabled'
          property :ccaip_managed_users, as: 'ccaipManagedUsers'
          property :create_time, as: 'createTime'
          property :critical, as: 'critical', class: Google::Apis::ContactcenteraiplatformV1alpha1::Critical, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Critical::Representation
      
          property :customer_domain_prefix, as: 'customerDomainPrefix'
          property :display_name, as: 'displayName'
          property :early, as: 'early', class: Google::Apis::ContactcenteraiplatformV1alpha1::Early, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Early::Representation
      
          property :feature_config, as: 'featureConfig', class: Google::Apis::ContactcenteraiplatformV1alpha1::FeatureConfig, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::FeatureConfig::Representation
      
          property :instance_config, as: 'instanceConfig', class: Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig::Representation
      
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :normal, as: 'normal', class: Google::Apis::ContactcenteraiplatformV1alpha1::Normal, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Normal::Representation
      
          property :private_access, as: 'privateAccess', class: Google::Apis::ContactcenteraiplatformV1alpha1::PrivateAccess, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::PrivateAccess::Representation
      
          collection :private_components, as: 'privateComponents'
          property :release_version, as: 'releaseVersion'
          property :saml_params, as: 'samlParams', class: Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :uris, as: 'uris', class: Google::Apis::ContactcenteraiplatformV1alpha1::UrIs, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::UrIs::Representation
      
          property :user_email, as: 'userEmail'
        end
      end
      
      class ContactCenterQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_center_count_limit, as: 'contactCenterCountLimit'
          property :contact_center_count_sum, as: 'contactCenterCountSum'
          collection :quotas, as: 'quotas', class: Google::Apis::ContactcenteraiplatformV1alpha1::Quota, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Quota::Representation
      
        end
      end
      
      class Critical
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :peak_hours, as: 'peakHours', class: Google::Apis::ContactcenteraiplatformV1alpha1::WeeklySchedule, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::WeeklySchedule::Representation
      
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
      
      class DateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::ContactcenteraiplatformV1alpha1::Date, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Date::Representation
      
        end
      end
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeZone, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class Early
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EmployeeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :unwanted_event_intervals, as: 'unwantedEventIntervals', class: Google::Apis::ContactcenteraiplatformV1alpha1::UnwantedEventInterval, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::UnwantedEventInterval::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EventTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_minutes, as: 'durationMinutes'
          property :id, as: 'id'
          property :maximum_minutes_after_shift_start, as: 'maximumMinutesAfterShiftStart'
          property :minimum_minutes_after_shift_start, as: 'minimumMinutesAfterShiftStart'
          property :start_time_increment_minutes, as: 'startTimeIncrementMinutes'
        end
      end
      
      class FeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_desktop_enabled, as: 'agentDesktopEnabled'
        end
      end
      
      class GenerateShiftsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :employee_info, as: 'employeeInfo', class: Google::Apis::ContactcenteraiplatformV1alpha1::EmployeeInfo, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::EmployeeInfo::Representation
      
          property :planning_horizon, as: 'planningHorizon', class: Google::Apis::ContactcenteraiplatformV1alpha1::PlanningHorizon, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::PlanningHorizon::Representation
      
          collection :shift_templates, as: 'shiftTemplates', class: Google::Apis::ContactcenteraiplatformV1alpha1::ShiftTemplate, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::ShiftTemplate::Representation
      
          property :solver_config, as: 'solverConfig', class: Google::Apis::ContactcenteraiplatformV1alpha1::SolverConfig, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::SolverConfig::Representation
      
          property :workforce_demands, as: 'workforceDemands', class: Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemandList, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemandList::Representation
      
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
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_size, as: 'instanceSize'
        end
      end
      
      class ListContactCentersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contact_centers, as: 'contactCenters', class: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ContactcenteraiplatformV1alpha1::Location, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ContactcenteraiplatformV1alpha1::Operation, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class Normal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ContactcenteraiplatformV1alpha1::Status, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :contact_center, as: 'contactCenter', class: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PlanningHorizon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime::Representation
      
        end
      end
      
      class PrivateAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :egress_settings, as: 'egressSettings', class: Google::Apis::ContactcenteraiplatformV1alpha1::Component, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Component::Representation
      
          collection :ingress_settings, as: 'ingressSettings', class: Google::Apis::ContactcenteraiplatformV1alpha1::Component, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Component::Representation
      
          property :psc_setting, as: 'pscSetting', class: Google::Apis::ContactcenteraiplatformV1alpha1::PscSetting, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::PscSetting::Representation
      
        end
      end
      
      class PscSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_consumer_project_ids, as: 'allowedConsumerProjectIds'
          collection :producer_project_ids, as: 'producerProjectIds'
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_center_count_limit, as: 'contactCenterCountLimit'
          property :contact_center_count_sum, as: 'contactCenterCountSum'
          property :contact_center_instance_size, as: 'contactCenterInstanceSize'
        end
      end
      
      class SamlParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authentication_contexts, as: 'authenticationContexts'
          property :certificate, as: 'certificate'
          property :email_mapping, as: 'emailMapping'
          property :entity_id, as: 'entityId'
          property :sso_uri, as: 'ssoUri'
          property :user_email, as: 'userEmail'
        end
      end
      
      class ShiftTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignable_employee_ids, as: 'assignableEmployeeIds'
          property :days_off_count_per_week, as: 'daysOffCountPerWeek'
          property :days_off_dates, as: 'daysOffDates', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateList, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateList::Representation
      
          property :duration_minutes, as: 'durationMinutes'
          property :earliest_start_time, as: 'earliestStartTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
          collection :event_templates, as: 'eventTemplates', class: Google::Apis::ContactcenteraiplatformV1alpha1::EventTemplate, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::EventTemplate::Representation
      
          property :id, as: 'id'
          property :latest_start_time, as: 'latestStartTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
          property :maximum_employee_count, as: 'maximumEmployeeCount'
          property :minimum_employee_count, as: 'minimumEmployeeCount'
          property :minimum_interevent_gap_minutes, as: 'minimumIntereventGapMinutes'
          property :start_time_increment_minutes, as: 'startTimeIncrementMinutes'
        end
      end
      
      class SolverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_processing_duration, as: 'maximumProcessingDuration'
          property :schedule_type, as: 'scheduleType'
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
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class UrIs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_bot_uri, as: 'chatBotUri'
          property :media_uri, as: 'mediaUri'
          property :root_uri, as: 'rootUri'
          property :virtual_agent_streaming_service_uri, as: 'virtualAgentStreamingServiceUri'
        end
      end
      
      class UnwantedEventInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_minutes, as: 'durationMinutes'
          property :start_time, as: 'startTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime::Representation
      
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :days, as: 'days'
          property :duration, as: 'duration'
          property :end_time, as: 'endTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
        end
      end
      
      class WorkforceDemand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :employee_count, as: 'employeeCount'
          property :end_time, as: 'endTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::DateTime::Representation
      
        end
      end
      
      class WorkforceDemandList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemand, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemand::Representation
      
        end
      end
    end
  end
end
