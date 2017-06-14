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
    module DataflowV1b3
      
      class RuntimeEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MountedDataDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingSideInputLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LaunchTemplateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicSourceSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DerivedSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendDebugCaptureResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SideInputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterStructuredNameAndMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConcatPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationRanges
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionStageSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendWorkerMessagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitShard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CpuTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendDebugCaptureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDebugConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComponentTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingSetupTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerHealthReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParameterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceGetMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShellTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricShortId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskRunnerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitInt64
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUtilizationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportedParallelism
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopologyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataDiskAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingStageLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateSplitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionStageState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendWorkerMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransformSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseWorkItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LaunchTemplateParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlattenInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialGroupByKeyInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstructionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseWorkItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDebugConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetTemplateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Parameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportWorkItemStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingConfigTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Step
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobExecutionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateReportedProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateFamilyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUtilizationReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParallelInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeDataDiskAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParDoInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterStructuredName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TemplateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloatingPointList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerHealthReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceFork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComponentSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItemServiceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricStructuredName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeqMapTaskOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobExecutionStageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceGetMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NameAndKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeqMapTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessageCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MapTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloatingPointMean
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportWorkItemStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstructionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateJobFromTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerMean
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputationTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zone, as: 'zone'
          property :max_workers, as: 'maxWorkers'
          property :temp_location, as: 'tempLocation'
          property :bypass_temp_dir_validation, as: 'bypassTempDirValidation'
          property :service_account_email, as: 'serviceAccountEmail'
          property :machine_type, as: 'machineType'
        end
      end
      
      class MountedDataDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_disk, as: 'dataDisk'
        end
      end
      
      class StreamingSideInputLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state_family, as: 'stateFamily'
          property :tag, as: 'tag'
        end
      end
      
      class LaunchTemplateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DataflowV1b3::Job, decorator: Google::Apis::DataflowV1b3::Job::Representation
      
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :current_state_time, as: 'currentStateTime'
          hash :transform_name_mapping, as: 'transformNameMapping'
          property :create_time, as: 'createTime'
          property :environment, as: 'environment', class: Google::Apis::DataflowV1b3::Environment, decorator: Google::Apis::DataflowV1b3::Environment::Representation
      
          hash :labels, as: 'labels'
          collection :stage_states, as: 'stageStates', class: Google::Apis::DataflowV1b3::ExecutionStageState, decorator: Google::Apis::DataflowV1b3::ExecutionStageState::Representation
      
          property :project_id, as: 'projectId'
          property :type, as: 'type'
          property :pipeline_description, as: 'pipelineDescription', class: Google::Apis::DataflowV1b3::PipelineDescription, decorator: Google::Apis::DataflowV1b3::PipelineDescription::Representation
      
          property :replace_job_id, as: 'replaceJobId'
          property :requested_state, as: 'requestedState'
          collection :temp_files, as: 'tempFiles'
          property :client_request_id, as: 'clientRequestId'
          property :name, as: 'name'
          property :replaced_by_job_id, as: 'replacedByJobId'
          collection :steps, as: 'steps', class: Google::Apis::DataflowV1b3::Step, decorator: Google::Apis::DataflowV1b3::Step::Representation
      
          property :id, as: 'id'
          property :execution_info, as: 'executionInfo', class: Google::Apis::DataflowV1b3::JobExecutionInfo, decorator: Google::Apis::DataflowV1b3::JobExecutionInfo::Representation
      
          property :current_state, as: 'currentState'
        end
      end
      
      class DynamicSourceSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :residual, as: 'residual', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
          property :primary, as: 'primary', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
        end
      end
      
      class DerivedSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :derivation_mode, as: 'derivationMode'
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class SourceOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1b3::SourceGetMetadataResponse, decorator: Google::Apis::DataflowV1b3::SourceGetMetadataResponse::Representation
      
          property :split, as: 'split', class: Google::Apis::DataflowV1b3::SourceSplitResponse, decorator: Google::Apis::DataflowV1b3::SourceSplitResponse::Representation
      
        end
      end
      
      class SendDebugCaptureResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SideInputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sources, as: 'sources', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
          hash :kind, as: 'kind'
          property :tag, as: 'tag'
        end
      end
      
      class CounterStructuredNameAndMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name', class: Google::Apis::DataflowV1b3::CounterStructuredName, decorator: Google::Apis::DataflowV1b3::CounterStructuredName::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::CounterMetadata, decorator: Google::Apis::DataflowV1b3::CounterMetadata::Representation
      
        end
      end
      
      class ConcatPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :index, as: 'index'
        end
      end
      
      class WriteInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          property :sink, as: 'sink', class: Google::Apis::DataflowV1b3::Sink, decorator: Google::Apis::DataflowV1b3::Sink::Representation
      
        end
      end
      
      class AutoscalingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_num_workers, as: 'maxNumWorkers'
          property :algorithm, as: 'algorithm'
        end
      end
      
      class StreamingComputationRanges
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :range_assignments, as: 'rangeAssignments', class: Google::Apis::DataflowV1b3::KeyRangeDataDiskAssignment, decorator: Google::Apis::DataflowV1b3::KeyRangeDataDiskAssignment::Representation
      
          property :computation_id, as: 'computationId'
        end
      end
      
      class ExecutionStageSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :component_transform, as: 'componentTransform', class: Google::Apis::DataflowV1b3::ComponentTransform, decorator: Google::Apis::DataflowV1b3::ComponentTransform::Representation
      
          collection :component_source, as: 'componentSource', class: Google::Apis::DataflowV1b3::ComponentSource, decorator: Google::Apis::DataflowV1b3::ComponentSource::Representation
      
          property :kind, as: 'kind'
          collection :output_source, as: 'outputSource', class: Google::Apis::DataflowV1b3::StageSource, decorator: Google::Apis::DataflowV1b3::StageSource::Representation
      
          property :name, as: 'name'
          collection :input_source, as: 'inputSource', class: Google::Apis::DataflowV1b3::StageSource, decorator: Google::Apis::DataflowV1b3::StageSource::Representation
      
          property :id, as: 'id'
        end
      end
      
      class SendWorkerMessagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_messages, as: 'workerMessages', class: Google::Apis::DataflowV1b3::WorkerMessage, decorator: Google::Apis::DataflowV1b3::WorkerMessage::Representation
      
          property :location, as: 'location'
        end
      end
      
      class LogBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log, as: 'log'
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class SourceSplitShard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :derivation_mode, as: 'derivationMode'
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class CpuTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timestamp, as: 'timestamp'
          property :total_ms, :numeric_string => true, as: 'totalMs'
          property :rate, as: 'rate'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :user_agent, as: 'userAgent'
          hash :sdk_pipeline_options, as: 'sdkPipelineOptions'
          property :cluster_manager_api_service, as: 'clusterManagerApiService'
          property :temp_storage_prefix, as: 'tempStoragePrefix'
          collection :worker_pools, as: 'workerPools', class: Google::Apis::DataflowV1b3::WorkerPool, decorator: Google::Apis::DataflowV1b3::WorkerPool::Representation
      
          property :dataset, as: 'dataset'
          collection :experiments, as: 'experiments'
          hash :version, as: 'version'
          hash :internal_experiments, as: 'internalExperiments'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class StreamingComputationTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1b3::MountedDataDisk, decorator: Google::Apis::DataflowV1b3::MountedDataDisk::Representation
      
          property :task_type, as: 'taskType'
          collection :computation_ranges, as: 'computationRanges', class: Google::Apis::DataflowV1b3::StreamingComputationRanges, decorator: Google::Apis::DataflowV1b3::StreamingComputationRanges::Representation
      
        end
      end
      
      class SendDebugCaptureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_id, as: 'workerId'
          property :location, as: 'location'
          property :data, as: 'data'
          property :component_id, as: 'componentId'
        end
      end
      
      class GetDebugConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
        end
      end
      
      class ComponentTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_transform, as: 'originalTransform'
          property :name, as: 'name'
          property :user_name, as: 'userName'
        end
      end
      
      class StreamingSetupTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :receive_work_port, as: 'receiveWorkPort'
          property :streaming_computation_topology, as: 'streamingComputationTopology', class: Google::Apis::DataflowV1b3::TopologyConfig, decorator: Google::Apis::DataflowV1b3::TopologyConfig::Representation
      
          property :worker_harness_port, as: 'workerHarnessPort'
          property :drain, as: 'drain'
        end
      end
      
      class PubsubLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription'
          property :drop_late_data, as: 'dropLateData'
          property :tracking_subscription, as: 'trackingSubscription'
          property :with_attributes, as: 'withAttributes'
          property :id_label, as: 'idLabel'
          property :topic, as: 'topic'
          property :timestamp_label, as: 'timestampLabel'
        end
      end
      
      class WorkerHealthReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pods, as: 'pods'
          property :vm_startup_time, as: 'vmStartupTime'
          property :vm_is_healthy, as: 'vmIsHealthy'
          property :report_interval, as: 'reportInterval'
        end
      end
      
      class JobMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :message_text, as: 'messageText'
          property :message_importance, as: 'messageImportance'
          property :time, as: 'time'
        end
      end
      
      class ParameterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :help_text, as: 'helpText'
          property :is_optional, as: 'isOptional'
          property :name, as: 'name'
          collection :regexes, as: 'regexes'
        end
      end
      
      class MultiOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
        end
      end
      
      class SourceSplitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
          property :options, as: 'options', class: Google::Apis::DataflowV1b3::SourceSplitOptions, decorator: Google::Apis::DataflowV1b3::SourceSplitOptions::Representation
      
        end
      end
      
      class SourceGetMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::SourceMetadata, decorator: Google::Apis::DataflowV1b3::SourceMetadata::Representation
      
        end
      end
      
      class ShellTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exit_code, as: 'exitCode'
          property :command, as: 'command'
        end
      end
      
      class MetricShortId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :short_id, :numeric_string => true, as: 'shortId'
          property :metric_index, as: 'metricIndex'
        end
      end
      
      class AutoscalingEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description', class: Google::Apis::DataflowV1b3::StructuredMessage, decorator: Google::Apis::DataflowV1b3::StructuredMessage::Representation
      
          property :time, as: 'time'
          property :target_num_workers, :numeric_string => true, as: 'targetNumWorkers'
          property :event_type, as: 'eventType'
          property :current_num_workers, :numeric_string => true, as: 'currentNumWorkers'
        end
      end
      
      class TaskRunnerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_to_serialconsole, as: 'logToSerialconsole'
          property :continue_on_exception, as: 'continueOnException'
          property :parallel_worker_settings, as: 'parallelWorkerSettings', class: Google::Apis::DataflowV1b3::WorkerSettings, decorator: Google::Apis::DataflowV1b3::WorkerSettings::Representation
      
          property :vm_id, as: 'vmId'
          property :task_user, as: 'taskUser'
          property :alsologtostderr, as: 'alsologtostderr'
          property :task_group, as: 'taskGroup'
          property :harness_command, as: 'harnessCommand'
          property :log_dir, as: 'logDir'
          collection :oauth_scopes, as: 'oauthScopes'
          property :dataflow_api_version, as: 'dataflowApiVersion'
          property :log_upload_location, as: 'logUploadLocation'
          property :streaming_worker_main_class, as: 'streamingWorkerMainClass'
          property :workflow_file_name, as: 'workflowFileName'
          property :base_task_dir, as: 'baseTaskDir'
          property :temp_storage_prefix, as: 'tempStoragePrefix'
          property :commandlines_file_name, as: 'commandlinesFileName'
          property :language_hint, as: 'languageHint'
          property :base_url, as: 'baseUrl'
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record_index, :numeric_string => true, as: 'recordIndex'
          property :shuffle_position, as: 'shufflePosition'
          property :concat_position, as: 'concatPosition', class: Google::Apis::DataflowV1b3::ConcatPosition, decorator: Google::Apis::DataflowV1b3::ConcatPosition::Representation
      
          property :byte_offset, :numeric_string => true, as: 'byteOffset'
          property :end, as: 'end'
          property :key, as: 'key'
        end
      end
      
      class SplitInt64
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :low_bits, as: 'lowBits'
          property :high_bits, as: 'highBits'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::SourceMetadata, decorator: Google::Apis::DataflowV1b3::SourceMetadata::Representation
      
          collection :base_specs, as: 'baseSpecs'
          hash :codec, as: 'codec'
          property :does_not_need_splitting, as: 'doesNotNeedSplitting'
          hash :spec, as: 'spec'
        end
      end
      
      class WorkerPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_package_set, as: 'defaultPackageSet'
          property :network, as: 'network'
          property :zone, as: 'zone'
          property :num_workers, as: 'numWorkers'
          property :num_threads_per_worker, as: 'numThreadsPerWorker'
          property :disk_source_image, as: 'diskSourceImage'
          collection :packages, as: 'packages', class: Google::Apis::DataflowV1b3::Package, decorator: Google::Apis::DataflowV1b3::Package::Representation
      
          property :teardown_policy, as: 'teardownPolicy'
          property :on_host_maintenance, as: 'onHostMaintenance'
          hash :pool_args, as: 'poolArgs'
          property :disk_size_gb, as: 'diskSizeGb'
          property :worker_harness_container_image, as: 'workerHarnessContainerImage'
          property :machine_type, as: 'machineType'
          property :disk_type, as: 'diskType'
          property :kind, as: 'kind'
          collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1b3::Disk, decorator: Google::Apis::DataflowV1b3::Disk::Representation
      
          property :subnetwork, as: 'subnetwork'
          property :ip_configuration, as: 'ipConfiguration'
          property :autoscaling_settings, as: 'autoscalingSettings', class: Google::Apis::DataflowV1b3::AutoscalingSettings, decorator: Google::Apis::DataflowV1b3::AutoscalingSettings::Representation
      
          property :taskrunner_settings, as: 'taskrunnerSettings', class: Google::Apis::DataflowV1b3::TaskRunnerSettings, decorator: Google::Apis::DataflowV1b3::TaskRunnerSettings::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class SourceOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1b3::SourceGetMetadataRequest, decorator: Google::Apis::DataflowV1b3::SourceGetMetadataRequest::Representation
      
          property :split, as: 'split', class: Google::Apis::DataflowV1b3::SourceSplitRequest, decorator: Google::Apis::DataflowV1b3::SourceSplitRequest::Representation
      
        end
      end
      
      class StructuredMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::DataflowV1b3::Parameter, decorator: Google::Apis::DataflowV1b3::Parameter::Representation
      
          property :message_key, as: 'messageKey'
          property :message_text, as: 'messageText'
        end
      end
      
      class WorkItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :configuration, as: 'configuration'
          property :map_task, as: 'mapTask', class: Google::Apis::DataflowV1b3::MapTask, decorator: Google::Apis::DataflowV1b3::MapTask::Representation
      
          property :seq_map_task, as: 'seqMapTask', class: Google::Apis::DataflowV1b3::SeqMapTask, decorator: Google::Apis::DataflowV1b3::SeqMapTask::Representation
      
          collection :packages, as: 'packages', class: Google::Apis::DataflowV1b3::Package, decorator: Google::Apis::DataflowV1b3::Package::Representation
      
          property :project_id, as: 'projectId'
          property :source_operation_task, as: 'sourceOperationTask', class: Google::Apis::DataflowV1b3::SourceOperationRequest, decorator: Google::Apis::DataflowV1b3::SourceOperationRequest::Representation
      
          property :streaming_setup_task, as: 'streamingSetupTask', class: Google::Apis::DataflowV1b3::StreamingSetupTask, decorator: Google::Apis::DataflowV1b3::StreamingSetupTask::Representation
      
          property :report_status_interval, as: 'reportStatusInterval'
          property :streaming_config_task, as: 'streamingConfigTask', class: Google::Apis::DataflowV1b3::StreamingConfigTask, decorator: Google::Apis::DataflowV1b3::StreamingConfigTask::Representation
      
          property :lease_expire_time, as: 'leaseExpireTime'
          property :initial_report_index, :numeric_string => true, as: 'initialReportIndex'
          property :streaming_computation_task, as: 'streamingComputationTask', class: Google::Apis::DataflowV1b3::StreamingComputationTask, decorator: Google::Apis::DataflowV1b3::StreamingComputationTask::Representation
      
          property :shell_task, as: 'shellTask', class: Google::Apis::DataflowV1b3::ShellTask, decorator: Google::Apis::DataflowV1b3::ShellTask::Representation
      
          property :job_id, as: 'jobId'
        end
      end
      
      class ResourceUtilizationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cpu_time, as: 'cpuTime', class: Google::Apis::DataflowV1b3::CpuTime, decorator: Google::Apis::DataflowV1b3::CpuTime::Representation
      
        end
      end
      
      class ReportedParallelism
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :is_infinite, as: 'isInfinite'
        end
      end
      
      class TopologyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :user_stage_to_computation_name_map, as: 'userStageToComputationNameMap'
          collection :computations, as: 'computations', class: Google::Apis::DataflowV1b3::ComputationTopology, decorator: Google::Apis::DataflowV1b3::ComputationTopology::Representation
      
          collection :data_disk_assignments, as: 'dataDiskAssignments', class: Google::Apis::DataflowV1b3::DataDiskAssignment, decorator: Google::Apis::DataflowV1b3::DataDiskAssignment::Representation
      
          property :persistent_state_version, as: 'persistentStateVersion'
          property :forwarding_key_bits, as: 'forwardingKeyBits'
        end
      end
      
      class SourceSplitOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_bundle_size_bytes, :numeric_string => true, as: 'desiredBundleSizeBytes'
          property :desired_shard_size_bytes, :numeric_string => true, as: 'desiredShardSizeBytes'
        end
      end
      
      class ReadInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class WorkerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :temp_storage_prefix, as: 'tempStoragePrefix'
          property :reporting_enabled, as: 'reportingEnabled'
          property :base_url, as: 'baseUrl'
          property :service_path, as: 'servicePath'
          property :shuffle_service_path, as: 'shuffleServicePath'
          property :worker_id, as: 'workerId'
        end
      end
      
      class DataDiskAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_instance, as: 'vmInstance'
          collection :data_disks, as: 'dataDisks'
        end
      end
      
      class StreamingStageLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stream_id, as: 'streamId'
        end
      end
      
      class ApproximateSplitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :fraction_consumed, as: 'fractionConsumed'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class ExecutionStageState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_stage_name, as: 'executionStageName'
          property :current_state_time, as: 'currentStateTime'
          property :execution_stage_state, as: 'executionStageState'
        end
      end
      
      class StreamLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_source_location, as: 'customSourceLocation', class: Google::Apis::DataflowV1b3::CustomSourceLocation, decorator: Google::Apis::DataflowV1b3::CustomSourceLocation::Representation
      
          property :streaming_stage_location, as: 'streamingStageLocation', class: Google::Apis::DataflowV1b3::StreamingStageLocation, decorator: Google::Apis::DataflowV1b3::StreamingStageLocation::Representation
      
          property :pubsub_location, as: 'pubsubLocation', class: Google::Apis::DataflowV1b3::PubsubLocation, decorator: Google::Apis::DataflowV1b3::PubsubLocation::Representation
      
          property :side_input_location, as: 'sideInputLocation', class: Google::Apis::DataflowV1b3::StreamingSideInputLocation, decorator: Google::Apis::DataflowV1b3::StreamingSideInputLocation::Representation
      
        end
      end
      
      class SendWorkerMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_message_responses, as: 'workerMessageResponses', class: Google::Apis::DataflowV1b3::WorkerMessageResponse, decorator: Google::Apis::DataflowV1b3::WorkerMessageResponse::Representation
      
        end
      end
      
      class StreamingComputationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :system_name, as: 'systemName'
          property :stage_name, as: 'stageName'
          collection :instructions, as: 'instructions', class: Google::Apis::DataflowV1b3::ParallelInstruction, decorator: Google::Apis::DataflowV1b3::ParallelInstruction::Representation
      
          property :computation_id, as: 'computationId'
        end
      end
      
      class TransformSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :input_collection_name, as: 'inputCollectionName'
          property :name, as: 'name'
          property :id, as: 'id'
          collection :display_data, as: 'displayData', class: Google::Apis::DataflowV1b3::DisplayData, decorator: Google::Apis::DataflowV1b3::DisplayData::Representation
      
          collection :output_collection_name, as: 'outputCollectionName'
        end
      end
      
      class LeaseWorkItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :work_items, as: 'workItems', class: Google::Apis::DataflowV1b3::WorkItem, decorator: Google::Apis::DataflowV1b3::WorkItem::Representation
      
        end
      end
      
      class Sink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :codec, as: 'codec'
          hash :spec, as: 'spec'
        end
      end
      
      class LaunchTemplateParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :job_name, as: 'jobName'
          property :environment, as: 'environment', class: Google::Apis::DataflowV1b3::RuntimeEnvironment, decorator: Google::Apis::DataflowV1b3::RuntimeEnvironment::Representation
      
        end
      end
      
      class FlattenInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
        end
      end
      
      class PartialGroupByKeyInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          hash :input_element_codec, as: 'inputElementCodec'
          hash :value_combining_fn, as: 'valueCombiningFn'
          property :original_combine_values_input_store_name, as: 'originalCombineValuesInputStoreName'
          collection :side_inputs, as: 'sideInputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
          property :original_combine_values_step_name, as: 'originalCombineValuesStepName'
        end
      end
      
      class InstructionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_instruction_index, as: 'producerInstructionIndex'
          property :output_num, as: 'outputNum'
        end
      end
      
      class StageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :user_name, as: 'userName'
          property :original_transform_or_collection, as: 'originalTransformOrCollection'
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements'
        end
      end
      
      class DisplayData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :java_class_value, as: 'javaClassValue'
          property :bool_value, as: 'boolValue'
          property :str_value, as: 'strValue'
          property :duration_value, as: 'durationValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :namespace, as: 'namespace'
          property :float_value, as: 'floatValue'
          property :key, as: 'key'
          property :short_str_value, as: 'shortStrValue'
          property :label, as: 'label'
          property :url, as: 'url'
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class LeaseWorkItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_lease_duration, as: 'requestedLeaseDuration'
          property :current_worker_time, as: 'currentWorkerTime'
          property :location, as: 'location'
          collection :work_item_types, as: 'workItemTypes'
          collection :worker_capabilities, as: 'workerCapabilities'
          property :worker_id, as: 'workerId'
        end
      end
      
      class GetDebugConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_id, as: 'componentId'
          property :worker_id, as: 'workerId'
          property :location, as: 'location'
        end
      end
      
      class GetTemplateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::TemplateMetadata, decorator: Google::Apis::DataflowV1b3::TemplateMetadata::Representation
      
          property :status, as: 'status', class: Google::Apis::DataflowV1b3::Status, decorator: Google::Apis::DataflowV1b3::Status::Representation
      
        end
      end
      
      class Parameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class ReportWorkItemStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_id, as: 'workerId'
          property :current_worker_time, as: 'currentWorkerTime'
          property :location, as: 'location'
          collection :work_item_statuses, as: 'workItemStatuses', class: Google::Apis::DataflowV1b3::WorkItemStatus, decorator: Google::Apis::DataflowV1b3::WorkItemStatus::Representation
      
        end
      end
      
      class PipelineDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :original_pipeline_transform, as: 'originalPipelineTransform', class: Google::Apis::DataflowV1b3::TransformSummary, decorator: Google::Apis::DataflowV1b3::TransformSummary::Representation
      
          collection :display_data, as: 'displayData', class: Google::Apis::DataflowV1b3::DisplayData, decorator: Google::Apis::DataflowV1b3::DisplayData::Representation
      
          collection :execution_pipeline_stage, as: 'executionPipelineStage', class: Google::Apis::DataflowV1b3::ExecutionStageSummary, decorator: Google::Apis::DataflowV1b3::ExecutionStageSummary::Representation
      
        end
      end
      
      class StreamingConfigTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :streaming_computation_configs, as: 'streamingComputationConfigs', class: Google::Apis::DataflowV1b3::StreamingComputationConfig, decorator: Google::Apis::DataflowV1b3::StreamingComputationConfig::Representation
      
          property :windmill_service_endpoint, as: 'windmillServiceEndpoint'
          hash :user_step_to_state_family_name_map, as: 'userStepToStateFamilyNameMap'
          property :windmill_service_port, :numeric_string => true, as: 'windmillServicePort'
        end
      end
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          hash :properties, as: 'properties'
          property :name, as: 'name'
        end
      end
      
      class JobExecutionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :stages, as: 'stages', class: Google::Apis::DataflowV1b3::JobExecutionStageInfo, decorator: Google::Apis::DataflowV1b3::JobExecutionStageInfo::Representation
      
        end
      end
      
      class FailedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, as: 'sizeGb'
          property :disk_type, as: 'diskType'
          property :mount_point, as: 'mountPoint'
        end
      end
      
      class ListJobMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :autoscaling_events, as: 'autoscalingEvents', class: Google::Apis::DataflowV1b3::AutoscalingEvent, decorator: Google::Apis::DataflowV1b3::AutoscalingEvent::Representation
      
          collection :job_messages, as: 'jobMessages', class: Google::Apis::DataflowV1b3::JobMessage, decorator: Google::Apis::DataflowV1b3::JobMessage::Representation
      
        end
      end
      
      class CounterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :description, as: 'description'
          property :standard_units, as: 'standardUnits'
          property :other_units, as: 'otherUnits'
        end
      end
      
      class ApproximateReportedProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :fraction_consumed, as: 'fractionConsumed'
          property :consumed_parallelism, as: 'consumedParallelism', class: Google::Apis::DataflowV1b3::ReportedParallelism, decorator: Google::Apis::DataflowV1b3::ReportedParallelism::Representation
      
          property :remaining_parallelism, as: 'remainingParallelism', class: Google::Apis::DataflowV1b3::ReportedParallelism, decorator: Google::Apis::DataflowV1b3::ReportedParallelism::Representation
      
        end
      end
      
      class StateFamilyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_read, as: 'isRead'
          property :state_family, as: 'stateFamily'
        end
      end
      
      class IntegerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class ResourceUtilizationReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SourceSplitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :shards, as: 'shards', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
          property :outcome, as: 'outcome'
          collection :bundles, as: 'bundles', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
        end
      end
      
      class ParallelInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read, as: 'read', class: Google::Apis::DataflowV1b3::ReadInstruction, decorator: Google::Apis::DataflowV1b3::ReadInstruction::Representation
      
          property :par_do, as: 'parDo', class: Google::Apis::DataflowV1b3::ParDoInstruction, decorator: Google::Apis::DataflowV1b3::ParDoInstruction::Representation
      
          property :flatten, as: 'flatten', class: Google::Apis::DataflowV1b3::FlattenInstruction, decorator: Google::Apis::DataflowV1b3::FlattenInstruction::Representation
      
          property :original_name, as: 'originalName'
          property :system_name, as: 'systemName'
          property :write, as: 'write', class: Google::Apis::DataflowV1b3::WriteInstruction, decorator: Google::Apis::DataflowV1b3::WriteInstruction::Representation
      
          property :partial_group_by_key, as: 'partialGroupByKey', class: Google::Apis::DataflowV1b3::PartialGroupByKeyInstruction, decorator: Google::Apis::DataflowV1b3::PartialGroupByKeyInstruction::Representation
      
          collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1b3::InstructionOutput, decorator: Google::Apis::DataflowV1b3::InstructionOutput::Representation
      
          property :name, as: 'name'
        end
      end
      
      class KeyRangeDataDiskAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :data_disk, as: 'dataDisk'
          property :end, as: 'end'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :name, as: 'name'
        end
      end
      
      class ParDoInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :multi_output_infos, as: 'multiOutputInfos', class: Google::Apis::DataflowV1b3::MultiOutputInfo, decorator: Google::Apis::DataflowV1b3::MultiOutputInfo::Representation
      
          hash :user_fn, as: 'userFn'
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          property :num_outputs, as: 'numOutputs'
          collection :side_inputs, as: 'sideInputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
        end
      end
      
      class MetricUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          property :name, as: 'name', class: Google::Apis::DataflowV1b3::MetricStructuredName, decorator: Google::Apis::DataflowV1b3::MetricStructuredName::Representation
      
          property :distribution, as: 'distribution'
          property :set, as: 'set'
          property :internal, as: 'internal'
          property :cumulative, as: 'cumulative'
          property :kind, as: 'kind'
          property :scalar, as: 'scalar'
          property :mean_count, as: 'meanCount'
          property :mean_sum, as: 'meanSum'
        end
      end
      
      class CounterStructuredName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :origin_namespace, as: 'originNamespace'
          property :origin, as: 'origin'
          property :name, as: 'name'
          property :execution_step_name, as: 'executionStepName'
          property :component_step_name, as: 'componentStepName'
          property :portion, as: 'portion'
          property :original_step_name, as: 'originalStepName'
          property :worker_id, as: 'workerId'
        end
      end
      
      class ApproximateProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remaining_time, as: 'remainingTime'
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :percent_complete, as: 'percentComplete'
        end
      end
      
      class WorkerMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_health_report_response, as: 'workerHealthReportResponse', class: Google::Apis::DataflowV1b3::WorkerHealthReportResponse, decorator: Google::Apis::DataflowV1b3::WorkerHealthReportResponse::Representation
      
          property :worker_metrics_response, as: 'workerMetricsResponse', class: Google::Apis::DataflowV1b3::ResourceUtilizationReportResponse, decorator: Google::Apis::DataflowV1b3::ResourceUtilizationReportResponse::Representation
      
        end
      end
      
      class TemplateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::DataflowV1b3::ParameterMetadata, decorator: Google::Apis::DataflowV1b3::ParameterMetadata::Representation
      
          property :description, as: 'description'
        end
      end
      
      class WorkerMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_message_code, as: 'workerMessageCode', class: Google::Apis::DataflowV1b3::WorkerMessageCode, decorator: Google::Apis::DataflowV1b3::WorkerMessageCode::Representation
      
          property :worker_metrics, as: 'workerMetrics', class: Google::Apis::DataflowV1b3::ResourceUtilizationReport, decorator: Google::Apis::DataflowV1b3::ResourceUtilizationReport::Representation
      
          hash :labels, as: 'labels'
          property :time, as: 'time'
          property :worker_health_report, as: 'workerHealthReport', class: Google::Apis::DataflowV1b3::WorkerHealthReport, decorator: Google::Apis::DataflowV1b3::WorkerHealthReport::Representation
      
        end
      end
      
      class JobMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_time, as: 'metricTime'
          collection :metrics, as: 'metrics', class: Google::Apis::DataflowV1b3::MetricUpdate, decorator: Google::Apis::DataflowV1b3::MetricUpdate::Representation
      
        end
      end
      
      class FloatingPointList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements'
        end
      end
      
      class CounterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :short_id, :numeric_string => true, as: 'shortId'
          property :floating_point_list, as: 'floatingPointList', class: Google::Apis::DataflowV1b3::FloatingPointList, decorator: Google::Apis::DataflowV1b3::FloatingPointList::Representation
      
          property :integer, as: 'integer', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :structured_name_and_metadata, as: 'structuredNameAndMetadata', class: Google::Apis::DataflowV1b3::CounterStructuredNameAndMetadata, decorator: Google::Apis::DataflowV1b3::CounterStructuredNameAndMetadata::Representation
      
          property :integer_list, as: 'integerList', class: Google::Apis::DataflowV1b3::IntegerList, decorator: Google::Apis::DataflowV1b3::IntegerList::Representation
      
          property :integer_mean, as: 'integerMean', class: Google::Apis::DataflowV1b3::IntegerMean, decorator: Google::Apis::DataflowV1b3::IntegerMean::Representation
      
          property :floating_point, as: 'floatingPoint'
          property :cumulative, as: 'cumulative'
          property :internal, as: 'internal'
          property :floating_point_mean, as: 'floatingPointMean', class: Google::Apis::DataflowV1b3::FloatingPointMean, decorator: Google::Apis::DataflowV1b3::FloatingPointMean::Representation
      
          property :boolean, as: 'boolean'
          property :name_and_kind, as: 'nameAndKind', class: Google::Apis::DataflowV1b3::NameAndKind, decorator: Google::Apis::DataflowV1b3::NameAndKind::Representation
      
          property :string_list, as: 'stringList', class: Google::Apis::DataflowV1b3::StringList, decorator: Google::Apis::DataflowV1b3::StringList::Representation
      
          property :distribution, as: 'distribution', class: Google::Apis::DataflowV1b3::DistributionUpdate, decorator: Google::Apis::DataflowV1b3::DistributionUpdate::Representation
      
        end
      end
      
      class SourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :produces_sorted_keys, as: 'producesSortedKeys'
          property :infinite, as: 'infinite'
          property :estimated_size_bytes, :numeric_string => true, as: 'estimatedSizeBytes'
        end
      end
      
      class DistributionUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sum, as: 'sum', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :max, as: 'max', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          collection :log_buckets, as: 'logBuckets', class: Google::Apis::DataflowV1b3::LogBucket, decorator: Google::Apis::DataflowV1b3::LogBucket::Representation
      
          property :count, as: 'count', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :min, as: 'min', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :sum_of_squares, as: 'sumOfSquares'
        end
      end
      
      class WorkerHealthReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_interval, as: 'reportInterval'
        end
      end
      
      class SourceFork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :residual, as: 'residual', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
          property :residual_source, as: 'residualSource', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
          property :primary, as: 'primary', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
          property :primary_source, as: 'primarySource', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
        end
      end
      
      class WorkItemStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_lease_duration, as: 'requestedLeaseDuration'
          property :report_index, :numeric_string => true, as: 'reportIndex'
          property :stop_position, as: 'stopPosition', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :completed, as: 'completed'
          property :reported_progress, as: 'reportedProgress', class: Google::Apis::DataflowV1b3::ApproximateReportedProgress, decorator: Google::Apis::DataflowV1b3::ApproximateReportedProgress::Representation
      
          property :source_fork, as: 'sourceFork', class: Google::Apis::DataflowV1b3::SourceFork, decorator: Google::Apis::DataflowV1b3::SourceFork::Representation
      
          collection :counter_updates, as: 'counterUpdates', class: Google::Apis::DataflowV1b3::CounterUpdate, decorator: Google::Apis::DataflowV1b3::CounterUpdate::Representation
      
          property :work_item_id, as: 'workItemId'
          collection :errors, as: 'errors', class: Google::Apis::DataflowV1b3::Status, decorator: Google::Apis::DataflowV1b3::Status::Representation
      
          collection :metric_updates, as: 'metricUpdates', class: Google::Apis::DataflowV1b3::MetricUpdate, decorator: Google::Apis::DataflowV1b3::MetricUpdate::Representation
      
          property :dynamic_source_split, as: 'dynamicSourceSplit', class: Google::Apis::DataflowV1b3::DynamicSourceSplit, decorator: Google::Apis::DataflowV1b3::DynamicSourceSplit::Representation
      
          property :source_operation_response, as: 'sourceOperationResponse', class: Google::Apis::DataflowV1b3::SourceOperationResponse, decorator: Google::Apis::DataflowV1b3::SourceOperationResponse::Representation
      
          property :progress, as: 'progress', class: Google::Apis::DataflowV1b3::ApproximateProgress, decorator: Google::Apis::DataflowV1b3::ApproximateProgress::Representation
      
        end
      end
      
      class ComponentSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_transform_or_collection, as: 'originalTransformOrCollection'
          property :name, as: 'name'
          property :user_name, as: 'userName'
        end
      end
      
      class WorkItemServiceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_stop_point, as: 'suggestedStopPoint', class: Google::Apis::DataflowV1b3::ApproximateProgress, decorator: Google::Apis::DataflowV1b3::ApproximateProgress::Representation
      
          property :split_request, as: 'splitRequest', class: Google::Apis::DataflowV1b3::ApproximateSplitRequest, decorator: Google::Apis::DataflowV1b3::ApproximateSplitRequest::Representation
      
          property :suggested_stop_position, as: 'suggestedStopPosition', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :report_status_interval, as: 'reportStatusInterval'
          hash :harness_data, as: 'harnessData'
          property :lease_expire_time, as: 'leaseExpireTime'
          collection :metric_short_id, as: 'metricShortId', class: Google::Apis::DataflowV1b3::MetricShortId, decorator: Google::Apis::DataflowV1b3::MetricShortId::Representation
      
          property :next_report_index, :numeric_string => true, as: 'nextReportIndex'
        end
      end
      
      class MetricStructuredName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :context, as: 'context'
          property :origin, as: 'origin'
          property :name, as: 'name'
        end
      end
      
      class SeqMapTaskOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sink, as: 'sink', class: Google::Apis::DataflowV1b3::Sink, decorator: Google::Apis::DataflowV1b3::Sink::Representation
      
          property :tag, as: 'tag'
        end
      end
      
      class JobExecutionStageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :step_name, as: 'stepName'
        end
      end
      
      class KeyRangeLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :deprecated_persistent_directory, as: 'deprecatedPersistentDirectory'
          property :delivery_endpoint, as: 'deliveryEndpoint'
          property :start, as: 'start'
          property :data_disk, as: 'dataDisk'
        end
      end
      
      class SourceGetMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class NameAndKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class SeqMapTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
          property :stage_name, as: 'stageName'
          property :system_name, as: 'systemName'
          hash :user_fn, as: 'userFn'
          property :name, as: 'name'
          collection :output_infos, as: 'outputInfos', class: Google::Apis::DataflowV1b3::SeqMapTaskOutputInfo, decorator: Google::Apis::DataflowV1b3::SeqMapTaskOutputInfo::Representation
      
        end
      end
      
      class WorkerMessageCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :code, as: 'code'
        end
      end
      
      class CustomSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stateful, as: 'stateful'
        end
      end
      
      class MapTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :system_name, as: 'systemName'
          property :stage_name, as: 'stageName'
          collection :instructions, as: 'instructions', class: Google::Apis::DataflowV1b3::ParallelInstruction, decorator: Google::Apis::DataflowV1b3::ParallelInstruction::Representation
      
        end
      end
      
      class FloatingPointMean
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sum, as: 'sum'
          property :count, as: 'count', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class ReportWorkItemStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :work_item_service_states, as: 'workItemServiceStates', class: Google::Apis::DataflowV1b3::WorkItemServiceState, decorator: Google::Apis::DataflowV1b3::WorkItemServiceState::Representation
      
        end
      end
      
      class InstructionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :codec, as: 'codec'
          property :name, as: 'name'
          property :original_name, as: 'originalName'
          property :system_name, as: 'systemName'
          property :only_count_key_bytes, as: 'onlyCountKeyBytes'
          property :only_count_value_bytes, as: 'onlyCountValueBytes'
        end
      end
      
      class CreateJobFromTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment', class: Google::Apis::DataflowV1b3::RuntimeEnvironment, decorator: Google::Apis::DataflowV1b3::RuntimeEnvironment::Representation
      
          property :location, as: 'location'
          hash :parameters, as: 'parameters'
          property :job_name, as: 'jobName'
          property :gcs_path, as: 'gcsPath'
        end
      end
      
      class IntegerMean
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :sum, as: 'sum', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DataflowV1b3::Job, decorator: Google::Apis::DataflowV1b3::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :failed_location, as: 'failedLocation', class: Google::Apis::DataflowV1b3::FailedLocation, decorator: Google::Apis::DataflowV1b3::FailedLocation::Representation
      
        end
      end
      
      class ComputationTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1b3::StreamLocation, decorator: Google::Apis::DataflowV1b3::StreamLocation::Representation
      
          collection :state_families, as: 'stateFamilies', class: Google::Apis::DataflowV1b3::StateFamilyConfig, decorator: Google::Apis::DataflowV1b3::StateFamilyConfig::Representation
      
          property :system_stage_name, as: 'systemStageName'
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::StreamLocation, decorator: Google::Apis::DataflowV1b3::StreamLocation::Representation
      
          property :computation_id, as: 'computationId'
          collection :key_ranges, as: 'keyRanges', class: Google::Apis::DataflowV1b3::KeyRangeLocation, decorator: Google::Apis::DataflowV1b3::KeyRangeLocation::Representation
      
        end
      end
    end
  end
end
