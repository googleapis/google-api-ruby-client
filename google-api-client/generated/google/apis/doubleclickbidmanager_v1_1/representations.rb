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
    module DoubleclickbidmanagerV1_1
      
      class ChannelGrouping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisjunctiveMatchStatement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadLineItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadLineItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterPair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Parameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathQueryOptionsFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuerySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadLineItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadLineItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelGrouping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fallback_name, as: 'fallbackName'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::DoubleclickbidmanagerV1_1::Rule, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Rule::Representation
      
        end
      end
      
      class DisjunctiveMatchStatement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_filters, as: 'eventFilters', class: Google::Apis::DoubleclickbidmanagerV1_1::EventFilter, decorator: Google::Apis::DoubleclickbidmanagerV1_1::EventFilter::Representation
      
        end
      end
      
      class DownloadLineItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_spec, as: 'fileSpec'
          collection :filter_ids, as: 'filterIds'
          property :filter_type, as: 'filterType'
          property :format, as: 'format'
        end
      end
      
      class DownloadLineItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_items, as: 'lineItems'
        end
      end
      
      class DownloadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_types, as: 'fileTypes'
          collection :filter_ids, as: 'filterIds'
          property :filter_type, as: 'filterType'
          property :version, as: 'version'
        end
      end
      
      class DownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_groups, as: 'adGroups'
          property :ads, as: 'ads'
          property :campaigns, as: 'campaigns'
          property :insertion_orders, as: 'insertionOrders'
          property :inventory_sources, as: 'inventorySources'
          property :line_items, as: 'lineItems'
        end
      end
      
      class EventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::DoubleclickbidmanagerV1_1::PathQueryOptionsFilter, decorator: Google::Apis::DoubleclickbidmanagerV1_1::PathQueryOptionsFilter::Representation
      
        end
      end
      
      class FilterPair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class ListQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :queries, as: 'queries', class: Google::Apis::DoubleclickbidmanagerV1_1::Query, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Query::Representation
      
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::DoubleclickbidmanagerV1_1::Report, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Report::Representation
      
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_only_targeted_user_lists, as: 'includeOnlyTargetedUserLists'
          property :path_query_options, as: 'pathQueryOptions', class: Google::Apis::DoubleclickbidmanagerV1_1::PathQueryOptions, decorator: Google::Apis::DoubleclickbidmanagerV1_1::PathQueryOptions::Representation
      
        end
      end
      
      class Parameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::DoubleclickbidmanagerV1_1::FilterPair, decorator: Google::Apis::DoubleclickbidmanagerV1_1::FilterPair::Representation
      
          collection :group_bys, as: 'groupBys'
          property :include_invite_data, as: 'includeInviteData'
          collection :metrics, as: 'metrics'
          property :options, as: 'options', class: Google::Apis::DoubleclickbidmanagerV1_1::Options, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Options::Representation
      
          property :type, as: 'type'
        end
      end
      
      class PathFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_filters, as: 'eventFilters', class: Google::Apis::DoubleclickbidmanagerV1_1::EventFilter, decorator: Google::Apis::DoubleclickbidmanagerV1_1::EventFilter::Representation
      
          property :path_match_position, as: 'pathMatchPosition'
        end
      end
      
      class PathQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_grouping, as: 'channelGrouping', class: Google::Apis::DoubleclickbidmanagerV1_1::ChannelGrouping, decorator: Google::Apis::DoubleclickbidmanagerV1_1::ChannelGrouping::Representation
      
          collection :path_filters, as: 'pathFilters', class: Google::Apis::DoubleclickbidmanagerV1_1::PathFilter, decorator: Google::Apis::DoubleclickbidmanagerV1_1::PathFilter::Representation
      
        end
      end
      
      class PathQueryOptionsFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :match, as: 'match'
          collection :values, as: 'values'
        end
      end
      
      class Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV1_1::QueryMetadata, decorator: Google::Apis::DoubleclickbidmanagerV1_1::QueryMetadata::Representation
      
          property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV1_1::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Parameters::Representation
      
          property :query_id, :numeric_string => true, as: 'queryId'
          property :report_data_end_time_ms, :numeric_string => true, as: 'reportDataEndTimeMs'
          property :report_data_start_time_ms, :numeric_string => true, as: 'reportDataStartTimeMs'
          property :schedule, as: 'schedule', class: Google::Apis::DoubleclickbidmanagerV1_1::QuerySchedule, decorator: Google::Apis::DoubleclickbidmanagerV1_1::QuerySchedule::Representation
      
          property :timezone_code, as: 'timezoneCode'
        end
      end
      
      class QueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_range, as: 'dataRange'
          property :format, as: 'format'
          property :google_cloud_storage_path_for_latest_report, as: 'googleCloudStoragePathForLatestReport'
          property :google_drive_path_for_latest_report, as: 'googleDrivePathForLatestReport'
          property :latest_report_run_time_ms, :numeric_string => true, as: 'latestReportRunTimeMs'
          property :locale, as: 'locale'
          property :report_count, as: 'reportCount'
          property :running, as: 'running'
          property :send_notification, as: 'sendNotification'
          collection :share_email_address, as: 'shareEmailAddress'
          property :title, as: 'title'
        end
      end
      
      class QuerySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_ms, :numeric_string => true, as: 'endTimeMs'
          property :frequency, as: 'frequency'
          property :next_run_minute_of_day, as: 'nextRunMinuteOfDay'
          property :next_run_timezone_code, as: 'nextRunTimezoneCode'
          property :start_time_ms, :numeric_string => true, as: 'startTimeMs'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::DoubleclickbidmanagerV1_1::ReportKey, decorator: Google::Apis::DoubleclickbidmanagerV1_1::ReportKey::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV1_1::ReportMetadata, decorator: Google::Apis::DoubleclickbidmanagerV1_1::ReportMetadata::Representation
      
          property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV1_1::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV1_1::Parameters::Representation
      
        end
      end
      
      class ReportFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
        end
      end
      
      class ReportKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, :numeric_string => true, as: 'queryId'
          property :report_id, :numeric_string => true, as: 'reportId'
        end
      end
      
      class ReportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_cloud_storage_path, as: 'googleCloudStoragePath'
          property :report_data_end_time_ms, :numeric_string => true, as: 'reportDataEndTimeMs'
          property :report_data_start_time_ms, :numeric_string => true, as: 'reportDataStartTimeMs'
          property :status, as: 'status', class: Google::Apis::DoubleclickbidmanagerV1_1::ReportStatus, decorator: Google::Apis::DoubleclickbidmanagerV1_1::ReportStatus::Representation
      
        end
      end
      
      class ReportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure, as: 'failure', class: Google::Apis::DoubleclickbidmanagerV1_1::ReportFailure, decorator: Google::Apis::DoubleclickbidmanagerV1_1::ReportFailure::Representation
      
          property :finish_time_ms, :numeric_string => true, as: 'finishTimeMs'
          property :format, as: 'format'
          property :state, as: 'state'
        end
      end
      
      class RowStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed, as: 'changed'
          property :entity_id, :numeric_string => true, as: 'entityId'
          property :entity_name, as: 'entityName'
          collection :errors, as: 'errors'
          property :persisted, as: 'persisted'
          property :row_number, as: 'rowNumber'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disjunctive_match_statements, as: 'disjunctiveMatchStatements', class: Google::Apis::DoubleclickbidmanagerV1_1::DisjunctiveMatchStatement, decorator: Google::Apis::DoubleclickbidmanagerV1_1::DisjunctiveMatchStatement::Representation
      
          property :name, as: 'name'
        end
      end
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_range, as: 'dataRange'
          property :report_data_end_time_ms, :numeric_string => true, as: 'reportDataEndTimeMs'
          property :report_data_start_time_ms, :numeric_string => true, as: 'reportDataStartTimeMs'
          property :timezone_code, as: 'timezoneCode'
        end
      end
      
      class UploadLineItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          property :format, as: 'format'
          property :line_items, as: 'lineItems'
        end
      end
      
      class UploadLineItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upload_status, as: 'uploadStatus', class: Google::Apis::DoubleclickbidmanagerV1_1::UploadStatus, decorator: Google::Apis::DoubleclickbidmanagerV1_1::UploadStatus::Representation
      
        end
      end
      
      class UploadStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors'
          collection :row_status, as: 'rowStatus', class: Google::Apis::DoubleclickbidmanagerV1_1::RowStatus, decorator: Google::Apis::DoubleclickbidmanagerV1_1::RowStatus::Representation
      
        end
      end
    end
  end
end
