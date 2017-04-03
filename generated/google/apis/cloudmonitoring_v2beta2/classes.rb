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
      
      # The response of cloudmonitoring.metricDescriptors.delete.
      class DeleteMetricDescriptorResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#deleteMetricDescriptorResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The request of cloudmonitoring.metricDescriptors.list.
      class ListMetricDescriptorsRequest
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listMetricDescriptorsRequest".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The response of cloudmonitoring.metricDescriptors.list.
      class ListMetricDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listMetricDescriptorsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The returned metric descriptors.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::MetricDescriptor>]
        attr_accessor :metrics
      
        # Pagination token. If present, indicates that additional results are available
        # for retrieval. To access the results past the pagination limit, pass this
        # value to the pageToken query parameter.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @metrics = args[:metrics] if args.key?(:metrics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request of cloudmonitoring.timeseriesDescriptors.list
      class ListTimeseriesDescriptorsRequest
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listTimeseriesDescriptorsRequest".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The response of cloudmonitoring.timeseriesDescriptors.list
      class ListTimeseriesDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listTimeseriesDescriptorsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token. If present, indicates that additional results are available
        # for retrieval. To access the results past the pagination limit, set this value
        # to the pageToken query parameter.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The oldest timestamp of the interval of this query, as an RFC 3339 string.
        # Corresponds to the JSON property `oldest`
        # @return [DateTime]
        attr_accessor :oldest
      
        # The returned time series descriptors.
        # Corresponds to the JSON property `timeseries`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor>]
        attr_accessor :timeseries
      
        # The youngest timestamp of the interval of this query, as an RFC 3339 string.
        # Corresponds to the JSON property `youngest`
        # @return [DateTime]
        attr_accessor :youngest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @oldest = args[:oldest] if args.key?(:oldest)
          @timeseries = args[:timeseries] if args.key?(:timeseries)
          @youngest = args[:youngest] if args.key?(:youngest)
        end
      end
      
      # The request of cloudmonitoring.timeseries.list
      class ListTimeseriesRequest
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listTimeseriesRequest".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The response of cloudmonitoring.timeseries.list
      class ListTimeseriesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#listTimeseriesResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token. If present, indicates that additional results are available
        # for retrieval. To access the results past the pagination limit, set the
        # pageToken query parameter to this value. All of the points of a time series
        # will be returned before returning any point of the subsequent time series.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The oldest timestamp of the interval of this query as an RFC 3339 string.
        # Corresponds to the JSON property `oldest`
        # @return [DateTime]
        attr_accessor :oldest
      
        # The returned time series.
        # Corresponds to the JSON property `timeseries`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::Timeseries>]
        attr_accessor :timeseries
      
        # The youngest timestamp of the interval of this query as an RFC 3339 string.
        # Corresponds to the JSON property `youngest`
        # @return [DateTime]
        attr_accessor :youngest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @oldest = args[:oldest] if args.key?(:oldest)
          @timeseries = args[:timeseries] if args.key?(:timeseries)
          @youngest = args[:youngest] if args.key?(:youngest)
        end
      end
      
      # A metricDescriptor defines the name, label keys, and data type of a particular
      # metric.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # Description of this metric.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Labels defined for this metric.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::MetricDescriptorLabelDescriptor>]
        attr_accessor :labels
      
        # The name of this metric.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The project ID to which the metric belongs.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # A type in a metric contains information about how the metric is collected and
        # what its data points look like.
        # Corresponds to the JSON property `typeDescriptor`
        # @return [Google::Apis::CloudmonitoringV2beta2::MetricDescriptorTypeDescriptor]
        attr_accessor :type_descriptor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @type_descriptor = args[:type_descriptor] if args.key?(:type_descriptor)
        end
      end
      
      # A label in a metric is a description of this metric, including the key of this
      # description (what the description is), and the value for this description.
      class MetricDescriptorLabelDescriptor
        include Google::Apis::Core::Hashable
      
        # Label description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # A type in a metric contains information about how the metric is collected and
      # what its data points look like.
      class MetricDescriptorTypeDescriptor
        include Google::Apis::Core::Hashable
      
        # The method of collecting data for the metric. See Metric types.
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # The data type of of individual points in the metric's time series. See Metric
        # value types.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Point is a single point in a time series. It consists of a start time, an end
      # time, and a value.
      class Point
        include Google::Apis::Core::Hashable
      
        # The value of this data point. Either "true" or "false".
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Distribution data point value type. When writing distribution points, try to
        # be consistent with the boundaries of your buckets. If you must modify the
        # bucket boundaries, then do so by merging, partitioning, or appending rather
        # than skewing them.
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::CloudmonitoringV2beta2::PointDistribution]
        attr_accessor :distribution_value
      
        # The value of this data point as a double-precision floating-point number.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # The interval [start, end] is the time period to which the point's value
        # applies. For gauge metrics, whose values are instantaneous measurements, this
        # interval should be empty (start should equal end). For cumulative metrics (of
        # which deltas and rates are special cases), the interval should be non-empty.
        # Both start and end are RFC 3339 strings.
        # Corresponds to the JSON property `end`
        # @return [DateTime]
        attr_accessor :end
      
        # The value of this data point as a 64-bit integer.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # The interval [start, end] is the time period to which the point's value
        # applies. For gauge metrics, whose values are instantaneous measurements, this
        # interval should be empty (start should equal end). For cumulative metrics (of
        # which deltas and rates are special cases), the interval should be non-empty.
        # Both start and end are RFC 3339 strings.
        # Corresponds to the JSON property `start`
        # @return [DateTime]
        attr_accessor :start
      
        # The value of this data point in string format.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @distribution_value = args[:distribution_value] if args.key?(:distribution_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @end = args[:end] if args.key?(:end)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @start = args[:start] if args.key?(:start)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Distribution data point value type. When writing distribution points, try to
      # be consistent with the boundaries of your buckets. If you must modify the
      # bucket boundaries, then do so by merging, partitioning, or appending rather
      # than skewing them.
      class PointDistribution
        include Google::Apis::Core::Hashable
      
        # The finite buckets.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::PointDistributionBucket>]
        attr_accessor :buckets
      
        # The overflow bucket is a special bucket that does not have the upperBound
        # field; it includes all of the events that are no less than its lower bound.
        # Corresponds to the JSON property `overflowBucket`
        # @return [Google::Apis::CloudmonitoringV2beta2::PointDistributionOverflowBucket]
        attr_accessor :overflow_bucket
      
        # The underflow bucket is a special bucket that does not have the lowerBound
        # field; it includes all of the events that are less than its upper bound.
        # Corresponds to the JSON property `underflowBucket`
        # @return [Google::Apis::CloudmonitoringV2beta2::PointDistributionUnderflowBucket]
        attr_accessor :underflow_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @overflow_bucket = args[:overflow_bucket] if args.key?(:overflow_bucket)
          @underflow_bucket = args[:underflow_bucket] if args.key?(:underflow_bucket)
        end
      end
      
      # The histogram's bucket. Buckets that form the histogram of a distribution
      # value. If the upper bound of a bucket, say U1, does not equal the lower bound
      # of the next bucket, say L2, this means that there is no event in [U1, L2).
      class PointDistributionBucket
        include Google::Apis::Core::Hashable
      
        # The number of events whose values are in the interval defined by this bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The lower bound of the value interval of this bucket (inclusive).
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        # The upper bound of the value interval of this bucket (exclusive).
        # Corresponds to the JSON property `upperBound`
        # @return [Float]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # The overflow bucket is a special bucket that does not have the upperBound
      # field; it includes all of the events that are no less than its lower bound.
      class PointDistributionOverflowBucket
        include Google::Apis::Core::Hashable
      
        # The number of events whose values are in the interval defined by this bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The lower bound of the value interval of this bucket (inclusive).
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
        end
      end
      
      # The underflow bucket is a special bucket that does not have the lowerBound
      # field; it includes all of the events that are less than its upper bound.
      class PointDistributionUnderflowBucket
        include Google::Apis::Core::Hashable
      
        # The number of events whose values are in the interval defined by this bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The upper bound of the value interval of this bucket (exclusive).
        # Corresponds to the JSON property `upperBound`
        # @return [Float]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # The monitoring data is organized as metrics and stored as data points that are
      # recorded over time. Each data point represents information like the CPU
      # utilization of your virtual machine. A historical record of these data points
      # is called a time series.
      class Timeseries
        include Google::Apis::Core::Hashable
      
        # The data points of this time series. The points are listed in order of their
        # end timestamp, from younger to older.
        # Corresponds to the JSON property `points`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::Point>]
        attr_accessor :points
      
        # TimeseriesDescriptor identifies a single time series.
        # Corresponds to the JSON property `timeseriesDesc`
        # @return [Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor]
        attr_accessor :timeseries_desc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @points = args[:points] if args.key?(:points)
          @timeseries_desc = args[:timeseries_desc] if args.key?(:timeseries_desc)
        end
      end
      
      # TimeseriesDescriptor identifies a single time series.
      class TimeseriesDescriptor
        include Google::Apis::Core::Hashable
      
        # The label's name.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name of the metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The Developers Console project number to which this time series belongs.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @metric = args[:metric] if args.key?(:metric)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # 
      class TimeseriesDescriptorLabel
        include Google::Apis::Core::Hashable
      
        # The label's name.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The label's value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # When writing time series, TimeseriesPoint should be used instead of Timeseries,
      # to enforce single point for each time series in the timeseries.write request.
      class TimeseriesPoint
        include Google::Apis::Core::Hashable
      
        # Point is a single point in a time series. It consists of a start time, an end
        # time, and a value.
        # Corresponds to the JSON property `point`
        # @return [Google::Apis::CloudmonitoringV2beta2::Point]
        attr_accessor :point
      
        # TimeseriesDescriptor identifies a single time series.
        # Corresponds to the JSON property `timeseriesDesc`
        # @return [Google::Apis::CloudmonitoringV2beta2::TimeseriesDescriptor]
        attr_accessor :timeseries_desc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @point = args[:point] if args.key?(:point)
          @timeseries_desc = args[:timeseries_desc] if args.key?(:timeseries_desc)
        end
      end
      
      # The request of cloudmonitoring.timeseries.write
      class WriteTimeseriesRequest
        include Google::Apis::Core::Hashable
      
        # The label's name.
        # Corresponds to the JSON property `commonLabels`
        # @return [Hash<String,String>]
        attr_accessor :common_labels
      
        # Provide time series specific labels and the data points for each time series.
        # The labels in timeseries and the common_labels should form a complete list of
        # labels that required by the metric.
        # Corresponds to the JSON property `timeseries`
        # @return [Array<Google::Apis::CloudmonitoringV2beta2::TimeseriesPoint>]
        attr_accessor :timeseries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_labels = args[:common_labels] if args.key?(:common_labels)
          @timeseries = args[:timeseries] if args.key?(:timeseries)
        end
      end
      
      # The response of cloudmonitoring.timeseries.write
      class WriteTimeseriesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # cloudmonitoring#writeTimeseriesResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
    end
  end
end
