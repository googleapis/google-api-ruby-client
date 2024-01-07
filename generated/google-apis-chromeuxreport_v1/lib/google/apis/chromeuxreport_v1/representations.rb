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
    module ChromeuxreportV1
      
      class Bin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FractionTimeseries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistoryKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistoryRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricTimeseries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Percentiles
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryHistoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Record
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeseriesBin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeseriesPercentiles
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlNormalization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Bin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :density, as: 'density'
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class CollectionPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_date, as: 'firstDate', class: Google::Apis::ChromeuxreportV1::Date, decorator: Google::Apis::ChromeuxreportV1::Date::Representation
      
          property :last_date, as: 'lastDate', class: Google::Apis::ChromeuxreportV1::Date, decorator: Google::Apis::ChromeuxreportV1::Date::Representation
      
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
      
      class FractionTimeseries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fractions, as: 'fractions'
        end
      end
      
      class HistoryKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form_factor, as: 'formFactor'
          property :origin, as: 'origin'
          property :url, as: 'url'
        end
      end
      
      class HistoryRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_periods, as: 'collectionPeriods', class: Google::Apis::ChromeuxreportV1::CollectionPeriod, decorator: Google::Apis::ChromeuxreportV1::CollectionPeriod::Representation
      
          property :key, as: 'key', class: Google::Apis::ChromeuxreportV1::HistoryKey, decorator: Google::Apis::ChromeuxreportV1::HistoryKey::Representation
      
          hash :metrics, as: 'metrics', class: Google::Apis::ChromeuxreportV1::MetricTimeseries, decorator: Google::Apis::ChromeuxreportV1::MetricTimeseries::Representation
      
        end
      end
      
      class Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_connection_type, as: 'effectiveConnectionType'
          property :form_factor, as: 'formFactor'
          property :origin, as: 'origin'
          property :url, as: 'url'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fractions, as: 'fractions'
          collection :histogram, as: 'histogram', class: Google::Apis::ChromeuxreportV1::Bin, decorator: Google::Apis::ChromeuxreportV1::Bin::Representation
      
          property :percentiles, as: 'percentiles', class: Google::Apis::ChromeuxreportV1::Percentiles, decorator: Google::Apis::ChromeuxreportV1::Percentiles::Representation
      
        end
      end
      
      class MetricTimeseries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fraction_timeseries, as: 'fractionTimeseries', class: Google::Apis::ChromeuxreportV1::FractionTimeseries, decorator: Google::Apis::ChromeuxreportV1::FractionTimeseries::Representation
      
          collection :histogram_timeseries, as: 'histogramTimeseries', class: Google::Apis::ChromeuxreportV1::TimeseriesBin, decorator: Google::Apis::ChromeuxreportV1::TimeseriesBin::Representation
      
          property :percentiles_timeseries, as: 'percentilesTimeseries', class: Google::Apis::ChromeuxreportV1::TimeseriesPercentiles, decorator: Google::Apis::ChromeuxreportV1::TimeseriesPercentiles::Representation
      
        end
      end
      
      class Percentiles
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :p75, as: 'p75'
        end
      end
      
      class QueryHistoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form_factor, as: 'formFactor'
          collection :metrics, as: 'metrics'
          property :origin, as: 'origin'
          property :url, as: 'url'
        end
      end
      
      class QueryHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record, as: 'record', class: Google::Apis::ChromeuxreportV1::HistoryRecord, decorator: Google::Apis::ChromeuxreportV1::HistoryRecord::Representation
      
          property :url_normalization_details, as: 'urlNormalizationDetails', class: Google::Apis::ChromeuxreportV1::UrlNormalization, decorator: Google::Apis::ChromeuxreportV1::UrlNormalization::Representation
      
        end
      end
      
      class QueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_connection_type, as: 'effectiveConnectionType'
          property :form_factor, as: 'formFactor'
          collection :metrics, as: 'metrics'
          property :origin, as: 'origin'
          property :url, as: 'url'
        end
      end
      
      class QueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record, as: 'record', class: Google::Apis::ChromeuxreportV1::Record, decorator: Google::Apis::ChromeuxreportV1::Record::Representation
      
          property :url_normalization_details, as: 'urlNormalizationDetails', class: Google::Apis::ChromeuxreportV1::UrlNormalization, decorator: Google::Apis::ChromeuxreportV1::UrlNormalization::Representation
      
        end
      end
      
      class Record
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_period, as: 'collectionPeriod', class: Google::Apis::ChromeuxreportV1::CollectionPeriod, decorator: Google::Apis::ChromeuxreportV1::CollectionPeriod::Representation
      
          property :key, as: 'key', class: Google::Apis::ChromeuxreportV1::Key, decorator: Google::Apis::ChromeuxreportV1::Key::Representation
      
          hash :metrics, as: 'metrics', class: Google::Apis::ChromeuxreportV1::Metric, decorator: Google::Apis::ChromeuxreportV1::Metric::Representation
      
        end
      end
      
      class TimeseriesBin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :densities, as: 'densities'
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class TimeseriesPercentiles
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :p75s, as: 'p75s'
        end
      end
      
      class UrlNormalization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_url, as: 'normalizedUrl'
          property :original_url, as: 'originalUrl'
        end
      end
    end
  end
end
