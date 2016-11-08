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
    module MonitoringV3
      
      # A specific metric, identified by specifying values for all of the labels of a
      # MetricDescriptor.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The set of label values that uniquely identify this metric. All labels listed
        # in the MetricDescriptor must be assigned values.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # An existing metric type, see google.api.MetricDescriptor. For example, custom.
        # googleapis.com/invoice/paid/amount.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The ListGroupMembers response.
      class ListGroupMembersResponse
        include Google::Apis::Core::Hashable
      
        # A set of monitored resources in the group.
        # Corresponds to the JSON property `members`
        # @return [Array<Google::Apis::MonitoringV3::MonitoredResource>]
        attr_accessor :members
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of elements matching this request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A time interval extending just after a start time through an end time. If the
      # start time is the same as the end time, then the interval represents a single
      # point in time.
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # Required. The end of the time interval.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. The beginning of the time interval. The default value for the start
        # time is the end time. The start time must not be later than the end time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The description of a dynamic collection of monitored resources. Each group has
      # a filter that is matched against monitored resources and their associated
      # metadata. If a group's filter matches an available monitored resource, then
      # that resource is a member of that group. Groups can contain any number of
      # monitored resources, and each monitored resource can be a member of any number
      # of groups.Groups can be nested in parent-child hierarchies. The parentName
      # field identifies an optional parent for each group. If a group has a parent,
      # then the only monitored resources available to be matched by the group's
      # filter are the resources contained in the parent group. In other words, a
      # group contains the monitored resources that match its filter and the filters
      # of all the group's ancestors. A group without a parent can contain any
      # monitored resource.For example, consider an infrastructure running a set of
      # instances with two user-defined tags: &quot;environment&quot; and &quot;role&
      # quot;. A parent group has a filter, environment=&quot;production&quot;. A
      # child of that parent group has a filter, role=&quot;transcoder&quot;. The
      # parent group contains all instances in the production environment, regardless
      # of their roles. The child group contains instances that have the transcoder
      # role and are in the production environment.The monitored resources contained
      # in a group can change at any moment, depending on what resources exist and
      # what filters are associated with the group and its ancestors.
      class Group
        include Google::Apis::Core::Hashable
      
        # A user-assigned name for this group, used only for display purposes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the group's parent, if it has one. The format is &quot;projects/`
        # project_id_or_number`/groups/`group_id`&quot;. For groups with no parent,
        # parentName is the empty string, &quot;&quot;.
        # Corresponds to the JSON property `parentName`
        # @return [String]
        attr_accessor :parent_name
      
        # If true, the members of this group are considered to be a cluster. The system
        # can perform additional analysis on groups that are clusters.
        # Corresponds to the JSON property `isCluster`
        # @return [Boolean]
        attr_accessor :is_cluster
        alias_method :is_cluster?, :is_cluster
      
        # The filter used to determine which monitored resources belong to this group.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. The name of this group. The format is &quot;projects/`
        # project_id_or_number`/groups/`group_id`&quot;. When creating a group, this
        # field is ignored and a new name is created consisting of the project specified
        # in the call to CreateGroup and a unique `group_id` that is generated
        # automatically.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent_name = args[:parent_name] if args.key?(:parent_name)
          @is_cluster = args[:is_cluster] if args.key?(:is_cluster)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The ListTimeSeries response.
      class ListTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # One or more time series that match the filter included in the request.
        # Corresponds to the JSON property `timeSeries`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeries>]
        attr_accessor :time_series
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_series = args[:time_series] if args.key?(:time_series)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A single data point in a time series.
      class Point
        include Google::Apis::Core::Hashable
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        # A time interval extending just after a start time through an end time. If the
        # start time is the same as the end time, then the interval represents a single
        # point in time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::MonitoringV3::TimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # A single data point from a collectd-based plugin.
      class CollectdValue
        include Google::Apis::Core::Hashable
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        # The data source for the collectd value. For example there are two data sources
        # for network measurements: &quot;rx&quot; and &quot;tx&quot;.
        # Corresponds to the JSON property `dataSourceName`
        # @return [String]
        attr_accessor :data_source_name
      
        # The type of measurement.
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @data_source_name = args[:data_source_name] if args.key?(:data_source_name)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
        end
      end
      
      # A collection of data points that describes the time-varying values of a metric.
      # A time series is identified by a combination of a fully-specified monitored
      # resource and a fully-specified metric. This type is used for both listing and
      # creating time series.
      class TimeSeries
        include Google::Apis::Core::Hashable
      
        # A specific metric, identified by specifying values for all of the labels of a
        # MetricDescriptor.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::MonitoringV3::Metric]
        attr_accessor :metric
      
        # The data points of this time series. When listing time series, the order of
        # the points is specified by the list method.When creating a time series, this
        # field must contain exactly one point and the point's type must be the same as
        # the value type of the associated metric. If the associated metric's descriptor
        # must be auto-created, then the value type of the descriptor is determined by
        # the point's type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION.
        # Corresponds to the JSON property `points`
        # @return [Array<Google::Apis::MonitoringV3::Point>]
        attr_accessor :points
      
        # The value type of the time series. When listing time series, this value type
        # might be different from the value type of the associated metric if this time
        # series is an alignment or reduction of other time series.When creating a time
        # series, this field is optional. If present, it must be the same as the type of
        # the data in the points field.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for &quot;gce_instance&quot; has labels &quot;
        # instance_id&quot; and &quot;zone&quot;:
        # ` &quot;type&quot;: &quot;gce_instance&quot;,
        # &quot;labels&quot;: ` &quot;instance_id&quot;: &quot;12345678901234&quot;,
        # &quot;zone&quot;: &quot;us-central1-a&quot; ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :resource
      
        # The metric kind of the time series. When listing time series, this metric kind
        # might be different from the metric kind of the associated metric if this time
        # series is an alignment or reduction of other time series.When creating a time
        # series, this field is optional. If present, it must be the same as the metric
        # kind of the associated metric. If the associated metric's descriptor must be
        # auto-created, then this field specifies the metric kind of the new descriptor
        # and must be either GAUGE (the default) or CUMULATIVE.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @points = args[:points] if args.key?(:points)
          @value_type = args[:value_type] if args.key?(:value_type)
          @resource = args[:resource] if args.key?(:resource)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
        end
      end
      
      # Defines a metric type and its schema. Once a metric descriptor is created,
      # deleting or altering it stops data collection and makes the metric type's
      # existing data unusable.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # A detailed description of the metric, which can be used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The unit in which the metric value is reported. It is only applicable if the
        # value_type is INT64, DOUBLE, or DISTRIBUTION. The supported units are a subset
        # of The Unified Code for Units of Measure (http://unitsofmeasure.org/ucum.html)
        # standard:Basic units (UNIT)
        # bit bit
        # By byte
        # s second
        # min minute
        # h hour
        # d dayPrefixes (PREFIX)
        # k kilo (10**3)
        # M mega (10**6)
        # G giga (10**9)
        # T tera (10**12)
        # P peta (10**15)
        # E exa (10**18)
        # Z zetta (10**21)
        # Y yotta (10**24)
        # m milli (10**-3)
        # u micro (10**-6)
        # n nano (10**-9)
        # p pico (10**-12)
        # f femto (10**-15)
        # a atto (10**-18)
        # z zepto (10**-21)
        # y yocto (10**-24)
        # Ki kibi (2**10)
        # Mi mebi (2**20)
        # Gi gibi (2**30)
        # Ti tebi (2**40)GrammarThe grammar includes the dimensionless unit 1, such as 1/
        # s.The grammar also includes these connectors:
        # / division (as an infix operator, e.g. 1/s).
        # . multiplication (as an infix operator, e.g. GBy.d)The grammar for a unit is
        # as follows:
        # Expression = Component ` &quot;.&quot; Component ` ` &quot;/&quot; Component `
        # ;
        # Component = [ PREFIX ] UNIT [ Annotation ]
        # | Annotation
        # | &quot;1&quot;
        # ;
        # Annotation = &quot;`&quot; NAME &quot;`&quot; ;
        # Notes:
        # Annotation is just a comment if it follows a UNIT and is  equivalent to 1 if
        # it is used alone. For examples,  `requests`/s == 1/s, By`transmitted`/s == By/
        # s.
        # NAME is a sequence of non-blank printable ASCII characters not  containing '`'
        # or '`'.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The set of labels that can be used to describe a specific instance of this
        # metric type. For example, the appengine.googleapis.com/http/server/
        # response_latencies metric type has a label for the HTTP response code,
        # response_code, so you can look at latencies for successful responses or just
        # for responses that failed.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # Whether the metric records instantaneous values, changes to a value, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # Whether the measurement is an integer, a floating-point number, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # A concise name for the metric, which can be displayed in user interfaces. Use
        # sentence case without an ending period, for example "Request count".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the metric descriptor. Depending on the implementation,
        # the name typically includes: (1) the parent resource name that defines the
        # scope of the metric type or of its data; and (2) the metric's URL-encoded type,
        # which also appears in the type field of this descriptor. For example,
        # following is the resource name of a custom metric within the GCP project
        # 123456789:
        # &quot;projects/123456789/metricDescriptors/custom.googleapis.com%2Finvoice%
        # 2Fpaid%2Famount&quot;
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric type, including its DNS name prefix. The type is not URL-encoded.
        # All user-defined metric types have the DNS name custom.googleapis.com. Metric
        # types should use a natural hierarchical grouping. For example:
        # &quot;custom.googleapis.com/invoice/paid/amount&quot;
        # &quot;appengine.googleapis.com/http/server/response_latencies&quot;
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @unit = args[:unit] if args.key?(:unit)
          @labels = args[:labels] if args.key?(:labels)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @value_type = args[:value_type] if args.key?(:value_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Specify a sequence of buckets that have a width that is proportional to the
      # value of the lower bound. Each bucket represents a constant relative
      # uncertainty on a specific value in the bucket.Defines num_finite_buckets + 2 (=
      # N) buckets with these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1)
      # : scale * (growth_factor ^ i).  Lower bound (1 &lt;= i &lt; N): scale * (
      # growth_factor ^ (i - 1)).
      class Exponential
        include Google::Apis::Core::Hashable
      
        # Must be greater than 1.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # Must be greater than 0.
        # Corresponds to the JSON property `scale`
        # @return [Float]
        attr_accessor :scale
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @growth_factor = args[:growth_factor] if args.key?(:growth_factor)
          @scale = args[:scale] if args.key?(:scale)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
        end
      end
      
      # A set of buckets with arbitrary widths.Defines size(bounds) + 1 (= N) buckets
      # with these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1): boundsi
      # Lower bound (1 &lt;= i &lt; N); boundsi - 1There must be at least one element
      # in bounds. If bounds has only one element, there are no finite buckets, and
      # that single element is the common boundary of the overflow and underflow
      # buckets.
      class Explicit
        include Google::Apis::Core::Hashable
      
        # The values must be monotonically increasing.
        # Corresponds to the JSON property `bounds`
        # @return [Array<Float>]
        attr_accessor :bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounds = args[:bounds] if args.key?(:bounds)
        end
      end
      
      # Specify a sequence of buckets that all have the same width (except overflow
      # and underflow). Each bucket represents a constant absolute uncertainty on the
      # specific value in the bucket.Defines num_finite_buckets + 2 (= N) buckets with
      # these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1): offset + (
      # width * i).  Lower bound (1 &lt;= i &lt; N): offset + (width * (i - 1)).
      class Linear
        include Google::Apis::Core::Hashable
      
        # Must be greater than 0.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        # Lower bound of the first bucket.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @width = args[:width] if args.key?(:width)
          @offset = args[:offset] if args.key?(:offset)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
        end
      end
      
      # A collection of data points sent from a collectd-based plugin. See the
      # collectd documentation for more information.
      class CollectdPayload
        include Google::Apis::Core::Hashable
      
        # The end time of the interval.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The measurement metadata. Example: &quot;process_id&quot; -&gt; 12345
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Google::Apis::MonitoringV3::TypedValue>]
        attr_accessor :metadata
      
        # The measured values during this time interval. Each value must have a
        # different dataSourceName.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::MonitoringV3::CollectdValue>]
        attr_accessor :values
      
        # The instance name of the plugin Example: &quot;hdcl&quot;.
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        # The start time of the interval.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The measurement type instance. Example: &quot;used&quot;.
        # Corresponds to the JSON property `typeInstance`
        # @return [String]
        attr_accessor :type_instance
      
        # The measurement type. Example: &quot;memory&quot;.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The name of the plugin. Example: &quot;disk&quot;.
        # Corresponds to the JSON property `plugin`
        # @return [String]
        attr_accessor :plugin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @metadata = args[:metadata] if args.key?(:metadata)
          @values = args[:values] if args.key?(:values)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type_instance = args[:type_instance] if args.key?(:type_instance)
          @type = args[:type] if args.key?(:type)
          @plugin = args[:plugin] if args.key?(:plugin)
        end
      end
      
      # The ListMetricDescriptors response.
      class ListMetricDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # The metric descriptors that are available to the project and that match the
        # value of filter, if present.
        # Corresponds to the JSON property `metricDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::MetricDescriptor>]
        attr_accessor :metric_descriptors
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_descriptors = args[:metric_descriptors] if args.key?(:metric_descriptors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Distribution contains summary statistics for a population of values and,
      # optionally, a histogram representing the distribution of those values across a
      # specified set of histogram buckets.The summary statistics are the count, mean,
      # sum of the squared deviation from the mean, the minimum, and the maximum of
      # the set of population of values.The histogram is based on a sequence of
      # buckets and gives a count of values that fall into each bucket. The boundaries
      # of the buckets are given either explicitly or by specifying parameters for a
      # method of computing them (buckets of fixed width or buckets of exponentially
      # increasing width).Although it is not forbidden, it is generally a bad idea to
      # include non-finite values (infinities or NaNs) in the population of values, as
      # this will render the mean and sum_of_squared_deviation fields meaningless.
      class Distribution
        include Google::Apis::Core::Hashable
      
        # If bucket_options is given, then the sum of the values in bucket_counts must
        # equal the value in count. If bucket_options is not given, no bucket_counts
        # fields may be given.Bucket counts are given in order under the numbering
        # scheme described above (the underflow bucket has number 0; the finite buckets,
        # if any, have numbers 1 through N-2; the overflow bucket has number N-1).The
        # size of bucket_counts must be no greater than N as defined in bucket_options.
        # Any suffix of trailing zero bucket_count fields may be omitted.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<String>]
        attr_accessor :bucket_counts
      
        # A Distribution may optionally contain a histogram of the values in the
        # population. The histogram is given in bucket_counts as counts of values that
        # fall into one of a sequence of non-overlapping buckets. The sequence of
        # buckets is described by bucket_options.A bucket specifies an inclusive lower
        # bound and exclusive upper bound for the values that are counted for that
        # bucket. The upper bound of a bucket is strictly greater than the lower bound.
        # The sequence of N buckets for a Distribution consists of an underflow bucket (
        # number 0), zero or more finite buckets (number 1 through N - 2) and an
        # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
        # bucket i (i &gt; 0) is the same as the upper bound of bucket i - 1. The
        # buckets span the whole range of finite values: lower bound of the underflow
        # bucket is -infinity and the upper bound of the overflow bucket is +infinity.
        # The finite buckets are so-called because both bounds are finite.BucketOptions
        # describes bucket boundaries in one of three ways. Two describe the boundaries
        # by giving parameters for a formula to generate boundaries and one gives the
        # bucket boundaries explicitly.If bucket_options is not given, then no
        # bucket_counts may be given.
        # Corresponds to the JSON property `bucketOptions`
        # @return [Google::Apis::MonitoringV3::BucketOptions]
        attr_accessor :bucket_options
      
        # The number of values in the population. Must be non-negative.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        # The sum of squared deviations from the mean of the values in the population.
        # For values x_i this is:
        # Sum[i=1..n]((x_i - mean)^2)
        # Knuth, "The Art of Computer Programming", Vol. 2, page 323, 3rd edition
        # describes Welford's method for accumulating this sum in one pass.If count is
        # zero then this field must be zero.
        # Corresponds to the JSON property `sumOfSquaredDeviation`
        # @return [Float]
        attr_accessor :sum_of_squared_deviation
      
        # The arithmetic mean of the values in the population. If count is zero then
        # this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The range of the population values.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::MonitoringV3::Range]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_counts = args[:bucket_counts] if args.key?(:bucket_counts)
          @bucket_options = args[:bucket_options] if args.key?(:bucket_options)
          @count = args[:count] if args.key?(:count)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
          @mean = args[:mean] if args.key?(:mean)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for &quot;gce_instance&quot; has labels &quot;
      # instance_id&quot; and &quot;zone&quot;:
      # ` &quot;type&quot;: &quot;gce_instance&quot;,
      # &quot;labels&quot;: ` &quot;instance_id&quot;: &quot;12345678901234&quot;,
      # &quot;zone&quot;: &quot;us-central1-a&quot; ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Cloud SQL databases use the labels &quot;
        # database_id&quot; and &quot;zone&quot;.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Cloud SQL
        # database is &quot;cloudsql_database&quot;.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @value_type = args[:value_type] if args.key?(:value_type)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of &quot;gce_instance&quot; and
      # specifies the use of the labels &quot;instance_id&quot; and &quot;zone&quot;
      # to identify particular VM instances.Different APIs can support different
      # monitored resource types. APIs generally provide a list method that returns
      # the monitored resource descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, &quot;Google Cloud SQL Database&
        # quot;.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels &quot;database_id&quot; and &quot;zone&
        # quot;.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # Required. The monitored resource type. For example, the type &quot;
        # cloudsql_database&quot; represents databases in Google Cloud SQL. The maximum
        # length of this value is 256 characters.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. The resource name of the monitored resource descriptor: &quot;
        # projects/`project_id`/monitoredResourceDescriptors/`type`&quot; where `type`
        # is the value of the type field in this object and `project_id` is a project ID
        # that provides API-specific context for accessing the type. APIs that do not
        # use project information can use the resource name format &quot;
        # monitoredResourceDescriptors/`type`&quot;.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A single strongly-typed value.
      class TypedValue
        include Google::Apis::Core::Hashable
      
        # A Boolean value: true or false.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A variable-length string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A 64-bit integer. Its range is approximately &plusmn;9.2x10<sup>18</sup>.
        # Corresponds to the JSON property `int64Value`
        # @return [String]
        attr_accessor :int64_value
      
        # A 64-bit double-precision floating-point number. Its magnitude is
        # approximately &plusmn;10<sup>&plusmn;300</sup> and it has 16 significant
        # digits of precision.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Distribution contains summary statistics for a population of values and,
        # optionally, a histogram representing the distribution of those values across a
        # specified set of histogram buckets.The summary statistics are the count, mean,
        # sum of the squared deviation from the mean, the minimum, and the maximum of
        # the set of population of values.The histogram is based on a sequence of
        # buckets and gives a count of values that fall into each bucket. The boundaries
        # of the buckets are given either explicitly or by specifying parameters for a
        # method of computing them (buckets of fixed width or buckets of exponentially
        # increasing width).Although it is not forbidden, it is generally a bad idea to
        # include non-finite values (infinities or NaNs) in the population of values, as
        # this will render the mean and sum_of_squared_deviation fields meaningless.
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::MonitoringV3::Distribution]
        attr_accessor :distribution_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @distribution_value = args[:distribution_value] if args.key?(:distribution_value)
        end
      end
      
      # The ListMonitoredResourcDescriptors response.
      class ListMonitoredResourceDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The monitored resource descriptors that are available to this project and that
        # match filter, if present.
        # Corresponds to the JSON property `resourceDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::MonitoredResourceDescriptor>]
        attr_accessor :resource_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_descriptors = args[:resource_descriptors] if args.key?(:resource_descriptors)
        end
      end
      
      # A single field of a message type.
      class Field
        include Google::Apis::Core::Hashable
      
        # The string value of the default value of this field. Proto2 syntax only.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # The field JSON name.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV3::Option>]
        attr_accessor :options
      
        # The index of the field type in Type.oneofs, for message or enumeration types.
        # The first type has index 1; zero means the type is not in the list.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # The field cardinality.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # The field type URL, without the scheme, for message or enumeration types.
        # Example: &quot;type.googleapis.com/google.protobuf.Timestamp&quot;.
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether to use alternative packed wire representation.
        # Corresponds to the JSON property `packed`
        # @return [Boolean]
        attr_accessor :packed
        alias_method :packed?, :packed
      
        # The field number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # The field type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @options = args[:options] if args.key?(:options)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @type_url = args[:type_url] if args.key?(:type_url)
          @name = args[:name] if args.key?(:name)
          @packed = args[:packed] if args.key?(:packed)
          @number = args[:number] if args.key?(:number)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A protocol buffer option, which can be attached to a message, field,
      # enumeration, etc.
      class Option
        include Google::Apis::Core::Hashable
      
        # The option's value. For example, &quot;com.google.protobuf&quot;.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        # The option's name. For example, &quot;java_package&quot;.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for Empty is empty JSON object ``.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SourceContext represents information about the source of a protobuf element,
      # like the file in which it is defined.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # The path-qualified name of the .proto file that contained the associated
        # protobuf element. For example: &quot;google/protobuf/source_context.proto&quot;
        # .
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_name = args[:file_name] if args.key?(:file_name)
        end
      end
      
      # The range of the population values.
      class Range
        include Google::Apis::Core::Hashable
      
        # The maximum of the population values.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # The minimum of the population values.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # The CreateTimeSeries request.
      class CreateTimeSeriesRequest
        include Google::Apis::Core::Hashable
      
        # The new data to be added to a list of time series. Adds at most one data point
        # to each of several time series. The new data point must be more recent than
        # any other point in its time series. Each TimeSeries value must fully specify a
        # unique time series by supplying all label values for the metric and the
        # monitored resource.
        # Corresponds to the JSON property `timeSeries`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeries>]
        attr_accessor :time_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_series = args[:time_series] if args.key?(:time_series)
        end
      end
      
      # A Distribution may optionally contain a histogram of the values in the
      # population. The histogram is given in bucket_counts as counts of values that
      # fall into one of a sequence of non-overlapping buckets. The sequence of
      # buckets is described by bucket_options.A bucket specifies an inclusive lower
      # bound and exclusive upper bound for the values that are counted for that
      # bucket. The upper bound of a bucket is strictly greater than the lower bound.
      # The sequence of N buckets for a Distribution consists of an underflow bucket (
      # number 0), zero or more finite buckets (number 1 through N - 2) and an
      # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
      # bucket i (i &gt; 0) is the same as the upper bound of bucket i - 1. The
      # buckets span the whole range of finite values: lower bound of the underflow
      # bucket is -infinity and the upper bound of the overflow bucket is +infinity.
      # The finite buckets are so-called because both bounds are finite.BucketOptions
      # describes bucket boundaries in one of three ways. Two describe the boundaries
      # by giving parameters for a formula to generate boundaries and one gives the
      # bucket boundaries explicitly.If bucket_options is not given, then no
      # bucket_counts may be given.
      class BucketOptions
        include Google::Apis::Core::Hashable
      
        # A set of buckets with arbitrary widths.Defines size(bounds) + 1 (= N) buckets
        # with these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1): boundsi
        # Lower bound (1 &lt;= i &lt; N); boundsi - 1There must be at least one element
        # in bounds. If bounds has only one element, there are no finite buckets, and
        # that single element is the common boundary of the overflow and underflow
        # buckets.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::MonitoringV3::Explicit]
        attr_accessor :explicit_buckets
      
        # Specify a sequence of buckets that have a width that is proportional to the
        # value of the lower bound. Each bucket represents a constant relative
        # uncertainty on a specific value in the bucket.Defines num_finite_buckets + 2 (=
        # N) buckets with these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1)
        # : scale * (growth_factor ^ i).  Lower bound (1 &lt;= i &lt; N): scale * (
        # growth_factor ^ (i - 1)).
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::MonitoringV3::Exponential]
        attr_accessor :exponential_buckets
      
        # Specify a sequence of buckets that all have the same width (except overflow
        # and underflow). Each bucket represents a constant absolute uncertainty on the
        # specific value in the bucket.Defines num_finite_buckets + 2 (= N) buckets with
        # these boundaries for bucket i:Upper bound (0 &lt;= i &lt; N-1): offset + (
        # width * i).  Lower bound (1 &lt;= i &lt; N): offset + (width * (i - 1)).
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::MonitoringV3::Linear]
        attr_accessor :linear_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
        end
      end
      
      # The CreateCollectdTimeSeries request.
      class CreateCollectdTimeSeriesRequest
        include Google::Apis::Core::Hashable
      
        # The collectd payloads representing the time series data. You must not include
        # more than a single point for each time series, so no two payloads can have the
        # same values for all of the fields plugin, plugin_instance, type, and
        # type_instance.
        # Corresponds to the JSON property `collectdPayloads`
        # @return [Array<Google::Apis::MonitoringV3::CollectdPayload>]
        attr_accessor :collectd_payloads
      
        # The version of collectd that collected the data. Example: &quot;5.3.0-192.el6&
        # quot;.
        # Corresponds to the JSON property `collectdVersion`
        # @return [String]
        attr_accessor :collectd_version
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for &quot;gce_instance&quot; has labels &quot;
        # instance_id&quot; and &quot;zone&quot;:
        # ` &quot;type&quot;: &quot;gce_instance&quot;,
        # &quot;labels&quot;: ` &quot;instance_id&quot;: &quot;12345678901234&quot;,
        # &quot;zone&quot;: &quot;us-central1-a&quot; ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collectd_payloads = args[:collectd_payloads] if args.key?(:collectd_payloads)
          @collectd_version = args[:collectd_version] if args.key?(:collectd_version)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
        # The list of types appearing in oneof definitions in this type.
        # Corresponds to the JSON property `oneofs`
        # @return [Array<String>]
        attr_accessor :oneofs
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV3::Option>]
        attr_accessor :options
      
        # SourceContext represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::MonitoringV3::SourceContext]
        attr_accessor :source_context
      
        # The list of fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::MonitoringV3::Field>]
        attr_accessor :fields
      
        # The fully qualified message name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # The ListGroups response.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The groups that match the specified filters.
        # Corresponds to the JSON property `group`
        # @return [Array<Google::Apis::MonitoringV3::Group>]
        attr_accessor :group
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
