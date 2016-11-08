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
      
      class GetDebugConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDebugConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendDebugCaptureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendDebugCaptureResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskRunnerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingSettings
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
      
      class JobExecutionStageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricStructuredName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateJobFromTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportWorkItemStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NameAndKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterStructuredNameAndMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterStructuredName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitInt64
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerMean
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloatingPointMean
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloatingPointList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateReportedProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConcatPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportedParallelism
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
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitShard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceGetMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceFork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportWorkItemStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItemServiceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproximateSplitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricShortId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseWorkItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseWorkItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MapTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParallelInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstructionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParDoInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SideInputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialGroupByKeyInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlattenInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstructionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeqMapTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeqMapTaskOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShellTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingSetupTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopologyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputationTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingStageLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingSideInputLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateFamilyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataDiskAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSplitOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceGetMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MountedDataDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationRanges
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeDataDiskAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingConfigTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingComputationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendWorkerMessagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerHealthReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessageCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendWorkerMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerHealthReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDebugConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_id, as: 'workerId'
          property :component_id, as: 'componentId'
        end
      end
      
      class GetDebugConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
        end
      end
      
      class SendDebugCaptureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_id, as: 'workerId'
          property :component_id, as: 'componentId'
          property :data, as: 'data'
        end
      end
      
      class SendDebugCaptureResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :project_id, as: 'projectId'
          property :name, as: 'name'
          property :type, as: 'type'
          property :environment, as: 'environment', class: Google::Apis::DataflowV1b3::Environment, decorator: Google::Apis::DataflowV1b3::Environment::Representation
      
          collection :steps, as: 'steps', class: Google::Apis::DataflowV1b3::Step, decorator: Google::Apis::DataflowV1b3::Step::Representation
      
          property :current_state, as: 'currentState'
          property :current_state_time, as: 'currentStateTime'
          property :requested_state, as: 'requestedState'
          property :execution_info, as: 'executionInfo', class: Google::Apis::DataflowV1b3::JobExecutionInfo, decorator: Google::Apis::DataflowV1b3::JobExecutionInfo::Representation
      
          property :create_time, as: 'createTime'
          property :replace_job_id, as: 'replaceJobId'
          hash :transform_name_mapping, as: 'transformNameMapping'
          property :client_request_id, as: 'clientRequestId'
          property :replaced_by_job_id, as: 'replacedByJobId'
          collection :temp_files, as: 'tempFiles'
          hash :labels, as: 'labels'
          property :location, as: 'location'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :temp_storage_prefix, as: 'tempStoragePrefix'
          property :cluster_manager_api_service, as: 'clusterManagerApiService'
          collection :experiments, as: 'experiments'
          collection :worker_pools, as: 'workerPools', class: Google::Apis::DataflowV1b3::WorkerPool, decorator: Google::Apis::DataflowV1b3::WorkerPool::Representation
      
          hash :user_agent, as: 'userAgent'
          hash :version, as: 'version'
          property :dataset, as: 'dataset'
          hash :sdk_pipeline_options, as: 'sdkPipelineOptions'
          hash :internal_experiments, as: 'internalExperiments'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class WorkerPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :num_workers, as: 'numWorkers'
          collection :packages, as: 'packages', class: Google::Apis::DataflowV1b3::Package, decorator: Google::Apis::DataflowV1b3::Package::Representation
      
          property :default_package_set, as: 'defaultPackageSet'
          property :machine_type, as: 'machineType'
          property :teardown_policy, as: 'teardownPolicy'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :disk_source_image, as: 'diskSourceImage'
          property :zone, as: 'zone'
          property :taskrunner_settings, as: 'taskrunnerSettings', class: Google::Apis::DataflowV1b3::TaskRunnerSettings, decorator: Google::Apis::DataflowV1b3::TaskRunnerSettings::Representation
      
          property :on_host_maintenance, as: 'onHostMaintenance'
          collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1b3::Disk, decorator: Google::Apis::DataflowV1b3::Disk::Representation
      
          hash :metadata, as: 'metadata'
          property :autoscaling_settings, as: 'autoscalingSettings', class: Google::Apis::DataflowV1b3::AutoscalingSettings, decorator: Google::Apis::DataflowV1b3::AutoscalingSettings::Representation
      
          hash :pool_args, as: 'poolArgs'
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
          property :worker_harness_container_image, as: 'workerHarnessContainerImage'
          property :num_threads_per_worker, as: 'numThreadsPerWorker'
          property :ip_configuration, as: 'ipConfiguration'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :location, as: 'location'
        end
      end
      
      class TaskRunnerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :task_user, as: 'taskUser'
          property :task_group, as: 'taskGroup'
          collection :oauth_scopes, as: 'oauthScopes'
          property :base_url, as: 'baseUrl'
          property :dataflow_api_version, as: 'dataflowApiVersion'
          property :parallel_worker_settings, as: 'parallelWorkerSettings', class: Google::Apis::DataflowV1b3::WorkerSettings, decorator: Google::Apis::DataflowV1b3::WorkerSettings::Representation
      
          property :base_task_dir, as: 'baseTaskDir'
          property :continue_on_exception, as: 'continueOnException'
          property :log_to_serialconsole, as: 'logToSerialconsole'
          property :alsologtostderr, as: 'alsologtostderr'
          property :log_upload_location, as: 'logUploadLocation'
          property :log_dir, as: 'logDir'
          property :temp_storage_prefix, as: 'tempStoragePrefix'
          property :harness_command, as: 'harnessCommand'
          property :workflow_file_name, as: 'workflowFileName'
          property :commandlines_file_name, as: 'commandlinesFileName'
          property :vm_id, as: 'vmId'
          property :language_hint, as: 'languageHint'
          property :streaming_worker_main_class, as: 'streamingWorkerMainClass'
        end
      end
      
      class WorkerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :reporting_enabled, as: 'reportingEnabled'
          property :service_path, as: 'servicePath'
          property :shuffle_service_path, as: 'shuffleServicePath'
          property :worker_id, as: 'workerId'
          property :temp_storage_prefix, as: 'tempStoragePrefix'
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
      
      class AutoscalingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :max_num_workers, as: 'maxNumWorkers'
        end
      end
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          hash :properties, as: 'properties'
        end
      end
      
      class JobExecutionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :stages, as: 'stages', class: Google::Apis::DataflowV1b3::JobExecutionStageInfo, decorator: Google::Apis::DataflowV1b3::JobExecutionStageInfo::Representation
      
        end
      end
      
      class JobExecutionStageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :step_name, as: 'stepName'
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
      
      class FailedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class ListJobMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_messages, as: 'jobMessages', class: Google::Apis::DataflowV1b3::JobMessage, decorator: Google::Apis::DataflowV1b3::JobMessage::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class JobMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :time, as: 'time'
          property :message_text, as: 'messageText'
          property :message_importance, as: 'messageImportance'
        end
      end
      
      class JobMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_time, as: 'metricTime'
          collection :metrics, as: 'metrics', class: Google::Apis::DataflowV1b3::MetricUpdate, decorator: Google::Apis::DataflowV1b3::MetricUpdate::Representation
      
        end
      end
      
      class MetricUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name', class: Google::Apis::DataflowV1b3::MetricStructuredName, decorator: Google::Apis::DataflowV1b3::MetricStructuredName::Representation
      
          property :kind, as: 'kind'
          property :cumulative, as: 'cumulative'
          property :scalar, as: 'scalar'
          property :mean_sum, as: 'meanSum'
          property :mean_count, as: 'meanCount'
          property :set, as: 'set'
          property :internal, as: 'internal'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MetricStructuredName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :origin, as: 'origin'
          property :name, as: 'name'
          hash :context, as: 'context'
        end
      end
      
      class CreateJobFromTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_path, as: 'gcsPath'
          hash :parameters, as: 'parameters'
        end
      end
      
      class ReportWorkItemStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_id, as: 'workerId'
          collection :work_item_statuses, as: 'workItemStatuses', class: Google::Apis::DataflowV1b3::WorkItemStatus, decorator: Google::Apis::DataflowV1b3::WorkItemStatus::Representation
      
          property :current_worker_time, as: 'currentWorkerTime'
          property :location, as: 'location'
        end
      end
      
      class WorkItemStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :work_item_id, as: 'workItemId'
          property :report_index, as: 'reportIndex'
          property :requested_lease_duration, as: 'requestedLeaseDuration'
          property :completed, as: 'completed'
          collection :errors, as: 'errors', class: Google::Apis::DataflowV1b3::Status, decorator: Google::Apis::DataflowV1b3::Status::Representation
      
          collection :counter_updates, as: 'counterUpdates', class: Google::Apis::DataflowV1b3::CounterUpdate, decorator: Google::Apis::DataflowV1b3::CounterUpdate::Representation
      
          collection :metric_updates, as: 'metricUpdates', class: Google::Apis::DataflowV1b3::MetricUpdate, decorator: Google::Apis::DataflowV1b3::MetricUpdate::Representation
      
          property :reported_progress, as: 'reportedProgress', class: Google::Apis::DataflowV1b3::ApproximateReportedProgress, decorator: Google::Apis::DataflowV1b3::ApproximateReportedProgress::Representation
      
          property :stop_position, as: 'stopPosition', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :dynamic_source_split, as: 'dynamicSourceSplit', class: Google::Apis::DataflowV1b3::DynamicSourceSplit, decorator: Google::Apis::DataflowV1b3::DynamicSourceSplit::Representation
      
          property :source_operation_response, as: 'sourceOperationResponse', class: Google::Apis::DataflowV1b3::SourceOperationResponse, decorator: Google::Apis::DataflowV1b3::SourceOperationResponse::Representation
      
          property :source_fork, as: 'sourceFork', class: Google::Apis::DataflowV1b3::SourceFork, decorator: Google::Apis::DataflowV1b3::SourceFork::Representation
      
          property :progress, as: 'progress', class: Google::Apis::DataflowV1b3::ApproximateProgress, decorator: Google::Apis::DataflowV1b3::ApproximateProgress::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class CounterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name_and_kind, as: 'nameAndKind', class: Google::Apis::DataflowV1b3::NameAndKind, decorator: Google::Apis::DataflowV1b3::NameAndKind::Representation
      
          property :short_id, as: 'shortId'
          property :structured_name_and_metadata, as: 'structuredNameAndMetadata', class: Google::Apis::DataflowV1b3::CounterStructuredNameAndMetadata, decorator: Google::Apis::DataflowV1b3::CounterStructuredNameAndMetadata::Representation
      
          property :cumulative, as: 'cumulative'
          property :integer, as: 'integer', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :floating_point, as: 'floatingPoint'
          property :boolean, as: 'boolean'
          property :integer_mean, as: 'integerMean', class: Google::Apis::DataflowV1b3::IntegerMean, decorator: Google::Apis::DataflowV1b3::IntegerMean::Representation
      
          property :floating_point_mean, as: 'floatingPointMean', class: Google::Apis::DataflowV1b3::FloatingPointMean, decorator: Google::Apis::DataflowV1b3::FloatingPointMean::Representation
      
          property :integer_list, as: 'integerList', class: Google::Apis::DataflowV1b3::IntegerList, decorator: Google::Apis::DataflowV1b3::IntegerList::Representation
      
          property :floating_point_list, as: 'floatingPointList', class: Google::Apis::DataflowV1b3::FloatingPointList, decorator: Google::Apis::DataflowV1b3::FloatingPointList::Representation
      
          property :string_list, as: 'stringList', class: Google::Apis::DataflowV1b3::StringList, decorator: Google::Apis::DataflowV1b3::StringList::Representation
      
          property :internal, as: 'internal'
        end
      end
      
      class NameAndKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :kind, as: 'kind'
        end
      end
      
      class CounterStructuredNameAndMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name', class: Google::Apis::DataflowV1b3::CounterStructuredName, decorator: Google::Apis::DataflowV1b3::CounterStructuredName::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::CounterMetadata, decorator: Google::Apis::DataflowV1b3::CounterMetadata::Representation
      
        end
      end
      
      class CounterStructuredName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :standard_origin, as: 'standardOrigin'
          property :other_origin, as: 'otherOrigin'
          property :original_step_name, as: 'originalStepName'
          property :component_step_name, as: 'componentStepName'
          property :execution_step_name, as: 'executionStepName'
          property :worker_id, as: 'workerId'
          property :portion, as: 'portion'
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
      
      class SplitInt64
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :low_bits, as: 'lowBits'
          property :high_bits, as: 'highBits'
        end
      end
      
      class IntegerMean
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sum, as: 'sum', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
          property :count, as: 'count', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class FloatingPointMean
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sum, as: 'sum'
          property :count, as: 'count', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class IntegerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::DataflowV1b3::SplitInt64, decorator: Google::Apis::DataflowV1b3::SplitInt64::Representation
      
        end
      end
      
      class FloatingPointList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements'
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements'
        end
      end
      
      class ApproximateReportedProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :fraction_consumed, as: 'fractionConsumed'
          property :remaining_parallelism, as: 'remainingParallelism', class: Google::Apis::DataflowV1b3::ReportedParallelism, decorator: Google::Apis::DataflowV1b3::ReportedParallelism::Representation
      
          property :consumed_parallelism, as: 'consumedParallelism', class: Google::Apis::DataflowV1b3::ReportedParallelism, decorator: Google::Apis::DataflowV1b3::ReportedParallelism::Representation
      
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :key, as: 'key'
          property :byte_offset, as: 'byteOffset'
          property :record_index, as: 'recordIndex'
          property :shuffle_position, as: 'shufflePosition'
          property :concat_position, as: 'concatPosition', class: Google::Apis::DataflowV1b3::ConcatPosition, decorator: Google::Apis::DataflowV1b3::ConcatPosition::Representation
      
        end
      end
      
      class ConcatPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
        end
      end
      
      class ReportedParallelism
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_infinite, as: 'isInfinite'
          property :value, as: 'value'
        end
      end
      
      class DynamicSourceSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary, as: 'primary', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
          property :residual, as: 'residual', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
        end
      end
      
      class DerivedSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
          property :derivation_mode, as: 'derivationMode'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :spec, as: 'spec'
          hash :codec, as: 'codec'
          collection :base_specs, as: 'baseSpecs'
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::SourceMetadata, decorator: Google::Apis::DataflowV1b3::SourceMetadata::Representation
      
          property :does_not_need_splitting, as: 'doesNotNeedSplitting'
        end
      end
      
      class SourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :produces_sorted_keys, as: 'producesSortedKeys'
          property :infinite, as: 'infinite'
          property :estimated_size_bytes, as: 'estimatedSizeBytes'
        end
      end
      
      class SourceOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :split, as: 'split', class: Google::Apis::DataflowV1b3::SourceSplitResponse, decorator: Google::Apis::DataflowV1b3::SourceSplitResponse::Representation
      
          property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1b3::SourceGetMetadataResponse, decorator: Google::Apis::DataflowV1b3::SourceGetMetadataResponse::Representation
      
        end
      end
      
      class SourceSplitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          collection :bundles, as: 'bundles', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
          collection :shards, as: 'shards', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
        end
      end
      
      class SourceSplitShard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
          property :derivation_mode, as: 'derivationMode'
        end
      end
      
      class SourceGetMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::DataflowV1b3::SourceMetadata, decorator: Google::Apis::DataflowV1b3::SourceMetadata::Representation
      
        end
      end
      
      class SourceFork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary, as: 'primary', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
          property :residual, as: 'residual', class: Google::Apis::DataflowV1b3::SourceSplitShard, decorator: Google::Apis::DataflowV1b3::SourceSplitShard::Representation
      
          property :primary_source, as: 'primarySource', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
          property :residual_source, as: 'residualSource', class: Google::Apis::DataflowV1b3::DerivedSource, decorator: Google::Apis::DataflowV1b3::DerivedSource::Representation
      
        end
      end
      
      class ApproximateProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :percent_complete, as: 'percentComplete'
          property :remaining_time, as: 'remainingTime'
        end
      end
      
      class ReportWorkItemStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :work_item_service_states, as: 'workItemServiceStates', class: Google::Apis::DataflowV1b3::WorkItemServiceState, decorator: Google::Apis::DataflowV1b3::WorkItemServiceState::Representation
      
        end
      end
      
      class WorkItemServiceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :split_request, as: 'splitRequest', class: Google::Apis::DataflowV1b3::ApproximateSplitRequest, decorator: Google::Apis::DataflowV1b3::ApproximateSplitRequest::Representation
      
          property :lease_expire_time, as: 'leaseExpireTime'
          property :report_status_interval, as: 'reportStatusInterval'
          hash :harness_data, as: 'harnessData'
          property :next_report_index, as: 'nextReportIndex'
          collection :metric_short_id, as: 'metricShortId', class: Google::Apis::DataflowV1b3::MetricShortId, decorator: Google::Apis::DataflowV1b3::MetricShortId::Representation
      
          property :suggested_stop_position, as: 'suggestedStopPosition', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :suggested_stop_point, as: 'suggestedStopPoint', class: Google::Apis::DataflowV1b3::ApproximateProgress, decorator: Google::Apis::DataflowV1b3::ApproximateProgress::Representation
      
        end
      end
      
      class ApproximateSplitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::DataflowV1b3::Position, decorator: Google::Apis::DataflowV1b3::Position::Representation
      
          property :fraction_consumed, as: 'fractionConsumed'
        end
      end
      
      class MetricShortId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_index, as: 'metricIndex'
          property :short_id, as: 'shortId'
        end
      end
      
      class LeaseWorkItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :work_item_types, as: 'workItemTypes'
          collection :worker_capabilities, as: 'workerCapabilities'
          property :requested_lease_duration, as: 'requestedLeaseDuration'
          property :current_worker_time, as: 'currentWorkerTime'
          property :worker_id, as: 'workerId'
          property :location, as: 'location'
        end
      end
      
      class LeaseWorkItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :work_items, as: 'workItems', class: Google::Apis::DataflowV1b3::WorkItem, decorator: Google::Apis::DataflowV1b3::WorkItem::Representation
      
        end
      end
      
      class WorkItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :project_id, as: 'projectId'
          property :job_id, as: 'jobId'
          collection :packages, as: 'packages', class: Google::Apis::DataflowV1b3::Package, decorator: Google::Apis::DataflowV1b3::Package::Representation
      
          property :map_task, as: 'mapTask', class: Google::Apis::DataflowV1b3::MapTask, decorator: Google::Apis::DataflowV1b3::MapTask::Representation
      
          property :seq_map_task, as: 'seqMapTask', class: Google::Apis::DataflowV1b3::SeqMapTask, decorator: Google::Apis::DataflowV1b3::SeqMapTask::Representation
      
          property :shell_task, as: 'shellTask', class: Google::Apis::DataflowV1b3::ShellTask, decorator: Google::Apis::DataflowV1b3::ShellTask::Representation
      
          property :streaming_setup_task, as: 'streamingSetupTask', class: Google::Apis::DataflowV1b3::StreamingSetupTask, decorator: Google::Apis::DataflowV1b3::StreamingSetupTask::Representation
      
          property :source_operation_task, as: 'sourceOperationTask', class: Google::Apis::DataflowV1b3::SourceOperationRequest, decorator: Google::Apis::DataflowV1b3::SourceOperationRequest::Representation
      
          property :streaming_computation_task, as: 'streamingComputationTask', class: Google::Apis::DataflowV1b3::StreamingComputationTask, decorator: Google::Apis::DataflowV1b3::StreamingComputationTask::Representation
      
          property :streaming_config_task, as: 'streamingConfigTask', class: Google::Apis::DataflowV1b3::StreamingConfigTask, decorator: Google::Apis::DataflowV1b3::StreamingConfigTask::Representation
      
          property :report_status_interval, as: 'reportStatusInterval'
          property :lease_expire_time, as: 'leaseExpireTime'
          property :configuration, as: 'configuration'
          property :initial_report_index, as: 'initialReportIndex'
        end
      end
      
      class MapTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instructions, as: 'instructions', class: Google::Apis::DataflowV1b3::ParallelInstruction, decorator: Google::Apis::DataflowV1b3::ParallelInstruction::Representation
      
          property :system_name, as: 'systemName'
          property :stage_name, as: 'stageName'
        end
      end
      
      class ParallelInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :system_name, as: 'systemName'
          property :name, as: 'name'
          property :original_name, as: 'originalName'
          property :read, as: 'read', class: Google::Apis::DataflowV1b3::ReadInstruction, decorator: Google::Apis::DataflowV1b3::ReadInstruction::Representation
      
          property :write, as: 'write', class: Google::Apis::DataflowV1b3::WriteInstruction, decorator: Google::Apis::DataflowV1b3::WriteInstruction::Representation
      
          property :par_do, as: 'parDo', class: Google::Apis::DataflowV1b3::ParDoInstruction, decorator: Google::Apis::DataflowV1b3::ParDoInstruction::Representation
      
          property :partial_group_by_key, as: 'partialGroupByKey', class: Google::Apis::DataflowV1b3::PartialGroupByKeyInstruction, decorator: Google::Apis::DataflowV1b3::PartialGroupByKeyInstruction::Representation
      
          property :flatten, as: 'flatten', class: Google::Apis::DataflowV1b3::FlattenInstruction, decorator: Google::Apis::DataflowV1b3::FlattenInstruction::Representation
      
          collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1b3::InstructionOutput, decorator: Google::Apis::DataflowV1b3::InstructionOutput::Representation
      
        end
      end
      
      class ReadInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class WriteInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          property :sink, as: 'sink', class: Google::Apis::DataflowV1b3::Sink, decorator: Google::Apis::DataflowV1b3::Sink::Representation
      
        end
      end
      
      class InstructionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_instruction_index, as: 'producerInstructionIndex'
          property :output_num, as: 'outputNum'
        end
      end
      
      class Sink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :spec, as: 'spec'
          hash :codec, as: 'codec'
        end
      end
      
      class ParDoInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          collection :side_inputs, as: 'sideInputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
          hash :user_fn, as: 'userFn'
          property :num_outputs, as: 'numOutputs'
          collection :multi_output_infos, as: 'multiOutputInfos', class: Google::Apis::DataflowV1b3::MultiOutputInfo, decorator: Google::Apis::DataflowV1b3::MultiOutputInfo::Representation
      
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
      
      class MultiOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
        end
      end
      
      class PartialGroupByKeyInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
          hash :input_element_codec, as: 'inputElementCodec'
          hash :value_combining_fn, as: 'valueCombiningFn'
          collection :side_inputs, as: 'sideInputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
          property :original_combine_values_step_name, as: 'originalCombineValuesStepName'
          property :original_combine_values_input_store_name, as: 'originalCombineValuesInputStoreName'
        end
      end
      
      class FlattenInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::InstructionInput, decorator: Google::Apis::DataflowV1b3::InstructionInput::Representation
      
        end
      end
      
      class InstructionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :system_name, as: 'systemName'
          property :original_name, as: 'originalName'
          hash :codec, as: 'codec'
          property :only_count_key_bytes, as: 'onlyCountKeyBytes'
          property :only_count_value_bytes, as: 'onlyCountValueBytes'
        end
      end
      
      class SeqMapTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::SideInputInfo, decorator: Google::Apis::DataflowV1b3::SideInputInfo::Representation
      
          hash :user_fn, as: 'userFn'
          collection :output_infos, as: 'outputInfos', class: Google::Apis::DataflowV1b3::SeqMapTaskOutputInfo, decorator: Google::Apis::DataflowV1b3::SeqMapTaskOutputInfo::Representation
      
          property :name, as: 'name'
          property :system_name, as: 'systemName'
          property :stage_name, as: 'stageName'
        end
      end
      
      class SeqMapTaskOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
          property :sink, as: 'sink', class: Google::Apis::DataflowV1b3::Sink, decorator: Google::Apis::DataflowV1b3::Sink::Representation
      
        end
      end
      
      class ShellTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          property :exit_code, as: 'exitCode'
        end
      end
      
      class StreamingSetupTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :receive_work_port, as: 'receiveWorkPort'
          property :worker_harness_port, as: 'workerHarnessPort'
          property :streaming_computation_topology, as: 'streamingComputationTopology', class: Google::Apis::DataflowV1b3::TopologyConfig, decorator: Google::Apis::DataflowV1b3::TopologyConfig::Representation
      
          property :drain, as: 'drain'
        end
      end
      
      class TopologyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :computations, as: 'computations', class: Google::Apis::DataflowV1b3::ComputationTopology, decorator: Google::Apis::DataflowV1b3::ComputationTopology::Representation
      
          collection :data_disk_assignments, as: 'dataDiskAssignments', class: Google::Apis::DataflowV1b3::DataDiskAssignment, decorator: Google::Apis::DataflowV1b3::DataDiskAssignment::Representation
      
          hash :user_stage_to_computation_name_map, as: 'userStageToComputationNameMap'
          property :forwarding_key_bits, as: 'forwardingKeyBits'
          property :persistent_state_version, as: 'persistentStateVersion'
        end
      end
      
      class ComputationTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :system_stage_name, as: 'systemStageName'
          property :computation_id, as: 'computationId'
          property :user_stage_name, as: 'userStageName'
          collection :key_ranges, as: 'keyRanges', class: Google::Apis::DataflowV1b3::KeyRangeLocation, decorator: Google::Apis::DataflowV1b3::KeyRangeLocation::Representation
      
          collection :inputs, as: 'inputs', class: Google::Apis::DataflowV1b3::StreamLocation, decorator: Google::Apis::DataflowV1b3::StreamLocation::Representation
      
          collection :outputs, as: 'outputs', class: Google::Apis::DataflowV1b3::StreamLocation, decorator: Google::Apis::DataflowV1b3::StreamLocation::Representation
      
          collection :state_families, as: 'stateFamilies', class: Google::Apis::DataflowV1b3::StateFamilyConfig, decorator: Google::Apis::DataflowV1b3::StateFamilyConfig::Representation
      
        end
      end
      
      class KeyRangeLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
          property :delivery_endpoint, as: 'deliveryEndpoint'
          property :persistent_directory, as: 'persistentDirectory'
          property :data_disk, as: 'dataDisk'
        end
      end
      
      class StreamLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :streaming_stage_location, as: 'streamingStageLocation', class: Google::Apis::DataflowV1b3::StreamingStageLocation, decorator: Google::Apis::DataflowV1b3::StreamingStageLocation::Representation
      
          property :pubsub_location, as: 'pubsubLocation', class: Google::Apis::DataflowV1b3::PubsubLocation, decorator: Google::Apis::DataflowV1b3::PubsubLocation::Representation
      
          property :side_input_location, as: 'sideInputLocation', class: Google::Apis::DataflowV1b3::StreamingSideInputLocation, decorator: Google::Apis::DataflowV1b3::StreamingSideInputLocation::Representation
      
          property :custom_source_location, as: 'customSourceLocation', class: Google::Apis::DataflowV1b3::CustomSourceLocation, decorator: Google::Apis::DataflowV1b3::CustomSourceLocation::Representation
      
        end
      end
      
      class StreamingStageLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stream_id, as: 'streamId'
        end
      end
      
      class PubsubLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
          property :subscription, as: 'subscription'
          property :timestamp_label, as: 'timestampLabel'
          property :id_label, as: 'idLabel'
          property :drop_late_data, as: 'dropLateData'
          property :tracking_subscription, as: 'trackingSubscription'
        end
      end
      
      class StreamingSideInputLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
          property :state_family, as: 'stateFamily'
        end
      end
      
      class CustomSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stateful, as: 'stateful'
        end
      end
      
      class StateFamilyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state_family, as: 'stateFamily'
          property :is_read, as: 'isRead'
        end
      end
      
      class DataDiskAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_instance, as: 'vmInstance'
          collection :data_disks, as: 'dataDisks'
        end
      end
      
      class SourceOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :split, as: 'split', class: Google::Apis::DataflowV1b3::SourceSplitRequest, decorator: Google::Apis::DataflowV1b3::SourceSplitRequest::Representation
      
          property :get_metadata, as: 'getMetadata', class: Google::Apis::DataflowV1b3::SourceGetMetadataRequest, decorator: Google::Apis::DataflowV1b3::SourceGetMetadataRequest::Representation
      
        end
      end
      
      class SourceSplitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
          property :options, as: 'options', class: Google::Apis::DataflowV1b3::SourceSplitOptions, decorator: Google::Apis::DataflowV1b3::SourceSplitOptions::Representation
      
        end
      end
      
      class SourceSplitOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_bundle_size_bytes, as: 'desiredBundleSizeBytes'
          property :desired_shard_size_bytes, as: 'desiredShardSizeBytes'
        end
      end
      
      class SourceGetMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source', class: Google::Apis::DataflowV1b3::Source, decorator: Google::Apis::DataflowV1b3::Source::Representation
      
        end
      end
      
      class StreamingComputationTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :task_type, as: 'taskType'
          collection :data_disks, as: 'dataDisks', class: Google::Apis::DataflowV1b3::MountedDataDisk, decorator: Google::Apis::DataflowV1b3::MountedDataDisk::Representation
      
          collection :computation_ranges, as: 'computationRanges', class: Google::Apis::DataflowV1b3::StreamingComputationRanges, decorator: Google::Apis::DataflowV1b3::StreamingComputationRanges::Representation
      
        end
      end
      
      class MountedDataDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_disk, as: 'dataDisk'
        end
      end
      
      class StreamingComputationRanges
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :computation_id, as: 'computationId'
          collection :range_assignments, as: 'rangeAssignments', class: Google::Apis::DataflowV1b3::KeyRangeDataDiskAssignment, decorator: Google::Apis::DataflowV1b3::KeyRangeDataDiskAssignment::Representation
      
        end
      end
      
      class KeyRangeDataDiskAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
          property :data_disk, as: 'dataDisk'
        end
      end
      
      class StreamingConfigTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :streaming_computation_configs, as: 'streamingComputationConfigs', class: Google::Apis::DataflowV1b3::StreamingComputationConfig, decorator: Google::Apis::DataflowV1b3::StreamingComputationConfig::Representation
      
          hash :user_step_to_state_family_name_map, as: 'userStepToStateFamilyNameMap'
        end
      end
      
      class StreamingComputationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :computation_id, as: 'computationId'
          property :system_name, as: 'systemName'
          property :stage_name, as: 'stageName'
          collection :instructions, as: 'instructions', class: Google::Apis::DataflowV1b3::ParallelInstruction, decorator: Google::Apis::DataflowV1b3::ParallelInstruction::Representation
      
        end
      end
      
      class SendWorkerMessagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_messages, as: 'workerMessages', class: Google::Apis::DataflowV1b3::WorkerMessage, decorator: Google::Apis::DataflowV1b3::WorkerMessage::Representation
      
        end
      end
      
      class WorkerMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :time, as: 'time'
          property :worker_health_report, as: 'workerHealthReport', class: Google::Apis::DataflowV1b3::WorkerHealthReport, decorator: Google::Apis::DataflowV1b3::WorkerHealthReport::Representation
      
          property :worker_message_code, as: 'workerMessageCode', class: Google::Apis::DataflowV1b3::WorkerMessageCode, decorator: Google::Apis::DataflowV1b3::WorkerMessageCode::Representation
      
        end
      end
      
      class WorkerHealthReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_is_healthy, as: 'vmIsHealthy'
          property :vm_startup_time, as: 'vmStartupTime'
          property :report_interval, as: 'reportInterval'
          collection :pods, as: 'pods'
        end
      end
      
      class WorkerMessageCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          hash :parameters, as: 'parameters'
        end
      end
      
      class SendWorkerMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_message_responses, as: 'workerMessageResponses', class: Google::Apis::DataflowV1b3::WorkerMessageResponse, decorator: Google::Apis::DataflowV1b3::WorkerMessageResponse::Representation
      
        end
      end
      
      class WorkerMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_health_report_response, as: 'workerHealthReportResponse', class: Google::Apis::DataflowV1b3::WorkerHealthReportResponse, decorator: Google::Apis::DataflowV1b3::WorkerHealthReportResponse::Representation
      
        end
      end
      
      class WorkerHealthReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_interval, as: 'reportInterval'
        end
      end
    end
  end
end
