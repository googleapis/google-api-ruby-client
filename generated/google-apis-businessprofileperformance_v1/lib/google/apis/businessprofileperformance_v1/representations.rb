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
      
      class DailyMetricTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailySubEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchMultiDailyMetricsTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDailyMetricsTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsightsValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSearchKeywordImpressionsMonthlyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiDailyMetricTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchKeywordCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyMetricTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_metric, as: 'dailyMetric'
          property :daily_sub_entity_type, as: 'dailySubEntityType', class: Google::Apis::BusinessprofileperformanceV1::DailySubEntityType, decorator: Google::Apis::BusinessprofileperformanceV1::DailySubEntityType::Representation
      
          property :time_series, as: 'timeSeries', class: Google::Apis::BusinessprofileperformanceV1::TimeSeries, decorator: Google::Apis::BusinessprofileperformanceV1::TimeSeries::Representation
      
        end
      end
      
      class DailySubEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::BusinessprofileperformanceV1::TimeOfDay, decorator: Google::Apis::BusinessprofileperformanceV1::TimeOfDay::Representation
      
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
      
      class DatedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::BusinessprofileperformanceV1::Date, decorator: Google::Apis::BusinessprofileperformanceV1::Date::Representation
      
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class FetchMultiDailyMetricsTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :multi_daily_metric_time_series, as: 'multiDailyMetricTimeSeries', class: Google::Apis::BusinessprofileperformanceV1::MultiDailyMetricTimeSeries, decorator: Google::Apis::BusinessprofileperformanceV1::MultiDailyMetricTimeSeries::Representation
      
        end
      end
      
      class GetDailyMetricsTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_series, as: 'timeSeries', class: Google::Apis::BusinessprofileperformanceV1::TimeSeries, decorator: Google::Apis::BusinessprofileperformanceV1::TimeSeries::Representation
      
        end
      end
      
      class InsightsValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threshold, :numeric_string => true, as: 'threshold'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class ListSearchKeywordImpressionsMonthlyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, :base64 => true, as: 'nextPageToken'
          collection :search_keywords_counts, as: 'searchKeywordsCounts', class: Google::Apis::BusinessprofileperformanceV1::SearchKeywordCount, decorator: Google::Apis::BusinessprofileperformanceV1::SearchKeywordCount::Representation
      
        end
      end
      
      class MultiDailyMetricTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :daily_metric_time_series, as: 'dailyMetricTimeSeries', class: Google::Apis::BusinessprofileperformanceV1::DailyMetricTimeSeries, decorator: Google::Apis::BusinessprofileperformanceV1::DailyMetricTimeSeries::Representation
      
        end
      end
      
      class SearchKeywordCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insights_value, as: 'insightsValue', class: Google::Apis::BusinessprofileperformanceV1::InsightsValue, decorator: Google::Apis::BusinessprofileperformanceV1::InsightsValue::Representation
      
          property :search_keyword, as: 'searchKeyword'
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
      
      class TimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dated_values, as: 'datedValues', class: Google::Apis::BusinessprofileperformanceV1::DatedValue, decorator: Google::Apis::BusinessprofileperformanceV1::DatedValue::Representation
      
        end
      end
    end
  end
end
