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
      
      # BucketOptions describes the bucket boundaries used to create a histogram for
      # the distribution. The buckets can be in a linear sequence, an exponential
      # sequence, or each bucket can be specified explicitly. BucketOptions does not
      # include the number of values in each bucket.A bucket has an inclusive lower
      # bound and exclusive upper bound for the values that are counted for that
      # bucket. The upper bound of a bucket must be strictly greater than the lower
      # bound. The sequence of N buckets for a distribution consists of an underflow
      # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
      # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
      # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
      # span the whole range of finite values: lower bound of the underflow bucket is -
      # infinity and the upper bound of the overflow bucket is +infinity. The finite
      # buckets are so-called because both bounds are finite.
      class BucketOptions
        include Google::Apis::Core::Hashable
      
        # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
        # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
        # boundsi  Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
        # least one element. If bounds has only one element, then there are no finite
        # buckets, and that single element is the common boundary of the overflow and
        # underflow buckets.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::MonitoringV3::Explicit]
        attr_accessor :explicit_buckets
      
        # Specifies an exponential sequence of buckets that have a width that is
        # proportional to the value of the lower bound. Each bucket represents a
        # constant relative uncertainty on a specific value in the bucket.There are
        # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
        # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).  Lower bound (1 <= i <
        # N): scale * (growth_factor ^ (i - 1)).
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::MonitoringV3::Exponential]
        attr_accessor :exponential_buckets
      
        # Specifies a linear sequence of buckets that all have the same width (except
        # overflow and underflow). Each bucket represents a constant absolute
        # uncertainty on the specific value in the bucket.There are num_finite_buckets +
        # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
        # 1): offset + (width * i).  Lower bound (1 <= i < N): offset + (width * (i - 1))
        # .
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
      
      # A collection of data points sent from a collectd-based plugin. See the
      # collectd documentation for more information.
      class CollectdPayload
        include Google::Apis::Core::Hashable
      
        # The end time of the interval.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The measurement metadata. Example: "process_id" -> 12345
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Google::Apis::MonitoringV3::TypedValue>]
        attr_accessor :metadata
      
        # The name of the plugin. Example: "disk".
        # Corresponds to the JSON property `plugin`
        # @return [String]
        attr_accessor :plugin
      
        # The instance name of the plugin Example: "hdcl".
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        # The start time of the interval.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The measurement type. Example: "memory".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The measurement type instance. Example: "used".
        # Corresponds to the JSON property `typeInstance`
        # @return [String]
        attr_accessor :type_instance
      
        # The measured values during this time interval. Each value must have a
        # different dataSourceName.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::MonitoringV3::CollectdValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @metadata = args[:metadata] if args.key?(:metadata)
          @plugin = args[:plugin] if args.key?(:plugin)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
          @type_instance = args[:type_instance] if args.key?(:type_instance)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Describes the error status for payloads that were not written.
      class CollectdPayloadError
        include Google::Apis::Core::Hashable
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). The error model is designed to be:
        # Simple to use and understand for most users
        # Flexible enough to meet unexpected needsOverviewThe Status message contains
        # three pieces of data: error code, error message, and error details. The error
        # code should be an enum value of google.rpc.Code, but it may accept additional
        # error codes if needed. The error message should be a developer-facing English
        # message that helps developers understand and resolve the error. If a localized
        # user-facing error message is needed, put the localized message in the error
        # details or localize it in the client. The optional error details may contain
        # arbitrary information about the error. There is a predefined set of error
        # detail types in the package google.rpc that can be used for common error
        # conditions.Language mappingThe Status message is the logical representation of
        # the error model, but it is not necessarily the actual wire format. When the
        # Status message is exposed in different client libraries and different wire
        # protocols, it can be mapped differently. For example, it will likely be mapped
        # to some exceptions in Java, but more likely mapped to some error codes in C.
        # Other usesThe error model and the Status message can be used in a variety of
        # environments, either with or without APIs, to provide a consistent developer
        # experience across different environments.Example uses of this error model
        # include:
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the Status in the normal response to indicate the partial errors.
        # Workflow errors. A typical workflow has multiple steps. Each step may have a
        # Status message for error reporting.
        # Batch operations. If a client uses batch request and batch response, the
        # Status message should be used directly inside batch response, one for each
        # error sub-response.
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the Status message.
        # Logging. If some API errors are stored in logs, the message Status could be
        # used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :error
      
        # The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Records the error status for values that were not written due to an error.
        # Failed payloads for which nothing is written will not include partial value
        # errors.
        # Corresponds to the JSON property `valueErrors`
        # @return [Array<Google::Apis::MonitoringV3::CollectdValueError>]
        attr_accessor :value_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @index = args[:index] if args.key?(:index)
          @value_errors = args[:value_errors] if args.key?(:value_errors)
        end
      end
      
      # A single data point from a collectd-based plugin.
      class CollectdValue
        include Google::Apis::Core::Hashable
      
        # The data source for the collectd value. For example there are two data sources
        # for network measurements: "rx" and "tx".
        # Corresponds to the JSON property `dataSourceName`
        # @return [String]
        attr_accessor :data_source_name
      
        # The type of measurement.
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_name = args[:data_source_name] if args.key?(:data_source_name)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes the error status for values that were not written.
      class CollectdValueError
        include Google::Apis::Core::Hashable
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). The error model is designed to be:
        # Simple to use and understand for most users
        # Flexible enough to meet unexpected needsOverviewThe Status message contains
        # three pieces of data: error code, error message, and error details. The error
        # code should be an enum value of google.rpc.Code, but it may accept additional
        # error codes if needed. The error message should be a developer-facing English
        # message that helps developers understand and resolve the error. If a localized
        # user-facing error message is needed, put the localized message in the error
        # details or localize it in the client. The optional error details may contain
        # arbitrary information about the error. There is a predefined set of error
        # detail types in the package google.rpc that can be used for common error
        # conditions.Language mappingThe Status message is the logical representation of
        # the error model, but it is not necessarily the actual wire format. When the
        # Status message is exposed in different client libraries and different wire
        # protocols, it can be mapped differently. For example, it will likely be mapped
        # to some exceptions in Java, but more likely mapped to some error codes in C.
        # Other usesThe error model and the Status message can be used in a variety of
        # environments, either with or without APIs, to provide a consistent developer
        # experience across different environments.Example uses of this error model
        # include:
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the Status in the normal response to indicate the partial errors.
        # Workflow errors. A typical workflow has multiple steps. Each step may have a
        # Status message for error reporting.
        # Batch operations. If a client uses batch request and batch response, the
        # Status message should be used directly inside batch response, one for each
        # error sub-response.
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the Status message.
        # Logging. If some API errors are stored in logs, the message Status could be
        # used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :error
      
        # The zero-based index in CollectdPayload.values within the parent
        # CreateCollectdTimeSeriesRequest.collectd_payloads.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @index = args[:index] if args.key?(:index)
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
      
        # The version of collectd that collected the data. Example: "5.3.0-192.el6".
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
        # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
        # zone":
        # ` "type": "gce_instance",
        # "labels": ` "instance_id": "12345678901234",
        # "zone": "us-central1-a" ``
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
      
      # The CreateCollectdTimeSeries response.
      class CreateCollectdTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # Records the error status for points that were not written due to an error.
        # Failed requests for which nothing is written will return an error response
        # instead.
        # Corresponds to the JSON property `payloadErrors`
        # @return [Array<Google::Apis::MonitoringV3::CollectdPayloadError>]
        attr_accessor :payload_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload_errors = args[:payload_errors] if args.key?(:payload_errors)
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
      
      # Distribution contains summary statistics for a population of values. It
      # optionally contains a histogram representing the distribution of those values
      # across a set of buckets.The summary statistics are the count, mean, sum of the
      # squared deviation from the mean, the minimum, and the maximum of the set of
      # population of values. The histogram is based on a sequence of buckets and
      # gives a count of values that fall into each bucket. The boundaries of the
      # buckets are given either explicitly or by formulas for buckets of fixed or
      # exponentially increasing widths.Although it is not forbidden, it is generally
      # a bad idea to include non-finite values (infinities or NaNs) in the population
      # of values, as this will render the mean and sum_of_squared_deviation fields
      # meaningless.
      class Distribution
        include Google::Apis::Core::Hashable
      
        # Required in the Stackdriver Monitoring API v3. The values for each bucket
        # specified in bucket_options. The sum of the values in bucketCounts must equal
        # the value in the count field of the Distribution object. The order of the
        # bucket counts follows the numbering schemes described for the three bucket
        # types. The underflow bucket has number 0; the finite buckets, if any, have
        # numbers 1 through N-2; and the overflow bucket has number N-1. The size of
        # bucket_counts must not be greater than N. If the size is less than N, then the
        # remaining buckets are assigned values of zero.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<Fixnum>]
        attr_accessor :bucket_counts
      
        # BucketOptions describes the bucket boundaries used to create a histogram for
        # the distribution. The buckets can be in a linear sequence, an exponential
        # sequence, or each bucket can be specified explicitly. BucketOptions does not
        # include the number of values in each bucket.A bucket has an inclusive lower
        # bound and exclusive upper bound for the values that are counted for that
        # bucket. The upper bound of a bucket must be strictly greater than the lower
        # bound. The sequence of N buckets for a distribution consists of an underflow
        # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
        # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
        # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
        # span the whole range of finite values: lower bound of the underflow bucket is -
        # infinity and the upper bound of the overflow bucket is +infinity. The finite
        # buckets are so-called because both bounds are finite.
        # Corresponds to the JSON property `bucketOptions`
        # @return [Google::Apis::MonitoringV3::BucketOptions]
        attr_accessor :bucket_options
      
        # The number of values in the population. Must be non-negative. This value must
        # equal the sum of the values in bucket_counts if a histogram is provided.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The arithmetic mean of the values in the population. If count is zero then
        # this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The range of the population values.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::MonitoringV3::Range]
        attr_accessor :range
      
        # The sum of squared deviations from the mean of the values in the population.
        # For values x_i this is:
        # Sum[i=1..n]((x_i - mean)^2)
        # Knuth, "The Art of Computer Programming", Vol. 2, page 323, 3rd edition
        # describes Welford's method for accumulating this sum in one pass.If count is
        # zero then this field must be zero.
        # Corresponds to the JSON property `sumOfSquaredDeviation`
        # @return [Float]
        attr_accessor :sum_of_squared_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_counts = args[:bucket_counts] if args.key?(:bucket_counts)
          @bucket_options = args[:bucket_options] if args.key?(:bucket_options)
          @count = args[:count] if args.key?(:count)
          @mean = args[:mean] if args.key?(:mean)
          @range = args[:range] if args.key?(:range)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
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
      
      # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
      # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
      # boundsi  Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
      # least one element. If bounds has only one element, then there are no finite
      # buckets, and that single element is the common boundary of the overflow and
      # underflow buckets.
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
      
      # Specifies an exponential sequence of buckets that have a width that is
      # proportional to the value of the lower bound. Each bucket represents a
      # constant relative uncertainty on a specific value in the bucket.There are
      # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
      # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).  Lower bound (1 <= i <
      # N): scale * (growth_factor ^ (i - 1)).
      class Exponential
        include Google::Apis::Core::Hashable
      
        # Must be greater than 1.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Must be greater than 0.
        # Corresponds to the JSON property `scale`
        # @return [Float]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @growth_factor = args[:growth_factor] if args.key?(:growth_factor)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # A single field of a message type.
      class Field
        include Google::Apis::Core::Hashable
      
        # The field cardinality.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # The string value of the default value of this field. Proto2 syntax only.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # The field JSON name.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # The field type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The field number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # The index of the field type in Type.oneofs, for message or enumeration types.
        # The first type has index 1; zero means the type is not in the list.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV3::Option>]
        attr_accessor :options
      
        # Whether to use alternative packed wire representation.
        # Corresponds to the JSON property `packed`
        # @return [Boolean]
        attr_accessor :packed
        alias_method :packed?, :packed
      
        # The field type URL, without the scheme, for message or enumeration types.
        # Example: "type.googleapis.com/google.protobuf.Timestamp".
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @options = args[:options] if args.key?(:options)
          @packed = args[:packed] if args.key?(:packed)
          @type_url = args[:type_url] if args.key?(:type_url)
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
      # instances with two user-defined tags: "environment" and "role". A parent group
      # has a filter, environment="production". A child of that parent group has a
      # filter, role="transcoder". The parent group contains all instances in the
      # production environment, regardless of their roles. The child group contains
      # instances that have the transcoder role and are in the production environment.
      # The monitored resources contained in a group can change at any moment,
      # depending on what resources exist and what filters are associated with the
      # group and its ancestors.
      class Group
        include Google::Apis::Core::Hashable
      
        # A user-assigned name for this group, used only for display purposes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The filter used to determine which monitored resources belong to this group.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # If true, the members of this group are considered to be a cluster. The system
        # can perform additional analysis on groups that are clusters.
        # Corresponds to the JSON property `isCluster`
        # @return [Boolean]
        attr_accessor :is_cluster
        alias_method :is_cluster?, :is_cluster
      
        # Output only. The name of this group. The format is "projects/`
        # project_id_or_number`/groups/`group_id`". When creating a group, this field is
        # ignored and a new name is created consisting of the project specified in the
        # call to CreateGroup and a unique `group_id` that is generated automatically.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the group's parent, if it has one. The format is "projects/`
        # project_id_or_number`/groups/`group_id`". For groups with no parent,
        # parentName is the empty string, "".
        # Corresponds to the JSON property `parentName`
        # @return [String]
        attr_accessor :parent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filter = args[:filter] if args.key?(:filter)
          @is_cluster = args[:is_cluster] if args.key?(:is_cluster)
          @name = args[:name] if args.key?(:name)
          @parent_name = args[:parent_name] if args.key?(:parent_name)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @key = args[:key] if args.key?(:key)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Specifies a linear sequence of buckets that all have the same width (except
      # overflow and underflow). Each bucket represents a constant absolute
      # uncertainty on the specific value in the bucket.There are num_finite_buckets +
      # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
      # 1): offset + (width * i).  Lower bound (1 <= i < N): offset + (width * (i - 1))
      # .
      class Linear
        include Google::Apis::Core::Hashable
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Lower bound of the first bucket.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # Must be greater than 0.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @offset = args[:offset] if args.key?(:offset)
          @width = args[:width] if args.key?(:width)
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
      
      # The ListMonitoredResourceDescriptors response.
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
      
      # The ListTimeSeries response.
      class ListTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as pageToken in
        # the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # One or more time series that match the filter included in the request.
        # Corresponds to the JSON property `timeSeries`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeries>]
        attr_accessor :time_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @time_series = args[:time_series] if args.key?(:time_series)
        end
      end
      
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
      
      # Defines a metric type and its schema. Once a metric descriptor is created,
      # deleting or altering it stops data collection and makes the metric type's
      # existing data unusable.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # A detailed description of the metric, which can be used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A concise name for the metric, which can be displayed in user interfaces. Use
        # sentence case without an ending period, for example "Request count".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
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
      
        # The resource name of the metric descriptor. Depending on the implementation,
        # the name typically includes: (1) the parent resource name that defines the
        # scope of the metric type or of its data; and (2) the metric's URL-encoded type,
        # which also appears in the type field of this descriptor. For example,
        # following is the resource name of a custom metric within the GCP project my-
        # project-id:
        # "projects/my-project-id/metricDescriptors/custom.googleapis.com%2Finvoice%
        # 2Fpaid%2Famount"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric type, including its DNS name prefix. The type is not URL-encoded.
        # All user-defined custom metric types have the DNS name custom.googleapis.com.
        # Metric types should use a natural hierarchical grouping. For example:
        # "custom.googleapis.com/invoice/paid/amount"
        # "appengine.googleapis.com/http/server/response_latencies"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
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
        # Expression = Component ` "." Component ` ` "/" Component ` ;
        # Component = [ PREFIX ] UNIT [ Annotation ]
        # | Annotation
        # | "1"
        # ;
        # Annotation = "`" NAME "`" ;
        # Notes:
        # Annotation is just a comment if it follows a UNIT and is  equivalent to 1 if
        # it is used alone. For examples,  `requests`/s == 1/s, By`transmitted`/s == By/
        # s.
        # NAME is a sequence of non-blank printable ASCII characters not  containing '`'
        # or '`'.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Whether the measurement is an integer, a floating-point number, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
      # zone":
      # ` "type": "gce_instance",
      # "labels": ` "instance_id": "12345678901234",
      # "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Compute Engine VM instances use the labels "
        # project_id", "instance_id", and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Compute
        # Engine VM instance is gce_instance.
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
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of "gce_instance" and specifies
      # the use of the labels "instance_id" and "zone" to identify particular VM
      # instances.Different APIs can support different monitored resource types. APIs
      # generally provide a list method that returns the monitored resource
      # descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, "Google Cloud SQL Database".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels "database_id" and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The resource name of the monitored resource descriptor: "projects/`
        # project_id`/monitoredResourceDescriptors/`type`" where `type` is the value of
        # the type field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format "monitoredResourceDescriptors/`
        # type`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The monitored resource type. For example, the type "
        # cloudsql_database" represents databases in Google Cloud SQL. The maximum
        # length of this value is 256 characters.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A protocol buffer option, which can be attached to a message, field,
      # enumeration, etc.
      class Option
        include Google::Apis::Core::Hashable
      
        # The option's name. For protobuf built-in options (options defined in
        # descriptor.proto), this is the short name. For example, "map_entry". For
        # custom options, it should be the fully-qualified name. For example, "google.
        # api.http".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The option's value packed in an Any message. If the value is a primitive, the
        # corresponding wrapper type defined in google/protobuf/wrappers.proto should be
        # used. If the value is an enum, it should be stored as an int32 value using the
        # google.protobuf.Int32Value type.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A single data point in a time series.
      class Point
        include Google::Apis::Core::Hashable
      
        # A time interval extending just after a start time through an end time. If the
        # start time is the same as the end time, then the interval represents a single
        # point in time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::MonitoringV3::TimeInterval]
        attr_accessor :interval
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @value = args[:value] if args.key?(:value)
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
      
      # SourceContext represents information about the source of a protobuf element,
      # like the file in which it is defined.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # The path-qualified name of the .proto file that contained the associated
        # protobuf element. For example: "google/protobuf/source_context.proto".
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
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). The error model is designed to be:
      # Simple to use and understand for most users
      # Flexible enough to meet unexpected needsOverviewThe Status message contains
      # three pieces of data: error code, error message, and error details. The error
      # code should be an enum value of google.rpc.Code, but it may accept additional
      # error codes if needed. The error message should be a developer-facing English
      # message that helps developers understand and resolve the error. If a localized
      # user-facing error message is needed, put the localized message in the error
      # details or localize it in the client. The optional error details may contain
      # arbitrary information about the error. There is a predefined set of error
      # detail types in the package google.rpc that can be used for common error
      # conditions.Language mappingThe Status message is the logical representation of
      # the error model, but it is not necessarily the actual wire format. When the
      # Status message is exposed in different client libraries and different wire
      # protocols, it can be mapped differently. For example, it will likely be mapped
      # to some exceptions in Java, but more likely mapped to some error codes in C.
      # Other usesThe error model and the Status message can be used in a variety of
      # environments, either with or without APIs, to provide a consistent developer
      # experience across different environments.Example uses of this error model
      # include:
      # Partial errors. If a service needs to return partial errors to the client, it
      # may embed the Status in the normal response to indicate the partial errors.
      # Workflow errors. A typical workflow has multiple steps. Each step may have a
      # Status message for error reporting.
      # Batch operations. If a client uses batch request and batch response, the
      # Status message should be used directly inside batch response, one for each
      # error sub-response.
      # Asynchronous operations. If an API call embeds asynchronous operation results
      # in its response, the status of those operations should be represented directly
      # using the Status message.
      # Logging. If some API errors are stored in logs, the message Status could be
      # used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
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
      
        # The data points of this time series. When listing time series, the order of
        # the points is specified by the list method.When creating a time series, this
        # field must contain exactly one point and the point's type must be the same as
        # the value type of the associated metric. If the associated metric's descriptor
        # must be auto-created, then the value type of the descriptor is determined by
        # the point's type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION.
        # Corresponds to the JSON property `points`
        # @return [Array<Google::Apis::MonitoringV3::Point>]
        attr_accessor :points
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
        # zone":
        # ` "type": "gce_instance",
        # "labels": ` "instance_id": "12345678901234",
        # "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :resource
      
        # The value type of the time series. When listing time series, this value type
        # might be different from the value type of the associated metric if this time
        # series is an alignment or reduction of other time series.When creating a time
        # series, this field is optional. If present, it must be the same as the type of
        # the data in the points field.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @points = args[:points] if args.key?(:points)
          @resource = args[:resource] if args.key?(:resource)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
        # The list of fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::MonitoringV3::Field>]
        attr_accessor :fields
      
        # The fully qualified message name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
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
      
        # Distribution contains summary statistics for a population of values. It
        # optionally contains a histogram representing the distribution of those values
        # across a set of buckets.The summary statistics are the count, mean, sum of the
        # squared deviation from the mean, the minimum, and the maximum of the set of
        # population of values. The histogram is based on a sequence of buckets and
        # gives a count of values that fall into each bucket. The boundaries of the
        # buckets are given either explicitly or by formulas for buckets of fixed or
        # exponentially increasing widths.Although it is not forbidden, it is generally
        # a bad idea to include non-finite values (infinities or NaNs) in the population
        # of values, as this will render the mean and sum_of_squared_deviation fields
        # meaningless.
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::MonitoringV3::Distribution]
        attr_accessor :distribution_value
      
        # A 64-bit double-precision floating-point number. Its magnitude is
        # approximately &plusmn;10<sup>&plusmn;300</sup> and it has 16 significant
        # digits of precision.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A 64-bit integer. Its range is approximately &plusmn;9.2x10<sup>18</sup>.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # A variable-length string value.
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
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
    end
  end
end
