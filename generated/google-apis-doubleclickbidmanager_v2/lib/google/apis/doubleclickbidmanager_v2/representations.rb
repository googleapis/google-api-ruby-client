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
    module DoubleclickbidmanagerV2
      
      class ChannelGrouping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisjunctiveMatchStatement
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
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelGrouping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fallback_name, as: 'fallbackName'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::DoubleclickbidmanagerV2::Rule, decorator: Google::Apis::DoubleclickbidmanagerV2::Rule::Representation
      
        end
      end
      
      class DataRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_end_date, as: 'customEndDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
          property :custom_start_date, as: 'customStartDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
          property :range, as: 'range'
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
      
      class DisjunctiveMatchStatement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_filters, as: 'eventFilters', class: Google::Apis::DoubleclickbidmanagerV2::EventFilter, decorator: Google::Apis::DoubleclickbidmanagerV2::EventFilter::Representation
      
        end
      end
      
      class EventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::DoubleclickbidmanagerV2::PathQueryOptionsFilter, decorator: Google::Apis::DoubleclickbidmanagerV2::PathQueryOptionsFilter::Representation
      
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
          property :next_page_token, as: 'nextPageToken'
          collection :queries, as: 'queries', class: Google::Apis::DoubleclickbidmanagerV2::Query, decorator: Google::Apis::DoubleclickbidmanagerV2::Query::Representation
      
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::DoubleclickbidmanagerV2::Report, decorator: Google::Apis::DoubleclickbidmanagerV2::Report::Representation
      
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_only_targeted_user_lists, as: 'includeOnlyTargetedUserLists'
          property :path_query_options, as: 'pathQueryOptions', class: Google::Apis::DoubleclickbidmanagerV2::PathQueryOptions, decorator: Google::Apis::DoubleclickbidmanagerV2::PathQueryOptions::Representation
      
        end
      end
      
      class Parameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::DoubleclickbidmanagerV2::FilterPair, decorator: Google::Apis::DoubleclickbidmanagerV2::FilterPair::Representation
      
          collection :group_bys, as: 'groupBys'
          collection :metrics, as: 'metrics'
          property :options, as: 'options', class: Google::Apis::DoubleclickbidmanagerV2::Options, decorator: Google::Apis::DoubleclickbidmanagerV2::Options::Representation
      
          property :type, as: 'type'
        end
      end
      
      class PathFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_filters, as: 'eventFilters', class: Google::Apis::DoubleclickbidmanagerV2::EventFilter, decorator: Google::Apis::DoubleclickbidmanagerV2::EventFilter::Representation
      
          property :path_match_position, as: 'pathMatchPosition'
        end
      end
      
      class PathQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_grouping, as: 'channelGrouping', class: Google::Apis::DoubleclickbidmanagerV2::ChannelGrouping, decorator: Google::Apis::DoubleclickbidmanagerV2::ChannelGrouping::Representation
      
          collection :path_filters, as: 'pathFilters', class: Google::Apis::DoubleclickbidmanagerV2::PathFilter, decorator: Google::Apis::DoubleclickbidmanagerV2::PathFilter::Representation
      
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
          property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV2::QueryMetadata, decorator: Google::Apis::DoubleclickbidmanagerV2::QueryMetadata::Representation
      
          property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV2::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV2::Parameters::Representation
      
          property :query_id, :numeric_string => true, as: 'queryId'
          property :schedule, as: 'schedule', class: Google::Apis::DoubleclickbidmanagerV2::QuerySchedule, decorator: Google::Apis::DoubleclickbidmanagerV2::QuerySchedule::Representation
      
        end
      end
      
      class QueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_range, as: 'dataRange', class: Google::Apis::DoubleclickbidmanagerV2::DataRange, decorator: Google::Apis::DoubleclickbidmanagerV2::DataRange::Representation
      
          property :format, as: 'format'
          property :send_notification, as: 'sendNotification'
          collection :share_email_address, as: 'shareEmailAddress'
          property :title, as: 'title'
        end
      end
      
      class QuerySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
          property :frequency, as: 'frequency'
          property :next_run_timezone_code, as: 'nextRunTimezoneCode'
          property :start_date, as: 'startDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::DoubleclickbidmanagerV2::ReportKey, decorator: Google::Apis::DoubleclickbidmanagerV2::ReportKey::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV2::ReportMetadata, decorator: Google::Apis::DoubleclickbidmanagerV2::ReportMetadata::Representation
      
          property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV2::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV2::Parameters::Representation
      
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
          property :report_data_end_date, as: 'reportDataEndDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
          property :report_data_start_date, as: 'reportDataStartDate', class: Google::Apis::DoubleclickbidmanagerV2::Date, decorator: Google::Apis::DoubleclickbidmanagerV2::Date::Representation
      
          property :status, as: 'status', class: Google::Apis::DoubleclickbidmanagerV2::ReportStatus, decorator: Google::Apis::DoubleclickbidmanagerV2::ReportStatus::Representation
      
        end
      end
      
      class ReportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :format, as: 'format'
          property :state, as: 'state'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disjunctive_match_statements, as: 'disjunctiveMatchStatements', class: Google::Apis::DoubleclickbidmanagerV2::DisjunctiveMatchStatement, decorator: Google::Apis::DoubleclickbidmanagerV2::DisjunctiveMatchStatement::Representation
      
          property :name, as: 'name'
        end
      end
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_range, as: 'dataRange', class: Google::Apis::DoubleclickbidmanagerV2::DataRange, decorator: Google::Apis::DoubleclickbidmanagerV2::DataRange::Representation
      
        end
      end
    end
  end
end
