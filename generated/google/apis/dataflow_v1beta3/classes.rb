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
    module DataflowV1beta3

      # 
      class ApproximateProgress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `percentComplete`
        # @return [Float]
        attr_accessor :percent_complete
      
        # 
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::DataflowV1beta3::Position]
        attr_accessor :position
      
        # 
        # Corresponds to the JSON property `remainingTime`
        # @return [String]
        attr_accessor :remaining_time
      
        def initialize(**args)
          @percent_complete = args[:percent_complete] unless args[:percent_complete].nil?
          @position = args[:position] unless args[:position].nil?
          @remaining_time = args[:remaining_time] unless args[:remaining_time].nil?
        end
      end

      # 
      class AutoscalingSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # 
        # Corresponds to the JSON property `maxNumWorkers`
        # @return [Fixnum]
        attr_accessor :max_num_workers
      
        def initialize(**args)
          @algorithm = args[:algorithm] unless args[:algorithm].nil?
          @max_num_workers = args[:max_num_workers] unless args[:max_num_workers].nil?
        end
      end

      # 
      class ComputationTopology
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `computationId`
        # @return [String]
        attr_accessor :computation_id
      
        # 
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::DataflowV1beta3::StreamLocation>]
        attr_accessor :inputs
      
        # 
        # Corresponds to the JSON property `keyRanges`
        # @return [Array<Google::Apis::DataflowV1beta3::KeyRangeLocation>]
        attr_accessor :key_ranges
      
        # 
        # Corresponds to the JSON property `outputs`
        # @return [Array<Google::Apis::DataflowV1beta3::StreamLocation>]
        attr_accessor :outputs
      
        def initialize(**args)
          @computation_id = args[:computation_id] unless args[:computation_id].nil?
          @inputs = args[:inputs] unless args[:inputs].nil?
          @key_ranges = args[:key_ranges] unless args[:key_ranges].nil?
          @outputs = args[:outputs] unless args[:outputs].nil?
        end
      end

      # 
      class DataDiskAssignment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataDisks`
        # @return [Array<String>]
        attr_accessor :data_disks
      
        # 
        # Corresponds to the JSON property `vmInstance`
        # @return [String]
        attr_accessor :vm_instance
      
        def initialize(**args)
          @data_disks = args[:data_disks] unless args[:data_disks].nil?
          @vm_instance = args[:vm_instance] unless args[:vm_instance].nil?
        end
      end

      # 
      class DerivedSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `derivationMode`
        # @return [String]
        attr_accessor :derivation_mode
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DataflowV1beta3::Source]
        attr_accessor :source
      
        def initialize(**args)
          @derivation_mode = args[:derivation_mode] unless args[:derivation_mode].nil?
          @source = args[:source] unless args[:source].nil?
        end
      end

      # 
      class Disk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # 
        # Corresponds to the JSON property `mountPoint`
        # @return [String]
        attr_accessor :mount_point
      
        # 
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
          @disk_type = args[:disk_type] unless args[:disk_type].nil?
          @mount_point = args[:mount_point] unless args[:mount_point].nil?
          @size_gb = args[:size_gb] unless args[:size_gb].nil?
        end
      end

      # 
      class DynamicSourceSplit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `primary`
        # @return [Google::Apis::DataflowV1beta3::DerivedSource]
        attr_accessor :primary
      
        # 
        # Corresponds to the JSON property `residual`
        # @return [Google::Apis::DataflowV1beta3::DerivedSource]
        attr_accessor :residual
      
        def initialize(**args)
          @primary = args[:primary] unless args[:primary].nil?
          @residual = args[:residual] unless args[:residual].nil?
        end
      end

      # 
      class Environment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clusterManagerApiService`
        # @return [String]
        attr_accessor :cluster_manager_api_service
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # 
        # Corresponds to the JSON property `experiments`
        # @return [Array<String>]
        attr_accessor :experiments
      
        # 
        # Corresponds to the JSON property `sdkPipelineOptions`
        # @return [Hash<String,Object>]
        attr_accessor :sdk_pipeline_options
      
        # 
        # Corresponds to the JSON property `tempStoragePrefix`
        # @return [String]
        attr_accessor :temp_storage_prefix
      
        # 
        # Corresponds to the JSON property `userAgent`
        # @return [Hash<String,Object>]
        attr_accessor :user_agent
      
        # 
        # Corresponds to the JSON property `version`
        # @return [Hash<String,Object>]
        attr_accessor :version
      
        # 
        # Corresponds to the JSON property `workerPools`
        # @return [Array<Google::Apis::DataflowV1beta3::WorkerPool>]
        attr_accessor :worker_pools
      
        def initialize(**args)
          @cluster_manager_api_service = args[:cluster_manager_api_service] unless args[:cluster_manager_api_service].nil?
          @dataset = args[:dataset] unless args[:dataset].nil?
          @experiments = args[:experiments] unless args[:experiments].nil?
          @sdk_pipeline_options = args[:sdk_pipeline_options] unless args[:sdk_pipeline_options].nil?
          @temp_storage_prefix = args[:temp_storage_prefix] unless args[:temp_storage_prefix].nil?
          @user_agent = args[:user_agent] unless args[:user_agent].nil?
          @version = args[:version] unless args[:version].nil?
          @worker_pools = args[:worker_pools] unless args[:worker_pools].nil?
        end
      end

      # 
      class FlattenInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::DataflowV1beta3::InstructionInput>]
        attr_accessor :inputs
      
        def initialize(**args)
          @inputs = args[:inputs] unless args[:inputs].nil?
        end
      end

      # 
      class InstructionInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `outputNum`
        # @return [Fixnum]
        attr_accessor :output_num
      
        # 
        # Corresponds to the JSON property `producerInstructionIndex`
        # @return [Fixnum]
        attr_accessor :producer_instruction_index
      
        def initialize(**args)
          @output_num = args[:output_num] unless args[:output_num].nil?
          @producer_instruction_index = args[:producer_instruction_index] unless args[:producer_instruction_index].nil?
        end
      end

      # 
      class InstructionOutput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `codec`
        # @return [Hash<String,Object>]
        attr_accessor :codec
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
          @codec = args[:codec] unless args[:codec].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end

      # 
      class Job
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # 
        # Corresponds to the JSON property `currentStateTime`
        # @return [String]
        attr_accessor :current_state_time
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DataflowV1beta3::Environment]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `executionInfo`
        # @return [Google::Apis::DataflowV1beta3::JobExecutionInfo]
        attr_accessor :execution_info
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # 
        # Corresponds to the JSON property `requestedState`
        # @return [String]
        attr_accessor :requested_state
      
        # 
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::DataflowV1beta3::Step>]
        attr_accessor :steps
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @create_time = args[:create_time] unless args[:create_time].nil?
          @current_state = args[:current_state] unless args[:current_state].nil?
          @current_state_time = args[:current_state_time] unless args[:current_state_time].nil?
          @environment = args[:environment] unless args[:environment].nil?
          @execution_info = args[:execution_info] unless args[:execution_info].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @requested_state = args[:requested_state] unless args[:requested_state].nil?
          @steps = args[:steps] unless args[:steps].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end

      # 
      class JobExecutionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stages`
        # @return [Hash<String,Google::Apis::DataflowV1beta3::JobExecutionStageInfo>]
        attr_accessor :stages
      
        def initialize(**args)
          @stages = args[:stages] unless args[:stages].nil?
        end
      end

      # 
      class JobExecutionStageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stepName`
        # @return [Array<String>]
        attr_accessor :step_name
      
        def initialize(**args)
          @step_name = args[:step_name] unless args[:step_name].nil?
        end
      end

      # 
      class JobMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `messageImportance`
        # @return [String]
        attr_accessor :message_importance
      
        # 
        # Corresponds to the JSON property `messageText`
        # @return [String]
        attr_accessor :message_text
      
        # 
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
          @id = args[:id] unless args[:id].nil?
          @message_importance = args[:message_importance] unless args[:message_importance].nil?
          @message_text = args[:message_text] unless args[:message_text].nil?
          @time = args[:time] unless args[:time].nil?
        end
      end

      # 
      class JobMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metricTime`
        # @return [String]
        attr_accessor :metric_time
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DataflowV1beta3::MetricUpdate>]
        attr_accessor :metrics
      
        def initialize(**args)
          @metric_time = args[:metric_time] unless args[:metric_time].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
        end
      end

      # 
      class KeyRangeDataDiskAssignment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataDisk`
        # @return [String]
        attr_accessor :data_disk
      
        # 
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # 
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
          @data_disk = args[:data_disk] unless args[:data_disk].nil?
          @end = args[:end] unless args[:end].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end

      # 
      class KeyRangeLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataDisk`
        # @return [String]
        attr_accessor :data_disk
      
        # 
        # Corresponds to the JSON property `deliveryEndpoint`
        # @return [String]
        attr_accessor :delivery_endpoint
      
        # 
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # 
        # Corresponds to the JSON property `persistentDirectory`
        # @return [String]
        attr_accessor :persistent_directory
      
        # 
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
          @data_disk = args[:data_disk] unless args[:data_disk].nil?
          @delivery_endpoint = args[:delivery_endpoint] unless args[:delivery_endpoint].nil?
          @end = args[:end] unless args[:end].nil?
          @persistent_directory = args[:persistent_directory] unless args[:persistent_directory].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end

      # 
      class LeaseWorkItemRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentWorkerTime`
        # @return [String]
        attr_accessor :current_worker_time
      
        # 
        # Corresponds to the JSON property `requestedLeaseDuration`
        # @return [String]
        attr_accessor :requested_lease_duration
      
        # 
        # Corresponds to the JSON property `workItemTypes`
        # @return [Array<String>]
        attr_accessor :work_item_types
      
        # 
        # Corresponds to the JSON property `workerCapabilities`
        # @return [Array<String>]
        attr_accessor :worker_capabilities
      
        # 
        # Corresponds to the JSON property `workerId`
        # @return [String]
        attr_accessor :worker_id
      
        def initialize(**args)
          @current_worker_time = args[:current_worker_time] unless args[:current_worker_time].nil?
          @requested_lease_duration = args[:requested_lease_duration] unless args[:requested_lease_duration].nil?
          @work_item_types = args[:work_item_types] unless args[:work_item_types].nil?
          @worker_capabilities = args[:worker_capabilities] unless args[:worker_capabilities].nil?
          @worker_id = args[:worker_id] unless args[:worker_id].nil?
        end
      end

      # 
      class LeaseWorkItemResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `workItems`
        # @return [Array<Google::Apis::DataflowV1beta3::WorkItem>]
        attr_accessor :work_items
      
        def initialize(**args)
          @work_items = args[:work_items] unless args[:work_items].nil?
        end
      end

      # 
      class ListJobMessagesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `jobMessages`
        # @return [Array<Google::Apis::DataflowV1beta3::JobMessage>]
        attr_accessor :job_messages
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
          @job_messages = args[:job_messages] unless args[:job_messages].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end

      # 
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DataflowV1beta3::Job>]
        attr_accessor :jobs
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
          @jobs = args[:jobs] unless args[:jobs].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end

      # 
      class MapTask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `instructions`
        # @return [Array<Google::Apis::DataflowV1beta3::ParallelInstruction>]
        attr_accessor :instructions
      
        # 
        # Corresponds to the JSON property `stageName`
        # @return [String]
        attr_accessor :stage_name
      
        # 
        # Corresponds to the JSON property `systemName`
        # @return [String]
        attr_accessor :system_name
      
        def initialize(**args)
          @instructions = args[:instructions] unless args[:instructions].nil?
          @stage_name = args[:stage_name] unless args[:stage_name].nil?
          @system_name = args[:system_name] unless args[:system_name].nil?
        end
      end

      # 
      class MetricStructuredName
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `context`
        # @return [Hash<String,String>]
        attr_accessor :context
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        def initialize(**args)
          @context = args[:context] unless args[:context].nil?
          @name = args[:name] unless args[:name].nil?
          @origin = args[:origin] unless args[:origin].nil?
        end
      end

      # 
      class MetricUpdate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cumulative`
        # @return [Boolean]
        attr_accessor :cumulative
        alias_method :cumulative?, :cumulative
      
        # 
        # Corresponds to the JSON property `internal`
        # @return [Object]
        attr_accessor :internal
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `meanCount`
        # @return [Object]
        attr_accessor :mean_count
      
        # 
        # Corresponds to the JSON property `meanSum`
        # @return [Object]
        attr_accessor :mean_sum
      
        # 
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::DataflowV1beta3::MetricStructuredName]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `scalar`
        # @return [Object]
        attr_accessor :scalar
      
        # 
        # Corresponds to the JSON property `set`
        # @return [Object]
        attr_accessor :set
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
          @cumulative = args[:cumulative] unless args[:cumulative].nil?
          @internal = args[:internal] unless args[:internal].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mean_count = args[:mean_count] unless args[:mean_count].nil?
          @mean_sum = args[:mean_sum] unless args[:mean_sum].nil?
          @name = args[:name] unless args[:name].nil?
          @scalar = args[:scalar] unless args[:scalar].nil?
          @set = args[:set] unless args[:set].nil?
          @update_time = args[:update_time] unless args[:update_time].nil?
        end
      end

      # 
      class MountedDataDisk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataDisk`
        # @return [String]
        attr_accessor :data_disk
      
        def initialize(**args)
          @data_disk = args[:data_disk] unless args[:data_disk].nil?
        end
      end

      # 
      class MultiOutputInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
          @tag = args[:tag] unless args[:tag].nil?
        end
      end

      # 
      class Package
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
          @location = args[:location] unless args[:location].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end

      # 
      class ParDoInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DataflowV1beta3::InstructionInput]
        attr_accessor :input
      
        # 
        # Corresponds to the JSON property `multiOutputInfos`
        # @return [Array<Google::Apis::DataflowV1beta3::MultiOutputInfo>]
        attr_accessor :multi_output_infos
      
        # 
        # Corresponds to the JSON property `numOutputs`
        # @return [Fixnum]
        attr_accessor :num_outputs
      
        # 
        # Corresponds to the JSON property `sideInputs`
        # @return [Array<Google::Apis::DataflowV1beta3::SideInputInfo>]
        attr_accessor :side_inputs
      
        # 
        # Corresponds to the JSON property `userFn`
        # @return [Hash<String,Object>]
        attr_accessor :user_fn
      
        def initialize(**args)
          @input = args[:input] unless args[:input].nil?
          @multi_output_infos = args[:multi_output_infos] unless args[:multi_output_infos].nil?
          @num_outputs = args[:num_outputs] unless args[:num_outputs].nil?
          @side_inputs = args[:side_inputs] unless args[:side_inputs].nil?
          @user_fn = args[:user_fn] unless args[:user_fn].nil?
        end
      end

      # 
      class ParallelInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flatten`
        # @return [Google::Apis::DataflowV1beta3::FlattenInstruction]
        attr_accessor :flatten
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `outputs`
        # @return [Array<Google::Apis::DataflowV1beta3::InstructionOutput>]
        attr_accessor :outputs
      
        # 
        # Corresponds to the JSON property `parDo`
        # @return [Google::Apis::DataflowV1beta3::ParDoInstruction]
        attr_accessor :par_do
      
        # 
        # Corresponds to the JSON property `partialGroupByKey`
        # @return [Google::Apis::DataflowV1beta3::PartialGroupByKeyInstruction]
        attr_accessor :partial_group_by_key
      
        # 
        # Corresponds to the JSON property `read`
        # @return [Google::Apis::DataflowV1beta3::ReadInstruction]
        attr_accessor :read
      
        # 
        # Corresponds to the JSON property `systemName`
        # @return [String]
        attr_accessor :system_name
      
        # 
        # Corresponds to the JSON property `write`
        # @return [Google::Apis::DataflowV1beta3::WriteInstruction]
        attr_accessor :write
      
        def initialize(**args)
          @flatten = args[:flatten] unless args[:flatten].nil?
          @name = args[:name] unless args[:name].nil?
          @outputs = args[:outputs] unless args[:outputs].nil?
          @par_do = args[:par_do] unless args[:par_do].nil?
          @partial_group_by_key = args[:partial_group_by_key] unless args[:partial_group_by_key].nil?
          @read = args[:read] unless args[:read].nil?
          @system_name = args[:system_name] unless args[:system_name].nil?
          @write = args[:write] unless args[:write].nil?
        end
      end

      # 
      class PartialGroupByKeyInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DataflowV1beta3::InstructionInput]
        attr_accessor :input
      
        # 
        # Corresponds to the JSON property `inputElementCodec`
        # @return [Hash<String,Object>]
        attr_accessor :input_element_codec
      
        # 
        # Corresponds to the JSON property `valueCombiningFn`
        # @return [Hash<String,Object>]
        attr_accessor :value_combining_fn
      
        def initialize(**args)
          @input = args[:input] unless args[:input].nil?
          @input_element_codec = args[:input_element_codec] unless args[:input_element_codec].nil?
          @value_combining_fn = args[:value_combining_fn] unless args[:value_combining_fn].nil?
        end
      end

      # 
      class Position
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `byteOffset`
        # @return [String]
        attr_accessor :byte_offset
      
        # 
        # Corresponds to the JSON property `end`
        # @return [Boolean]
        attr_accessor :end
        alias_method :end?, :end
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `recordIndex`
        # @return [String]
        attr_accessor :record_index
      
        # 
        # Corresponds to the JSON property `shufflePosition`
        # @return [String]
        attr_accessor :shuffle_position
      
        def initialize(**args)
          @byte_offset = args[:byte_offset] unless args[:byte_offset].nil?
          @end = args[:end] unless args[:end].nil?
          @key = args[:key] unless args[:key].nil?
          @record_index = args[:record_index] unless args[:record_index].nil?
          @shuffle_position = args[:shuffle_position] unless args[:shuffle_position].nil?
        end
      end

      # 
      class PubsubLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dropLateData`
        # @return [Boolean]
        attr_accessor :drop_late_data
        alias_method :drop_late_data?, :drop_late_data
      
        # 
        # Corresponds to the JSON property `idLabel`
        # @return [String]
        attr_accessor :id_label
      
        # 
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        # 
        # Corresponds to the JSON property `timestampLabel`
        # @return [String]
        attr_accessor :timestamp_label
      
        # 
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        # 
        # Corresponds to the JSON property `trackingSubscription`
        # @return [String]
        attr_accessor :tracking_subscription
      
        def initialize(**args)
          @drop_late_data = args[:drop_late_data] unless args[:drop_late_data].nil?
          @id_label = args[:id_label] unless args[:id_label].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
          @timestamp_label = args[:timestamp_label] unless args[:timestamp_label].nil?
          @topic = args[:topic] unless args[:topic].nil?
          @tracking_subscription = args[:tracking_subscription] unless args[:tracking_subscription].nil?
        end
      end

      # 
      class ReadInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DataflowV1beta3::Source]
        attr_accessor :source
      
        def initialize(**args)
          @source = args[:source] unless args[:source].nil?
        end
      end

      # 
      class ReportWorkItemStatusRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentWorkerTime`
        # @return [String]
        attr_accessor :current_worker_time
      
        # 
        # Corresponds to the JSON property `workItemStatuses`
        # @return [Array<Google::Apis::DataflowV1beta3::WorkItemStatus>]
        attr_accessor :work_item_statuses
      
        # 
        # Corresponds to the JSON property `workerId`
        # @return [String]
        attr_accessor :worker_id
      
        def initialize(**args)
          @current_worker_time = args[:current_worker_time] unless args[:current_worker_time].nil?
          @work_item_statuses = args[:work_item_statuses] unless args[:work_item_statuses].nil?
          @worker_id = args[:worker_id] unless args[:worker_id].nil?
        end
      end

      # 
      class ReportWorkItemStatusResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `workItemServiceStates`
        # @return [Array<Google::Apis::DataflowV1beta3::WorkItemServiceState>]
        attr_accessor :work_item_service_states
      
        def initialize(**args)
          @work_item_service_states = args[:work_item_service_states] unless args[:work_item_service_states].nil?
        end
      end

      # 
      class SeqMapTask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::DataflowV1beta3::SideInputInfo>]
        attr_accessor :inputs
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `outputInfos`
        # @return [Array<Google::Apis::DataflowV1beta3::SeqMapTaskOutputInfo>]
        attr_accessor :output_infos
      
        # 
        # Corresponds to the JSON property `stageName`
        # @return [String]
        attr_accessor :stage_name
      
        # 
        # Corresponds to the JSON property `systemName`
        # @return [String]
        attr_accessor :system_name
      
        # 
        # Corresponds to the JSON property `userFn`
        # @return [Hash<String,Object>]
        attr_accessor :user_fn
      
        def initialize(**args)
          @inputs = args[:inputs] unless args[:inputs].nil?
          @name = args[:name] unless args[:name].nil?
          @output_infos = args[:output_infos] unless args[:output_infos].nil?
          @stage_name = args[:stage_name] unless args[:stage_name].nil?
          @system_name = args[:system_name] unless args[:system_name].nil?
          @user_fn = args[:user_fn] unless args[:user_fn].nil?
        end
      end

      # 
      class SeqMapTaskOutputInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sink`
        # @return [Google::Apis::DataflowV1beta3::Sink]
        attr_accessor :sink
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
          @sink = args[:sink] unless args[:sink].nil?
          @tag = args[:tag] unless args[:tag].nil?
        end
      end

      # 
      class ShellTask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # 
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        def initialize(**args)
          @command = args[:command] unless args[:command].nil?
          @exit_code = args[:exit_code] unless args[:exit_code].nil?
        end
      end

      # 
      class SideInputInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [Hash<String,Object>]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::DataflowV1beta3::Source>]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @sources = args[:sources] unless args[:sources].nil?
          @tag = args[:tag] unless args[:tag].nil?
        end
      end

      # 
      class Sink
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `codec`
        # @return [Hash<String,Object>]
        attr_accessor :codec
      
        # 
        # Corresponds to the JSON property `spec`
        # @return [Hash<String,Object>]
        attr_accessor :spec
      
        def initialize(**args)
          @codec = args[:codec] unless args[:codec].nil?
          @spec = args[:spec] unless args[:spec].nil?
        end
      end

      # 
      class Source
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseSpecs`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :base_specs
      
        # 
        # Corresponds to the JSON property `codec`
        # @return [Hash<String,Object>]
        attr_accessor :codec
      
        # 
        # Corresponds to the JSON property `doesNotNeedSplitting`
        # @return [Boolean]
        attr_accessor :does_not_need_splitting
        alias_method :does_not_need_splitting?, :does_not_need_splitting
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DataflowV1beta3::SourceMetadata]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `spec`
        # @return [Hash<String,Object>]
        attr_accessor :spec
      
        def initialize(**args)
          @base_specs = args[:base_specs] unless args[:base_specs].nil?
          @codec = args[:codec] unless args[:codec].nil?
          @does_not_need_splitting = args[:does_not_need_splitting] unless args[:does_not_need_splitting].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @spec = args[:spec] unless args[:spec].nil?
        end
      end

      # 
      class SourceFork
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `primary`
        # @return [Google::Apis::DataflowV1beta3::SourceSplitShard]
        attr_accessor :primary
      
        # 
        # Corresponds to the JSON property `primarySource`
        # @return [Google::Apis::DataflowV1beta3::DerivedSource]
        attr_accessor :primary_source
      
        # 
        # Corresponds to the JSON property `residual`
        # @return [Google::Apis::DataflowV1beta3::SourceSplitShard]
        attr_accessor :residual
      
        # 
        # Corresponds to the JSON property `residualSource`
        # @return [Google::Apis::DataflowV1beta3::DerivedSource]
        attr_accessor :residual_source
      
        def initialize(**args)
          @primary = args[:primary] unless args[:primary].nil?
          @primary_source = args[:primary_source] unless args[:primary_source].nil?
          @residual = args[:residual] unless args[:residual].nil?
          @residual_source = args[:residual_source] unless args[:residual_source].nil?
        end
      end

      # 
      class SourceGetMetadataRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DataflowV1beta3::Source]
        attr_accessor :source
      
        def initialize(**args)
          @source = args[:source] unless args[:source].nil?
        end
      end

      # 
      class SourceGetMetadataResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DataflowV1beta3::SourceMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
          @metadata = args[:metadata] unless args[:metadata].nil?
        end
      end

      # 
      class SourceMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `estimatedSizeBytes`
        # @return [String]
        attr_accessor :estimated_size_bytes
      
        # 
        # Corresponds to the JSON property `infinite`
        # @return [Boolean]
        attr_accessor :infinite
        alias_method :infinite?, :infinite
      
        # 
        # Corresponds to the JSON property `producesSortedKeys`
        # @return [Boolean]
        attr_accessor :produces_sorted_keys
        alias_method :produces_sorted_keys?, :produces_sorted_keys
      
        def initialize(**args)
          @estimated_size_bytes = args[:estimated_size_bytes] unless args[:estimated_size_bytes].nil?
          @infinite = args[:infinite] unless args[:infinite].nil?
          @produces_sorted_keys = args[:produces_sorted_keys] unless args[:produces_sorted_keys].nil?
        end
      end

      # 
      class SourceOperationRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `getMetadata`
        # @return [Google::Apis::DataflowV1beta3::SourceGetMetadataRequest]
        attr_accessor :get_metadata
      
        # 
        # Corresponds to the JSON property `split`
        # @return [Google::Apis::DataflowV1beta3::SourceSplitRequest]
        attr_accessor :split
      
        def initialize(**args)
          @get_metadata = args[:get_metadata] unless args[:get_metadata].nil?
          @split = args[:split] unless args[:split].nil?
        end
      end

      # 
      class SourceOperationResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `getMetadata`
        # @return [Google::Apis::DataflowV1beta3::SourceGetMetadataResponse]
        attr_accessor :get_metadata
      
        # 
        # Corresponds to the JSON property `split`
        # @return [Google::Apis::DataflowV1beta3::SourceSplitResponse]
        attr_accessor :split
      
        def initialize(**args)
          @get_metadata = args[:get_metadata] unless args[:get_metadata].nil?
          @split = args[:split] unless args[:split].nil?
        end
      end

      # 
      class SourceSplitOptions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `desiredBundleSizeBytes`
        # @return [String]
        attr_accessor :desired_bundle_size_bytes
      
        # 
        # Corresponds to the JSON property `desiredShardSizeBytes`
        # @return [String]
        attr_accessor :desired_shard_size_bytes
      
        def initialize(**args)
          @desired_bundle_size_bytes = args[:desired_bundle_size_bytes] unless args[:desired_bundle_size_bytes].nil?
          @desired_shard_size_bytes = args[:desired_shard_size_bytes] unless args[:desired_shard_size_bytes].nil?
        end
      end

      # 
      class SourceSplitRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DataflowV1beta3::SourceSplitOptions]
        attr_accessor :options
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DataflowV1beta3::Source]
        attr_accessor :source
      
        def initialize(**args)
          @options = args[:options] unless args[:options].nil?
          @source = args[:source] unless args[:source].nil?
        end
      end

      # 
      class SourceSplitResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bundles`
        # @return [Array<Google::Apis::DataflowV1beta3::DerivedSource>]
        attr_accessor :bundles
      
        # 
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # 
        # Corresponds to the JSON property `shards`
        # @return [Array<Google::Apis::DataflowV1beta3::SourceSplitShard>]
        attr_accessor :shards
      
        def initialize(**args)
          @bundles = args[:bundles] unless args[:bundles].nil?
          @outcome = args[:outcome] unless args[:outcome].nil?
          @shards = args[:shards] unless args[:shards].nil?
        end
      end

      # 
      class SourceSplitShard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `derivationMode`
        # @return [String]
        attr_accessor :derivation_mode
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DataflowV1beta3::Source]
        attr_accessor :source
      
        def initialize(**args)
          @derivation_mode = args[:derivation_mode] unless args[:derivation_mode].nil?
          @source = args[:source] unless args[:source].nil?
        end
      end

      # 
      class Status
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
          @code = args[:code] unless args[:code].nil?
          @details = args[:details] unless args[:details].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end

      # 
      class Step
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Object>]
        attr_accessor :properties
      
        def initialize(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @properties = args[:properties] unless args[:properties].nil?
        end
      end

      # 
      class StreamLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pubsubLocation`
        # @return [Google::Apis::DataflowV1beta3::PubsubLocation]
        attr_accessor :pubsub_location
      
        # 
        # Corresponds to the JSON property `sideInputLocation`
        # @return [Google::Apis::DataflowV1beta3::StreamingSideInputLocation]
        attr_accessor :side_input_location
      
        # 
        # Corresponds to the JSON property `streamingStageLocation`
        # @return [Google::Apis::DataflowV1beta3::StreamingStageLocation]
        attr_accessor :streaming_stage_location
      
        def initialize(**args)
          @pubsub_location = args[:pubsub_location] unless args[:pubsub_location].nil?
          @side_input_location = args[:side_input_location] unless args[:side_input_location].nil?
          @streaming_stage_location = args[:streaming_stage_location] unless args[:streaming_stage_location].nil?
        end
      end

      # 
      class StreamingComputationRanges
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `computationId`
        # @return [String]
        attr_accessor :computation_id
      
        # 
        # Corresponds to the JSON property `rangeAssignments`
        # @return [Array<Google::Apis::DataflowV1beta3::KeyRangeDataDiskAssignment>]
        attr_accessor :range_assignments
      
        def initialize(**args)
          @computation_id = args[:computation_id] unless args[:computation_id].nil?
          @range_assignments = args[:range_assignments] unless args[:range_assignments].nil?
        end
      end

      # 
      class StreamingComputationTask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `computationRanges`
        # @return [Array<Google::Apis::DataflowV1beta3::StreamingComputationRanges>]
        attr_accessor :computation_ranges
      
        # 
        # Corresponds to the JSON property `dataDisks`
        # @return [Array<Google::Apis::DataflowV1beta3::MountedDataDisk>]
        attr_accessor :data_disks
      
        # 
        # Corresponds to the JSON property `taskType`
        # @return [String]
        attr_accessor :task_type
      
        def initialize(**args)
          @computation_ranges = args[:computation_ranges] unless args[:computation_ranges].nil?
          @data_disks = args[:data_disks] unless args[:data_disks].nil?
          @task_type = args[:task_type] unless args[:task_type].nil?
        end
      end

      # 
      class StreamingSetupTask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `receiveWorkPort`
        # @return [Fixnum]
        attr_accessor :receive_work_port
      
        # 
        # Corresponds to the JSON property `streamingComputationTopology`
        # @return [Google::Apis::DataflowV1beta3::TopologyConfig]
        attr_accessor :streaming_computation_topology
      
        # 
        # Corresponds to the JSON property `workerHarnessPort`
        # @return [Fixnum]
        attr_accessor :worker_harness_port
      
        def initialize(**args)
          @receive_work_port = args[:receive_work_port] unless args[:receive_work_port].nil?
          @streaming_computation_topology = args[:streaming_computation_topology] unless args[:streaming_computation_topology].nil?
          @worker_harness_port = args[:worker_harness_port] unless args[:worker_harness_port].nil?
        end
      end

      # 
      class StreamingSideInputLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
          @tag = args[:tag] unless args[:tag].nil?
        end
      end

      # 
      class StreamingStageLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `streamId`
        # @return [String]
        attr_accessor :stream_id
      
        def initialize(**args)
          @stream_id = args[:stream_id] unless args[:stream_id].nil?
        end
      end

      # 
      class TaskRunnerSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alsologtostderr`
        # @return [Boolean]
        attr_accessor :alsologtostderr
        alias_method :alsologtostderr?, :alsologtostderr
      
        # 
        # Corresponds to the JSON property `baseTaskDir`
        # @return [String]
        attr_accessor :base_task_dir
      
        # 
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # 
        # Corresponds to the JSON property `commandlinesFileName`
        # @return [String]
        attr_accessor :commandlines_file_name
      
        # 
        # Corresponds to the JSON property `continueOnException`
        # @return [Boolean]
        attr_accessor :continue_on_exception
        alias_method :continue_on_exception?, :continue_on_exception
      
        # 
        # Corresponds to the JSON property `dataflowApiVersion`
        # @return [String]
        attr_accessor :dataflow_api_version
      
        # 
        # Corresponds to the JSON property `harnessCommand`
        # @return [String]
        attr_accessor :harness_command
      
        # 
        # Corresponds to the JSON property `languageHint`
        # @return [String]
        attr_accessor :language_hint
      
        # 
        # Corresponds to the JSON property `logDir`
        # @return [String]
        attr_accessor :log_dir
      
        # 
        # Corresponds to the JSON property `logToSerialconsole`
        # @return [Boolean]
        attr_accessor :log_to_serialconsole
        alias_method :log_to_serialconsole?, :log_to_serialconsole
      
        # 
        # Corresponds to the JSON property `logUploadLocation`
        # @return [String]
        attr_accessor :log_upload_location
      
        # 
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # 
        # Corresponds to the JSON property `parallelWorkerSettings`
        # @return [Google::Apis::DataflowV1beta3::WorkerSettings]
        attr_accessor :parallel_worker_settings
      
        # 
        # Corresponds to the JSON property `streamingWorkerMainClass`
        # @return [String]
        attr_accessor :streaming_worker_main_class
      
        # 
        # Corresponds to the JSON property `taskGroup`
        # @return [String]
        attr_accessor :task_group
      
        # 
        # Corresponds to the JSON property `taskUser`
        # @return [String]
        attr_accessor :task_user
      
        # 
        # Corresponds to the JSON property `tempStoragePrefix`
        # @return [String]
        attr_accessor :temp_storage_prefix
      
        # 
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # 
        # Corresponds to the JSON property `workflowFileName`
        # @return [String]
        attr_accessor :workflow_file_name
      
        def initialize(**args)
          @alsologtostderr = args[:alsologtostderr] unless args[:alsologtostderr].nil?
          @base_task_dir = args[:base_task_dir] unless args[:base_task_dir].nil?
          @base_url = args[:base_url] unless args[:base_url].nil?
          @commandlines_file_name = args[:commandlines_file_name] unless args[:commandlines_file_name].nil?
          @continue_on_exception = args[:continue_on_exception] unless args[:continue_on_exception].nil?
          @dataflow_api_version = args[:dataflow_api_version] unless args[:dataflow_api_version].nil?
          @harness_command = args[:harness_command] unless args[:harness_command].nil?
          @language_hint = args[:language_hint] unless args[:language_hint].nil?
          @log_dir = args[:log_dir] unless args[:log_dir].nil?
          @log_to_serialconsole = args[:log_to_serialconsole] unless args[:log_to_serialconsole].nil?
          @log_upload_location = args[:log_upload_location] unless args[:log_upload_location].nil?
          @oauth_scopes = args[:oauth_scopes] unless args[:oauth_scopes].nil?
          @parallel_worker_settings = args[:parallel_worker_settings] unless args[:parallel_worker_settings].nil?
          @streaming_worker_main_class = args[:streaming_worker_main_class] unless args[:streaming_worker_main_class].nil?
          @task_group = args[:task_group] unless args[:task_group].nil?
          @task_user = args[:task_user] unless args[:task_user].nil?
          @temp_storage_prefix = args[:temp_storage_prefix] unless args[:temp_storage_prefix].nil?
          @vm_id = args[:vm_id] unless args[:vm_id].nil?
          @workflow_file_name = args[:workflow_file_name] unless args[:workflow_file_name].nil?
        end
      end

      # 
      class TopologyConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `computations`
        # @return [Array<Google::Apis::DataflowV1beta3::ComputationTopology>]
        attr_accessor :computations
      
        # 
        # Corresponds to the JSON property `dataDiskAssignments`
        # @return [Array<Google::Apis::DataflowV1beta3::DataDiskAssignment>]
        attr_accessor :data_disk_assignments
      
        def initialize(**args)
          @computations = args[:computations] unless args[:computations].nil?
          @data_disk_assignments = args[:data_disk_assignments] unless args[:data_disk_assignments].nil?
        end
      end

      # 
      class WorkItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `configuration`
        # @return [String]
        attr_accessor :configuration
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `initialReportIndex`
        # @return [String]
        attr_accessor :initial_report_index
      
        # 
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # 
        # Corresponds to the JSON property `leaseExpireTime`
        # @return [String]
        attr_accessor :lease_expire_time
      
        # 
        # Corresponds to the JSON property `mapTask`
        # @return [Google::Apis::DataflowV1beta3::MapTask]
        attr_accessor :map_task
      
        # 
        # Corresponds to the JSON property `packages`
        # @return [Array<Google::Apis::DataflowV1beta3::Package>]
        attr_accessor :packages
      
        # 
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # 
        # Corresponds to the JSON property `reportStatusInterval`
        # @return [String]
        attr_accessor :report_status_interval
      
        # 
        # Corresponds to the JSON property `seqMapTask`
        # @return [Google::Apis::DataflowV1beta3::SeqMapTask]
        attr_accessor :seq_map_task
      
        # 
        # Corresponds to the JSON property `shellTask`
        # @return [Google::Apis::DataflowV1beta3::ShellTask]
        attr_accessor :shell_task
      
        # 
        # Corresponds to the JSON property `sourceOperationTask`
        # @return [Google::Apis::DataflowV1beta3::SourceOperationRequest]
        attr_accessor :source_operation_task
      
        # 
        # Corresponds to the JSON property `streamingComputationTask`
        # @return [Google::Apis::DataflowV1beta3::StreamingComputationTask]
        attr_accessor :streaming_computation_task
      
        # 
        # Corresponds to the JSON property `streamingSetupTask`
        # @return [Google::Apis::DataflowV1beta3::StreamingSetupTask]
        attr_accessor :streaming_setup_task
      
        def initialize(**args)
          @configuration = args[:configuration] unless args[:configuration].nil?
          @id = args[:id] unless args[:id].nil?
          @initial_report_index = args[:initial_report_index] unless args[:initial_report_index].nil?
          @job_id = args[:job_id] unless args[:job_id].nil?
          @lease_expire_time = args[:lease_expire_time] unless args[:lease_expire_time].nil?
          @map_task = args[:map_task] unless args[:map_task].nil?
          @packages = args[:packages] unless args[:packages].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @report_status_interval = args[:report_status_interval] unless args[:report_status_interval].nil?
          @seq_map_task = args[:seq_map_task] unless args[:seq_map_task].nil?
          @shell_task = args[:shell_task] unless args[:shell_task].nil?
          @source_operation_task = args[:source_operation_task] unless args[:source_operation_task].nil?
          @streaming_computation_task = args[:streaming_computation_task] unless args[:streaming_computation_task].nil?
          @streaming_setup_task = args[:streaming_setup_task] unless args[:streaming_setup_task].nil?
        end
      end

      # 
      class WorkItemServiceState
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `harnessData`
        # @return [Hash<String,Object>]
        attr_accessor :harness_data
      
        # 
        # Corresponds to the JSON property `leaseExpireTime`
        # @return [String]
        attr_accessor :lease_expire_time
      
        # 
        # Corresponds to the JSON property `nextReportIndex`
        # @return [String]
        attr_accessor :next_report_index
      
        # 
        # Corresponds to the JSON property `reportStatusInterval`
        # @return [String]
        attr_accessor :report_status_interval
      
        # 
        # Corresponds to the JSON property `suggestedStopPoint`
        # @return [Google::Apis::DataflowV1beta3::ApproximateProgress]
        attr_accessor :suggested_stop_point
      
        # 
        # Corresponds to the JSON property `suggestedStopPosition`
        # @return [Google::Apis::DataflowV1beta3::Position]
        attr_accessor :suggested_stop_position
      
        def initialize(**args)
          @harness_data = args[:harness_data] unless args[:harness_data].nil?
          @lease_expire_time = args[:lease_expire_time] unless args[:lease_expire_time].nil?
          @next_report_index = args[:next_report_index] unless args[:next_report_index].nil?
          @report_status_interval = args[:report_status_interval] unless args[:report_status_interval].nil?
          @suggested_stop_point = args[:suggested_stop_point] unless args[:suggested_stop_point].nil?
          @suggested_stop_position = args[:suggested_stop_position] unless args[:suggested_stop_position].nil?
        end
      end

      # 
      class WorkItemStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completed`
        # @return [Boolean]
        attr_accessor :completed
        alias_method :completed?, :completed
      
        # 
        # Corresponds to the JSON property `dynamicSourceSplit`
        # @return [Google::Apis::DataflowV1beta3::DynamicSourceSplit]
        attr_accessor :dynamic_source_split
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DataflowV1beta3::Status>]
        attr_accessor :errors
      
        # 
        # Corresponds to the JSON property `metricUpdates`
        # @return [Array<Google::Apis::DataflowV1beta3::MetricUpdate>]
        attr_accessor :metric_updates
      
        # 
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::DataflowV1beta3::ApproximateProgress]
        attr_accessor :progress
      
        # 
        # Corresponds to the JSON property `reportIndex`
        # @return [String]
        attr_accessor :report_index
      
        # 
        # Corresponds to the JSON property `requestedLeaseDuration`
        # @return [String]
        attr_accessor :requested_lease_duration
      
        # 
        # Corresponds to the JSON property `sourceFork`
        # @return [Google::Apis::DataflowV1beta3::SourceFork]
        attr_accessor :source_fork
      
        # 
        # Corresponds to the JSON property `sourceOperationResponse`
        # @return [Google::Apis::DataflowV1beta3::SourceOperationResponse]
        attr_accessor :source_operation_response
      
        # 
        # Corresponds to the JSON property `stopPosition`
        # @return [Google::Apis::DataflowV1beta3::Position]
        attr_accessor :stop_position
      
        # 
        # Corresponds to the JSON property `workItemId`
        # @return [String]
        attr_accessor :work_item_id
      
        def initialize(**args)
          @completed = args[:completed] unless args[:completed].nil?
          @dynamic_source_split = args[:dynamic_source_split] unless args[:dynamic_source_split].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @metric_updates = args[:metric_updates] unless args[:metric_updates].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @report_index = args[:report_index] unless args[:report_index].nil?
          @requested_lease_duration = args[:requested_lease_duration] unless args[:requested_lease_duration].nil?
          @source_fork = args[:source_fork] unless args[:source_fork].nil?
          @source_operation_response = args[:source_operation_response] unless args[:source_operation_response].nil?
          @stop_position = args[:stop_position] unless args[:stop_position].nil?
          @work_item_id = args[:work_item_id] unless args[:work_item_id].nil?
        end
      end

      # 
      class WorkerPool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `autoscalingSettings`
        # @return [Google::Apis::DataflowV1beta3::AutoscalingSettings]
        attr_accessor :autoscaling_settings
      
        # 
        # Corresponds to the JSON property `dataDisks`
        # @return [Array<Google::Apis::DataflowV1beta3::Disk>]
        attr_accessor :data_disks
      
        # 
        # Corresponds to the JSON property `defaultPackageSet`
        # @return [String]
        attr_accessor :default_package_set
      
        # 
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # 
        # Corresponds to the JSON property `diskSourceImage`
        # @return [String]
        attr_accessor :disk_source_image
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `numWorkers`
        # @return [Fixnum]
        attr_accessor :num_workers
      
        # 
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # 
        # Corresponds to the JSON property `packages`
        # @return [Array<Google::Apis::DataflowV1beta3::Package>]
        attr_accessor :packages
      
        # 
        # Corresponds to the JSON property `poolArgs`
        # @return [Hash<String,Object>]
        attr_accessor :pool_args
      
        # 
        # Corresponds to the JSON property `taskrunnerSettings`
        # @return [Google::Apis::DataflowV1beta3::TaskRunnerSettings]
        attr_accessor :taskrunner_settings
      
        # 
        # Corresponds to the JSON property `teardownPolicy`
        # @return [String]
        attr_accessor :teardown_policy
      
        # 
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
          @autoscaling_settings = args[:autoscaling_settings] unless args[:autoscaling_settings].nil?
          @data_disks = args[:data_disks] unless args[:data_disks].nil?
          @default_package_set = args[:default_package_set] unless args[:default_package_set].nil?
          @disk_size_gb = args[:disk_size_gb] unless args[:disk_size_gb].nil?
          @disk_source_image = args[:disk_source_image] unless args[:disk_source_image].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @machine_type = args[:machine_type] unless args[:machine_type].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @num_workers = args[:num_workers] unless args[:num_workers].nil?
          @on_host_maintenance = args[:on_host_maintenance] unless args[:on_host_maintenance].nil?
          @packages = args[:packages] unless args[:packages].nil?
          @pool_args = args[:pool_args] unless args[:pool_args].nil?
          @taskrunner_settings = args[:taskrunner_settings] unless args[:taskrunner_settings].nil?
          @teardown_policy = args[:teardown_policy] unless args[:teardown_policy].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end

      # 
      class WorkerSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # 
        # Corresponds to the JSON property `reportingEnabled`
        # @return [Boolean]
        attr_accessor :reporting_enabled
        alias_method :reporting_enabled?, :reporting_enabled
      
        # 
        # Corresponds to the JSON property `servicePath`
        # @return [String]
        attr_accessor :service_path
      
        # 
        # Corresponds to the JSON property `shuffleServicePath`
        # @return [String]
        attr_accessor :shuffle_service_path
      
        # 
        # Corresponds to the JSON property `tempStoragePrefix`
        # @return [String]
        attr_accessor :temp_storage_prefix
      
        # 
        # Corresponds to the JSON property `workerId`
        # @return [String]
        attr_accessor :worker_id
      
        def initialize(**args)
          @base_url = args[:base_url] unless args[:base_url].nil?
          @reporting_enabled = args[:reporting_enabled] unless args[:reporting_enabled].nil?
          @service_path = args[:service_path] unless args[:service_path].nil?
          @shuffle_service_path = args[:shuffle_service_path] unless args[:shuffle_service_path].nil?
          @temp_storage_prefix = args[:temp_storage_prefix] unless args[:temp_storage_prefix].nil?
          @worker_id = args[:worker_id] unless args[:worker_id].nil?
        end
      end

      # 
      class WriteInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DataflowV1beta3::InstructionInput]
        attr_accessor :input
      
        # 
        # Corresponds to the JSON property `sink`
        # @return [Google::Apis::DataflowV1beta3::Sink]
        attr_accessor :sink
      
        def initialize(**args)
          @input = args[:input] unless args[:input].nil?
          @sink = args[:sink] unless args[:sink].nil?
        end
      end
    end
  end
end
