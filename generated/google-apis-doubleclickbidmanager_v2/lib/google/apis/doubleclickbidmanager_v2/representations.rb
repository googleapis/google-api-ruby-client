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
      
      class DataRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
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
      
      class RunQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
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
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_range, as: 'dataRange', class: Google::Apis::DoubleclickbidmanagerV2::DataRange, decorator: Google::Apis::DoubleclickbidmanagerV2::DataRange::Representation
      
        end
      end
    end
  end
end
