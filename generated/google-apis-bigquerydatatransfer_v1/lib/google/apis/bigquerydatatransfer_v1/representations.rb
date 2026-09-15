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
    module BigquerydatatransferV1
      
      class CheckValidCredsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckValidCredsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataplexConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailPreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollDataSourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventDrivenSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HierarchyDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferLogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManualSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleOptionsV2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleTransferRunsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleTransferRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartManualTransferRunsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartManualTransferRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeBasedSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferResourceStatusDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferRunBrief
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferStatusMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferStatusSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnenrollDataSourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckValidCredsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckValidCredsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_valid_creds, as: 'hasValidCreds'
        end
      end
      
      class DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_type, as: 'authorizationType'
          property :client_id, as: 'clientId'
          property :data_refresh_type, as: 'dataRefreshType'
          property :data_source_id, as: 'dataSourceId'
          property :default_data_refresh_window_days, as: 'defaultDataRefreshWindowDays'
          property :default_schedule, as: 'defaultSchedule'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :help_url, as: 'helpUrl'
          property :manual_runs_disabled, as: 'manualRunsDisabled'
          property :minimum_schedule_interval, as: 'minimumScheduleInterval'
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::BigquerydatatransferV1::DataSourceParameter, decorator: Google::Apis::BigquerydatatransferV1::DataSourceParameter::Representation
      
          collection :scopes, as: 'scopes'
          property :supports_custom_schedule, as: 'supportsCustomSchedule'
          property :supports_multiple_transfers, as: 'supportsMultipleTransfers'
          property :transfer_type, as: 'transferType'
          property :update_deadline_seconds, as: 'updateDeadlineSeconds'
        end
      end
      
      class DataSourceParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          property :deprecated, as: 'deprecated'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :fields, as: 'fields', class: Google::Apis::BigquerydatatransferV1::DataSourceParameter, decorator: Google::Apis::BigquerydatatransferV1::DataSourceParameter::Representation
      
          property :immutable, as: 'immutable'
          property :max_list_size, :numeric_string => true, as: 'maxListSize'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :param_id, as: 'paramId'
          property :recurse, as: 'recurse'
          property :repeated, as: 'repeated'
          property :required, as: 'required'
          property :type, as: 'type'
          property :validation_description, as: 'validationDescription'
          property :validation_help_url, as: 'validationHelpUrl'
          property :validation_regex, as: 'validationRegex'
        end
      end
      
      class DataplexConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entry_group, as: 'entryGroup'
        end
      end
      
      class EmailPreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_failure_email, as: 'enableFailureEmail'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EnrollDataSourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_ids, as: 'dataSourceIds'
        end
      end
      
      class EventDrivenSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_subscription, as: 'pubsubSubscription'
        end
      end
      
      class HierarchyDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_detail, as: 'partitionDetail', class: Google::Apis::BigquerydatatransferV1::PartitionDetail, decorator: Google::Apis::BigquerydatatransferV1::PartitionDetail::Representation
      
          property :table_detail, as: 'tableDetail', class: Google::Apis::BigquerydatatransferV1::TableDetail, decorator: Google::Apis::BigquerydatatransferV1::TableDetail::Representation
      
        end
      end
      
      class ListDataSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_sources, as: 'dataSources', class: Google::Apis::BigquerydatatransferV1::DataSource, decorator: Google::Apis::BigquerydatatransferV1::DataSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BigquerydatatransferV1::Location, decorator: Google::Apis::BigquerydatatransferV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListTransferConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transfer_configs, as: 'transferConfigs', class: Google::Apis::BigquerydatatransferV1::TransferConfig, decorator: Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
      
        end
      end
      
      class ListTransferLogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transfer_messages, as: 'transferMessages', class: Google::Apis::BigquerydatatransferV1::TransferMessage, decorator: Google::Apis::BigquerydatatransferV1::TransferMessage::Representation
      
        end
      end
      
      class ListTransferResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transfer_resources, as: 'transferResources', class: Google::Apis::BigquerydatatransferV1::TransferResource, decorator: Google::Apis::BigquerydatatransferV1::TransferResource::Representation
      
        end
      end
      
      class ListTransferRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transfer_runs, as: 'transferRuns', class: Google::Apis::BigquerydatatransferV1::TransferRun, decorator: Google::Apis::BigquerydatatransferV1::TransferRun::Representation
      
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
      
      class ManualSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MetadataDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_configuration, as: 'dataplexConfiguration', class: Google::Apis::BigquerydatatransferV1::DataplexConfiguration, decorator: Google::Apis::BigquerydatatransferV1::DataplexConfiguration::Representation
      
        end
      end
      
      class PartitionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table, as: 'table'
        end
      end
      
      class ScheduleOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_auto_scheduling, as: 'disableAutoScheduling'
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ScheduleOptionsV2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_driven_schedule, as: 'eventDrivenSchedule', class: Google::Apis::BigquerydatatransferV1::EventDrivenSchedule, decorator: Google::Apis::BigquerydatatransferV1::EventDrivenSchedule::Representation
      
          property :manual_schedule, as: 'manualSchedule', class: Google::Apis::BigquerydatatransferV1::ManualSchedule, decorator: Google::Apis::BigquerydatatransferV1::ManualSchedule::Representation
      
          property :time_based_schedule, as: 'timeBasedSchedule', class: Google::Apis::BigquerydatatransferV1::TimeBasedSchedule, decorator: Google::Apis::BigquerydatatransferV1::TimeBasedSchedule::Representation
      
        end
      end
      
      class ScheduleTransferRunsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ScheduleTransferRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :runs, as: 'runs', class: Google::Apis::BigquerydatatransferV1::TransferRun, decorator: Google::Apis::BigquerydatatransferV1::TransferRun::Representation
      
        end
      end
      
      class StartManualTransferRunsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_run_time, as: 'requestedRunTime'
          property :requested_time_range, as: 'requestedTimeRange', class: Google::Apis::BigquerydatatransferV1::TimeRange, decorator: Google::Apis::BigquerydatatransferV1::TimeRange::Representation
      
        end
      end
      
      class StartManualTransferRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :runs, as: 'runs', class: Google::Apis::BigquerydatatransferV1::TransferRun, decorator: Google::Apis::BigquerydatatransferV1::TransferRun::Representation
      
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
      
      class TableDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_count, :numeric_string => true, as: 'partitionCount'
        end
      end
      
      class TimeBasedSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :schedule, as: 'schedule'
          property :start_time, as: 'startTime'
        end
      end
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TransferConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_refresh_window_days, as: 'dataRefreshWindowDays'
          property :data_source_id, as: 'dataSourceId'
          property :dataset_region, as: 'datasetRegion'
          property :destination_dataset_id, as: 'destinationDatasetId'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :email_preferences, as: 'emailPreferences', class: Google::Apis::BigquerydatatransferV1::EmailPreferences, decorator: Google::Apis::BigquerydatatransferV1::EmailPreferences::Representation
      
          property :encryption_configuration, as: 'encryptionConfiguration', class: Google::Apis::BigquerydatatransferV1::EncryptionConfiguration, decorator: Google::Apis::BigquerydatatransferV1::EncryptionConfiguration::Representation
      
          property :error, as: 'error', class: Google::Apis::BigquerydatatransferV1::Status, decorator: Google::Apis::BigquerydatatransferV1::Status::Representation
      
          property :managed_table_type, as: 'managedTableType'
          property :metadata_destination, as: 'metadataDestination', class: Google::Apis::BigquerydatatransferV1::MetadataDestination, decorator: Google::Apis::BigquerydatatransferV1::MetadataDestination::Representation
      
          property :name, as: 'name'
          property :next_run_time, as: 'nextRunTime'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :owner_info, as: 'ownerInfo', class: Google::Apis::BigquerydatatransferV1::UserInfo, decorator: Google::Apis::BigquerydatatransferV1::UserInfo::Representation
      
          hash :params, as: 'params'
          property :schedule, as: 'schedule'
          property :schedule_options, as: 'scheduleOptions', class: Google::Apis::BigquerydatatransferV1::ScheduleOptions, decorator: Google::Apis::BigquerydatatransferV1::ScheduleOptions::Representation
      
          property :schedule_options_v2, as: 'scheduleOptionsV2', class: Google::Apis::BigquerydatatransferV1::ScheduleOptionsV2, decorator: Google::Apis::BigquerydatatransferV1::ScheduleOptionsV2::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class TransferMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_text, as: 'messageText'
          property :message_time, as: 'messageTime'
          property :severity, as: 'severity'
        end
      end
      
      class TransferResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :hierarchy_detail, as: 'hierarchyDetail', class: Google::Apis::BigquerydatatransferV1::HierarchyDetail, decorator: Google::Apis::BigquerydatatransferV1::HierarchyDetail::Representation
      
          property :last_successful_run, as: 'lastSuccessfulRun', class: Google::Apis::BigquerydatatransferV1::TransferRunBrief, decorator: Google::Apis::BigquerydatatransferV1::TransferRunBrief::Representation
      
          property :latest_run, as: 'latestRun', class: Google::Apis::BigquerydatatransferV1::TransferRunBrief, decorator: Google::Apis::BigquerydatatransferV1::TransferRunBrief::Representation
      
          property :latest_status_detail, as: 'latestStatusDetail', class: Google::Apis::BigquerydatatransferV1::TransferResourceStatusDetail, decorator: Google::Apis::BigquerydatatransferV1::TransferResourceStatusDetail::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TransferResourceStatusDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_percentage, as: 'completedPercentage'
          property :error, as: 'error', class: Google::Apis::BigquerydatatransferV1::Status, decorator: Google::Apis::BigquerydatatransferV1::Status::Representation
      
          property :state, as: 'state'
          property :summary, as: 'summary', class: Google::Apis::BigquerydatatransferV1::TransferStatusSummary, decorator: Google::Apis::BigquerydatatransferV1::TransferStatusSummary::Representation
      
        end
      end
      
      class TransferRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_id, as: 'dataSourceId'
          property :destination_dataset_id, as: 'destinationDatasetId'
          property :email_preferences, as: 'emailPreferences', class: Google::Apis::BigquerydatatransferV1::EmailPreferences, decorator: Google::Apis::BigquerydatatransferV1::EmailPreferences::Representation
      
          property :end_time, as: 'endTime'
          property :error_status, as: 'errorStatus', class: Google::Apis::BigquerydatatransferV1::Status, decorator: Google::Apis::BigquerydatatransferV1::Status::Representation
      
          property :name, as: 'name'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          hash :params, as: 'params'
          property :run_time, as: 'runTime'
          property :schedule, as: 'schedule'
          property :schedule_time, as: 'scheduleTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class TransferRunBrief
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run, as: 'run'
          property :start_time, as: 'startTime'
        end
      end
      
      class TransferStatusMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed, :numeric_string => true, as: 'completed'
          property :failed, :numeric_string => true, as: 'failed'
          property :pending, :numeric_string => true, as: 'pending'
          property :total, :numeric_string => true, as: 'total'
          property :unit, as: 'unit'
        end
      end
      
      class TransferStatusSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::BigquerydatatransferV1::TransferStatusMetric, decorator: Google::Apis::BigquerydatatransferV1::TransferStatusMetric::Representation
      
          property :progress_unit, as: 'progressUnit'
        end
      end
      
      class UnenrollDataSourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_ids, as: 'dataSourceIds'
        end
      end
      
      class UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
    end
  end
end
