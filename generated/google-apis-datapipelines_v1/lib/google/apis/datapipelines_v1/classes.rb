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
    module DatapipelinesV1
      
      # Represents an array of values. The elements can be of any type.
      class GoogleCloudDatapipelinesV1ArrayValue
        include Google::Apis::Core::Hashable
      
        # The elements of the array.
        # Corresponds to the JSON property `elements`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue>]
        attr_accessor :elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elements = args[:elements] if args.key?(:elements)
        end
      end
      
      # Represents a non-dividable value.
      class GoogleCloudDatapipelinesV1AtomicValue
        include Google::Apis::Core::Hashable
      
        # A boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # An 8-bit signed value.
        # Corresponds to the JSON property `byteValue`
        # @return [Fixnum]
        attr_accessor :byte_value
      
        # An array of raw bytes.
        # Corresponds to the JSON property `bytesValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `decimalValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleTypeDecimal]
        attr_accessor :decimal_value
      
        # A 64-bit floating point value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A 32-bit floating point value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # A 16-bit signed value.
        # Corresponds to the JSON property `int16Value`
        # @return [Fixnum]
        attr_accessor :int16_value
      
        # A 32-bit signed value.
        # Corresponds to the JSON property `int32Value`
        # @return [Fixnum]
        attr_accessor :int32_value
      
        # A 64-bit signed value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # A string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @byte_value = args[:byte_value] if args.key?(:byte_value)
          @bytes_value = args[:bytes_value] if args.key?(:bytes_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @decimal_value = args[:decimal_value] if args.key?(:decimal_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int16_value = args[:int16_value] if args.key?(:int16_value)
          @int32_value = args[:int32_value] if args.key?(:int32_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Response message for BatchGetTransformDescriptions
      class GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
        include Google::Apis::Core::Hashable
      
        # List of requested transform descriptions.
        # Corresponds to the JSON property `transformDescriptions`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription>]
        attr_accessor :transform_descriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transform_descriptions = args[:transform_descriptions] if args.key?(:transform_descriptions)
        end
      end
      
      # Request message for ComputeSchema
      class GoogleCloudDatapipelinesV1ComputeSchemaRequest
        include Google::Apis::Core::Hashable
      
        # A fully configured transform that can be validated.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ConfiguredTransform]
        attr_accessor :config
      
        # Optional. In relation to the full pipeline graph, the schemas of the
        # transforms that are used as inputs to the one for `config`. If `config`
        # represents a transform for reading from some resource, then this should be
        # empty. For all other transforms, at least one value must be provided.
        # Corresponds to the JSON property `inputSchemas`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema>]
        attr_accessor :input_schemas
      
        # The raw schema and its type.
        # Corresponds to the JSON property `rawSchema`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RawSchemaInfo]
        attr_accessor :raw_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @input_schemas = args[:input_schemas] if args.key?(:input_schemas)
          @raw_schema = args[:raw_schema] if args.key?(:raw_schema)
        end
      end
      
      # A fully configured transform that can be validated.
      class GoogleCloudDatapipelinesV1ConfiguredTransform
        include Google::Apis::Core::Hashable
      
        # Represents an Apache Beam row, though the `Any` nature of values is replaced
        # with more concrete representations of valid values.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row]
        attr_accessor :config
      
        # Unique resource name of the transform. This should be the same as the
        # equivalent `TransformDescription` value.
        # Corresponds to the JSON property `uniformResourceName`
        # @return [String]
        attr_accessor :uniform_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @uniform_resource_name = args[:uniform_resource_name] if args.key?(:uniform_resource_name)
        end
      end
      
      # Pipeline job details specific to the Dataflow API. This is encapsulated here
      # to allow for more executors to store their specific details separately.
      class GoogleCloudDatapipelinesV1DataflowJobDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The current number of workers used to run the jobs. Only set to a
        # value if the job is still running.
        # Corresponds to the JSON property `currentWorkers`
        # @return [Fixnum]
        attr_accessor :current_workers
      
        # Cached version of all the metrics of interest for the job. This value gets
        # stored here when the job is terminated. As long as the job is running, this
        # field is populated from the Dataflow API.
        # Corresponds to the JSON property `resourceInfo`
        # @return [Hash<String,Float>]
        attr_accessor :resource_info
      
        # The version of the SDK used to run the job.
        # Corresponds to the JSON property `sdkVersion`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SdkVersion]
        attr_accessor :sdk_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_workers = args[:current_workers] if args.key?(:current_workers)
          @resource_info = args[:resource_info] if args.key?(:resource_info)
          @sdk_version = args[:sdk_version] if args.key?(:sdk_version)
        end
      end
      
      # Represents a selected value from an EnumerationType.
      class GoogleCloudDatapipelinesV1EnumerationValue
        include Google::Apis::Core::Hashable
      
        # Name of the enum option.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Info for a single field in the schema.
      class GoogleCloudDatapipelinesV1Field
        include Google::Apis::Core::Hashable
      
        # Name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type info about a field.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Type info about a field.
      class GoogleCloudDatapipelinesV1FieldType
        include Google::Apis::Core::Hashable
      
        # Type info about a field.
        # Corresponds to the JSON property `collectionElementType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType]
        attr_accessor :collection_element_type
      
        # Represents the input for creating a specified logical type.
        # Corresponds to the JSON property `logicalType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalType]
        attr_accessor :logical_type
      
        # Represents a map in a schema.
        # Corresponds to the JSON property `mapType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapType]
        attr_accessor :map_type
      
        # Whether or not this field is nullable.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Represents a simplified Apache Beam schema.
        # Corresponds to the JSON property `rowSchema`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema]
        attr_accessor :row_schema
      
        # Specific type of the field. For non-atomic types, the corresponding type info
        # for that non-atomic must be set.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_element_type = args[:collection_element_type] if args.key?(:collection_element_type)
          @logical_type = args[:logical_type] if args.key?(:logical_type)
          @map_type = args[:map_type] if args.key?(:map_type)
          @nullable = args[:nullable] if args.key?(:nullable)
          @row_schema = args[:row_schema] if args.key?(:row_schema)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A single value in a row. The value set must correspond to the correct type
      # from the row's schema.
      class GoogleCloudDatapipelinesV1FieldValue
        include Google::Apis::Core::Hashable
      
        # Represents an array of values. The elements can be of any type.
        # Corresponds to the JSON property `arrayValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ArrayValue]
        attr_accessor :array_value
      
        # Represents a non-dividable value.
        # Corresponds to the JSON property `atomicValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1AtomicValue]
        attr_accessor :atomic_value
      
        # Represents a selected value from an EnumerationType.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1EnumerationValue]
        attr_accessor :enum_value
      
        # Represents a collection of bytes whose size is the same as the associated
        # FixedBytes size value.
        # Corresponds to the JSON property `fixedBytesValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FixedBytesValue]
        attr_accessor :fixed_bytes_value
      
        # Represents an iterable of values. The elements can be of any type.
        # Corresponds to the JSON property `iterableValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1IterableValue]
        attr_accessor :iterable_value
      
        # Represents a key/value pairing.
        # Corresponds to the JSON property `mapValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValue]
        attr_accessor :map_value
      
        # Represents an Apache Beam row, though the `Any` nature of values is replaced
        # with more concrete representations of valid values.
        # Corresponds to the JSON property `rowValue`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row]
        attr_accessor :row_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_value = args[:array_value] if args.key?(:array_value)
          @atomic_value = args[:atomic_value] if args.key?(:atomic_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @fixed_bytes_value = args[:fixed_bytes_value] if args.key?(:fixed_bytes_value)
          @iterable_value = args[:iterable_value] if args.key?(:iterable_value)
          @map_value = args[:map_value] if args.key?(:map_value)
          @row_value = args[:row_value] if args.key?(:row_value)
        end
      end
      
      # Represents a collection of bytes whose size is the same as the associated
      # FixedBytes size value.
      class GoogleCloudDatapipelinesV1FixedBytesValue
        include Google::Apis::Core::Hashable
      
        # The raw bytes. It must be exactly the size specified in the schema.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The environment values to be set at runtime for a Flex Template.
      class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
        include Google::Apis::Core::Hashable
      
        # Additional experiment flags for the job.
        # Corresponds to the JSON property `additionalExperiments`
        # @return [Array<String>]
        attr_accessor :additional_experiments
      
        # Additional user labels to be specified for the job. Keys and values must
        # follow the restrictions specified in the [labeling restrictions](https://cloud.
        # google.com/compute/docs/labeling-resources#restrictions). An object containing
        # a list of key/value pairs. Example: `` "name": "wrench", "mass": "1kg", "count"
        # : "3" ``.
        # Corresponds to the JSON property `additionalUserLabels`
        # @return [Hash<String,String>]
        attr_accessor :additional_user_labels
      
        # Whether to enable Streaming Engine for the job.
        # Corresponds to the JSON property `enableStreamingEngine`
        # @return [Boolean]
        attr_accessor :enable_streaming_engine
        alias_method :enable_streaming_engine?, :enable_streaming_engine
      
        # Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/
        # flexrs
        # Corresponds to the JSON property `flexrsGoal`
        # @return [String]
        attr_accessor :flexrs_goal
      
        # Configuration for VM IPs.
        # Corresponds to the JSON property `ipConfiguration`
        # @return [String]
        attr_accessor :ip_configuration
      
        # Name for the Cloud KMS key for the job. Key format is: projects//locations//
        # keyRings//cryptoKeys/
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # The machine type to use for the job. Defaults to the value from the template
        # if not specified.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The maximum number of Compute Engine instances to be made available to your
        # pipeline during execution, from 1 to 1000.
        # Corresponds to the JSON property `maxWorkers`
        # @return [Fixnum]
        attr_accessor :max_workers
      
        # Network to which VMs will be assigned. If empty or unspecified, the service
        # will use the network "default".
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The initial number of Compute Engine instances for the job.
        # Corresponds to the JSON property `numWorkers`
        # @return [Fixnum]
        attr_accessor :num_workers
      
        # The email address of the service account to run the job as.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Subnetwork to which VMs will be assigned, if desired. You can specify a
        # subnetwork using either a complete URL or an abbreviated path. Expected to be
        # of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/
        # regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/
        # SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must
        # use the complete URL.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The Cloud Storage path to use for temporary files. Must be a valid Cloud
        # Storage URL, beginning with `gs://`.
        # Corresponds to the JSON property `tempLocation`
        # @return [String]
        attr_accessor :temp_location
      
        # The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/
        # regions-zones) in which worker processing should occur, e.g. "us-west1".
        # Mutually exclusive with worker_zone. If neither worker_region nor worker_zone
        # is specified, defaults to the control plane region.
        # Corresponds to the JSON property `workerRegion`
        # @return [String]
        attr_accessor :worker_region
      
        # The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/
        # regions-zones) in which worker processing should occur, e.g. "us-west1-a".
        # Mutually exclusive with worker_region. If neither worker_region nor
        # worker_zone is specified, a zone in the control plane region is chosen based
        # on available capacity. If both `worker_zone` and `zone` are set, `worker_zone`
        # takes precedence.
        # Corresponds to the JSON property `workerZone`
        # @return [String]
        attr_accessor :worker_zone
      
        # The Compute Engine [availability zone](https://cloud.google.com/compute/docs/
        # regions-zones/regions-zones) for launching worker instances to run your
        # pipeline. In the future, worker_zone will take precedence.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_experiments = args[:additional_experiments] if args.key?(:additional_experiments)
          @additional_user_labels = args[:additional_user_labels] if args.key?(:additional_user_labels)
          @enable_streaming_engine = args[:enable_streaming_engine] if args.key?(:enable_streaming_engine)
          @flexrs_goal = args[:flexrs_goal] if args.key?(:flexrs_goal)
          @ip_configuration = args[:ip_configuration] if args.key?(:ip_configuration)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @max_workers = args[:max_workers] if args.key?(:max_workers)
          @network = args[:network] if args.key?(:network)
          @num_workers = args[:num_workers] if args.key?(:num_workers)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @temp_location = args[:temp_location] if args.key?(:temp_location)
          @worker_region = args[:worker_region] if args.key?(:worker_region)
          @worker_zone = args[:worker_zone] if args.key?(:worker_zone)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Represents an iterable of values. The elements can be of any type.
      class GoogleCloudDatapipelinesV1IterableValue
        include Google::Apis::Core::Hashable
      
        # The elements of the iterable.
        # Corresponds to the JSON property `elements`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue>]
        attr_accessor :elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elements = args[:elements] if args.key?(:elements)
        end
      end
      
      # Definition of the job information maintained by the pipeline. Fields in this
      # entity are retrieved from the executor API (e.g. Dataflow API).
      class GoogleCloudDatapipelinesV1Job
        include Google::Apis::Core::Hashable
      
        # Output only. The time of job creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Pipeline job details specific to the Dataflow API. This is encapsulated here
        # to allow for more executors to store their specific details separately.
        # Corresponds to the JSON property `dataflowJobDetails`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1DataflowJobDetails]
        attr_accessor :dataflow_job_details
      
        # Output only. The time of job termination. This is absent if the job is still
        # running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The internal ID for the job.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The fully qualified resource name for the job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current state of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DatapipelinesV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataflow_job_details = args[:dataflow_job_details] if args.key?(:dataflow_job_details)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Launch Flex Template parameter.
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
        include Google::Apis::Core::Hashable
      
        # Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
        # Corresponds to the JSON property `containerSpecGcsPath`
        # @return [String]
        attr_accessor :container_spec_gcs_path
      
        # The environment values to be set at runtime for a Flex Template.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment]
        attr_accessor :environment
      
        # Required. The job name to use for the created job. For an update job request,
        # the job name should be the same as the existing running job.
        # Corresponds to the JSON property `jobName`
        # @return [String]
        attr_accessor :job_name
      
        # Launch options for this Flex Template job. This is a common set of options
        # across languages and templates. This should not be used to pass job parameters.
        # Corresponds to the JSON property `launchOptions`
        # @return [Hash<String,String>]
        attr_accessor :launch_options
      
        # The parameters for the Flex Template. Example: ``"num_workers":"5"``
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Use this to pass transform name mappings for streaming update jobs. Example: ``
        # "oldTransformName":"newTransformName",...``
        # Corresponds to the JSON property `transformNameMappings`
        # @return [Hash<String,String>]
        attr_accessor :transform_name_mappings
      
        # Set this to true if you are sending a request to update a running streaming
        # job. When set, the job name should be the same as the running job.
        # Corresponds to the JSON property `update`
        # @return [Boolean]
        attr_accessor :update
        alias_method :update?, :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_spec_gcs_path = args[:container_spec_gcs_path] if args.key?(:container_spec_gcs_path)
          @environment = args[:environment] if args.key?(:environment)
          @job_name = args[:job_name] if args.key?(:job_name)
          @launch_options = args[:launch_options] if args.key?(:launch_options)
          @parameters = args[:parameters] if args.key?(:parameters)
          @transform_name_mappings = args[:transform_name_mappings] if args.key?(:transform_name_mappings)
          @update = args[:update] if args.key?(:update)
        end
      end
      
      # A request to launch a Dataflow job from a Flex Template.
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Launch Flex Template parameter.
        # Corresponds to the JSON property `launchParameter`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter]
        attr_accessor :launch_parameter
      
        # Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/
        # concepts/regional-endpoints) to which to direct the request. For example, `us-
        # central1`, `us-west1`.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The ID of the Cloud Platform project that the job belongs to.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # If true, the request is validated but not actually executed. Defaults to false.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @launch_parameter = args[:launch_parameter] if args.key?(:launch_parameter)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Parameters to provide to the template being launched.
      class GoogleCloudDatapipelinesV1LaunchTemplateParameters
        include Google::Apis::Core::Hashable
      
        # The environment values to set at runtime.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RuntimeEnvironment]
        attr_accessor :environment
      
        # Required. The job name to use for the created job.
        # Corresponds to the JSON property `jobName`
        # @return [String]
        attr_accessor :job_name
      
        # The runtime parameters to pass to the job.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Map of transform name prefixes of the job to be replaced to the corresponding
        # name prefixes of the new job. Only applicable when updating a pipeline.
        # Corresponds to the JSON property `transformNameMapping`
        # @return [Hash<String,String>]
        attr_accessor :transform_name_mapping
      
        # If set, replace the existing pipeline with the name specified by jobName with
        # this pipeline, preserving state.
        # Corresponds to the JSON property `update`
        # @return [Boolean]
        attr_accessor :update
        alias_method :update?, :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
          @job_name = args[:job_name] if args.key?(:job_name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @transform_name_mapping = args[:transform_name_mapping] if args.key?(:transform_name_mapping)
          @update = args[:update] if args.key?(:update)
        end
      end
      
      # A request to launch a template.
      class GoogleCloudDatapipelinesV1LaunchTemplateRequest
        include Google::Apis::Core::Hashable
      
        # A Cloud Storage path to the template from which to create the job. Must be a
        # valid Cloud Storage URL, beginning with 'gs://'.
        # Corresponds to the JSON property `gcsPath`
        # @return [String]
        attr_accessor :gcs_path
      
        # Parameters to provide to the template being launched.
        # Corresponds to the JSON property `launchParameters`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateParameters]
        attr_accessor :launch_parameters
      
        # The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/
        # regional-endpoints) to which to direct the request.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The ID of the Cloud Platform project that the job belongs to.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # If true, the request is validated but not actually executed. Defaults to false.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_path = args[:gcs_path] if args.key?(:gcs_path)
          @launch_parameters = args[:launch_parameters] if args.key?(:launch_parameters)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for ListJobs
      class GoogleCloudDatapipelinesV1ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller. Results are always in descending
        # order of job creation date.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job>]
        attr_accessor :jobs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListPipelines.
      class GoogleCloudDatapipelinesV1ListPipelinesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Results are always in descending order of pipeline creation date.
        # Corresponds to the JSON property `pipelines`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline>]
        attr_accessor :pipelines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pipelines = args[:pipelines] if args.key?(:pipelines)
        end
      end
      
      # Represents the input for creating a specified logical type.
      class GoogleCloudDatapipelinesV1LogicalType
        include Google::Apis::Core::Hashable
      
        # Represents the Beam EnumerationType logical type.
        # Corresponds to the JSON property `enumerationType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeEnumerationType]
        attr_accessor :enumeration_type
      
        # Represents the Beam FixedBytes logical type.
        # Corresponds to the JSON property `fixedBytes`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeFixedBytes]
        attr_accessor :fixed_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enumeration_type = args[:enumeration_type] if args.key?(:enumeration_type)
          @fixed_bytes = args[:fixed_bytes] if args.key?(:fixed_bytes)
        end
      end
      
      # Represents the Beam EnumerationType logical type.
      class GoogleCloudDatapipelinesV1LogicalTypeEnumerationType
        include Google::Apis::Core::Hashable
      
        # Names of the values. The numeric value is the same as the index.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Represents the Beam FixedBytes logical type.
      class GoogleCloudDatapipelinesV1LogicalTypeFixedBytes
        include Google::Apis::Core::Hashable
      
        # Number of bytes to allocate.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # Represents a map in a schema.
      class GoogleCloudDatapipelinesV1MapType
        include Google::Apis::Core::Hashable
      
        # Type info about a field.
        # Corresponds to the JSON property `mapKeyType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType]
        attr_accessor :map_key_type
      
        # Type info about a field.
        # Corresponds to the JSON property `mapValueType`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType]
        attr_accessor :map_value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @map_key_type = args[:map_key_type] if args.key?(:map_key_type)
          @map_value_type = args[:map_value_type] if args.key?(:map_value_type)
        end
      end
      
      # Represents a key/value pairing.
      class GoogleCloudDatapipelinesV1MapValue
        include Google::Apis::Core::Hashable
      
        # The entries in the map.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValueEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A single entry in the map. Each entry must have a unique key.
      class GoogleCloudDatapipelinesV1MapValueEntry
        include Google::Apis::Core::Hashable
      
        # A single value in a row. The value set must correspond to the correct type
        # from the row's schema.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue]
        attr_accessor :key
      
        # A single value in a row. The value set must correspond to the correct type
        # from the row's schema.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue]
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
      
      # The main pipeline entity and all the necessary metadata for launching and
      # managing linked jobs.
      class GoogleCloudDatapipelinesV1Pipeline
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. The timestamp when the pipeline was initially created.
        # Set by the Data Pipelines service.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The display name of the pipeline. It can contain only letters ([A-Za-
        # z]), numbers ([0-9]), hyphens (-), and underscores (_).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Number of jobs.
        # Corresponds to the JSON property `jobCount`
        # @return [Fixnum]
        attr_accessor :job_count
      
        # Output only. Immutable. The timestamp when the pipeline was last modified. Set
        # by the Data Pipelines service.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/
        # pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers
        # ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [
        # Identifying projects](https://cloud.google.com/resource-manager/docs/creating-
        # managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID
        # for the pipeline's location. The list of available locations can be obtained
        # by calling `google.cloud.location.Locations.ListLocations`. Note that the Data
        # Pipelines service is not available in all regions. It depends on Cloud
        # Scheduler, an App Engine application, so it's only available in [App Engine
        # regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is
        # the ID of the pipeline. Must be unique for the selected project and location.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The sources of the pipeline (for example, Dataplex). The keys and
        # values are set by the corresponding sources during pipeline creation.
        # Corresponds to the JSON property `pipelineSources`
        # @return [Hash<String,String>]
        attr_accessor :pipeline_sources
      
        # Details of the schedule the pipeline runs on.
        # Corresponds to the JSON property `scheduleInfo`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ScheduleSpec]
        attr_accessor :schedule_info
      
        # Optional. A service account email to be used with the Cloud Scheduler job. If
        # not specified, the default compute engine service account will be used.
        # Corresponds to the JSON property `schedulerServiceAccountEmail`
        # @return [String]
        attr_accessor :scheduler_service_account_email
      
        # Required. The state of the pipeline. When the pipeline is created, the state
        # is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested
        # by setting the state to stopping, paused, or resuming. State cannot be changed
        # through UpdatePipeline requests.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The type of the pipeline. This field affects the scheduling of the
        # pipeline and the type of metrics to show for the pipeline.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Workload details for creating the pipeline jobs.
        # Corresponds to the JSON property `workload`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Workload]
        attr_accessor :workload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @job_count = args[:job_count] if args.key?(:job_count)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @name = args[:name] if args.key?(:name)
          @pipeline_sources = args[:pipeline_sources] if args.key?(:pipeline_sources)
          @schedule_info = args[:schedule_info] if args.key?(:schedule_info)
          @scheduler_service_account_email = args[:scheduler_service_account_email] if args.key?(:scheduler_service_account_email)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @workload = args[:workload] if args.key?(:workload)
        end
      end
      
      # The raw schema and its type.
      class GoogleCloudDatapipelinesV1RawSchemaInfo
        include Google::Apis::Core::Hashable
      
        # The schema.
        # Corresponds to the JSON property `rawSchema`
        # @return [String]
        attr_accessor :raw_schema
      
        # The type of the schema.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw_schema = args[:raw_schema] if args.key?(:raw_schema)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents an Apache Beam row, though the `Any` nature of values is replaced
      # with more concrete representations of valid values.
      class GoogleCloudDatapipelinesV1Row
        include Google::Apis::Core::Hashable
      
        # Holds a schema or a reference to a schema in some repository.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SchemaSource]
        attr_accessor :schema
      
        # Required. The values of this Row. A fully built row is required to hold to the
        # schema specified by `schema`.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Request message for RunPipeline
      class GoogleCloudDatapipelinesV1RunPipelineRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for RunPipeline
      class GoogleCloudDatapipelinesV1RunPipelineResponse
        include Google::Apis::Core::Hashable
      
        # Definition of the job information maintained by the pipeline. Fields in this
        # entity are retrieved from the executor API (e.g. Dataflow API).
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job]
        attr_accessor :job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
        end
      end
      
      # The environment values to set at runtime.
      class GoogleCloudDatapipelinesV1RuntimeEnvironment
        include Google::Apis::Core::Hashable
      
        # Additional experiment flags for the job.
        # Corresponds to the JSON property `additionalExperiments`
        # @return [Array<String>]
        attr_accessor :additional_experiments
      
        # Additional user labels to be specified for the job. Keys and values should
        # follow the restrictions specified in the [labeling restrictions](https://cloud.
        # google.com/compute/docs/labeling-resources#restrictions) page. An object
        # containing a list of key/value pairs. Example: ` "name": "wrench", "mass": "
        # 1kg", "count": "3" `.
        # Corresponds to the JSON property `additionalUserLabels`
        # @return [Hash<String,String>]
        attr_accessor :additional_user_labels
      
        # Whether to bypass the safety checks for the job's temporary directory. Use
        # with caution.
        # Corresponds to the JSON property `bypassTempDirValidation`
        # @return [Boolean]
        attr_accessor :bypass_temp_dir_validation
        alias_method :bypass_temp_dir_validation?, :bypass_temp_dir_validation
      
        # Whether to enable Streaming Engine for the job.
        # Corresponds to the JSON property `enableStreamingEngine`
        # @return [Boolean]
        attr_accessor :enable_streaming_engine
        alias_method :enable_streaming_engine?, :enable_streaming_engine
      
        # Configuration for VM IPs.
        # Corresponds to the JSON property `ipConfiguration`
        # @return [String]
        attr_accessor :ip_configuration
      
        # Name for the Cloud KMS key for the job. The key format is: projects//locations/
        # /keyRings//cryptoKeys/
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # The machine type to use for the job. Defaults to the value from the template
        # if not specified.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The maximum number of Compute Engine instances to be made available to your
        # pipeline during execution, from 1 to 1000.
        # Corresponds to the JSON property `maxWorkers`
        # @return [Fixnum]
        attr_accessor :max_workers
      
        # Network to which VMs will be assigned. If empty or unspecified, the service
        # will use the network "default".
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The initial number of Compute Engine instances for the job.
        # Corresponds to the JSON property `numWorkers`
        # @return [Fixnum]
        attr_accessor :num_workers
      
        # The email address of the service account to run the job as.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Subnetwork to which VMs will be assigned, if desired. You can specify a
        # subnetwork using either a complete URL or an abbreviated path. Expected to be
        # of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/
        # regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/
        # SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must
        # use the complete URL.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The Cloud Storage path to use for temporary files. Must be a valid Cloud
        # Storage URL, beginning with `gs://`.
        # Corresponds to the JSON property `tempLocation`
        # @return [String]
        attr_accessor :temp_location
      
        # The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/
        # regions-zones) in which worker processing should occur, e.g. "us-west1".
        # Mutually exclusive with worker_zone. If neither worker_region nor worker_zone
        # is specified, default to the control plane's region.
        # Corresponds to the JSON property `workerRegion`
        # @return [String]
        attr_accessor :worker_region
      
        # The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/
        # regions-zones) in which worker processing should occur, e.g. "us-west1-a".
        # Mutually exclusive with worker_region. If neither worker_region nor
        # worker_zone is specified, a zone in the control plane's region is chosen based
        # on available capacity. If both `worker_zone` and `zone` are set, `worker_zone`
        # takes precedence.
        # Corresponds to the JSON property `workerZone`
        # @return [String]
        attr_accessor :worker_zone
      
        # The Compute Engine [availability zone](https://cloud.google.com/compute/docs/
        # regions-zones/regions-zones) for launching worker instances to run your
        # pipeline. In the future, worker_zone will take precedence.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_experiments = args[:additional_experiments] if args.key?(:additional_experiments)
          @additional_user_labels = args[:additional_user_labels] if args.key?(:additional_user_labels)
          @bypass_temp_dir_validation = args[:bypass_temp_dir_validation] if args.key?(:bypass_temp_dir_validation)
          @enable_streaming_engine = args[:enable_streaming_engine] if args.key?(:enable_streaming_engine)
          @ip_configuration = args[:ip_configuration] if args.key?(:ip_configuration)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @max_workers = args[:max_workers] if args.key?(:max_workers)
          @network = args[:network] if args.key?(:network)
          @num_workers = args[:num_workers] if args.key?(:num_workers)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @temp_location = args[:temp_location] if args.key?(:temp_location)
          @worker_region = args[:worker_region] if args.key?(:worker_region)
          @worker_zone = args[:worker_zone] if args.key?(:worker_zone)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Details of the schedule the pipeline runs on.
      class GoogleCloudDatapipelinesV1ScheduleSpec
        include Google::Apis::Core::Hashable
      
        # Output only. When the next Scheduler job is going to run.
        # Corresponds to the JSON property `nextJobTime`
        # @return [String]
        attr_accessor :next_job_time
      
        # Unix-cron format of the schedule. This information is retrieved from the
        # linked Cloud Scheduler.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If
        # empty, UTC time is assumed.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_job_time = args[:next_job_time] if args.key?(:next_job_time)
          @schedule = args[:schedule] if args.key?(:schedule)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Represents a simplified Apache Beam schema.
      class GoogleCloudDatapipelinesV1Schema
        include Google::Apis::Core::Hashable
      
        # Fields in the schema. Every field within a schema must have a unique name.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Field>]
        attr_accessor :fields
      
        # An identifier of the schema for looking it up in a repository. This only needs
        # to be set if the schema is stored in a repository.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
        end
      end
      
      # Holds a schema or a reference to a schema in some repository.
      class GoogleCloudDatapipelinesV1SchemaSource
        include Google::Apis::Core::Hashable
      
        # Represents a simplified Apache Beam schema.
        # Corresponds to the JSON property `localSchema`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema]
        attr_accessor :local_schema
      
        # The `reference_id` value of a schema in a repository.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_schema = args[:local_schema] if args.key?(:local_schema)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
        end
      end
      
      # The version of the SDK used to run the job.
      class GoogleCloudDatapipelinesV1SdkVersion
        include Google::Apis::Core::Hashable
      
        # The support status for this SDK version.
        # Corresponds to the JSON property `sdkSupportStatus`
        # @return [String]
        attr_accessor :sdk_support_status
      
        # The version of the SDK used to run the job.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # A readable string describing the version of the SDK.
        # Corresponds to the JSON property `versionDisplayName`
        # @return [String]
        attr_accessor :version_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk_support_status = args[:sdk_support_status] if args.key?(:sdk_support_status)
          @version = args[:version] if args.key?(:version)
          @version_display_name = args[:version_display_name] if args.key?(:version_display_name)
        end
      end
      
      # Request message for StopPipeline.
      class GoogleCloudDatapipelinesV1StopPipelineRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Description of a schema-aware transform, which provides info on how it can be
      # configured.
      class GoogleCloudDatapipelinesV1TransformDescription
        include Google::Apis::Core::Hashable
      
        # Output only. The full name of this resource formatted as: projects/`project`/
        # locations/`location`/transformDescriptions/`transform_description` `
        # transform_description` is the same as the `uniform_resource_name` field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a simplified Apache Beam schema.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema]
        attr_accessor :options
      
        # Unique resource name of the transform.
        # Corresponds to the JSON property `uniformResourceName`
        # @return [String]
        attr_accessor :uniform_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @uniform_resource_name = args[:uniform_resource_name] if args.key?(:uniform_resource_name)
        end
      end
      
      # Workload details for creating the pipeline jobs.
      class GoogleCloudDatapipelinesV1Workload
        include Google::Apis::Core::Hashable
      
        # A request to launch a Dataflow job from a Flex Template.
        # Corresponds to the JSON property `dataflowFlexTemplateRequest`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest]
        attr_accessor :dataflow_flex_template_request
      
        # A request to launch a template.
        # Corresponds to the JSON property `dataflowLaunchTemplateRequest`
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateRequest]
        attr_accessor :dataflow_launch_template_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataflow_flex_template_request = args[:dataflow_flex_template_request] if args.key?(:dataflow_flex_template_request)
          @dataflow_launch_template_request = args[:dataflow_launch_template_request] if args.key?(:dataflow_launch_template_request)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class GoogleTypeDateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::DatapipelinesV1::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's BigDecimal or Python's
      # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
      # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
      # org/3/library/decimal.html
      class GoogleTypeDecimal
        include Google::Apis::Core::Hashable
      
        # The decimal value, as a string. The string representation consists of an
        # optional sign, `+` (`U+002B`) or `-` (`U+002D`), followed by a sequence of
        # zero or more decimal digits ("the integer"), optionally followed by a fraction,
        # optionally followed by an exponent. An empty string **should** be interpreted
        # as `0`. The fraction consists of a decimal point followed by zero or more
        # decimal digits. The string must contain at least one digit in either the
        # integer or the fraction. The number formed by the sign, the integer and the
        # fraction is referred to as the significand. The exponent consists of the
        # character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal
        # digits. Services **should** normalize decimal values before storing them by: -
        # Removing an explicitly-provided `+` sign (`+2.5` -> `2.5`). - Replacing a zero-
        # length integer value with `0` (`.5` -> `0.5`). - Coercing the exponent
        # character to upper-case, with explicit sign (`2.5e8` -> `2.5E+8`). - Removing
        # an explicitly-provided zero exponent (`2.5E0` -> `2.5`). Services **may**
        # perform additional normalization based on its own needs and the internal
        # decimal implementation selected, such as shifting the decimal point and
        # exponent value together (example: `2.5E-1` <-> `0.25`). Additionally, services
        # **may** preserve trailing zeroes in the fraction to indicate increased
        # precision, but are not required to do so. Note that only the `.` character is
        # supported to divide the integer and the fraction; `,` **should not** be
        # supported regardless of locale. Additionally, thousand separators **should not*
        # * be supported. If a service does support them, values **must** be normalized.
        # The ENBF grammar is: DecimalString = '' | [Sign] Significand [Exponent]; Sign =
        # '+' | '-'; Significand = Digits '.' | [Digits] '.' Digits; Exponent = ('e' | '
        # E') [Sign] Digits; Digits = ` '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '
        # 8' | '9' `; Services **should** clearly document the range of supported values,
        # the maximum supported precision (total number of digits), and, if applicable,
        # the scale (number of digits after the decimal point), as well as how it
        # behaves when receiving out-of-bounds values. Services **may** choose to accept
        # values passed as input even when the value has a higher precision or scale
        # than the service supports, and **should** round the value to fit the supported
        # scale. Alternatively, the service **may** error with `400 Bad Request` (`
        # INVALID_ARGUMENT` in gRPC) if precision would be lost. Services **should**
        # error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if the service
        # receives a value outside of the supported range.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
