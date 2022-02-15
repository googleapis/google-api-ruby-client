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
      
      class AggregateMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessCallsInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessCallsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HourlyMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBusinessCallsInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeekDayMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answered_calls_count, as: 'answeredCallsCount'
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessbusinesscallsV1::Date, decorator: Google::Apis::MybusinessbusinesscallsV1::Date::Representation
      
          collection :hourly_metrics, as: 'hourlyMetrics', class: Google::Apis::MybusinessbusinesscallsV1::HourlyMetrics, decorator: Google::Apis::MybusinessbusinesscallsV1::HourlyMetrics::Representation
      
          property :missed_calls_count, as: 'missedCallsCount'
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessbusinesscallsV1::Date, decorator: Google::Apis::MybusinessbusinesscallsV1::Date::Representation
      
          collection :weekday_metrics, as: 'weekdayMetrics', class: Google::Apis::MybusinessbusinesscallsV1::WeekDayMetrics, decorator: Google::Apis::MybusinessbusinesscallsV1::WeekDayMetrics::Representation
      
        end
      end
      
      class BusinessCallsInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_metrics, as: 'aggregateMetrics', class: Google::Apis::MybusinessbusinesscallsV1::AggregateMetrics, decorator: Google::Apis::MybusinessbusinesscallsV1::AggregateMetrics::Representation
      
          property :metric_type, as: 'metricType'
          property :name, as: 'name'
        end
      end
      
      class BusinessCallsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calls_state, as: 'callsState'
          property :consent_time, as: 'consentTime'
          property :name, as: 'name'
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
      
      class HourlyMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :missed_calls_count, as: 'missedCallsCount'
        end
      end
      
      class ListBusinessCallsInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_calls_insights, as: 'businessCallsInsights', class: Google::Apis::MybusinessbusinesscallsV1::BusinessCallsInsights, decorator: Google::Apis::MybusinessbusinesscallsV1::BusinessCallsInsights::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class WeekDayMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :missed_calls_count, as: 'missedCallsCount'
        end
      end
    end
  end
end
