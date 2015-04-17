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
      class ApproximateProgressRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AutoscalingSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ComputationTopologyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DataDiskAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DerivedSourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DiskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DynamicSourceSplitRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EnvironmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FlattenInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstructionInputRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstructionOutputRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobExecutionInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobExecutionStageInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobMessageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobMetricsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KeyRangeDataDiskAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KeyRangeLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LeaseWorkItemRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LeaseWorkItemResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListJobMessagesResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListJobsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MapTaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetricStructuredNameRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetricUpdateRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MountedDataDiskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MultiOutputInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PackageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ParDoInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ParallelInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PartialGroupByKeyInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PositionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PubsubLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReadInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportWorkItemStatusRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportWorkItemStatusResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SeqMapTaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SeqMapTaskOutputInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ShellTaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SideInputInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SinkRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceForkRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceGetMetadataRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceGetMetadataResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceMetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceOperationRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceOperationResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceSplitOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceSplitRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceSplitResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SourceSplitShardRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StatusRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StepRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamingComputationRangesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamingComputationTaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamingSetupTaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamingSideInputLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StreamingStageLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TaskRunnerSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TopologyConfigRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WorkItemRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WorkItemServiceStateRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WorkItemStatusRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WorkerPoolRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WorkerSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class WriteInstructionRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ApproximateProgressRepresentation < Google::Apis::Core::JsonRepresentation
        property :percent_complete, as: 'percentComplete'
        property :position, as: 'position', class: Google::Apis::DataflowV1beta3::Position, decorator: Google::Apis::DataflowV1beta3::PositionRepresentation
        
        property :remaining_time, as: 'remainingTime'
      end

      # @private
      class AutoscalingSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :algorithm, as: 'algorithm'
        property :max_num_workers, as: 'maxNumWorkers'
      end

      # @private
      class ComputationTopologyRepresentation < Google::Apis::Core::JsonRepresentation
        property :computation_id, as: 'computationId'
        collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1beta3::StreamLocation, decorator: Google::Apis::DataflowV1beta3::StreamLocationRepresentation
        
        
        collection :key_ranges, as: 'keyRanges', class: Google::Apis::DataflowV1beta3::KeyRangeLocation, decorator: Google::Apis::DataflowV1beta3::KeyRangeLocationRepresentation
        
        
        collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1beta3::StreamLocation, decorator: Google::Apis::DataflowV1beta3::StreamLocationRepresentation
      end

      # @private
      class DataDiskAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        collection :data_disks, as: 'dataDisks'
        
        property :vm_instance, as: 'vmInstance'
      end

      # @private
      class DerivedSourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :derivation_mode, as: 'derivationMode'
        property :source, as: 'source', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
      end

      # @private
      class DiskRepresentation < Google::Apis::Core::JsonRepresentation
        property :disk_type, as: 'diskType'
        property :mount_point, as: 'mountPoint'
        property :size_gb, as: 'sizeGb'
      end

      # @private
      class DynamicSourceSplitRepresentation < Google::Apis::Core::JsonRepresentation
        property :primary, as: 'primary', class: Google::Apis::DataflowV1beta3::DerivedSource, decorator: Google::Apis::DataflowV1beta3::DerivedSourceRepresentation
        
        property :residual, as: 'residual', class: Google::Apis::DataflowV1beta3::DerivedSource, decorator: Google::Apis::DataflowV1beta3::DerivedSourceRepresentation
      end

      # @private
      class EnvironmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :cluster_manager_api_service, as: 'clusterManagerApiService'
        property :dataset, as: 'dataset'
        collection :experiments, as: 'experiments'
        
        hash :sdk_pipeline_options, as: 'sdkPipelineOptions'
        
        property :temp_storage_prefix, as: 'tempStoragePrefix'
        hash :user_agent, as: 'userAgent'
        
        hash :version, as: 'version'
        
        collection :worker_pools, as: 'workerPools', class: Google::Apis::DataflowV1beta3::WorkerPool, decorator: Google::Apis::DataflowV1beta3::WorkerPoolRepresentation
      end

      # @private
      class FlattenInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1beta3::InstructionInput, decorator: Google::Apis::DataflowV1beta3::InstructionInputRepresentation
      end

      # @private
      class InstructionInputRepresentation < Google::Apis::Core::JsonRepresentation
        property :output_num, as: 'outputNum'
        property :producer_instruction_index, as: 'producerInstructionIndex'
      end

      # @private
      class InstructionOutputRepresentation < Google::Apis::Core::JsonRepresentation
        hash :codec, as: 'codec'
        
        property :name, as: 'name'
      end

      # @private
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        property :create_time, as: 'createTime'
        property :current_state, as: 'currentState'
        property :current_state_time, as: 'currentStateTime'
        property :environment, as: 'environment', class: Google::Apis::DataflowV1beta3::Environment, decorator: Google::Apis::DataflowV1beta3::EnvironmentRepresentation
        
        property :execution_info, as: 'executionInfo', class: Google::Apis::DataflowV1beta3::JobExecutionInfo, decorator: Google::Apis::DataflowV1beta3::JobExecutionInfoRepresentation
        
        property :id, as: 'id'
        property :name, as: 'name'
        property :project_id, as: 'projectId'
        property :requested_state, as: 'requestedState'
        collection :steps, as: 'steps', class: Google::Apis::DataflowV1beta3::Step, decorator: Google::Apis::DataflowV1beta3::StepRepresentation
        
        
        property :type, as: 'type'
      end

      # @private
      class JobExecutionInfoRepresentation < Google::Apis::Core::JsonRepresentation
        hash :stages, as: 'stages', class: Google::Apis::DataflowV1beta3::JobExecutionStageInfo, decorator: Google::Apis::DataflowV1beta3::JobExecutionStageInfoRepresentation
      end

      # @private
      class JobExecutionStageInfoRepresentation < Google::Apis::Core::JsonRepresentation
        collection :step_name, as: 'stepName'
      end

      # @private
      class JobMessageRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :message_importance, as: 'messageImportance'
        property :message_text, as: 'messageText'
        property :time, as: 'time'
      end

      # @private
      class JobMetricsRepresentation < Google::Apis::Core::JsonRepresentation
        property :metric_time, as: 'metricTime'
        collection :metrics, as: 'metrics', class: Google::Apis::DataflowV1beta3::MetricUpdate, decorator: Google::Apis::DataflowV1beta3::MetricUpdateRepresentation
      end

      # @private
      class KeyRangeDataDiskAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :data_disk, as: 'dataDisk'
        property :end, as: 'end'
        property :start, as: 'start'
      end

      # @private
      class KeyRangeLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :data_disk, as: 'dataDisk'
        property :delivery_endpoint, as: 'deliveryEndpoint'
        property :end, as: 'end'
        property :persistent_directory, as: 'persistentDirectory'
        property :start, as: 'start'
      end

      # @private
      class LeaseWorkItemRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_worker_time, as: 'currentWorkerTime'
        property :requested_lease_duration, as: 'requestedLeaseDuration'
        collection :work_item_types, as: 'workItemTypes'
        
        collection :worker_capabilities, as: 'workerCapabilities'
        
        property :worker_id, as: 'workerId'
      end

      # @private
      class LeaseWorkItemResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :work_items, as: 'workItems', class: Google::Apis::DataflowV1beta3::WorkItem, decorator: Google::Apis::DataflowV1beta3::WorkItemRepresentation
      end

      # @private
      class ListJobMessagesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :job_messages, as: 'jobMessages', class: Google::Apis::DataflowV1beta3::JobMessage, decorator: Google::Apis::DataflowV1beta3::JobMessageRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListJobsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :jobs, as: 'jobs', class: Google::Apis::DataflowV1beta3::Job, decorator: Google::Apis::DataflowV1beta3::JobRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MapTaskRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instructions, as: 'instructions', class: Google::Apis::DataflowV1beta3::ParallelInstruction, decorator: Google::Apis::DataflowV1beta3::ParallelInstructionRepresentation
        
        
        property :stage_name, as: 'stageName'
        property :system_name, as: 'systemName'
      end

      # @private
      class MetricStructuredNameRepresentation < Google::Apis::Core::JsonRepresentation
        hash :context, as: 'context'
        
        property :name, as: 'name'
        property :origin, as: 'origin'
      end

      # @private
      class MetricUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        property :cumulative, as: 'cumulative'
        property :internal, as: 'internal'
        property :kind, as: 'kind'
        property :mean_count, as: 'meanCount'
        property :mean_sum, as: 'meanSum'
        property :name, as: 'name', class: Google::Apis::DataflowV1beta3::MetricStructuredName, decorator: Google::Apis::DataflowV1beta3::MetricStructuredNameRepresentation
        
        property :scalar, as: 'scalar'
        property :set, as: 'set'
        property :update_time, as: 'updateTime'
      end

      # @private
      class MountedDataDiskRepresentation < Google::Apis::Core::JsonRepresentation
        property :data_disk, as: 'dataDisk'
      end

      # @private
      class MultiOutputInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :tag, as: 'tag'
      end

      # @private
      class PackageRepresentation < Google::Apis::Core::JsonRepresentation
        property :location, as: 'location'
        property :name, as: 'name'
      end

      # @private
      class ParDoInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        property :input, as: 'input', class: Google::Apis::DataflowV1beta3::InstructionInput, decorator: Google::Apis::DataflowV1beta3::InstructionInputRepresentation
        
        collection :multi_output_infos, as: 'multiOutputInfos', class: Google::Apis::DataflowV1beta3::MultiOutputInfo, decorator: Google::Apis::DataflowV1beta3::MultiOutputInfoRepresentation
        
        
        property :num_outputs, as: 'numOutputs'
        collection :side_inputs, as: 'sideInputs', class: Google::Apis::DataflowV1beta3::SideInputInfo, decorator: Google::Apis::DataflowV1beta3::SideInputInfoRepresentation
        
        
        hash :user_fn, as: 'userFn'
      end

      # @private
      class ParallelInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        property :flatten, as: 'flatten', class: Google::Apis::DataflowV1beta3::FlattenInstruction, decorator: Google::Apis::DataflowV1beta3::FlattenInstructionRepresentation
        
        property :name, as: 'name'
        collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1beta3::InstructionOutput, decorator: Google::Apis::DataflowV1beta3::InstructionOutputRepresentation
        
        
        property :par_do, as: 'parDo', class: Google::Apis::DataflowV1beta3::ParDoInstruction, decorator: Google::Apis::DataflowV1beta3::ParDoInstructionRepresentation
        
        property :partial_group_by_key, as: 'partialGroupByKey', class: Google::Apis::DataflowV1beta3::PartialGroupByKeyInstruction, decorator: Google::Apis::DataflowV1beta3::PartialGroupByKeyInstructionRepresentation
        
        property :read, as: 'read', class: Google::Apis::DataflowV1beta3::ReadInstruction, decorator: Google::Apis::DataflowV1beta3::ReadInstructionRepresentation
        
        property :system_name, as: 'systemName'
        property :write, as: 'write', class: Google::Apis::DataflowV1beta3::WriteInstruction, decorator: Google::Apis::DataflowV1beta3::WriteInstructionRepresentation
      end

      # @private
      class PartialGroupByKeyInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        property :input, as: 'input', class: Google::Apis::DataflowV1beta3::InstructionInput, decorator: Google::Apis::DataflowV1beta3::InstructionInputRepresentation
        
        hash :input_element_codec, as: 'inputElementCodec'
        
        hash :value_combining_fn, as: 'valueCombiningFn'
      end

      # @private
      class PositionRepresentation < Google::Apis::Core::JsonRepresentation
        property :byte_offset, as: 'byteOffset'
        property :end, as: 'end'
        property :key, as: 'key'
        property :record_index, as: 'recordIndex'
        property :shuffle_position, as: 'shufflePosition'
      end

      # @private
      class PubsubLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :drop_late_data, as: 'dropLateData'
        property :id_label, as: 'idLabel'
        property :subscription, as: 'subscription'
        property :timestamp_label, as: 'timestampLabel'
        property :topic, as: 'topic'
        property :tracking_subscription, as: 'trackingSubscription'
      end

      # @private
      class ReadInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        property :source, as: 'source', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
      end

      # @private
      class ReportWorkItemStatusRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_worker_time, as: 'currentWorkerTime'
        collection :work_item_statuses, as: 'workItemStatuses', class: Google::Apis::DataflowV1beta3::WorkItemStatus, decorator: Google::Apis::DataflowV1beta3::WorkItemStatusRepresentation
        
        
        property :worker_id, as: 'workerId'
      end

      # @private
      class ReportWorkItemStatusResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :work_item_service_states, as: 'workItemServiceStates', class: Google::Apis::DataflowV1beta3::WorkItemServiceState, decorator: Google::Apis::DataflowV1beta3::WorkItemServiceStateRepresentation
      end

      # @private
      class SeqMapTaskRepresentation < Google::Apis::Core::JsonRepresentation
        collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1beta3::SideInputInfo, decorator: Google::Apis::DataflowV1beta3::SideInputInfoRepresentation
        
        
        property :name, as: 'name'
        collection :output_infos, as: 'outputInfos', class: Google::Apis::DataflowV1beta3::SeqMapTaskOutputInfo, decorator: Google::Apis::DataflowV1beta3::SeqMapTaskOutputInfoRepresentation
        
        
        property :stage_name, as: 'stageName'
        property :system_name, as: 'systemName'
        hash :user_fn, as: 'userFn'
      end

      # @private
      class SeqMapTaskOutputInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :sink, as: 'sink', class: Google::Apis::DataflowV1beta3::Sink, decorator: Google::Apis::DataflowV1beta3::SinkRepresentation
        
        property :tag, as: 'tag'
      end

      # @private
      class ShellTaskRepresentation < Google::Apis::Core::JsonRepresentation
        property :command, as: 'command'
        property :exit_code, as: 'exitCode'
      end

      # @private
      class SideInputInfoRepresentation < Google::Apis::Core::JsonRepresentation
        hash :kind, as: 'kind'
        
        collection :sources, as: 'sources', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
        
        
        property :tag, as: 'tag'
      end

      # @private
      class SinkRepresentation < Google::Apis::Core::JsonRepresentation
        hash :codec, as: 'codec'
        
        hash :spec, as: 'spec'
      end

      # @private
      class SourceRepresentation < Google::Apis::Core::JsonRepresentation
        collection :base_specs, as: 'baseSpecs'
        
        hash :codec, as: 'codec'
        
        property :does_not_need_splitting, as: 'doesNotNeedSplitting'
        property :metadata, as: 'metadata', class: Google::Apis::DataflowV1beta3::SourceMetadata, decorator: Google::Apis::DataflowV1beta3::SourceMetadataRepresentation
        
        hash :spec, as: 'spec'
      end

      # @private
      class SourceForkRepresentation < Google::Apis::Core::JsonRepresentation
        property :primary, as: 'primary', class: Google::Apis::DataflowV1beta3::SourceSplitShard, decorator: Google::Apis::DataflowV1beta3::SourceSplitShardRepresentation
        
        property :primary_source, as: 'primarySource', class: Google::Apis::DataflowV1beta3::DerivedSource, decorator: Google::Apis::DataflowV1beta3::DerivedSourceRepresentation
        
        property :residual, as: 'residual', class: Google::Apis::DataflowV1beta3::SourceSplitShard, decorator: Google::Apis::DataflowV1beta3::SourceSplitShardRepresentation
        
        property :residual_source, as: 'residualSource', class: Google::Apis::DataflowV1beta3::DerivedSource, decorator: Google::Apis::DataflowV1beta3::DerivedSourceRepresentation
      end

      # @private
      class SourceGetMetadataRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :source, as: 'source', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
      end

      # @private
      class SourceGetMetadataResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :metadata, as: 'metadata', class: Google::Apis::DataflowV1beta3::SourceMetadata, decorator: Google::Apis::DataflowV1beta3::SourceMetadataRepresentation
      end

      # @private
      class SourceMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        property :estimated_size_bytes, as: 'estimatedSizeBytes'
        property :infinite, as: 'infinite'
        property :produces_sorted_keys, as: 'producesSortedKeys'
      end

      # @private
      class SourceOperationRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1beta3::SourceGetMetadataRequest, decorator: Google::Apis::DataflowV1beta3::SourceGetMetadataRequestRepresentation
        
        property :split, as: 'split', class: Google::Apis::DataflowV1beta3::SourceSplitRequest, decorator: Google::Apis::DataflowV1beta3::SourceSplitRequestRepresentation
      end

      # @private
      class SourceOperationResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1beta3::SourceGetMetadataResponse, decorator: Google::Apis::DataflowV1beta3::SourceGetMetadataResponseRepresentation
        
        property :split, as: 'split', class: Google::Apis::DataflowV1beta3::SourceSplitResponse, decorator: Google::Apis::DataflowV1beta3::SourceSplitResponseRepresentation
      end

      # @private
      class SourceSplitOptionsRepresentation < Google::Apis::Core::JsonRepresentation
        property :desired_bundle_size_bytes, as: 'desiredBundleSizeBytes'
        property :desired_shard_size_bytes, as: 'desiredShardSizeBytes'
      end

      # @private
      class SourceSplitRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :options, as: 'options', class: Google::Apis::DataflowV1beta3::SourceSplitOptions, decorator: Google::Apis::DataflowV1beta3::SourceSplitOptionsRepresentation
        
        property :source, as: 'source', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
      end

      # @private
      class SourceSplitResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bundles, as: 'bundles', class: Google::Apis::DataflowV1beta3::DerivedSource, decorator: Google::Apis::DataflowV1beta3::DerivedSourceRepresentation
        
        
        property :outcome, as: 'outcome'
        collection :shards, as: 'shards', class: Google::Apis::DataflowV1beta3::SourceSplitShard, decorator: Google::Apis::DataflowV1beta3::SourceSplitShardRepresentation
      end

      # @private
      class SourceSplitShardRepresentation < Google::Apis::Core::JsonRepresentation
        property :derivation_mode, as: 'derivationMode'
        property :source, as: 'source', class: Google::Apis::DataflowV1beta3::Source, decorator: Google::Apis::DataflowV1beta3::SourceRepresentation
      end

      # @private
      class StatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        collection :details, as: 'details'
        
        property :message, as: 'message'
      end

      # @private
      class StepRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
        hash :properties, as: 'properties'
      end

      # @private
      class StreamLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :pubsub_location, as: 'pubsubLocation', class: Google::Apis::DataflowV1beta3::PubsubLocation, decorator: Google::Apis::DataflowV1beta3::PubsubLocationRepresentation
        
        property :side_input_location, as: 'sideInputLocation', class: Google::Apis::DataflowV1beta3::StreamingSideInputLocation, decorator: Google::Apis::DataflowV1beta3::StreamingSideInputLocationRepresentation
        
        property :streaming_stage_location, as: 'streamingStageLocation', class: Google::Apis::DataflowV1beta3::StreamingStageLocation, decorator: Google::Apis::DataflowV1beta3::StreamingStageLocationRepresentation
      end

      # @private
      class StreamingComputationRangesRepresentation < Google::Apis::Core::JsonRepresentation
        property :computation_id, as: 'computationId'
        collection :range_assignments, as: 'rangeAssignments', class: Google::Apis::DataflowV1beta3::KeyRangeDataDiskAssignment, decorator: Google::Apis::DataflowV1beta3::KeyRangeDataDiskAssignmentRepresentation
      end

      # @private
      class StreamingComputationTaskRepresentation < Google::Apis::Core::JsonRepresentation
        collection :computation_ranges, as: 'computationRanges', class: Google::Apis::DataflowV1beta3::StreamingComputationRanges, decorator: Google::Apis::DataflowV1beta3::StreamingComputationRangesRepresentation
        
        
        collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1beta3::MountedDataDisk, decorator: Google::Apis::DataflowV1beta3::MountedDataDiskRepresentation
        
        
        property :task_type, as: 'taskType'
      end

      # @private
      class StreamingSetupTaskRepresentation < Google::Apis::Core::JsonRepresentation
        property :receive_work_port, as: 'receiveWorkPort'
        property :streaming_computation_topology, as: 'streamingComputationTopology', class: Google::Apis::DataflowV1beta3::TopologyConfig, decorator: Google::Apis::DataflowV1beta3::TopologyConfigRepresentation
        
        property :worker_harness_port, as: 'workerHarnessPort'
      end

      # @private
      class StreamingSideInputLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :tag, as: 'tag'
      end

      # @private
      class StreamingStageLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :stream_id, as: 'streamId'
      end

      # @private
      class TaskRunnerSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :alsologtostderr, as: 'alsologtostderr'
        property :base_task_dir, as: 'baseTaskDir'
        property :base_url, as: 'baseUrl'
        property :commandlines_file_name, as: 'commandlinesFileName'
        property :continue_on_exception, as: 'continueOnException'
        property :dataflow_api_version, as: 'dataflowApiVersion'
        property :harness_command, as: 'harnessCommand'
        property :language_hint, as: 'languageHint'
        property :log_dir, as: 'logDir'
        property :log_to_serialconsole, as: 'logToSerialconsole'
        property :log_upload_location, as: 'logUploadLocation'
        collection :oauth_scopes, as: 'oauthScopes'
        
        property :parallel_worker_settings, as: 'parallelWorkerSettings', class: Google::Apis::DataflowV1beta3::WorkerSettings, decorator: Google::Apis::DataflowV1beta3::WorkerSettingsRepresentation
        
        property :streaming_worker_main_class, as: 'streamingWorkerMainClass'
        property :task_group, as: 'taskGroup'
        property :task_user, as: 'taskUser'
        property :temp_storage_prefix, as: 'tempStoragePrefix'
        property :vm_id, as: 'vmId'
        property :workflow_file_name, as: 'workflowFileName'
      end

      # @private
      class TopologyConfigRepresentation < Google::Apis::Core::JsonRepresentation
        collection :computations, as: 'computations', class: Google::Apis::DataflowV1beta3::ComputationTopology, decorator: Google::Apis::DataflowV1beta3::ComputationTopologyRepresentation
        
        
        collection :data_disk_assignments, as: 'dataDiskAssignments', class: Google::Apis::DataflowV1beta3::DataDiskAssignment, decorator: Google::Apis::DataflowV1beta3::DataDiskAssignmentRepresentation
      end

      # @private
      class WorkItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :configuration, as: 'configuration'
        property :id, as: 'id'
        property :initial_report_index, as: 'initialReportIndex'
        property :job_id, as: 'jobId'
        property :lease_expire_time, as: 'leaseExpireTime'
        property :map_task, as: 'mapTask', class: Google::Apis::DataflowV1beta3::MapTask, decorator: Google::Apis::DataflowV1beta3::MapTaskRepresentation
        
        collection :packages, as: 'packages', class: Google::Apis::DataflowV1beta3::Package, decorator: Google::Apis::DataflowV1beta3::PackageRepresentation
        
        
        property :project_id, as: 'projectId'
        property :report_status_interval, as: 'reportStatusInterval'
        property :seq_map_task, as: 'seqMapTask', class: Google::Apis::DataflowV1beta3::SeqMapTask, decorator: Google::Apis::DataflowV1beta3::SeqMapTaskRepresentation
        
        property :shell_task, as: 'shellTask', class: Google::Apis::DataflowV1beta3::ShellTask, decorator: Google::Apis::DataflowV1beta3::ShellTaskRepresentation
        
        property :source_operation_task, as: 'sourceOperationTask', class: Google::Apis::DataflowV1beta3::SourceOperationRequest, decorator: Google::Apis::DataflowV1beta3::SourceOperationRequestRepresentation
        
        property :streaming_computation_task, as: 'streamingComputationTask', class: Google::Apis::DataflowV1beta3::StreamingComputationTask, decorator: Google::Apis::DataflowV1beta3::StreamingComputationTaskRepresentation
        
        property :streaming_setup_task, as: 'streamingSetupTask', class: Google::Apis::DataflowV1beta3::StreamingSetupTask, decorator: Google::Apis::DataflowV1beta3::StreamingSetupTaskRepresentation
      end

      # @private
      class WorkItemServiceStateRepresentation < Google::Apis::Core::JsonRepresentation
        hash :harness_data, as: 'harnessData'
        
        property :lease_expire_time, as: 'leaseExpireTime'
        property :next_report_index, as: 'nextReportIndex'
        property :report_status_interval, as: 'reportStatusInterval'
        property :suggested_stop_point, as: 'suggestedStopPoint', class: Google::Apis::DataflowV1beta3::ApproximateProgress, decorator: Google::Apis::DataflowV1beta3::ApproximateProgressRepresentation
        
        property :suggested_stop_position, as: 'suggestedStopPosition', class: Google::Apis::DataflowV1beta3::Position, decorator: Google::Apis::DataflowV1beta3::PositionRepresentation
      end

      # @private
      class WorkItemStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :completed, as: 'completed'
        property :dynamic_source_split, as: 'dynamicSourceSplit', class: Google::Apis::DataflowV1beta3::DynamicSourceSplit, decorator: Google::Apis::DataflowV1beta3::DynamicSourceSplitRepresentation
        
        collection :errors, as: 'errors', class: Google::Apis::DataflowV1beta3::Status, decorator: Google::Apis::DataflowV1beta3::StatusRepresentation
        
        
        collection :metric_updates, as: 'metricUpdates', class: Google::Apis::DataflowV1beta3::MetricUpdate, decorator: Google::Apis::DataflowV1beta3::MetricUpdateRepresentation
        
        
        property :progress, as: 'progress', class: Google::Apis::DataflowV1beta3::ApproximateProgress, decorator: Google::Apis::DataflowV1beta3::ApproximateProgressRepresentation
        
        property :report_index, as: 'reportIndex'
        property :requested_lease_duration, as: 'requestedLeaseDuration'
        property :source_fork, as: 'sourceFork', class: Google::Apis::DataflowV1beta3::SourceFork, decorator: Google::Apis::DataflowV1beta3::SourceForkRepresentation
        
        property :source_operation_response, as: 'sourceOperationResponse', class: Google::Apis::DataflowV1beta3::SourceOperationResponse, decorator: Google::Apis::DataflowV1beta3::SourceOperationResponseRepresentation
        
        property :stop_position, as: 'stopPosition', class: Google::Apis::DataflowV1beta3::Position, decorator: Google::Apis::DataflowV1beta3::PositionRepresentation
        
        property :work_item_id, as: 'workItemId'
      end

      # @private
      class WorkerPoolRepresentation < Google::Apis::Core::JsonRepresentation
        property :autoscaling_settings, as: 'autoscalingSettings', class: Google::Apis::DataflowV1beta3::AutoscalingSettings, decorator: Google::Apis::DataflowV1beta3::AutoscalingSettingsRepresentation
        
        collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1beta3::Disk, decorator: Google::Apis::DataflowV1beta3::DiskRepresentation
        
        
        property :default_package_set, as: 'defaultPackageSet'
        property :disk_size_gb, as: 'diskSizeGb'
        property :disk_source_image, as: 'diskSourceImage'
        property :kind, as: 'kind'
        property :machine_type, as: 'machineType'
        hash :metadata, as: 'metadata'
        
        property :num_workers, as: 'numWorkers'
        property :on_host_maintenance, as: 'onHostMaintenance'
        collection :packages, as: 'packages', class: Google::Apis::DataflowV1beta3::Package, decorator: Google::Apis::DataflowV1beta3::PackageRepresentation
        
        
        hash :pool_args, as: 'poolArgs'
        
        property :taskrunner_settings, as: 'taskrunnerSettings', class: Google::Apis::DataflowV1beta3::TaskRunnerSettings, decorator: Google::Apis::DataflowV1beta3::TaskRunnerSettingsRepresentation
        
        property :teardown_policy, as: 'teardownPolicy'
        property :zone, as: 'zone'
      end

      # @private
      class WorkerSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :base_url, as: 'baseUrl'
        property :reporting_enabled, as: 'reportingEnabled'
        property :service_path, as: 'servicePath'
        property :shuffle_service_path, as: 'shuffleServicePath'
        property :temp_storage_prefix, as: 'tempStoragePrefix'
        property :worker_id, as: 'workerId'
      end

      # @private
      class WriteInstructionRepresentation < Google::Apis::Core::JsonRepresentation
        property :input, as: 'input', class: Google::Apis::DataflowV1beta3::InstructionInput, decorator: Google::Apis::DataflowV1beta3::InstructionInputRepresentation
        
        property :sink, as: 'sink', class: Google::Apis::DataflowV1beta3::Sink, decorator: Google::Apis::DataflowV1beta3::SinkRepresentation
      end
    end
  end
end
