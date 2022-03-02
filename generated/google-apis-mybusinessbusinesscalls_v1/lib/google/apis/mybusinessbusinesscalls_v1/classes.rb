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
    module MybusinessbusinesscallsV1
      
      # Metrics aggregated over the input time range.
      class AggregateMetrics
        include Google::Apis::Core::Hashable
      
        # Total count of answered calls.
        # Corresponds to the JSON property `answeredCallsCount`
        # @return [Fixnum]
        attr_accessor :answered_calls_count
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessbusinesscallsV1::Date]
        attr_accessor :end_date
      
        # A list of metrics by hour of day.
        # Corresponds to the JSON property `hourlyMetrics`
        # @return [Array<Google::Apis::MybusinessbusinesscallsV1::HourlyMetrics>]
        attr_accessor :hourly_metrics
      
        # Total count of missed calls.
        # Corresponds to the JSON property `missedCallsCount`
        # @return [Fixnum]
        attr_accessor :missed_calls_count
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessbusinesscallsV1::Date]
        attr_accessor :start_date
      
        # A list of metrics by day of week.
        # Corresponds to the JSON property `weekdayMetrics`
        # @return [Array<Google::Apis::MybusinessbusinesscallsV1::WeekDayMetrics>]
        attr_accessor :weekday_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answered_calls_count = args[:answered_calls_count] if args.key?(:answered_calls_count)
          @end_date = args[:end_date] if args.key?(:end_date)
          @hourly_metrics = args[:hourly_metrics] if args.key?(:hourly_metrics)
          @missed_calls_count = args[:missed_calls_count] if args.key?(:missed_calls_count)
          @start_date = args[:start_date] if args.key?(:start_date)
          @weekday_metrics = args[:weekday_metrics] if args.key?(:weekday_metrics)
        end
      end
      
      # Insights for calls made to a location.
      class BusinessCallsInsights
        include Google::Apis::Core::Hashable
      
        # Metrics aggregated over the input time range.
        # Corresponds to the JSON property `aggregateMetrics`
        # @return [Google::Apis::MybusinessbusinesscallsV1::AggregateMetrics]
        attr_accessor :aggregate_metrics
      
        # The metric for which the value applies.
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # Required. The resource name of the calls insights. Format: locations/`location`
        # /businesscallsinsights
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_metrics = args[:aggregate_metrics] if args.key?(:aggregate_metrics)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Business calls settings for a location.
      class BusinessCallsSettings
        include Google::Apis::Core::Hashable
      
        # Required. The state of this location's enrollment in Business calls.
        # Corresponds to the JSON property `callsState`
        # @return [String]
        attr_accessor :calls_state
      
        # Input only. Time when the end user provided consent to the API user to enable
        # business calls.
        # Corresponds to the JSON property `consentTime`
        # @return [String]
        attr_accessor :consent_time
      
        # Required. The resource name of the calls settings. Format: locations/`location`
        # /businesscallssettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calls_state = args[:calls_state] if args.key?(:calls_state)
          @consent_time = args[:consent_time] if args.key?(:consent_time)
          @name = args[:name] if args.key?(:name)
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
      
      # Metrics for an hour.
      class HourlyMetrics
        include Google::Apis::Core::Hashable
      
        # Hour of the day. Allowed values are 0-23.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Total count of missed calls for this hour.
        # Corresponds to the JSON property `missedCallsCount`
        # @return [Fixnum]
        attr_accessor :missed_calls_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @missed_calls_count = args[:missed_calls_count] if args.key?(:missed_calls_count)
        end
      end
      
      # Response message for ListBusinessCallsInsights.
      class ListBusinessCallsInsightsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of business calls insights for the location.
        # Corresponds to the JSON property `businessCallsInsights`
        # @return [Array<Google::Apis::MybusinessbusinesscallsV1::BusinessCallsInsights>]
        attr_accessor :business_calls_insights
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. Some of the metric_types (e.g,
        # AGGREGATE_COUNT) returns a single page. For these metrics, the
        # next_page_token will be empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_calls_insights = args[:business_calls_insights] if args.key?(:business_calls_insights)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Metrics for a week day.
      class WeekDayMetrics
        include Google::Apis::Core::Hashable
      
        # Day of the week. Allowed values are Sunday - Saturday.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Total count of missed calls for this hour.
        # Corresponds to the JSON property `missedCallsCount`
        # @return [Fixnum]
        attr_accessor :missed_calls_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @missed_calls_count = args[:missed_calls_count] if args.key?(:missed_calls_count)
        end
      end
    end
  end
end
