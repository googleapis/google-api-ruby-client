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
      
      class GoogleCloudDatapipelinesV1ArrayValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1AtomicValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ComputeSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ConfiguredTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1DataflowJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1EnumerationValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1FieldType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1FieldValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1FixedBytesValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1IterableValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LaunchTemplateParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LaunchTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ListPipelinesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LogicalType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LogicalTypeEnumerationType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1LogicalTypeFixedBytes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1MapType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1MapValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1MapValueEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Pipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1RawSchemaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1RunPipelineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1RunPipelineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1RuntimeEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ScheduleSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1SchemaSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1SdkVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1StopPipelineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1TransformDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDecimal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1ArrayValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1AtomicValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :byte_value, as: 'byteValue'
          property :bytes_value, :base64 => true, as: 'bytesValue'
          property :datetime_value, as: 'datetimeValue', class: Google::Apis::DatapipelinesV1::GoogleTypeDateTime, decorator: Google::Apis::DatapipelinesV1::GoogleTypeDateTime::Representation
      
          property :decimal_value, as: 'decimalValue', class: Google::Apis::DatapipelinesV1::GoogleTypeDecimal, decorator: Google::Apis::DatapipelinesV1::GoogleTypeDecimal::Representation
      
          property :double_value, as: 'doubleValue'
          property :float_value, as: 'floatValue'
          property :int16_value, as: 'int16Value'
          property :int32_value, as: 'int32Value'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transform_descriptions, as: 'transformDescriptions', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1ComputeSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ConfiguredTransform, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ConfiguredTransform::Representation
      
          collection :input_schemas, as: 'inputSchemas', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema::Representation
      
          property :raw_schema, as: 'rawSchema', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RawSchemaInfo, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RawSchemaInfo::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1ConfiguredTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row::Representation
      
          property :uniform_resource_name, as: 'uniformResourceName'
        end
      end
      
      class GoogleCloudDatapipelinesV1DataflowJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_workers, as: 'currentWorkers'
          hash :resource_info, as: 'resourceInfo'
          property :sdk_version, as: 'sdkVersion', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SdkVersion, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SdkVersion::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1EnumerationValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatapipelinesV1Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1FieldType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_element_type, as: 'collectionElementType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType::Representation
      
          property :logical_type, as: 'logicalType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalType::Representation
      
          property :map_type, as: 'mapType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapType::Representation
      
          property :nullable, as: 'nullable'
          property :row_schema, as: 'rowSchema', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatapipelinesV1FieldValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_value, as: 'arrayValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ArrayValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ArrayValue::Representation
      
          property :atomic_value, as: 'atomicValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1AtomicValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1AtomicValue::Representation
      
          property :enum_value, as: 'enumValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1EnumerationValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1EnumerationValue::Representation
      
          property :fixed_bytes_value, as: 'fixedBytesValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FixedBytesValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FixedBytesValue::Representation
      
          property :iterable_value, as: 'iterableValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1IterableValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1IterableValue::Representation
      
          property :map_value, as: 'mapValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValue::Representation
      
          property :row_value, as: 'rowValue', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Row::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1FixedBytesValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          hash :additional_user_labels, as: 'additionalUserLabels'
          property :enable_streaming_engine, as: 'enableStreamingEngine'
          property :flexrs_goal, as: 'flexrsGoal'
          property :ip_configuration, as: 'ipConfiguration'
          property :kms_key_name, as: 'kmsKeyName'
          property :machine_type, as: 'machineType'
          property :max_workers, as: 'maxWorkers'
          property :network, as: 'network'
          property :num_workers, as: 'numWorkers'
          property :service_account_email, as: 'serviceAccountEmail'
          property :subnetwork, as: 'subnetwork'
          property :temp_location, as: 'tempLocation'
          property :worker_region, as: 'workerRegion'
          property :worker_zone, as: 'workerZone'
          property :zone, as: 'zone'
        end
      end
      
      class GoogleCloudDatapipelinesV1IterableValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataflow_job_details, as: 'dataflowJobDetails', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1DataflowJobDetails, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1DataflowJobDetails::Representation
      
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          property :name, as: 'name'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::DatapipelinesV1::GoogleRpcStatus, decorator: Google::Apis::DatapipelinesV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_spec_gcs_path, as: 'containerSpecGcsPath'
          property :environment, as: 'environment', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment::Representation
      
          property :job_name, as: 'jobName'
          hash :launch_options, as: 'launchOptions'
          hash :parameters, as: 'parameters'
          hash :transform_name_mappings, as: 'transformNameMappings'
          property :update, as: 'update'
        end
      end
      
      class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :launch_parameter, as: 'launchParameter', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter::Representation
      
          property :location, as: 'location'
          property :project_id, as: 'projectId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDatapipelinesV1LaunchTemplateParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RuntimeEnvironment, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RuntimeEnvironment::Representation
      
          property :job_name, as: 'jobName'
          hash :parameters, as: 'parameters'
          hash :transform_name_mapping, as: 'transformNameMapping'
          property :update, as: 'update'
        end
      end
      
      class GoogleCloudDatapipelinesV1LaunchTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_path, as: 'gcsPath'
          property :launch_parameters, as: 'launchParameters', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateParameters, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateParameters::Representation
      
          property :location, as: 'location'
          property :project_id, as: 'projectId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDatapipelinesV1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatapipelinesV1ListPipelinesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pipelines, as: 'pipelines', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1LogicalType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enumeration_type, as: 'enumerationType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeEnumerationType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeEnumerationType::Representation
      
          property :fixed_bytes, as: 'fixedBytes', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeFixedBytes, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LogicalTypeFixedBytes::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1LogicalTypeEnumerationType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDatapipelinesV1LogicalTypeFixedBytes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_bytes, as: 'sizeBytes'
        end
      end
      
      class GoogleCloudDatapipelinesV1MapType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :map_key_type, as: 'mapKeyType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType::Representation
      
          property :map_value_type, as: 'mapValueType', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldType::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1MapValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValueEntry, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1MapValueEntry::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1MapValueEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue::Representation
      
          property :value, as: 'value', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1Pipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :job_count, as: 'jobCount'
          property :last_update_time, as: 'lastUpdateTime'
          property :name, as: 'name'
          hash :pipeline_sources, as: 'pipelineSources'
          property :schedule_info, as: 'scheduleInfo', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ScheduleSpec, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ScheduleSpec::Representation
      
          property :scheduler_service_account_email, as: 'schedulerServiceAccountEmail'
          property :state, as: 'state'
          property :type, as: 'type'
          property :workload, as: 'workload', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Workload, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Workload::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1RawSchemaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :raw_schema, as: 'rawSchema'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatapipelinesV1Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SchemaSource, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SchemaSource::Representation
      
          collection :values, as: 'values', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1FieldValue::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1RunPipelineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatapipelinesV1RunPipelineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Job::Representation
      
        end
      end
      
      class GoogleCloudDatapipelinesV1RuntimeEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          hash :additional_user_labels, as: 'additionalUserLabels'
          property :bypass_temp_dir_validation, as: 'bypassTempDirValidation'
          property :enable_streaming_engine, as: 'enableStreamingEngine'
          property :ip_configuration, as: 'ipConfiguration'
          property :kms_key_name, as: 'kmsKeyName'
          property :machine_type, as: 'machineType'
          property :max_workers, as: 'maxWorkers'
          property :network, as: 'network'
          property :num_workers, as: 'numWorkers'
          property :service_account_email, as: 'serviceAccountEmail'
          property :subnetwork, as: 'subnetwork'
          property :temp_location, as: 'tempLocation'
          property :worker_region, as: 'workerRegion'
          property :worker_zone, as: 'workerZone'
          property :zone, as: 'zone'
        end
      end
      
      class GoogleCloudDatapipelinesV1ScheduleSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_job_time, as: 'nextJobTime'
          property :schedule, as: 'schedule'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDatapipelinesV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Field, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Field::Representation
      
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDatapipelinesV1SchemaSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_schema, as: 'localSchema', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema::Representation
      
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDatapipelinesV1SdkVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk_support_status, as: 'sdkSupportStatus'
          property :version, as: 'version'
          property :version_display_name, as: 'versionDisplayName'
        end
      end
      
      class GoogleCloudDatapipelinesV1StopPipelineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatapipelinesV1TransformDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema::Representation
      
          property :uniform_resource_name, as: 'uniformResourceName'
        end
      end
      
      class GoogleCloudDatapipelinesV1Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataflow_flex_template_request, as: 'dataflowFlexTemplateRequest', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest::Representation
      
          property :dataflow_launch_template_request, as: 'dataflowLaunchTemplateRequest', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateRequest, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1LaunchTemplateRequest::Representation
      
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::DatapipelinesV1::GoogleTypeTimeZone, decorator: Google::Apis::DatapipelinesV1::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeDecimal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
