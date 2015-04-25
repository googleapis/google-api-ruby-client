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
      
      class DeleteMetricDescriptorResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListMetricDescriptorsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListMetricDescriptorsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTimeseriesDescriptorsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTimeseriesDescriptorsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTimeseriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTimeseriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetricDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetricDescriptorLabelDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetricDescriptorTypeDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointDistributionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointDistributionBucketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointDistributionOverflowBucketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointDistributionUnderflowBucketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimeseriesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimeseriesDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimeseriesDescriptorLabelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimeseriesPointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WriteTimeseriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WriteTimeseriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class DeleteMetricDescriptorResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class ListMetricDescriptorsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class ListMetricDescriptorsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListTimeseriesDescriptorsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class ListTimeseriesDescriptorsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :oldest, as: 'oldest', type: DateTime
        collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptorRepresentation
        
        
        property :youngest, as: 'youngest', type: DateTime
      end

      # @private
      class ListTimeseriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class ListTimeseriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :oldest, as: 'oldest', type: DateTime
        collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::Timeseries, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesRepresentation
        
        
        property :youngest, as: 'youngest', type: DateTime
      end

      # @private
      class MetricDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        collection :labels, as: 'labels', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorLabelDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorLabelDescriptorRepresentation
        
        
        property :name, as: 'name'
        property :project, as: 'project'
        property :type_descriptor, as: 'typeDescriptor', class: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorTypeDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::MetricDescriptorTypeDescriptorRepresentation
      end

      # @private
      class MetricDescriptorLabelDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :key, as: 'key'
      end

      # @private
      class MetricDescriptorTypeDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        property :metric_type, as: 'metricType'
        property :value_type, as: 'valueType'
      end

      # @private
      class PointRepresentation < Google::Apis::Core::JsonRepresentation
        property :bool_value, as: 'boolValue'
        property :distribution_value, as: 'distributionValue', class: Google::Apis::CloudmonitoringV2beta2::PointDistribution, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionRepresentation
        
        property :double_value, as: 'doubleValue'
        property :end, as: 'end', type: DateTime
        property :int64_value, as: 'int64Value'
        property :start, as: 'start', type: DateTime
        property :string_value, as: 'stringValue'
      end

      # @private
      class PointDistributionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :buckets, as: 'buckets', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionBucketRepresentation
        
        
        property :overflow_bucket, as: 'overflowBucket', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionOverflowBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionOverflowBucketRepresentation
        
        property :underflow_bucket, as: 'underflowBucket', class: Google::Apis::CloudmonitoringV2beta2::PointDistributionUnderflowBucket, decorator: Google::Apis::CloudmonitoringV2beta2::PointDistributionUnderflowBucketRepresentation
      end

      # @private
      class PointDistributionBucketRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :lower_bound, as: 'lowerBound'
        property :upper_bound, as: 'upperBound'
      end

      # @private
      class PointDistributionOverflowBucketRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :lower_bound, as: 'lowerBound'
      end

      # @private
      class PointDistributionUnderflowBucketRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :upper_bound, as: 'upperBound'
      end

      # @private
      class TimeseriesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :points, as: 'points', class: Google::Apis::CloudmonitoringV2beta2::Point, decorator: Google::Apis::CloudmonitoringV2beta2::PointRepresentation
        
        
        property :timeseries_desc, as: 'timeseriesDesc', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptorRepresentation
      end

      # @private
      class TimeseriesDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        hash :labels, as: 'labels'
        
        property :metric, as: 'metric'
        property :project, as: 'project'
      end

      # @private
      class TimeseriesDescriptorLabelRepresentation < Google::Apis::Core::JsonRepresentation
        property :key, as: 'key'
        property :value, as: 'value'
      end

      # @private
      class TimeseriesPointRepresentation < Google::Apis::Core::JsonRepresentation
        property :point, as: 'point', class: Google::Apis::CloudmonitoringV2beta2::Point, decorator: Google::Apis::CloudmonitoringV2beta2::PointRepresentation
        
        property :timeseries_desc, as: 'timeseriesDesc', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptorRepresentation
      end

      # @private
      class WriteTimeseriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        hash :common_labels, as: 'commonLabels'
        
        collection :timeseries, as: 'timeseries', class: Google::Apis::CloudmonitoringV2beta2::TimeseriesPoint, decorator: Google::Apis::CloudmonitoringV2beta2::TimeseriesPointRepresentation
      end

      # @private
      class WriteTimeseriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end
    end
  end
end
