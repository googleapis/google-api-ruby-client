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
    module CloudmonitoringV2beta2
      
      class DeleteMetricDescriptorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListMetricDescriptorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListMetricDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTimeseriesDescriptorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTimeseriesDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTimeseriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTimeseriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MetricDescriptorLabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MetricDescriptorTypeDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Point
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PointDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PointDistributionBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PointDistributionOverflowBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PointDistributionUnderflowBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Timeseries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TimeseriesDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TimeseriesDescriptorLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TimeseriesPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WriteTimeseriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WriteTimeseriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class DeleteMetricDescriptorResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListMetricDescriptorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListMetricDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class ListTimeseriesDescriptorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListTimeseriesDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :oldest, as: 'oldest', type: DateTime
      
          collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor::Representation
      
          property :youngest, as: 'youngest', type: DateTime
      
        end
      end
      
      # @private
      class ListTimeseriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListTimeseriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :oldest, as: 'oldest', type: DateTime
      
          collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::Timeseries, decorator: Google::Apis::CloudmonitoringV2beta2::Timeseries::Representation
      
          property :youngest, as: 'youngest', type: DateTime
      
        end
      end
      
      # @private
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :labels, as: 'labels', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorLabelDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorLabelDescriptor::Representation
      
          property :name, as: 'name'
          property :project, as: 'project'
          property :type_descriptor, as: 'typeDescriptor', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorTypeDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorTypeDescriptor::Representation
      
        end
      end
      
      # @private
      class MetricDescriptorLabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :key, as: 'key'
        end
      end
      
      # @private
      class MetricDescriptorTypeDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_type, as: 'metricType'
          property :value_type, as: 'valueType'
        end
      end
      
      # @private
      class Point
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::CloudmonitoringV2beta2::PointDistribution, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :end, as: 'end', type: DateTime
      
          property :int64_value, as: 'int64Value'
          property :start, as: 'start', type: DateTime
      
          property :string_value, as: 'stringValue'
        end
      end
      
      # @private
      class PointDistribution
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionBucket::Representation
      
          property :overflow_bucket, as: 'overflowBucket', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionOverflowBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionOverflowBucket::Representation
      
          property :underflow_bucket, as: 'underflowBucket', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionUnderflowBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionUnderflowBucket::Representation
      
        end
      end
      
      # @private
      class PointDistributionBucket
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :lower_bound, as: 'lowerBound'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      # @private
      class PointDistributionOverflowBucket
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :lower_bound, as: 'lowerBound'
        end
      end
      
      # @private
      class PointDistributionUnderflowBucket
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      # @private
      class Timeseries
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :points, as: 'points', class: Google::Apis::CloudmonitoringV2beta2::Point, decorator: Google::Apis::CloudmonitoringV2beta2::Point::Representation
      
          property :timeseries_desc, as: 'timeseriesDesc', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor::Representation
      
        end
      end
      
      # @private
      class TimeseriesDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :metric, as: 'metric'
          property :project, as: 'project'
        end
      end
      
      # @private
      class TimeseriesDescriptorLabel
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      # @private
      class TimeseriesPoint
        class Representation < Google::Apis::Core::JsonRepresentation
          property :point, as: 'point', class: Google::Apis::CloudmonitoringV2beta2::Point, decorator: Google::Apis::CloudmonitoringV2beta2::Point::Representation
      
          property :timeseries_desc, as: 'timeseriesDesc', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor::Representation
      
        end
      end
      
      # @private
      class WriteTimeseriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :common_labels, as: 'commonLabels'
          collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesPoint, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesPoint::Representation
      
        end
      end
      
      # @private
      class WriteTimeseriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
    end
  end
end
