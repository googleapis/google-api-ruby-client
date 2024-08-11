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
      
      # The date range to be reported on.
      class DataRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `customEndDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :custom_end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `customStartDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :custom_start_date
      
        # The preset date range to be reported on. If `CUSTOM_DATES` is assigned to this
        # field, fields custom_start_date and custom_end_date must be set to specify the
        # custom date range.
        # Corresponds to the JSON property `range`
        # @return [String]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_end_date = args[:custom_end_date] if args.key?(:custom_end_date)
          @custom_start_date = args[:custom_start_date] if args.key?(:custom_start_date)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents a single filter rule.
      class FilterPair
        include Google::Apis::Core::Hashable
      
        # The type of value to filter by. Defined by a [Filter](/bid-manager/reference/
        # rest/v2/filters-metrics#filters) value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The identifying value to filter by, such as a relevant resource ID.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ListQueriesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `queries.list` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of queries. This field will be absent if empty.
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::Query>]
        attr_accessor :queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @queries = args[:queries] if args.key?(:queries)
        end
      end
      
      # 
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `queries.reports.list` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of reports. This field will be absent if empty.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # Report parameter options.
      class Options
        include Google::Apis::Core::Hashable
      
        # Whether to include data for audience lists specifically targeted by filtered
        # line items or insertion orders. Requires the use of `FILTER_INSERTION_ORDER`
        # or `FILTER_LINE_ITEM` filters.
        # Corresponds to the JSON property `includeOnlyTargetedUserLists`
        # @return [Boolean]
        attr_accessor :include_only_targeted_user_lists
        alias_method :include_only_targeted_user_lists?, :include_only_targeted_user_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_only_targeted_user_lists = args[:include_only_targeted_user_lists] if args.key?(:include_only_targeted_user_lists)
        end
      end
      
      # Parameters of a generated report.
      class Parameters
        include Google::Apis::Core::Hashable
      
        # Filters to limit the scope of reported data.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::FilterPair>]
        attr_accessor :filters
      
        # Dimensions by which to segment and group the data. Defined by [Filter](/bid-
        # manager/reference/rest/v2/filters-metrics#filters) values.
        # Corresponds to the JSON property `groupBys`
        # @return [Array<String>]
        attr_accessor :group_bys
      
        # Metrics to define the data populating the report. Defined by [Metric](/bid-
        # manager/reference/rest/v2/filters-metrics#metrics) values.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Report parameter options.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Options]
        attr_accessor :options
      
        # The type of the report. The type of the report determines the dimesions,
        # filters, and metrics that can be used.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @group_bys = args[:group_bys] if args.key?(:group_bys)
          @metrics = args[:metrics] if args.key?(:metrics)
          @options = args[:options] if args.key?(:options)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A single query used to generate a report.
      class Query
        include Google::Apis::Core::Hashable
      
        # The metadata of the query.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV2::QueryMetadata]
        attr_accessor :metadata
      
        # Parameters of a generated report.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Parameters]
        attr_accessor :params
      
        # Output only. The unique ID of the query.
        # Corresponds to the JSON property `queryId`
        # @return [Fixnum]
        attr_accessor :query_id
      
        # Settings on when and how frequently to run a query.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DoubleclickbidmanagerV2::QuerySchedule]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @params = args[:params] if args.key?(:params)
          @query_id = args[:query_id] if args.key?(:query_id)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # The metadata of the query.
      class QueryMetadata
        include Google::Apis::Core::Hashable
      
        # The date range to be reported on.
        # Corresponds to the JSON property `dataRange`
        # @return [Google::Apis::DoubleclickbidmanagerV2::DataRange]
        attr_accessor :data_range
      
        # The format of the report generated by the query.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Whether an email notification is sent to the query creator when a report
        # generated by the query is ready. This value is `false` by default.
        # Corresponds to the JSON property `sendNotification`
        # @return [Boolean]
        attr_accessor :send_notification
        alias_method :send_notification?, :send_notification
      
        # List of additional email addresses with which to share the query. If
        # send_notification is `true`, these email addresses will receive a notification
        # when a report generated by the query is ready. If these email addresses are
        # connected to Display & Video 360 users, the query will be available to them in
        # the Display & Video 360 interface.
        # Corresponds to the JSON property `shareEmailAddress`
        # @return [Array<String>]
        attr_accessor :share_email_address
      
        # The display name of the query. This value will be used in the file name of
        # reports generated by the query.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_range = args[:data_range] if args.key?(:data_range)
          @format = args[:format] if args.key?(:format)
          @send_notification = args[:send_notification] if args.key?(:send_notification)
          @share_email_address = args[:share_email_address] if args.key?(:share_email_address)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Settings on when and how frequently to run a query.
      class QuerySchedule
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :end_date
      
        # How frequently to run the query. If set to `ONE_TIME`, the query will only be
        # run when queries.run is called.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # The canonical code for the timezone the query schedule is based on. Scheduled
        # runs are usually conducted in the morning of a given day. Defaults to `America/
        # New_York`.
        # Corresponds to the JSON property `nextRunTimezoneCode`
        # @return [String]
        attr_accessor :next_run_timezone_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @frequency = args[:frequency] if args.key?(:frequency)
          @next_run_timezone_code = args[:next_run_timezone_code] if args.key?(:next_run_timezone_code)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A single report generated by its parent report.
      class Report
        include Google::Apis::Core::Hashable
      
        # Identifying information of a report.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ReportKey]
        attr_accessor :key
      
        # The metadata of a report.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ReportMetadata]
        attr_accessor :metadata
      
        # Parameters of a generated report.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Parameters]
        attr_accessor :params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @metadata = args[:metadata] if args.key?(:metadata)
          @params = args[:params] if args.key?(:params)
        end
      end
      
      # Identifying information of a report.
      class ReportKey
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the query that generated the report.
        # Corresponds to the JSON property `queryId`
        # @return [Fixnum]
        attr_accessor :query_id
      
        # Output only. The unique ID of the report.
        # Corresponds to the JSON property `reportId`
        # @return [Fixnum]
        attr_accessor :report_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_id = args[:query_id] if args.key?(:query_id)
          @report_id = args[:report_id] if args.key?(:report_id)
        end
      end
      
      # The metadata of a report.
      class ReportMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The location of the generated report file in Google Cloud Storage.
        # This field will be absent if status.state is not `DONE`.
        # Corresponds to the JSON property `googleCloudStoragePath`
        # @return [String]
        attr_accessor :google_cloud_storage_path
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `reportDataEndDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :report_data_end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `reportDataStartDate`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Date]
        attr_accessor :report_data_start_date
      
        # The status of a report.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ReportStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_cloud_storage_path = args[:google_cloud_storage_path] if args.key?(:google_cloud_storage_path)
          @report_data_end_date = args[:report_data_end_date] if args.key?(:report_data_end_date)
          @report_data_start_date = args[:report_data_start_date] if args.key?(:report_data_start_date)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The status of a report.
      class ReportStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp of when report generation finished successfully or
        # in failure. This field will not be set unless state is `DONE` or `FAILED`.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The format of the generated report file.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Output only. The state of the report generation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @format = args[:format] if args.key?(:format)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Details specifying how to run a query.
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # The date range to be reported on.
        # Corresponds to the JSON property `dataRange`
        # @return [Google::Apis::DoubleclickbidmanagerV2::DataRange]
        attr_accessor :data_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_range = args[:data_range] if args.key?(:data_range)
        end
      end
    end
  end
end
