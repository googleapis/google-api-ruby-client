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
      
      # A channel grouping defines a set of rules that can be used to categorize
      # events in a path report.
      class ChannelGrouping
        include Google::Apis::Core::Hashable
      
        # The name to apply to an event that does not match any of the rules in the
        # channel grouping.
        # Corresponds to the JSON property `fallbackName`
        # @return [String]
        attr_accessor :fallback_name
      
        # Channel Grouping name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Rules within Channel Grouping. There is a limit of 100 rules that can be set
        # per channel grouping.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::Rule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fallback_name = args[:fallback_name] if args.key?(:fallback_name)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Report data range.
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
      
        # Report data range used to generate the report.
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
      
      # DisjunctiveMatchStatement that OR's all contained filters.
      class DisjunctiveMatchStatement
        include Google::Apis::Core::Hashable
      
        # Filters. There is a limit of 100 filters that can be set per disjunctive match
        # statement.
        # Corresponds to the JSON property `eventFilters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::EventFilter>]
        attr_accessor :event_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_filters = args[:event_filters] if args.key?(:event_filters)
        end
      end
      
      # Defines the type of filter to be applied to the path, a DV360 event dimension
      # filter.
      class EventFilter
        include Google::Apis::Core::Hashable
      
        # Dimension filter on path events.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::DoubleclickbidmanagerV2::PathQueryOptionsFilter]
        attr_accessor :dimension_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
        end
      end
      
      # Filter used to match traffic data in your report.
      class FilterPair
        include Google::Apis::Core::Hashable
      
        # Filter type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Filter value.
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
      
        # A token, which can be sent as page_token to retrieve the next page of queries.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of queries.
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
      
        # A token, which can be sent as page_token to retrieve the next page of reports.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Retrieved reports.
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
      
      # Additional query options.
      class Options
        include Google::Apis::Core::Hashable
      
        # Set to true and filter your report by `FILTER_INSERTION_ORDER` or `
        # FILTER_LINE_ITEM` to include data for audience lists specifically targeted by
        # those items.
        # Corresponds to the JSON property `includeOnlyTargetedUserLists`
        # @return [Boolean]
        attr_accessor :include_only_targeted_user_lists
        alias_method :include_only_targeted_user_lists?, :include_only_targeted_user_lists
      
        # Path Query Options for Report Options.
        # Corresponds to the JSON property `pathQueryOptions`
        # @return [Google::Apis::DoubleclickbidmanagerV2::PathQueryOptions]
        attr_accessor :path_query_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_only_targeted_user_lists = args[:include_only_targeted_user_lists] if args.key?(:include_only_targeted_user_lists)
          @path_query_options = args[:path_query_options] if args.key?(:path_query_options)
        end
      end
      
      # Parameters of a query or report.
      class Parameters
        include Google::Apis::Core::Hashable
      
        # Filters used to match traffic data in your report.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::FilterPair>]
        attr_accessor :filters
      
        # Data is grouped by the filters listed in this field.
        # Corresponds to the JSON property `groupBys`
        # @return [Array<String>]
        attr_accessor :group_bys
      
        # Metrics to include as columns in your report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Additional query options.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Options]
        attr_accessor :options
      
        # The type of the report. The type of the report will dictate what dimesions,
        # filters, and metrics can be used. **Warning:** The `AUDIENCE_COMPOSITION`
        # report type will be deprecated in Display & Video 360 on **June 8, 2023**.
        # Once deprecated, you will no longer be able to create new or retrieve existing
        # Query and Report resources of this type.
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
      
      # Path filters specify which paths to include in a report. A path is the result
      # of combining DV360 events based on User ID to create a workflow of users'
      # actions. When a path filter is set, the resulting report will only include
      # paths that match the specified event at the specified position. All other
      # paths will be excluded.
      class PathFilter
        include Google::Apis::Core::Hashable
      
        # Filter on an event to be applied to some part of the path.
        # Corresponds to the JSON property `eventFilters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::EventFilter>]
        attr_accessor :event_filters
      
        # The position of the path the filter should match to (first, last, or any event
        # in path).
        # Corresponds to the JSON property `pathMatchPosition`
        # @return [String]
        attr_accessor :path_match_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_filters = args[:event_filters] if args.key?(:event_filters)
          @path_match_position = args[:path_match_position] if args.key?(:path_match_position)
        end
      end
      
      # Path Query Options for Report Options.
      class PathQueryOptions
        include Google::Apis::Core::Hashable
      
        # A channel grouping defines a set of rules that can be used to categorize
        # events in a path report.
        # Corresponds to the JSON property `channelGrouping`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ChannelGrouping]
        attr_accessor :channel_grouping
      
        # Path Filters. There is a limit of 100 path filters that can be set per report.
        # Corresponds to the JSON property `pathFilters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::PathFilter>]
        attr_accessor :path_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_grouping = args[:channel_grouping] if args.key?(:channel_grouping)
          @path_filters = args[:path_filters] if args.key?(:path_filters)
        end
      end
      
      # Dimension filter on path events.
      class PathQueryOptionsFilter
        include Google::Apis::Core::Hashable
      
        # Dimension the filter is applied to.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Match logic of the filter.
        # Corresponds to the JSON property `match`
        # @return [String]
        attr_accessor :match
      
        # Values to filter on.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @match = args[:match] if args.key?(:match)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Represents a query.
      class Query
        include Google::Apis::Core::Hashable
      
        # Query metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV2::QueryMetadata]
        attr_accessor :metadata
      
        # Parameters of a query or report.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::DoubleclickbidmanagerV2::Parameters]
        attr_accessor :params
      
        # Output only. Query ID.
        # Corresponds to the JSON property `queryId`
        # @return [Fixnum]
        attr_accessor :query_id
      
        # Information on when and how frequently to run a query.
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
      
      # Query metadata.
      class QueryMetadata
        include Google::Apis::Core::Hashable
      
        # Report data range.
        # Corresponds to the JSON property `dataRange`
        # @return [Google::Apis::DoubleclickbidmanagerV2::DataRange]
        attr_accessor :data_range
      
        # Format of the generated report.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Whether to send an email notification when a report is ready. Defaults to
        # false.
        # Corresponds to the JSON property `sendNotification`
        # @return [Boolean]
        attr_accessor :send_notification
        alias_method :send_notification?, :send_notification
      
        # List of email addresses which are sent email notifications when the report is
        # finished. Separate from send_notification.
        # Corresponds to the JSON property `shareEmailAddress`
        # @return [Array<String>]
        attr_accessor :share_email_address
      
        # Query title. It is used to name the reports generated from this query.
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
      
      # Information on when and how frequently to run a query.
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
      
        # How often the query is run.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Canonical timezone code for report generation time. Defaults to `America/
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
      
      # Represents a report.
      class Report
        include Google::Apis::Core::Hashable
      
        # Key used to identify a report.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ReportKey]
        attr_accessor :key
      
        # Report metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV2::ReportMetadata]
        attr_accessor :metadata
      
        # Parameters of a query or report.
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
      
      # Key used to identify a report.
      class ReportKey
        include Google::Apis::Core::Hashable
      
        # Output only. Query ID.
        # Corresponds to the JSON property `queryId`
        # @return [Fixnum]
        attr_accessor :query_id
      
        # Output only. Report ID.
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
      
      # Report metadata.
      class ReportMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The path to the location in Google Cloud Storage where the report
        # is stored.
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
      
        # Report status.
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
      
      # Report status.
      class ReportStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this report either completed successfully or failed.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The file type of the report.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Output only. The state of the report.
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
      
      # A Rule defines a name, and a boolean expression in [conjunctive normal form] (
      # http://mathworld.wolfram.com/ConjunctiveNormalForm.html)`.external` that can
      # be applied to a path event to determine if that name should be applied.
      class Rule
        include Google::Apis::Core::Hashable
      
        # DisjunctiveMatchStatements within a Rule. DisjunctiveMatchStatement OR's all
        # contained filters.
        # Corresponds to the JSON property `disjunctiveMatchStatements`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV2::DisjunctiveMatchStatement>]
        attr_accessor :disjunctive_match_statements
      
        # Rule name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disjunctive_match_statements = args[:disjunctive_match_statements] if args.key?(:disjunctive_match_statements)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request to run a stored query to generate a report.
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # Report data range.
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
