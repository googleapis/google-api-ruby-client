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
    module BusinessprofileperformanceV1
      
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
      
      # Represents a single datapoint in the timeseries, where each datapoint is a
      # date-value pair.
      class DatedValue
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::BusinessprofileperformanceV1::Date]
        attr_accessor :date
      
        # The value of the datapoint.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents the response for GetDailyMetricsTimeSeries.
      class GetDailyMetricsTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # Represents a timeseries.
        # Corresponds to the JSON property `timeSeries`
        # @return [Google::Apis::BusinessprofileperformanceV1::TimeSeries]
        attr_accessor :time_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_series = args[:time_series] if args.key?(:time_series)
        end
      end
      
      # Represents an insights value.
      class InsightsValue
        include Google::Apis::Core::Hashable
      
        # Represents the threshold below which the actual value falls.
        # Corresponds to the JSON property `threshold`
        # @return [Fixnum]
        attr_accessor :threshold
      
        # Represents the actual value.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threshold = args[:threshold] if args.key?(:threshold)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents the response for ListSearchKeywordImpressionsMonthly.
      class ListSearchKeywordImpressionsMonthlyResponse
        include Google::Apis::Core::Hashable
      
        # A token indicating the last paginated result returned. This can be used by
        # succeeding requests to get the next "page" of keywords. It will only be
        # present when there are more results to be returned.
        # Corresponds to the JSON property `nextPageToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :next_page_token
      
        # Search terms which have been used to find a business.
        # Corresponds to the JSON property `searchKeywordsCounts`
        # @return [Array<Google::Apis::BusinessprofileperformanceV1::SearchKeywordCount>]
        attr_accessor :search_keywords_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @search_keywords_counts = args[:search_keywords_counts] if args.key?(:search_keywords_counts)
        end
      end
      
      # Represents a single search keyword and its value.
      class SearchKeywordCount
        include Google::Apis::Core::Hashable
      
        # Represents an insights value.
        # Corresponds to the JSON property `insightsValue`
        # @return [Google::Apis::BusinessprofileperformanceV1::InsightsValue]
        attr_accessor :insights_value
      
        # The lower-cased string that the user entered.
        # Corresponds to the JSON property `searchKeyword`
        # @return [String]
        attr_accessor :search_keyword
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insights_value = args[:insights_value] if args.key?(:insights_value)
          @search_keyword = args[:search_keyword] if args.key?(:search_keyword)
        end
      end
      
      # Represents a timeseries.
      class TimeSeries
        include Google::Apis::Core::Hashable
      
        # List of datapoints in the timeseries, where each datapoint is a date-value
        # pair.
        # Corresponds to the JSON property `datedValues`
        # @return [Array<Google::Apis::BusinessprofileperformanceV1::DatedValue>]
        attr_accessor :dated_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dated_values = args[:dated_values] if args.key?(:dated_values)
        end
      end
    end
  end
end
