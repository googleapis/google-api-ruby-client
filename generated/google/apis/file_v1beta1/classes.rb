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
    module FileV1beta1
      
      # The allowed types for [VALUE] in a `[KEY]:[VALUE]` attribute.
      class AttributeValue
        include Google::Apis::Core::Hashable
      
        # A Boolean value represented by `true` or `false`.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A 64-bit signed integer.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Represents a string that might be shortened to a specified length.
        # Corresponds to the JSON property `stringValue`
        # @return [Google::Apis::FileV1beta1::TruncatableString]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A set of attributes, each in the format `[KEY]:[VALUE]`.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # The set of attributes. Each attribute's key can be up to 128 bytes
        # long. The value can be a string up to 256 bytes, a signed 64-bit integer,
        # or the Boolean values `true` and `false`. For example:
        # "/instance_id": "my-instance"
        # "/http/user_agent": ""
        # "/http/request_bytes": 300
        # "abc.com/myattribute": true
        # Corresponds to the JSON property `attributeMap`
        # @return [Hash<String,Google::Apis::FileV1beta1::AttributeValue>]
        attr_accessor :attribute_map
      
        # The number of attributes that were discarded. Attributes can be discarded
        # because their keys are too long or because there are too many attributes.
        # If this value is 0 then all attributes are valid.
        # Corresponds to the JSON property `droppedAttributesCount`
        # @return [Fixnum]
        attr_accessor :dropped_attributes_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_map = args[:attribute_map] if args.key?(:attribute_map)
          @dropped_attributes_count = args[:dropped_attributes_count] if args.key?(:dropped_attributes_count)
        end
      end
      
      # Message for reporting billing requests through Eventstream.
      class BillingView
        include Google::Apis::Core::Hashable
      
        # Billing requests to be reported for an [Eventstream
        # resource](http://google3/cloud/eventstream/v2/resource_event.proto).
        # Each request contains billing operations to be reported under a service
        # name. See go/billing-view-construction for documentation on constructing
        # billing view report requests.
        # Corresponds to the JSON property `reportRequests`
        # @return [Array<Google::Apis::FileV1beta1::ReportRequest>]
        attr_accessor :report_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_requests = args[:report_requests] if args.key?(:report_requests)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Distribution represents a frequency distribution of double-valued sample
      # points. It contains the size of the population of sample points plus
      # additional optional information:
      # - the arithmetic mean of the samples
      # - the minimum and maximum of the samples
      # - the sum-squared-deviation of the samples, used to compute variance
      # - a histogram of the values of the sample points
      class Distribution
        include Google::Apis::Core::Hashable
      
        # The number of samples in each histogram bucket. `bucket_counts` are
        # optional. If present, they must sum to the `count` value.
        # The buckets are defined below in `bucket_option`. There are N buckets.
        # `bucket_counts[0]` is the number of samples in the underflow bucket.
        # `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples
        # in each of the finite buckets. And `bucket_counts[N] is the number
        # of samples in the overflow bucket. See the comments of `bucket_option`
        # below for more details.
        # Any suffix of trailing zeros may be omitted.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<Fixnum>]
        attr_accessor :bucket_counts
      
        # The total number of samples in the distribution. Must be >= 0.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Example points. Must be in increasing order of `value` field.
        # Corresponds to the JSON property `exemplars`
        # @return [Array<Google::Apis::FileV1beta1::Exemplar>]
        attr_accessor :exemplars
      
        # Describing buckets with arbitrary user-provided width.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::FileV1beta1::ExplicitBuckets]
        attr_accessor :explicit_buckets
      
        # Describing buckets with exponentially growing width.
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::FileV1beta1::ExponentialBuckets]
        attr_accessor :exponential_buckets
      
        # Describing buckets with constant width.
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::FileV1beta1::LinearBuckets]
        attr_accessor :linear_buckets
      
        # The maximum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # The arithmetic mean of the samples in the distribution. If `count` is
        # zero then this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The minimum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # The sum of squared deviations from the mean:
        # Sum[i=1..count]((x_i - mean)^2)
        # where each x_i is a sample values. If `count` is zero then this field
        # must be zero, otherwise validation of the request fails.
        # Corresponds to the JSON property `sumOfSquaredDeviation`
        # @return [Float]
        attr_accessor :sum_of_squared_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_counts = args[:bucket_counts] if args.key?(:bucket_counts)
          @count = args[:count] if args.key?(:count)
          @exemplars = args[:exemplars] if args.key?(:exemplars)
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
          @maximum = args[:maximum] if args.key?(:maximum)
          @mean = args[:mean] if args.key?(:mean)
          @minimum = args[:minimum] if args.key?(:minimum)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Exemplars are example points that may be used to annotate aggregated
      # distribution values. They are metadata that gives information about a
      # particular value added to a Distribution bucket, such as a trace ID that
      # was active when a value was added. They may contain further information,
      # such as a example values and timestamps, origin, etc.
      class Exemplar
        include Google::Apis::Core::Hashable
      
        # Contextual information about the example value. Examples are:
        # Trace: type.googleapis.com/google.monitoring.v3.SpanContext
        # Literal string: type.googleapis.com/google.protobuf.StringValue
        # Labels dropped during aggregation:
        # type.googleapis.com/google.monitoring.v3.DroppedLabels
        # There may be only a single attachment of any given message type in a
        # single exemplar, and this is enforced by the system.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :attachments
      
        # The observation (sampling) time of the above value.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Value of the exemplar point. This value determines to which bucket the
        # exemplar belongs.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describing buckets with arbitrary user-provided width.
      class ExplicitBuckets
        include Google::Apis::Core::Hashable
      
        # 'bound' is a list of strictly increasing boundaries between
        # buckets. Note that a list of length N-1 defines N buckets because
        # of fenceposting. See comments on `bucket_options` for details.
        # The i'th finite bucket covers the interval
        # [bound[i-1], bound[i])
        # where i ranges from 1 to bound_size() - 1. Note that there are no
        # finite buckets at all if 'bound' only contains a single element; in
        # that special case the single bound defines the boundary between the
        # underflow and overflow buckets.
        # bucket number                   lower bound    upper bound
        # i == 0 (underflow)              -inf           bound[i]
        # 0 < i < bound_size()            bound[i-1]     bound[i]
        # i == bound_size() (overflow)    bound[i-1]     +inf
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
      
      # Describing buckets with exponentially growing width.
      class ExponentialBuckets
        include Google::Apis::Core::Hashable
      
        # The i'th exponential bucket covers the interval
        # [scale * growth_factor^(i-1), scale * growth_factor^i)
        # where i ranges from 1 to num_finite_buckets inclusive.
        # Must be larger than 1.0.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # The number of finite buckets. With the underflow and overflow buckets,
        # the total number of buckets is `num_finite_buckets` + 2.
        # See comments on `bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th exponential bucket covers the interval
        # [scale * growth_factor^(i-1), scale * growth_factor^i)
        # where i ranges from 1 to num_finite_buckets inclusive.
        # Must be > 0.
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
      
      # File share configuration for the instance.
      class FileShareConfig
        include Google::Apis::Core::Hashable
      
        # File share capacity in gigabytes (GB).
        # Cloud Filestore defines 1 GB as 1024^3 bytes.
        # Corresponds to the JSON property `capacityGb`
        # @return [Fixnum]
        attr_accessor :capacity_gb
      
        # The name of the file share (must be 16 characters or less).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_gb = args[:capacity_gb] if args.key?(:capacity_gb)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents information regarding an operation.
      class GoogleApiServicecontrolV1Operation
        include Google::Apis::Core::Hashable
      
        # Identity of the consumer who is using the service.
        # This field should be filled in for the operations initiated by a
        # consumer, but not for service-initiated operations that are
        # not related to a specific consumer.
        # - This can be in one of the following formats:
        # - project:PROJECT_ID,
        # - project`_`number:PROJECT_NUMBER,
        # - projects/PROJECT_ID or PROJECT_NUMBER,
        # - folders/FOLDER_NUMBER,
        # - organizations/ORGANIZATION_NUMBER,
        # - api`_`key:API_KEY.
        # Corresponds to the JSON property `consumerId`
        # @return [String]
        attr_accessor :consumer_id
      
        # End time of the operation.
        # Required when the operation is used in ServiceController.Report,
        # but optional when the operation is used in ServiceController.Check.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # DO NOT USE. This is an experimental field.
        # Corresponds to the JSON property `importance`
        # @return [String]
        attr_accessor :importance
      
        # Labels describing the operation. Only the following labels are allowed:
        # - Labels describing monitored resources as defined in
        # the service configuration.
        # - Default labels of metric values. When specified, labels defined in the
        # metric value override these default.
        # - The following labels defined by Google Cloud Platform:
        # - `cloud.googleapis.com/location` describing the location where the
        # operation happened,
        # - `servicecontrol.googleapis.com/user_agent` describing the user agent
        # of the API request,
        # - `servicecontrol.googleapis.com/service_agent` describing the service
        # used to handle the API request (e.g. ESP),
        # - `servicecontrol.googleapis.com/platform` describing the platform
        # where the API is served, such as App Engine, Compute Engine, or
        # Kubernetes Engine.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents information to be logged.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::FileV1beta1::LogEntry>]
        attr_accessor :log_entries
      
        # Represents information about this operation. Each MetricValueSet
        # corresponds to a metric defined in the service configuration.
        # The data type used in the MetricValueSet must agree with
        # the data type specified in the metric definition.
        # Within a single operation, it is not allowed to have more than one
        # MetricValue instances that have the same metric names and identical
        # label value combinations. If a request has such duplicated MetricValue
        # instances, the entire request is rejected with
        # an invalid argument error.
        # Corresponds to the JSON property `metricValueSets`
        # @return [Array<Google::Apis::FileV1beta1::MetricValueSet>]
        attr_accessor :metric_value_sets
      
        # Identity of the operation. This must be unique within the scope of the
        # service that generated the operation. If the service calls
        # Check() and Report() on the same operation, the two calls should carry
        # the same id.
        # UUID version 4 is recommended, though not required.
        # In scenarios where an operation is computed from existing information
        # and an idempotent id is desirable for deduplication purpose, UUID version 5
        # is recommended. See RFC 4122 for details.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Fully qualified name of the operation. Reserved for future use.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Represents the properties needed for quota operations.
        # Corresponds to the JSON property `quotaProperties`
        # @return [Google::Apis::FileV1beta1::QuotaProperties]
        attr_accessor :quota_properties
      
        # The resources that are involved in the operation.
        # The maximum supported number of entries in this field is 100.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::FileV1beta1::ResourceInfo>]
        attr_accessor :resources
      
        # Required. Start time of the operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Unimplemented. A list of Cloud Trace spans. The span names shall contain
        # the id of the destination project which can be either the produce or the
        # consumer project.
        # Corresponds to the JSON property `traceSpans`
        # @return [Array<Google::Apis::FileV1beta1::TraceSpan>]
        attr_accessor :trace_spans
      
        # User defined labels for the resource that this operation is associated
        # with. Only a combination of 1000 user labels per consumer project are
        # allowed.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_id = args[:consumer_id] if args.key?(:consumer_id)
          @end_time = args[:end_time] if args.key?(:end_time)
          @importance = args[:importance] if args.key?(:importance)
          @labels = args[:labels] if args.key?(:labels)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @metric_value_sets = args[:metric_value_sets] if args.key?(:metric_value_sets)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @quota_properties = args[:quota_properties] if args.key?(:quota_properties)
          @resources = args[:resources] if args.key?(:resources)
          @start_time = args[:start_time] if args.key?(:start_time)
          @trace_spans = args[:trace_spans] if args.key?(:trace_spans)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # 
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        include Google::Apis::Core::Hashable
      
        # consumer_defined_name is the name that is set by the consumer. On the other
        # hand Name field represents system-assigned id of an instance so consumers
        # are not necessarily aware of it.
        # consumer_defined_name is used for notification/UI purposes for consumer to
        # recognize their instances.
        # Corresponds to the JSON property `consumerDefinedName`
        # @return [String]
        attr_accessor :consumer_defined_name
      
        # Output only. Timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource labels to represent user provided metadata. Each label
        # is a key-value pair, where both the key and the value are arbitrary strings
        # provided by the user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The MaintenancePolicies that have been attached to the instance.
        # The key must be of the type name of the oneof policy name defined in
        # MaintenancePolicy, and the referenced policy must define the same policy
        # type. For complete details of MaintenancePolicy, please refer to
        # go/cloud-saas-mw-ug.
        # Corresponds to the JSON property `maintenancePolicyNames`
        # @return [Hash<String,String>]
        attr_accessor :maintenance_policy_names
      
        # The MaintenanceSchedule contains the scheduling information of published
        # maintenance schedule.
        # Corresponds to the JSON property `maintenanceSchedules`
        # @return [Hash<String,Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>]
        attr_accessor :maintenance_schedules
      
        # Maintenance settings associated with instance. Allows service producers and
        # end users to assign settings that controls maintenance on this instance.
        # Corresponds to the JSON property `maintenanceSettings`
        # @return [Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings]
        attr_accessor :maintenance_settings
      
        # Unique name of the resource. It uses the form:
        # `projects/`project_id`/locations/`location_id`/instances/`instance_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Custom string attributes used primarily to expose
        # producer-specific information in monitoring dashboards.
        # See go/get-instance-metadata.
        # Corresponds to the JSON property `producerMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_metadata
      
        # Output only. The list of data plane resources provisioned for this
        # instance, e.g. compute VMs. See go/get-instance-metadata.
        # Corresponds to the JSON property `provisionedResources`
        # @return [Array<Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>]
        attr_accessor :provisioned_resources
      
        # Link to the SLM instance template. Only populated when updating SLM
        # instances via SSA's Actuation service adaptor.
        # Service producers with custom control plane (e.g. Cloud SQL) doesn't
        # need to populate this field. Instead they should use software_versions.
        # Corresponds to the JSON property `slmInstanceTemplate`
        # @return [String]
        attr_accessor :slm_instance_template
      
        # SloMetadata contains resources required for proper SLO classification of the
        # instance.
        # Corresponds to the JSON property `sloMetadata`
        # @return [Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata]
        attr_accessor :slo_metadata
      
        # Software versions that are used to deploy this instance. This can be
        # mutated by rollout services.
        # Corresponds to the JSON property `softwareVersions`
        # @return [Hash<String,String>]
        attr_accessor :software_versions
      
        # Output only. Current lifecycle state of the resource (e.g. if it's being
        # created or ready to use).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. ID of the associated GCP tenant project.
        # See go/get-instance-metadata.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Output only. Timestamp when the resource was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_defined_name = args[:consumer_defined_name] if args.key?(:consumer_defined_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_policy_names = args[:maintenance_policy_names] if args.key?(:maintenance_policy_names)
          @maintenance_schedules = args[:maintenance_schedules] if args.key?(:maintenance_schedules)
          @maintenance_settings = args[:maintenance_settings] if args.key?(:maintenance_settings)
          @name = args[:name] if args.key?(:name)
          @producer_metadata = args[:producer_metadata] if args.key?(:producer_metadata)
          @provisioned_resources = args[:provisioned_resources] if args.key?(:provisioned_resources)
          @slm_instance_template = args[:slm_instance_template] if args.key?(:slm_instance_template)
          @slo_metadata = args[:slo_metadata] if args.key?(:slo_metadata)
          @software_versions = args[:software_versions] if args.key?(:software_versions)
          @state = args[:state] if args.key?(:state)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Maintenance schedule which is exposed to customer and potentially end user,
      # indicating published upcoming future maintenance schedule
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # Can this scheduled update be rescheduled?
        # By default, it's true and API needs to do explicitly check whether it's
        # set, if it's set as false explicitly, it's false
        # Corresponds to the JSON property `canReschedule`
        # @return [Boolean]
        attr_accessor :can_reschedule
        alias_method :can_reschedule?, :can_reschedule
      
        # The scheduled end time for the maintenance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The rollout management policy this maintenance schedule is associated
        # with. When doing reschedule update request, the reschedule should be
        # against this given policy.
        # Corresponds to the JSON property `rolloutManagementPolicy`
        # @return [String]
        attr_accessor :rollout_management_policy
      
        # The scheduled start time for the maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reschedule = args[:can_reschedule] if args.key?(:can_reschedule)
          @end_time = args[:end_time] if args.key?(:end_time)
          @rollout_management_policy = args[:rollout_management_policy] if args.key?(:rollout_management_policy)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Maintenance settings associated with instance. Allows service producers and
      # end users to assign settings that controls maintenance on this instance.
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Exclude instance from maintenance. When true, rollout service will
        # not
        # attempt maintenance on the instance. Rollout service will include the
        # instance in reported rollout progress as not attempted.
        # Corresponds to the JSON property `exclude`
        # @return [Boolean]
        attr_accessor :exclude
        alias_method :exclude?, :exclude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude = args[:exclude] if args.key?(:exclude)
        end
      end
      
      # Node information for custom per-node SLO implementations.
      # SSA does not support per-node SLO, but producers can populate per-node
      # information in SloMetadata for custom precomputations.
      # SSA Eligibility Exporter will emit per-node metric based on this information.
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        include Google::Apis::Core::Hashable
      
        # By default node is eligible if instance is eligible.
        # But individual node might be excluded from SLO by adding entry here.
        # For semantic see SloMetadata.exclusions.
        # If both instance and node level exclusions are present for time period,
        # the node level's reason will be reported by Eligibility Exporter.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>]
        attr_accessor :exclusions
      
        # The location of the node, if different from instance location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The id of the node.
        # This should be equal to SaasInstanceNode.node_id.
        # Corresponds to the JSON property `nodeId`
        # @return [String]
        attr_accessor :node_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @location = args[:location] if args.key?(:location)
          @node_id = args[:node_id] if args.key?(:node_id)
        end
      end
      
      # Describes provisioned dataplane resources.
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        include Google::Apis::Core::Hashable
      
        # Type of the resource. This can be either a GCP resource or a custom one
        # (e.g. another cloud provider's VM). For GCP compute resources use singular
        # form of the names listed in GCP compute API documentation
        # (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
        # 'compute-', for example: 'compute-instance', 'compute-disk',
        # 'compute-autoscaler'.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # URL identifying the resource, e.g.
        # "https://www.googleapis.com/compute/v1/projects/...)".
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
        end
      end
      
      # SloEligibility is a tuple containing eligibility value: true if an instance
      # is eligible for SLO calculation or false if it should be excluded from all
      # SLO-related calculations along with a user-defined reason.
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        include Google::Apis::Core::Hashable
      
        # Whether an instance is eligible or ineligible.
        # Corresponds to the JSON property `eligible`
        # @return [Boolean]
        attr_accessor :eligible
        alias_method :eligible?, :eligible
      
        # User-defined reason for the current value of instance eligibility. Usually,
        # this can be directly mapped to the internal state. An empty reason is
        # allowed.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible = args[:eligible] if args.key?(:eligible)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # SloExclusion represents an exclusion in SLI calculation applies to all SLOs.
      class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
        include Google::Apis::Core::Hashable
      
        # Exclusion duration. No restrictions on the possible values.
        # When an ongoing operation is taking longer than initially expected,
        # an existing entry in the exclusion list can be updated by extending the
        # duration. This is supported by the subsystem exporting eligibility data
        # as long as such extension is committed at least 10 minutes before the
        # original exclusion expiration - otherwise it is possible that there will
        # be "gaps" in the exclusion application in the exported timeseries.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Human-readable reason for the exclusion.
        # This should be a static string (e.g. "Disruptive update in progress")
        # and should not contain dynamically generated data (e.g. instance name).
        # Can be left empty.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Name of an SLI that this exclusion applies to. Can be left empty,
        # signaling that the instance should be excluded from all SLIs defined
        # in the service SLO configuration.
        # Corresponds to the JSON property `sliName`
        # @return [String]
        attr_accessor :sli_name
      
        # Start time of the exclusion. No alignment (e.g. to a full minute) needed.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @reason = args[:reason] if args.key?(:reason)
          @sli_name = args[:sli_name] if args.key?(:sli_name)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # SloMetadata contains resources required for proper SLO classification of the
      # instance.
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        include Google::Apis::Core::Hashable
      
        # SloEligibility is a tuple containing eligibility value: true if an instance
        # is eligible for SLO calculation or false if it should be excluded from all
        # SLO-related calculations along with a user-defined reason.
        # Corresponds to the JSON property `eligibility`
        # @return [Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility]
        attr_accessor :eligibility
      
        # List of SLO exclusion windows. When multiple entries in the list match
        # (matching the exclusion time-window against current time point)
        # the exclusion reason used in the first matching entry will be published.
        # It is not needed to include expired exclusion in this list, as only the
        # currently applicable exclusions are taken into account by the eligibility
        # exporting subsystem (the historical state of exclusions will be reflected
        # in the historically produced timeseries regardless of the current state).
        # This field can be used to mark the instance as temporary ineligible
        # for the purpose of SLO calculation. For permanent instance SLO exclusion,
        # use of custom instance eligibility is recommended. See 'eligibility' field
        # below.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>]
        attr_accessor :exclusions
      
        # Optional. List of nodes.
        # Some producers need to use per-node metadata to calculate SLO.
        # This field allows such producers to publish per-node SLO meta data,
        # which will be consumed by SSA Eligibility Exporter and published in the
        # form of per node metric to Monarch.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>]
        attr_accessor :nodes
      
        # Name of the SLO tier the Instance belongs to. This name will be expected to
        # match the tiers specified in the service SLO configuration.
        # Field is mandatory and must not be empty.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligibility = args[:eligibility] if args.key?(:eligibility)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @nodes = args[:nodes] if args.key?(:nodes)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # A common proto for logging HTTP requests. Only contains semantics
      # defined by the HTTP specification. Product-specific logging
      # information MUST be defined in a separate message.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # The number of HTTP response bytes inserted into cache. Set only when a
        # cache fill was attempted.
        # Corresponds to the JSON property `cacheFillBytes`
        # @return [Fixnum]
        attr_accessor :cache_fill_bytes
      
        # Whether or not an entity was served from cache
        # (with or without validation).
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Whether or not a cache lookup was attempted.
        # Corresponds to the JSON property `cacheLookup`
        # @return [Boolean]
        attr_accessor :cache_lookup
        alias_method :cache_lookup?, :cache_lookup
      
        # Whether or not the response was validated with the origin server before
        # being served from cache. This field is only meaningful if `cache_hit` is
        # True.
        # Corresponds to the JSON property `cacheValidatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :cache_validated_with_origin_server
        alias_method :cache_validated_with_origin_server?, :cache_validated_with_origin_server
      
        # The request processing latency on the server, from the time the request was
        # received until the response was sent.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The referer URL of the request, as defined in
        # [HTTP/1.1 Header Field
        # Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
        # The IP address (IPv4 or IPv6) of the client that issued the HTTP
        # request. Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # The size of the HTTP request message in bytes, including the request
        # headers and the request body.
        # Corresponds to the JSON property `requestSize`
        # @return [Fixnum]
        attr_accessor :request_size
      
        # The scheme (http, https), the host name, the path, and the query
        # portion of the URL that was requested.
        # Example: `"http://example.com/some/info?color=red"`.
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # The size of the HTTP response message sent back to the client, in bytes,
        # including the response headers and the response body.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # The IP address (IPv4 or IPv6) of the origin server that the request was
        # sent to.
        # Corresponds to the JSON property `serverIp`
        # @return [String]
        attr_accessor :server_ip
      
        # The response code indicating the status of the response.
        # Examples: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The user agent sent by the client. Example:
        # `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
        # CLR 1.0.3705)"`.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_fill_bytes = args[:cache_fill_bytes] if args.key?(:cache_fill_bytes)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @cache_lookup = args[:cache_lookup] if args.key?(:cache_lookup)
          @cache_validated_with_origin_server = args[:cache_validated_with_origin_server] if args.key?(:cache_validated_with_origin_server)
          @latency = args[:latency] if args.key?(:latency)
          @protocol = args[:protocol] if args.key?(:protocol)
          @referer = args[:referer] if args.key?(:referer)
          @remote_ip = args[:remote_ip] if args.key?(:remote_ip)
          @request_method = args[:request_method] if args.key?(:request_method)
          @request_size = args[:request_size] if args.key?(:request_size)
          @request_url = args[:request_url] if args.key?(:request_url)
          @response_size = args[:response_size] if args.key?(:response_size)
          @server_ip = args[:server_ip] if args.key?(:server_ip)
          @status = args[:status] if args.key?(:status)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # A Cloud Filestore instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the instance (2048 characters or less).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Server-specified ETag for the instance resource to prevent simultaneous
        # updates from overwriting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # File system shares on the instance.
        # For this version, only a single file share is supported.
        # Corresponds to the JSON property `fileShares`
        # @return [Array<Google::Apis::FileV1beta1::FileShareConfig>]
        attr_accessor :file_shares
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the instance, in the format
        # projects/`project_id`/locations/`location_id`/instances/`instance_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # VPC networks to which the instance is connected.
        # For this version, only a single network is supported.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::FileV1beta1::NetworkConfig>]
        attr_accessor :networks
      
        # Output only. The instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the instance state, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # The service tier of the instance.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @file_shares = args[:file_shares] if args.key?(:file_shares)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # Describing buckets with constant width.
      class LinearBuckets
        include Google::Apis::Core::Hashable
      
        # The number of finite buckets. With the underflow and overflow buckets,
        # the total number of buckets is `num_finite_buckets` + 2.
        # See comments on `bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th linear bucket covers the interval
        # [offset + (i-1) * width, offset + i * width)
        # where i ranges from 1 to num_finite_buckets, inclusive.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # The i'th linear bucket covers the interval
        # [offset + (i-1) * width, offset + i * width)
        # where i ranges from 1 to num_finite_buckets, inclusive.
        # Must be strictly positive.
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
      
      # ListInstancesResponse is the result of ListInstancesRequest.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of instances in the project for the specified location.
        # If the `location` value in the request is "-", the response contains a list
        # of instances from all locations. If any location is unreachable, the
        # response will only return instances in reachable locations and the
        # "unreachable" field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::FileV1beta1::Instance>]
        attr_accessor :instances
      
        # The token you can use to retrieve the next page of results. Not returned
        # if there are no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FileV1beta1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::FileV1beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An individual log entry.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # A common proto for logging HTTP requests. Only contains semantics
        # defined by the HTTP specification. Product-specific logging
        # information MUST be defined in a separate message.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::FileV1beta1::HttpRequest]
        attr_accessor :http_request
      
        # A unique ID for the log entry used for deduplication. If omitted,
        # the implementation will generate one based on operation_id.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # A set of user-defined (key, value) data that provides additional
        # information about the log entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The log to which this log entry belongs. Examples: `"syslog"`,
        # `"book_log"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional information about a potentially long-running operation with which
        # a log entry is associated.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::FileV1beta1::LogEntryOperation]
        attr_accessor :operation
      
        # The log entry payload, represented as a protocol buffer that is
        # expressed as a JSON object. The only accepted type currently is
        # AuditLog.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # The severity of the log entry. The default value is
        # `LogSeverity.DEFAULT`.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Additional information about the source code location that produced the log
        # entry.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::FileV1beta1::LogEntrySourceLocation]
        attr_accessor :source_location
      
        # The log entry payload, represented as a structure that
        # is expressed as a JSON object.
        # Corresponds to the JSON property `structPayload`
        # @return [Hash<String,Object>]
        attr_accessor :struct_payload
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The time the event described by the log entry occurred. If
        # omitted, defaults to operation start time.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Optional. Resource name of the trace associated with the log entry, if any.
        # If this field contains a relative resource name, you can assume the name is
        # relative to `//tracing.googleapis.com`. Example:
        # `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
        # Corresponds to the JSON property `trace`
        # @return [String]
        attr_accessor :trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_request = args[:http_request] if args.key?(:http_request)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @severity = args[:severity] if args.key?(:severity)
          @source_location = args[:source_location] if args.key?(:source_location)
          @struct_payload = args[:struct_payload] if args.key?(:struct_payload)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @trace = args[:trace] if args.key?(:trace)
        end
      end
      
      # Additional information about a potentially long-running operation with which
      # a log entry is associated.
      class LogEntryOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Set this to True if this is the first log entry in the operation.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Optional. An arbitrary operation identifier. Log entries with the
        # same identifier are assumed to be part of the same operation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Set this to True if this is the last log entry in the operation.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Optional. An arbitrary producer identifier. The combination of
        # `id` and `producer` must be globally unique.  Examples for `producer`:
        # `"MyDivision.MyBigCompany.com"`, `"github.com/MyProject/MyApplication"`.
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first = args[:first] if args.key?(:first)
          @id = args[:id] if args.key?(:id)
          @last = args[:last] if args.key?(:last)
          @producer = args[:producer] if args.key?(:producer)
        end
      end
      
      # Additional information about the source code location that produced the log
      # entry.
      class LogEntrySourceLocation
        include Google::Apis::Core::Hashable
      
        # Optional. Source file name. Depending on the runtime environment, this
        # might be a simple name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Optional. Human-readable name of the function or method being invoked, with
        # optional context such as the class or package name. This information may be
        # used in contexts such as the logs viewer, where a file and line number are
        # less meaningful. The format can vary by language. For example:
        # `qual.if.ied.Class.method` (Java), `dir/package.func` (Go), `function`
        # (Python).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Line within the source file. 1-based; 0 indicates no line number
        # available.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function = args[:function] if args.key?(:function)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Represents a single metric value.
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # A boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Distribution represents a frequency distribution of double-valued sample
        # points. It contains the size of the population of sample points plus
        # additional optional information:
        # - the arithmetic mean of the samples
        # - the minimum and maximum of the samples
        # - the sum-squared-deviation of the samples, used to compute variance
        # - a histogram of the values of the sample points
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::FileV1beta1::Distribution]
        attr_accessor :distribution_value
      
        # A double precision floating point value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # The end of the time period over which this metric value's measurement
        # applies.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A signed 64-bit integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # The labels describing the metric value.
        # See comments on google.api.servicecontrol.v1.Operation.labels for
        # the overriding relationship.
        # Note that this map must not contain monitored resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::FileV1beta1::Money]
        attr_accessor :money_value
      
        # The start of the time period over which this metric value's measurement
        # applies. The time period has different semantics for different metric
        # types (cumulative, delta, and gauge). See the metric definition
        # documentation in the service configuration for details.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # A text string value.
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
          @end_time = args[:end_time] if args.key?(:end_time)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @labels = args[:labels] if args.key?(:labels)
          @money_value = args[:money_value] if args.key?(:money_value)
          @start_time = args[:start_time] if args.key?(:start_time)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Represents a set of metric values in the same metric.
      # Each metric value in the set should have a unique combination of start time,
      # end time, and label values.
      class MetricValueSet
        include Google::Apis::Core::Hashable
      
        # The metric name defined in the service configuration.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # The values in this metric.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::FileV1beta1::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Network configuration for the instance.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Output only. IPv4 addresses in the format
        # `octet 1`.`octet 2`.`octet 3`.`octet 4` or IPv6 addresses in the format
        # `block 1`:`block 2`:`block 3`:`block 4`:`block 5`:`block 6`:`block
        # 7`:`block 8`.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # Internet protocol versions for which the instance has IP addresses
        # assigned. For this version, only MODE_IPV4 is supported.
        # Corresponds to the JSON property `modes`
        # @return [Array<String>]
        attr_accessor :modes
      
        # The name of the Google Compute Engine
        # [VPC network](/compute/docs/networks-and-firewalls#networks) to which the
        # instance is connected.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # A /29 CIDR block for Basic or a /23 CIDR block for High Scale in one of the
        # [internal IP address
        # ranges](https://www.arin.net/knowledge/address_filters.html) that
        # identifies the range of IP addresses reserved for this instance. For
        # example, 10.0.0.0/29 or 192.168.0.0/23. The range you specify can't overlap
        # with either existing subnets or assigned IP address ranges for other Cloud
        # Filestore instances in the selected VPC network.
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @modes = args[:modes] if args.key?(:modes)
          @network = args[:network] if args.key?(:network)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FileV1beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # [Output only] API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # [Output only] Identifies whether the user has requested cancellation
        # of the operation. Operations that have successfully been cancelled
        # have Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # [Output only] The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # [Output only] The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output only] Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # [Output only] Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # [Output only] Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents the properties needed for quota operations.
      class QuotaProperties
        include Google::Apis::Core::Hashable
      
        # Quota mode for this operation.
        # Corresponds to the JSON property `quotaMode`
        # @return [String]
        attr_accessor :quota_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quota_mode = args[:quota_mode] if args.key?(:quota_mode)
        end
      end
      
      # Request message for the Report method.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # Operations to be reported.
        # Typically the service should report one operation per request.
        # Putting multiple operations into a single request is allowed, but should
        # be used only when multiple operations are natually available at the time
        # of the report.
        # There is no limit on the number of operations in the same ReportRequest,
        # however the ReportRequest size should be no larger than 1MB. See
        # ReportResponse.report_errors for partial failure behavior.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::FileV1beta1::GoogleApiServicecontrolV1Operation>]
        attr_accessor :operations
      
        # Specifies which version of service config should be used to process the
        # request.
        # If unspecified or no matching version can be found, the
        # latest one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        # The service name as specified in its service configuration. For example,
        # `"pubsub.googleapis.com"`.
        # See
        # [google.api.Service](https://cloud.google.com/service-management/reference/rpc/
        # google.api#google.api.Service)
        # for the definition of a service name.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # Describes a resource associated with this operation.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # The identifier of the parent of this resource instance.
        # Must be in one of the following formats:
        # - “projects/<project-id or project-number>”
        # - “folders/<folder-id>”
        # - “organizations/<organization-id>”
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # The location of the resource. If not empty, the resource will be checked
        # against location policy. The value must be a valid zone, region or
        # multiregion. For example: "europe-west4" or "northamerica-northeast1-a"
        # Corresponds to the JSON property `resourceLocation`
        # @return [String]
        attr_accessor :resource_location
      
        # Name of the resource. This is used for auditing purposes.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_location = args[:resource_location] if args.key?(:resource_location)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # A span represents a single operation within a trace. Spans can be
      # nested to form a trace tree. Often, a trace contains a root span
      # that describes the end-to-end latency, and one or more subspans for
      # its sub-operations. A trace can also contain multiple root spans,
      # or none at all. Spans do not need to be contiguous&mdash;there may be
      # gaps or overlaps between spans in a trace.
      class TraceSpan
        include Google::Apis::Core::Hashable
      
        # A set of attributes, each in the format `[KEY]:[VALUE]`.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::FileV1beta1::Attributes]
        attr_accessor :attributes
      
        # An optional number of child spans that were generated while this span
        # was active. If set, allows implementation to detect missing child spans.
        # Corresponds to the JSON property `childSpanCount`
        # @return [Fixnum]
        attr_accessor :child_span_count
      
        # Represents a string that might be shortened to a specified length.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::FileV1beta1::TruncatableString]
        attr_accessor :display_name
      
        # The end time of the span. On the client side, this is the time kept by
        # the local machine where the span execution ends. On the server side, this
        # is the time when the server application handler stops running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The resource name of the span in the following format:
        # projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/SPAN_ID is a unique
        # identifier for a trace within a project;
        # it is a 32-character hexadecimal encoding of a 16-byte array.
        # [SPAN_ID] is a unique identifier for a span within a trace; it
        # is a 16-character hexadecimal encoding of an 8-byte array.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The [SPAN_ID] of this span's parent span. If this is a root span,
        # then this field must be empty.
        # Corresponds to the JSON property `parentSpanId`
        # @return [String]
        attr_accessor :parent_span_id
      
        # (Optional) Set this parameter to indicate whether this span is in
        # the same process as its parent. If you do not set this parameter,
        # Stackdriver Trace is unable to take advantage of this helpful
        # information.
        # Corresponds to the JSON property `sameProcessAsParentSpan`
        # @return [Boolean]
        attr_accessor :same_process_as_parent_span
        alias_method :same_process_as_parent_span?, :same_process_as_parent_span
      
        # The [SPAN_ID] portion of the span's resource name.
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # Distinguishes between spans generated in a particular context. For example,
        # two spans with the same name may be distinguished using `CLIENT` (caller)
        # and `SERVER` (callee) to identify an RPC call.
        # Corresponds to the JSON property `spanKind`
        # @return [String]
        attr_accessor :span_kind
      
        # The start time of the span. On the client side, this is the time kept by
        # the local machine where the span execution starts. On the server side, this
        # is the time when the server's application handler starts running.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::FileV1beta1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @child_span_count = args[:child_span_count] if args.key?(:child_span_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @parent_span_id = args[:parent_span_id] if args.key?(:parent_span_id)
          @same_process_as_parent_span = args[:same_process_as_parent_span] if args.key?(:same_process_as_parent_span)
          @span_id = args[:span_id] if args.key?(:span_id)
          @span_kind = args[:span_kind] if args.key?(:span_kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a string that might be shortened to a specified length.
      class TruncatableString
        include Google::Apis::Core::Hashable
      
        # The number of bytes removed from the original string. If this
        # value is 0, then the string was not shortened.
        # Corresponds to the JSON property `truncatedByteCount`
        # @return [Fixnum]
        attr_accessor :truncated_byte_count
      
        # The shortened string. For example, if the original string is 500
        # bytes long and the limit of the string is 128 bytes, then
        # `value` contains the first 128 bytes of the 500-byte string.
        # Truncation always happens on a UTF8 character boundary. If there
        # are multi-byte characters in the string, then the length of the
        # shortened string might be less than the size limit.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @truncated_byte_count = args[:truncated_byte_count] if args.key?(:truncated_byte_count)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
