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
    module DataprocV1
      
      # Specifies the type and number of accelerator cards attached to the instances
      # of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/
      # docs/gpus/).
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # The number of the accelerator cards of this type exposed to this instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # Full URL, partial URI, or short name of the accelerator type resource to
        # expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.
        # google.com/compute/docs/reference/v1/acceleratorTypes).Examples: https://www.
        # googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/acceleratorTypes/
        # nvidia-tesla-t4 projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-
        # tesla-t4 nvidia-tesla-t4Auto Zone Exception: If you are using the Dataproc
        # Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/
        # configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must
        # use the short name of the accelerator type resource, for example, nvidia-tesla-
        # t4.
        # Corresponds to the JSON property `acceleratorTypeUri`
        # @return [String]
        attr_accessor :accelerator_type_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type_uri = args[:accelerator_type_uri] if args.key?(:accelerator_type_uri)
        end
      end
      
      # Environment details of a Saprk Application.
      class AccessSessionSparkApplicationEnvironmentInfoResponse
        include Google::Apis::Core::Hashable
      
        # Details about the Environment that the application is running in.
        # Corresponds to the JSON property `applicationEnvironmentInfo`
        # @return [Google::Apis::DataprocV1::ApplicationEnvironmentInfo]
        attr_accessor :application_environment_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_environment_info = args[:application_environment_info] if args.key?(:application_environment_info)
        end
      end
      
      # Details of a particular job associated with Spark Application
      class AccessSessionSparkApplicationJobResponse
        include Google::Apis::Core::Hashable
      
        # Data corresponding to a spark job.
        # Corresponds to the JSON property `jobData`
        # @return [Google::Apis::DataprocV1::JobData]
        attr_accessor :job_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_data = args[:job_data] if args.key?(:job_data)
        end
      end
      
      # A summary of Spark Application
      class AccessSessionSparkApplicationResponse
        include Google::Apis::Core::Hashable
      
        # High level information corresponding to an application.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::DataprocV1::ApplicationInfo]
        attr_accessor :application
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
        end
      end
      
      # Details of a query for a Spark Application
      class AccessSessionSparkApplicationSqlQueryResponse
        include Google::Apis::Core::Hashable
      
        # SQL Execution Data
        # Corresponds to the JSON property `executionData`
        # @return [Google::Apis::DataprocV1::SqlExecutionUiData]
        attr_accessor :execution_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_data = args[:execution_data] if args.key?(:execution_data)
        end
      end
      
      # SparkPlanGraph for a Spark Application execution limited to maximum 10000
      # clusters.
      class AccessSessionSparkApplicationSqlSparkPlanGraphResponse
        include Google::Apis::Core::Hashable
      
        # A graph used for storing information of an executionPlan of DataFrame.
        # Corresponds to the JSON property `sparkPlanGraph`
        # @return [Google::Apis::DataprocV1::SparkPlanGraph]
        attr_accessor :spark_plan_graph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spark_plan_graph = args[:spark_plan_graph] if args.key?(:spark_plan_graph)
        end
      end
      
      # Stage Attempt for a Stage of a Spark Application
      class AccessSessionSparkApplicationStageAttemptResponse
        include Google::Apis::Core::Hashable
      
        # Data corresponding to a stage.
        # Corresponds to the JSON property `stageData`
        # @return [Google::Apis::DataprocV1::StageData]
        attr_accessor :stage_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stage_data = args[:stage_data] if args.key?(:stage_data)
        end
      end
      
      # RDD operation graph for a Spark Application Stage limited to maximum 10000
      # clusters.
      class AccessSessionSparkApplicationStageRddOperationGraphResponse
        include Google::Apis::Core::Hashable
      
        # Graph representing RDD dependencies. Consists of edges and a root cluster.
        # Corresponds to the JSON property `rddOperationGraph`
        # @return [Google::Apis::DataprocV1::RddOperationGraph]
        attr_accessor :rdd_operation_graph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rdd_operation_graph = args[:rdd_operation_graph] if args.key?(:rdd_operation_graph)
        end
      end
      
      # Environment details of a Saprk Application.
      class AccessSparkApplicationEnvironmentInfoResponse
        include Google::Apis::Core::Hashable
      
        # Details about the Environment that the application is running in.
        # Corresponds to the JSON property `applicationEnvironmentInfo`
        # @return [Google::Apis::DataprocV1::ApplicationEnvironmentInfo]
        attr_accessor :application_environment_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_environment_info = args[:application_environment_info] if args.key?(:application_environment_info)
        end
      end
      
      # Details of a particular job associated with Spark Application
      class AccessSparkApplicationJobResponse
        include Google::Apis::Core::Hashable
      
        # Data corresponding to a spark job.
        # Corresponds to the JSON property `jobData`
        # @return [Google::Apis::DataprocV1::JobData]
        attr_accessor :job_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_data = args[:job_data] if args.key?(:job_data)
        end
      end
      
      # A summary of Spark Application
      class AccessSparkApplicationResponse
        include Google::Apis::Core::Hashable
      
        # High level information corresponding to an application.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::DataprocV1::ApplicationInfo]
        attr_accessor :application
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
        end
      end
      
      # Details of a query for a Spark Application
      class AccessSparkApplicationSqlQueryResponse
        include Google::Apis::Core::Hashable
      
        # SQL Execution Data
        # Corresponds to the JSON property `executionData`
        # @return [Google::Apis::DataprocV1::SqlExecutionUiData]
        attr_accessor :execution_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_data = args[:execution_data] if args.key?(:execution_data)
        end
      end
      
      # SparkPlanGraph for a Spark Application execution limited to maximum 10000
      # clusters.
      class AccessSparkApplicationSqlSparkPlanGraphResponse
        include Google::Apis::Core::Hashable
      
        # A graph used for storing information of an executionPlan of DataFrame.
        # Corresponds to the JSON property `sparkPlanGraph`
        # @return [Google::Apis::DataprocV1::SparkPlanGraph]
        attr_accessor :spark_plan_graph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spark_plan_graph = args[:spark_plan_graph] if args.key?(:spark_plan_graph)
        end
      end
      
      # Stage Attempt for a Stage of a Spark Application
      class AccessSparkApplicationStageAttemptResponse
        include Google::Apis::Core::Hashable
      
        # Data corresponding to a stage.
        # Corresponds to the JSON property `stageData`
        # @return [Google::Apis::DataprocV1::StageData]
        attr_accessor :stage_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stage_data = args[:stage_data] if args.key?(:stage_data)
        end
      end
      
      # RDD operation graph for a Spark Application Stage limited to maximum 10000
      # clusters.
      class AccessSparkApplicationStageRddOperationGraphResponse
        include Google::Apis::Core::Hashable
      
        # Graph representing RDD dependencies. Consists of edges and a root cluster.
        # Corresponds to the JSON property `rddOperationGraph`
        # @return [Google::Apis::DataprocV1::RddOperationGraph]
        attr_accessor :rdd_operation_graph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rdd_operation_graph = args[:rdd_operation_graph] if args.key?(:rdd_operation_graph)
        end
      end
      
      # 
      class AccumulableInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accumullableInfoId`
        # @return [Fixnum]
        attr_accessor :accumullable_info_id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `update`
        # @return [String]
        attr_accessor :update
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accumullable_info_id = args[:accumullable_info_id] if args.key?(:accumullable_info_id)
          @name = args[:name] if args.key?(:name)
          @update = args[:update] if args.key?(:update)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A request to analyze a batch workload.
      class AnalyzeBatchRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A unique ID used to identify the request. If the service receives
        # two AnalyzeBatchRequest (http://cloud/dataproc/docs/reference/rpc/google.cloud.
        # dataproc.v1#google.cloud.dataproc.v1.AnalyzeBatchRequest)s with the same
        # request_id, the second request is ignored and the Operation that corresponds
        # to the first request created and stored in the backend is returned.
        # Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/
        # Universally_unique_identifier).The value must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. The requestor ID is used to identify if the request comes from a GCA
        # investigation or the old Ask Gemini Experience.
        # Corresponds to the JSON property `requestorId`
        # @return [String]
        attr_accessor :requestor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @requestor_id = args[:requestor_id] if args.key?(:requestor_id)
        end
      end
      
      # Metadata describing the Analyze operation.
      class AnalyzeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. name of the workload being analyzed.
        # Corresponds to the JSON property `analyzedWorkloadName`
        # @return [String]
        attr_accessor :analyzed_workload_name
      
        # Output only. Type of the workload being analyzed.
        # Corresponds to the JSON property `analyzedWorkloadType`
        # @return [String]
        attr_accessor :analyzed_workload_type
      
        # Output only. unique identifier of the workload typically generated by control
        # plane. E.g. batch uuid.
        # Corresponds to the JSON property `analyzedWorkloadUuid`
        # @return [String]
        attr_accessor :analyzed_workload_uuid
      
        # Output only. The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Short description of the operation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time when the operation finished.
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # Output only. Labels associated with the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Warnings encountered during operation execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyzed_workload_name = args[:analyzed_workload_name] if args.key?(:analyzed_workload_name)
          @analyzed_workload_type = args[:analyzed_workload_type] if args.key?(:analyzed_workload_type)
          @analyzed_workload_uuid = args[:analyzed_workload_uuid] if args.key?(:analyzed_workload_uuid)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @done_time = args[:done_time] if args.key?(:done_time)
          @labels = args[:labels] if args.key?(:labels)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # 
      class AppSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `numCompletedJobs`
        # @return [Fixnum]
        attr_accessor :num_completed_jobs
      
        # 
        # Corresponds to the JSON property `numCompletedStages`
        # @return [Fixnum]
        attr_accessor :num_completed_stages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_completed_jobs = args[:num_completed_jobs] if args.key?(:num_completed_jobs)
          @num_completed_stages = args[:num_completed_stages] if args.key?(:num_completed_stages)
        end
      end
      
      # Specific attempt of an application.
      class ApplicationAttemptInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appSparkVersion`
        # @return [String]
        attr_accessor :app_spark_version
      
        # 
        # Corresponds to the JSON property `attemptId`
        # @return [String]
        attr_accessor :attempt_id
      
        # 
        # Corresponds to the JSON property `completed`
        # @return [Boolean]
        attr_accessor :completed
        alias_method :completed?, :completed
      
        # 
        # Corresponds to the JSON property `durationMillis`
        # @return [Fixnum]
        attr_accessor :duration_millis
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # 
        # Corresponds to the JSON property `sparkUser`
        # @return [String]
        attr_accessor :spark_user
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_spark_version = args[:app_spark_version] if args.key?(:app_spark_version)
          @attempt_id = args[:attempt_id] if args.key?(:attempt_id)
          @completed = args[:completed] if args.key?(:completed)
          @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
          @end_time = args[:end_time] if args.key?(:end_time)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @spark_user = args[:spark_user] if args.key?(:spark_user)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Details about the Environment that the application is running in.
      class ApplicationEnvironmentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `classpathEntries`
        # @return [Hash<String,String>]
        attr_accessor :classpath_entries
      
        # 
        # Corresponds to the JSON property `hadoopProperties`
        # @return [Hash<String,String>]
        attr_accessor :hadoop_properties
      
        # 
        # Corresponds to the JSON property `metricsProperties`
        # @return [Hash<String,String>]
        attr_accessor :metrics_properties
      
        # 
        # Corresponds to the JSON property `resourceProfiles`
        # @return [Array<Google::Apis::DataprocV1::ResourceProfileInfo>]
        attr_accessor :resource_profiles
      
        # 
        # Corresponds to the JSON property `runtime`
        # @return [Google::Apis::DataprocV1::SparkRuntimeInfo]
        attr_accessor :runtime
      
        # 
        # Corresponds to the JSON property `sparkProperties`
        # @return [Hash<String,String>]
        attr_accessor :spark_properties
      
        # 
        # Corresponds to the JSON property `systemProperties`
        # @return [Hash<String,String>]
        attr_accessor :system_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classpath_entries = args[:classpath_entries] if args.key?(:classpath_entries)
          @hadoop_properties = args[:hadoop_properties] if args.key?(:hadoop_properties)
          @metrics_properties = args[:metrics_properties] if args.key?(:metrics_properties)
          @resource_profiles = args[:resource_profiles] if args.key?(:resource_profiles)
          @runtime = args[:runtime] if args.key?(:runtime)
          @spark_properties = args[:spark_properties] if args.key?(:spark_properties)
          @system_properties = args[:system_properties] if args.key?(:system_properties)
        end
      end
      
      # High level information corresponding to an application.
      class ApplicationInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applicationContextIngestionStatus`
        # @return [String]
        attr_accessor :application_context_ingestion_status
      
        # 
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # 
        # Corresponds to the JSON property `attempts`
        # @return [Array<Google::Apis::DataprocV1::ApplicationAttemptInfo>]
        attr_accessor :attempts
      
        # 
        # Corresponds to the JSON property `coresGranted`
        # @return [Fixnum]
        attr_accessor :cores_granted
      
        # 
        # Corresponds to the JSON property `coresPerExecutor`
        # @return [Fixnum]
        attr_accessor :cores_per_executor
      
        # 
        # Corresponds to the JSON property `maxCores`
        # @return [Fixnum]
        attr_accessor :max_cores
      
        # 
        # Corresponds to the JSON property `memoryPerExecutorMb`
        # @return [Fixnum]
        attr_accessor :memory_per_executor_mb
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `quantileDataStatus`
        # @return [String]
        attr_accessor :quantile_data_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_context_ingestion_status = args[:application_context_ingestion_status] if args.key?(:application_context_ingestion_status)
          @application_id = args[:application_id] if args.key?(:application_id)
          @attempts = args[:attempts] if args.key?(:attempts)
          @cores_granted = args[:cores_granted] if args.key?(:cores_granted)
          @cores_per_executor = args[:cores_per_executor] if args.key?(:cores_per_executor)
          @max_cores = args[:max_cores] if args.key?(:max_cores)
          @memory_per_executor_mb = args[:memory_per_executor_mb] if args.key?(:memory_per_executor_mb)
          @name = args[:name] if args.key?(:name)
          @quantile_data_status = args[:quantile_data_status] if args.key?(:quantile_data_status)
        end
      end
      
      # Authentication configuration for a workload is used to set the default
      # identity for the workload execution. The config specifies the type of identity
      # (service account or user) that will be used by workloads to access resources
      # on the project(s).
      class AuthenticationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Authentication type for the user workload running in containers.
        # Corresponds to the JSON property `userWorkloadAuthenticationType`
        # @return [String]
        attr_accessor :user_workload_authentication_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_workload_authentication_type = args[:user_workload_authentication_type] if args.key?(:user_workload_authentication_type)
        end
      end
      
      # Autoscaling Policy config associated with the cluster.
      class AutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The autoscaling policy used by the cluster.Only resource names
        # including projectid and location (region) are valid. Examples: https://www.
        # googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/
        # autoscalingPolicies/[policy_id] projects/[project_id]/locations/[
        # dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be
        # in the same project and Dataproc region.
        # Corresponds to the JSON property `policyUri`
        # @return [String]
        attr_accessor :policy_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_uri = args[:policy_uri] if args.key?(:policy_uri)
        end
      end
      
      # Describes an autoscaling policy for Dataproc cluster autoscaler.
      class AutoscalingPolicy
        include Google::Apis::Core::Hashable
      
        # Basic algorithm for autoscaling.
        # Corresponds to the JSON property `basicAlgorithm`
        # @return [Google::Apis::DataprocV1::BasicAutoscalingAlgorithm]
        attr_accessor :basic_algorithm
      
        # Optional. The type of the clusters for which this autoscaling policy is to be
        # configured.
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # Required. The policy id.The id must contain only letters (a-z, A-Z), numbers (
        # 0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or
        # hyphen. Must consist of between 3 and 50 characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. The labels to associate with this autoscaling policy. Label keys
        # must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.
        # ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must
        # contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/
        # rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling
        # policy.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The "resource name" of the autoscaling policy, as described in
        # https://cloud.google.com/apis/design/resource_names. For projects.regions.
        # autoscalingPolicies, the resource name of the policy has the following format:
        # projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id` For
        # projects.locations.autoscalingPolicies, the resource name of the policy has
        # the following format: projects/`project_id`/locations/`location`/
        # autoscalingPolicies/`policy_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for the size bounds of an instance group, including its
        # proportional size to other groups.
        # Corresponds to the JSON property `secondaryWorkerConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupAutoscalingPolicyConfig]
        attr_accessor :secondary_worker_config
      
        # Configuration for the size bounds of an instance group, including its
        # proportional size to other groups.
        # Corresponds to the JSON property `workerConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupAutoscalingPolicyConfig]
        attr_accessor :worker_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_algorithm = args[:basic_algorithm] if args.key?(:basic_algorithm)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @secondary_worker_config = args[:secondary_worker_config] if args.key?(:secondary_worker_config)
          @worker_config = args[:worker_config] if args.key?(:worker_config)
        end
      end
      
      # Autotuning configuration of the workload.
      class AutotuningConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Scenarios for which tunings are applied.
        # Corresponds to the JSON property `scenarios`
        # @return [Array<String>]
        attr_accessor :scenarios
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scenarios = args[:scenarios] if args.key?(:scenarios)
        end
      end
      
      # Node group identification and configuration information.
      class AuxiliaryNodeGroup
        include Google::Apis::Core::Hashable
      
        # Dataproc Node Group. The Dataproc NodeGroup resource is not related to the
        # Dataproc NodeGroupAffinity resource.
        # Corresponds to the JSON property `nodeGroup`
        # @return [Google::Apis::DataprocV1::NodeGroup]
        attr_accessor :node_group
      
        # Optional. A node group ID. Generated if not specified.The ID must contain only
        # letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot
        # begin or end with underscore or hyphen. Must consist of from 3 to 33
        # characters.
        # Corresponds to the JSON property `nodeGroupId`
        # @return [String]
        attr_accessor :node_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_group = args[:node_group] if args.key?(:node_group)
          @node_group_id = args[:node_group_id] if args.key?(:node_group_id)
        end
      end
      
      # Auxiliary services configuration for a Cluster.
      class AuxiliaryServicesConfig
        include Google::Apis::Core::Hashable
      
        # Specifies a Metastore configuration.
        # Corresponds to the JSON property `metastoreConfig`
        # @return [Google::Apis::DataprocV1::MetastoreConfig]
        attr_accessor :metastore_config
      
        # Spark History Server configuration for the workload.
        # Corresponds to the JSON property `sparkHistoryServerConfig`
        # @return [Google::Apis::DataprocV1::SparkHistoryServerConfig]
        attr_accessor :spark_history_server_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metastore_config = args[:metastore_config] if args.key?(:metastore_config)
          @spark_history_server_config = args[:spark_history_server_config] if args.key?(:spark_history_server_config)
        end
      end
      
      # Basic algorithm for autoscaling.
      class BasicAutoscalingAlgorithm
        include Google::Apis::Core::Hashable
      
        # Optional. Duration between scaling events. A scaling period starts after the
        # update operation from the previous event has completed.Bounds: 2m, 1d. Default:
        # 2m.
        # Corresponds to the JSON property `cooldownPeriod`
        # @return [String]
        attr_accessor :cooldown_period
      
        # Basic autoscaling configurations for Spark Standalone.
        # Corresponds to the JSON property `sparkStandaloneConfig`
        # @return [Google::Apis::DataprocV1::SparkStandaloneAutoscalingConfig]
        attr_accessor :spark_standalone_config
      
        # Basic autoscaling configurations for YARN.
        # Corresponds to the JSON property `yarnConfig`
        # @return [Google::Apis::DataprocV1::BasicYarnAutoscalingConfig]
        attr_accessor :yarn_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cooldown_period = args[:cooldown_period] if args.key?(:cooldown_period)
          @spark_standalone_config = args[:spark_standalone_config] if args.key?(:spark_standalone_config)
          @yarn_config = args[:yarn_config] if args.key?(:yarn_config)
        end
      end
      
      # Basic autoscaling configurations for YARN.
      class BasicYarnAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Required. Timeout for YARN graceful decommissioning of Node Managers.
        # Specifies the duration to wait for jobs to complete before forcefully removing
        # workers (and potentially interrupting jobs). Only applicable to downscaling
        # operations.Bounds: 0s, 1d.
        # Corresponds to the JSON property `gracefulDecommissionTimeout`
        # @return [String]
        attr_accessor :graceful_decommission_timeout
      
        # Required. Fraction of average YARN pending memory in the last cooldown period
        # for which to remove workers. A scale-down factor of 1 will result in scaling
        # down so that there is no available memory remaining after the update (more
        # aggressive scaling). A scale-down factor of 0 disables removing workers, which
        # can be beneficial for autoscaling a single job. See How autoscaling works (
        # https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/
        # autoscaling#how_autoscaling_works) for more information.Bounds: 0.0, 1.0.
        # Corresponds to the JSON property `scaleDownFactor`
        # @return [Float]
        attr_accessor :scale_down_factor
      
        # Optional. Minimum scale-down threshold as a fraction of total cluster size
        # before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1
        # means the autoscaler must recommend at least a 2 worker scale-down for the
        # cluster to scale. A threshold of 0 means the autoscaler will scale down on any
        # recommended change.Bounds: 0.0, 1.0. Default: 0.0.
        # Corresponds to the JSON property `scaleDownMinWorkerFraction`
        # @return [Float]
        attr_accessor :scale_down_min_worker_fraction
      
        # Required. Fraction of average YARN pending memory in the last cooldown period
        # for which to add workers. A scale-up factor of 1.0 will result in scaling up
        # so that there is no pending memory remaining after the update (more aggressive
        # scaling). A scale-up factor closer to 0 will result in a smaller magnitude of
        # scaling up (less aggressive scaling). See How autoscaling works (https://cloud.
        # google.com/dataproc/docs/concepts/configuring-clusters/autoscaling#
        # how_autoscaling_works) for more information.Bounds: 0.0, 1.0.
        # Corresponds to the JSON property `scaleUpFactor`
        # @return [Float]
        attr_accessor :scale_up_factor
      
        # Optional. Minimum scale-up threshold as a fraction of total cluster size
        # before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1
        # means the autoscaler must recommend at least a 2-worker scale-up for the
        # cluster to scale. A threshold of 0 means the autoscaler will scale up on any
        # recommended change.Bounds: 0.0, 1.0. Default: 0.0.
        # Corresponds to the JSON property `scaleUpMinWorkerFraction`
        # @return [Float]
        attr_accessor :scale_up_min_worker_fraction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @graceful_decommission_timeout = args[:graceful_decommission_timeout] if args.key?(:graceful_decommission_timeout)
          @scale_down_factor = args[:scale_down_factor] if args.key?(:scale_down_factor)
          @scale_down_min_worker_fraction = args[:scale_down_min_worker_fraction] if args.key?(:scale_down_min_worker_fraction)
          @scale_up_factor = args[:scale_up_factor] if args.key?(:scale_up_factor)
          @scale_up_min_worker_fraction = args[:scale_up_min_worker_fraction] if args.key?(:scale_up_min_worker_fraction)
        end
      end
      
      # A representation of a batch workload in the service.
      class Batch
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the batch was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The email address of the user who created the batch.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Environment configuration for a workload.
        # Corresponds to the JSON property `environmentConfig`
        # @return [Google::Apis::DataprocV1::EnvironmentConfig]
        attr_accessor :environment_config
      
        # Optional. The labels to associate with this batch. Label keys must contain 1
        # to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/
        # rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63
        # characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt)
        # . No more than 32 labels can be associated with a batch.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the batch.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource name of the operation associated with this batch.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # A configuration for running an Apache PySpark (https://spark.apache.org/docs/
        # latest/api/python/getting_started/quickstart.html) batch workload.
        # Corresponds to the JSON property `pysparkBatch`
        # @return [Google::Apis::DataprocV1::PySparkBatch]
        attr_accessor :pyspark_batch
      
        # Runtime configuration for a workload.
        # Corresponds to the JSON property `runtimeConfig`
        # @return [Google::Apis::DataprocV1::RuntimeConfig]
        attr_accessor :runtime_config
      
        # Runtime information about workload execution.
        # Corresponds to the JSON property `runtimeInfo`
        # @return [Google::Apis::DataprocV1::RuntimeInfo]
        attr_accessor :runtime_info
      
        # A configuration for running an Apache Spark (https://spark.apache.org/) batch
        # workload.
        # Corresponds to the JSON property `sparkBatch`
        # @return [Google::Apis::DataprocV1::SparkBatch]
        attr_accessor :spark_batch
      
        # A configuration for running an Apache SparkR (https://spark.apache.org/docs/
        # latest/sparkr.html) batch workload.
        # Corresponds to the JSON property `sparkRBatch`
        # @return [Google::Apis::DataprocV1::SparkRBatch]
        attr_accessor :spark_r_batch
      
        # A configuration for running Apache Spark SQL (https://spark.apache.org/sql/)
        # queries as a batch workload.
        # Corresponds to the JSON property `sparkSqlBatch`
        # @return [Google::Apis::DataprocV1::SparkSqlBatch]
        attr_accessor :spark_sql_batch
      
        # Output only. The state of the batch.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Historical state information for the batch.
        # Corresponds to the JSON property `stateHistory`
        # @return [Array<Google::Apis::DataprocV1::StateHistory>]
        attr_accessor :state_history
      
        # Output only. Batch state details, such as a failure description if the state
        # is FAILED.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time when the batch entered a current state.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. A batch UUID (Unique Universal Identifier). The service generates
        # this value when it creates the batch.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @environment_config = args[:environment_config] if args.key?(:environment_config)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @pyspark_batch = args[:pyspark_batch] if args.key?(:pyspark_batch)
          @runtime_config = args[:runtime_config] if args.key?(:runtime_config)
          @runtime_info = args[:runtime_info] if args.key?(:runtime_info)
          @spark_batch = args[:spark_batch] if args.key?(:spark_batch)
          @spark_r_batch = args[:spark_r_batch] if args.key?(:spark_r_batch)
          @spark_sql_batch = args[:spark_sql_batch] if args.key?(:spark_sql_batch)
          @state = args[:state] if args.key?(:state)
          @state_history = args[:state_history] if args.key?(:state_history)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_time = args[:state_time] if args.key?(:state_time)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Metadata describing the Batch operation.
      class BatchOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the batch for the operation.
        # Corresponds to the JSON property `batch`
        # @return [String]
        attr_accessor :batch
      
        # Batch UUID for the operation.
        # Corresponds to the JSON property `batchUuid`
        # @return [String]
        attr_accessor :batch_uuid
      
        # The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Short description of the operation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time when the operation finished.
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # Labels associated with the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Warnings encountered during operation execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch = args[:batch] if args.key?(:batch)
          @batch_uuid = args[:batch_uuid] if args.key?(:batch_uuid)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @done_time = args[:done_time] if args.key?(:done_time)
          @labels = args[:labels] if args.key?(:labels)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Associates members, or principals, with a role.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
        # Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DataprocV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource.
        # members can have the following values: allUsers: A special identifier that
        # represents anyone who is on the internet; with or without a Google account.
        # allAuthenticatedUsers: A special identifier that represents anyone who is
        # authenticated with a Google account or a service account. Does not include
        # identities that come from external identity providers (IdPs) through identity
        # federation. user:`emailid`: An email address that represents a specific Google
        # account. For example, alice@example.com . serviceAccount:`emailid`: An email
        # address that represents a Google service account. For example, my-other-app@
        # appspot.gserviceaccount.com. serviceAccount:`projectid`.svc.id.goog[`namespace`
        # /`kubernetes-sa`]: An identifier for a Kubernetes service account (https://
        # cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
        # For example, my-project.svc.id.goog[my-namespace/my-kubernetes-sa]. group:`
        # emailid`: An email address that represents a Google group. For example, admins@
        # example.com. domain:`domain`: The G Suite domain (primary) that represents all
        # the users of that domain. For example, google.com or example.com. principal://
        # iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value`: A single identity in a workforce identity pool.
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id`: All workforce identities in a group. principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value`: All workforce identities with a specific
        # attribute value. principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*: All identities in a workforce identity pool.
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value`: A single
        # identity in a workload identity pool. principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id`: A workload identity pool group. principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value`:
        # All identities in a workload identity pool with a certain attribute.
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*: All identities in a workload identity pool.
        # deleted:user:`emailid`?uid=`uniqueid`: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example,
        # alice@example.com?uid=123456789012345678901. If the user is recovered, this
        # value reverts to user:`emailid` and the recovered user retains the role in the
        # binding. deleted:serviceAccount:`emailid`?uid=`uniqueid`: An email address (
        # plus unique identifier) representing a service account that has been recently
        # deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901. If the service account is undeleted, this value reverts
        # to serviceAccount:`emailid` and the undeleted service account retains the role
        # in the binding. deleted:group:`emailid`?uid=`uniqueid`: An email address (plus
        # unique identifier) representing a Google group that has been recently deleted.
        # For example, admins@example.com?uid=123456789012345678901. If the group is
        # recovered, this value reverts to group:`emailid` and the recovered group
        # retains the role in the binding. deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/`pool_id`/subject/`subject_attribute_value`:
        # Deleted single identity in a workforce identity pool. For example, deleted:
        # principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/
        # subject/my-subject-attribute-value.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of members, or principals. For example,
        # roles/viewer, roles/editor, or roles/owner.For an overview of the IAM roles
        # and permissions, see the IAM documentation (https://cloud.google.com/iam/docs/
        # roles-overview). For a list of the available pre-defined roles, see here (
        # https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Native Build Info
      class BuildInfo
        include Google::Apis::Core::Hashable
      
        # Optional. Build key.
        # Corresponds to the JSON property `buildKey`
        # @return [String]
        attr_accessor :build_key
      
        # Optional. Build value.
        # Corresponds to the JSON property `buildValue`
        # @return [String]
        attr_accessor :build_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_key = args[:build_key] if args.key?(:build_key)
          @build_value = args[:build_value] if args.key?(:build_value)
        end
      end
      
      # A request to cancel a job.
      class CancelJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes the identifying information, config, and status of a Dataproc
      # cluster
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Required. The cluster name, which must be unique within a project. The name
        # must start with a lowercase letter, and can contain up to 51 lowercase letters,
        # numbers, and hyphens. It cannot end with a hyphen. The name of a deleted
        # cluster can be reused.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. A cluster UUID (Unique Universal Identifier). Dataproc generates
        # this value when it creates the cluster.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # The cluster config.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DataprocV1::ClusterConfig]
        attr_accessor :config
      
        # Optional. The labels to associate with this cluster. Label keys must contain 1
        # to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/
        # rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63
        # characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt)
        # . No more than 32 labels can be associated with a cluster.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature:
        # This report is available for testing purposes only. It may be changed before
        # final release.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DataprocV1::ClusterMetrics]
        attr_accessor :metrics
      
        # Required. The Google Cloud Platform project ID that the cluster belongs to.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The status of a cluster and its instances.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::ClusterStatus]
        attr_accessor :status
      
        # Output only. The previous cluster status.
        # Corresponds to the JSON property `statusHistory`
        # @return [Array<Google::Apis::DataprocV1::ClusterStatus>]
        attr_accessor :status_history
      
        # The Dataproc cluster config for a cluster that does not directly control the
        # underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.
        # google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
        # Corresponds to the JSON property `virtualClusterConfig`
        # @return [Google::Apis::DataprocV1::VirtualClusterConfig]
        attr_accessor :virtual_cluster_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @config = args[:config] if args.key?(:config)
          @labels = args[:labels] if args.key?(:labels)
          @metrics = args[:metrics] if args.key?(:metrics)
          @project_id = args[:project_id] if args.key?(:project_id)
          @status = args[:status] if args.key?(:status)
          @status_history = args[:status_history] if args.key?(:status_history)
          @virtual_cluster_config = args[:virtual_cluster_config] if args.key?(:virtual_cluster_config)
        end
      end
      
      # The cluster config.
      class ClusterConfig
        include Google::Apis::Core::Hashable
      
        # Autoscaling Policy config associated with the cluster.
        # Corresponds to the JSON property `autoscalingConfig`
        # @return [Google::Apis::DataprocV1::AutoscalingConfig]
        attr_accessor :autoscaling_config
      
        # Optional. The node group settings.
        # Corresponds to the JSON property `auxiliaryNodeGroups`
        # @return [Array<Google::Apis::DataprocV1::AuxiliaryNodeGroup>]
        attr_accessor :auxiliary_node_groups
      
        # Optional. The cluster tier.
        # Corresponds to the JSON property `clusterTier`
        # @return [String]
        attr_accessor :cluster_tier
      
        # Optional. The type of the cluster.
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # Optional. A Cloud Storage bucket used to stage job dependencies, config files,
        # and job driver console output. If you do not specify a staging bucket, Cloud
        # Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your
        # cluster's staging bucket according to the Compute Engine zone where your
        # cluster is deployed, and then create and manage this project-level, per-
        # location bucket (see Dataproc staging and temp buckets (https://cloud.google.
        # com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field
        # requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage
        # bucket.
        # Corresponds to the JSON property `configBucket`
        # @return [String]
        attr_accessor :config_bucket
      
        # Dataproc metric config.
        # Corresponds to the JSON property `dataprocMetricConfig`
        # @return [Google::Apis::DataprocV1::DataprocMetricConfig]
        attr_accessor :dataproc_metric_config
      
        # Optional. A Cloud Storage bucket used to collect checkpoint diagnostic data (
        # https://cloud.google.com/dataproc/docs/support/diagnose-clusters#
        # checkpoint_diagnostic_data). If you do not specify a diagnostic bucket, Cloud
        # Dataproc will use the Dataproc temp bucket to collect the checkpoint
        # diagnostic data. This field requires a Cloud Storage bucket name, not a gs://..
        # . URI to a Cloud Storage bucket.
        # Corresponds to the JSON property `diagnosticBucket`
        # @return [String]
        attr_accessor :diagnostic_bucket
      
        # Encryption settings for the cluster.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::DataprocV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Endpoint config for this cluster
        # Corresponds to the JSON property `endpointConfig`
        # @return [Google::Apis::DataprocV1::EndpointConfig]
        attr_accessor :endpoint_config
      
        # Common config settings for resources of Compute Engine cluster instances,
        # applicable to all instances in the cluster.
        # Corresponds to the JSON property `gceClusterConfig`
        # @return [Google::Apis::DataprocV1::GceClusterConfig]
        attr_accessor :gce_cluster_config
      
        # The cluster's GKE config.
        # Corresponds to the JSON property `gkeClusterConfig`
        # @return [Google::Apis::DataprocV1::GkeClusterConfig]
        attr_accessor :gke_cluster_config
      
        # Optional. Commands to execute on each node after config is completed. By
        # default, executables are run on master and all worker nodes. You can test a
        # node's role metadata to run an executable on a master or worker node, as shown
        # below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:
        # Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role)
        # if [[ "$`ROLE`" == 'Master' ]]; then ... master specific actions ... else ...
        # worker specific actions ... fi
        # Corresponds to the JSON property `initializationActions`
        # @return [Array<Google::Apis::DataprocV1::NodeInitializationAction>]
        attr_accessor :initialization_actions
      
        # Specifies the cluster auto-delete schedule configuration.
        # Corresponds to the JSON property `lifecycleConfig`
        # @return [Google::Apis::DataprocV1::LifecycleConfig]
        attr_accessor :lifecycle_config
      
        # The config settings for Compute Engine resources in an instance group, such as
        # a master or worker group.
        # Corresponds to the JSON property `masterConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupConfig]
        attr_accessor :master_config
      
        # Specifies a Metastore configuration.
        # Corresponds to the JSON property `metastoreConfig`
        # @return [Google::Apis::DataprocV1::MetastoreConfig]
        attr_accessor :metastore_config
      
        # The config settings for Compute Engine resources in an instance group, such as
        # a master or worker group.
        # Corresponds to the JSON property `secondaryWorkerConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupConfig]
        attr_accessor :secondary_worker_config
      
        # Security related configuration, including encryption, Kerberos, etc.
        # Corresponds to the JSON property `securityConfig`
        # @return [Google::Apis::DataprocV1::SecurityConfig]
        attr_accessor :security_config
      
        # Specifies the selection and config of software inside the cluster.
        # Corresponds to the JSON property `softwareConfig`
        # @return [Google::Apis::DataprocV1::SoftwareConfig]
        attr_accessor :software_config
      
        # Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data,
        # such as Spark and MapReduce history files. If you do not specify a temp
        # bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for
        # your cluster's temp bucket according to the Compute Engine zone where your
        # cluster is deployed, and then create and manage this project-level, per-
        # location bucket. The default bucket has a TTL of 90 days, but you can use any
        # TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (
        # https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-
        # bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI
        # to a Cloud Storage bucket.
        # Corresponds to the JSON property `tempBucket`
        # @return [String]
        attr_accessor :temp_bucket
      
        # The config settings for Compute Engine resources in an instance group, such as
        # a master or worker group.
        # Corresponds to the JSON property `workerConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupConfig]
        attr_accessor :worker_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_config = args[:autoscaling_config] if args.key?(:autoscaling_config)
          @auxiliary_node_groups = args[:auxiliary_node_groups] if args.key?(:auxiliary_node_groups)
          @cluster_tier = args[:cluster_tier] if args.key?(:cluster_tier)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @config_bucket = args[:config_bucket] if args.key?(:config_bucket)
          @dataproc_metric_config = args[:dataproc_metric_config] if args.key?(:dataproc_metric_config)
          @diagnostic_bucket = args[:diagnostic_bucket] if args.key?(:diagnostic_bucket)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @endpoint_config = args[:endpoint_config] if args.key?(:endpoint_config)
          @gce_cluster_config = args[:gce_cluster_config] if args.key?(:gce_cluster_config)
          @gke_cluster_config = args[:gke_cluster_config] if args.key?(:gke_cluster_config)
          @initialization_actions = args[:initialization_actions] if args.key?(:initialization_actions)
          @lifecycle_config = args[:lifecycle_config] if args.key?(:lifecycle_config)
          @master_config = args[:master_config] if args.key?(:master_config)
          @metastore_config = args[:metastore_config] if args.key?(:metastore_config)
          @secondary_worker_config = args[:secondary_worker_config] if args.key?(:secondary_worker_config)
          @security_config = args[:security_config] if args.key?(:security_config)
          @software_config = args[:software_config] if args.key?(:software_config)
          @temp_bucket = args[:temp_bucket] if args.key?(:temp_bucket)
          @worker_config = args[:worker_config] if args.key?(:worker_config)
        end
      end
      
      # Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature:
      # This report is available for testing purposes only. It may be changed before
      # final release.
      class ClusterMetrics
        include Google::Apis::Core::Hashable
      
        # The HDFS metrics.
        # Corresponds to the JSON property `hdfsMetrics`
        # @return [Hash<String,Fixnum>]
        attr_accessor :hdfs_metrics
      
        # YARN metrics.
        # Corresponds to the JSON property `yarnMetrics`
        # @return [Hash<String,Fixnum>]
        attr_accessor :yarn_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hdfs_metrics = args[:hdfs_metrics] if args.key?(:hdfs_metrics)
          @yarn_metrics = args[:yarn_metrics] if args.key?(:yarn_metrics)
        end
      end
      
      # The cluster operation triggered by a workflow.
      class ClusterOperation
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates the operation is done.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # Output only. Error, if operation failed.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. The id of the cluster operation.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # Metadata describing the operation.
      class ClusterOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Child operation ids
        # Corresponds to the JSON property `childOperationIds`
        # @return [Array<String>]
        attr_accessor :child_operation_ids
      
        # Output only. Name of the cluster for the operation.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. Cluster UUID for the operation.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Output only. Short description of operation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Labels associated with the operation
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The status of the operation.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::ClusterOperationStatus]
        attr_accessor :status
      
        # Output only. The previous operation status.
        # Corresponds to the JSON property `statusHistory`
        # @return [Array<Google::Apis::DataprocV1::ClusterOperationStatus>]
        attr_accessor :status_history
      
        # Output only. Errors encountered during operation execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_operation_ids = args[:child_operation_ids] if args.key?(:child_operation_ids)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @status = args[:status] if args.key?(:status)
          @status_history = args[:status_history] if args.key?(:status_history)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # The status of the operation.
      class ClusterOperationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. A message containing any operation metadata details.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Output only. A message containing the detailed operation state.
        # Corresponds to the JSON property `innerState`
        # @return [String]
        attr_accessor :inner_state
      
        # Output only. A message containing the operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time this state was entered.
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @inner_state = args[:inner_state] if args.key?(:inner_state)
          @state = args[:state] if args.key?(:state)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
        end
      end
      
      # A selector that chooses target cluster for jobs based on metadata.
      class ClusterSelector
        include Google::Apis::Core::Hashable
      
        # Required. The cluster labels. Cluster must have all labels to match.
        # Corresponds to the JSON property `clusterLabels`
        # @return [Hash<String,String>]
        attr_accessor :cluster_labels
      
        # Optional. The zone where workflow process executes. This parameter does not
        # affect the selection of the cluster.If unspecified, the zone of the first
        # cluster matching the selector is used.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_labels = args[:cluster_labels] if args.key?(:cluster_labels)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # The status of a cluster and its instances.
      class ClusterStatus
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. Details of cluster's state.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Output only. The cluster's state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Time when this state was entered (see JSON representation of
        # Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        # Output only. Additional state information that includes status reported by the
        # agent.
        # Corresponds to the JSON property `substate`
        # @return [String]
        attr_accessor :substate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @state = args[:state] if args.key?(:state)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
          @substate = args[:substate] if args.key?(:substate)
        end
      end
      
      # Cluster to be repaired
      class ClusterToRepair
        include Google::Apis::Core::Hashable
      
        # Required. Repair action to take on the cluster resource.
        # Corresponds to the JSON property `clusterRepairAction`
        # @return [String]
        attr_accessor :cluster_repair_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_repair_action = args[:cluster_repair_action] if args.key?(:cluster_repair_action)
        end
      end
      
      # Confidential Instance Config for clusters using Confidential VMs (https://
      # cloud.google.com/compute/confidential-vm/docs)
      class ConfidentialInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the instance should have confidential compute
        # enabled.
        # Corresponds to the JSON property `enableConfidentialCompute`
        # @return [Boolean]
        attr_accessor :enable_confidential_compute
        alias_method :enable_confidential_compute?, :enable_confidential_compute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_confidential_compute = args[:enable_confidential_compute] if args.key?(:enable_confidential_compute)
        end
      end
      
      # Consolidated summary about executors used by the application.
      class ConsolidatedExecutorSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `activeTasks`
        # @return [Fixnum]
        attr_accessor :active_tasks
      
        # 
        # Corresponds to the JSON property `completedTasks`
        # @return [Fixnum]
        attr_accessor :completed_tasks
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `diskUsed`
        # @return [Fixnum]
        attr_accessor :disk_used
      
        # 
        # Corresponds to the JSON property `failedTasks`
        # @return [Fixnum]
        attr_accessor :failed_tasks
      
        # 
        # Corresponds to the JSON property `isExcluded`
        # @return [Fixnum]
        attr_accessor :is_excluded
      
        # 
        # Corresponds to the JSON property `maxMemory`
        # @return [Fixnum]
        attr_accessor :max_memory
      
        # 
        # Corresponds to the JSON property `memoryMetrics`
        # @return [Google::Apis::DataprocV1::MemoryMetrics]
        attr_accessor :memory_metrics
      
        # 
        # Corresponds to the JSON property `memoryUsed`
        # @return [Fixnum]
        attr_accessor :memory_used
      
        # 
        # Corresponds to the JSON property `rddBlocks`
        # @return [Fixnum]
        attr_accessor :rdd_blocks
      
        # 
        # Corresponds to the JSON property `totalCores`
        # @return [Fixnum]
        attr_accessor :total_cores
      
        # 
        # Corresponds to the JSON property `totalDurationMillis`
        # @return [Fixnum]
        attr_accessor :total_duration_millis
      
        # 
        # Corresponds to the JSON property `totalGcTimeMillis`
        # @return [Fixnum]
        attr_accessor :total_gc_time_millis
      
        # 
        # Corresponds to the JSON property `totalInputBytes`
        # @return [Fixnum]
        attr_accessor :total_input_bytes
      
        # 
        # Corresponds to the JSON property `totalShuffleRead`
        # @return [Fixnum]
        attr_accessor :total_shuffle_read
      
        # 
        # Corresponds to the JSON property `totalShuffleWrite`
        # @return [Fixnum]
        attr_accessor :total_shuffle_write
      
        # 
        # Corresponds to the JSON property `totalTasks`
        # @return [Fixnum]
        attr_accessor :total_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_tasks = args[:active_tasks] if args.key?(:active_tasks)
          @completed_tasks = args[:completed_tasks] if args.key?(:completed_tasks)
          @count = args[:count] if args.key?(:count)
          @disk_used = args[:disk_used] if args.key?(:disk_used)
          @failed_tasks = args[:failed_tasks] if args.key?(:failed_tasks)
          @is_excluded = args[:is_excluded] if args.key?(:is_excluded)
          @max_memory = args[:max_memory] if args.key?(:max_memory)
          @memory_metrics = args[:memory_metrics] if args.key?(:memory_metrics)
          @memory_used = args[:memory_used] if args.key?(:memory_used)
          @rdd_blocks = args[:rdd_blocks] if args.key?(:rdd_blocks)
          @total_cores = args[:total_cores] if args.key?(:total_cores)
          @total_duration_millis = args[:total_duration_millis] if args.key?(:total_duration_millis)
          @total_gc_time_millis = args[:total_gc_time_millis] if args.key?(:total_gc_time_millis)
          @total_input_bytes = args[:total_input_bytes] if args.key?(:total_input_bytes)
          @total_shuffle_read = args[:total_shuffle_read] if args.key?(:total_shuffle_read)
          @total_shuffle_write = args[:total_shuffle_write] if args.key?(:total_shuffle_write)
          @total_tasks = args[:total_tasks] if args.key?(:total_tasks)
        end
      end
      
      # Dataproc metric config.
      class DataprocMetricConfig
        include Google::Apis::Core::Hashable
      
        # Required. Metrics sources to enable.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DataprocV1::Metric>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # A request to collect cluster diagnostic information.
      class DiagnoseClusterRequest
        include Google::Apis::Core::Hashable
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive).The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `diagnosisInterval`
        # @return [Google::Apis::DataprocV1::Interval]
        attr_accessor :diagnosis_interval
      
        # Optional. DEPRECATED Specifies the job on which diagnosis is to be performed.
        # Format: projects/`project`/regions/`region`/jobs/`job`
        # Corresponds to the JSON property `job`
        # @return [String]
        attr_accessor :job
      
        # Optional. Specifies a list of jobs on which diagnosis is to be performed.
        # Format: projects/`project`/regions/`region`/jobs/`job`
        # Corresponds to the JSON property `jobs`
        # @return [Array<String>]
        attr_accessor :jobs
      
        # Optional. (Optional) The access type to the diagnostic tarball. If not
        # specified, falls back to default access of the bucket
        # Corresponds to the JSON property `tarballAccess`
        # @return [String]
        attr_accessor :tarball_access
      
        # Optional. (Optional) The output Cloud Storage directory for the diagnostic
        # tarball. If not specified, a task-specific directory in the cluster's staging
        # bucket will be used.
        # Corresponds to the JSON property `tarballGcsDir`
        # @return [String]
        attr_accessor :tarball_gcs_dir
      
        # Optional. DEPRECATED Specifies the yarn application on which diagnosis is to
        # be performed.
        # Corresponds to the JSON property `yarnApplicationId`
        # @return [String]
        attr_accessor :yarn_application_id
      
        # Optional. Specifies a list of yarn applications on which diagnosis is to be
        # performed.
        # Corresponds to the JSON property `yarnApplicationIds`
        # @return [Array<String>]
        attr_accessor :yarn_application_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnosis_interval = args[:diagnosis_interval] if args.key?(:diagnosis_interval)
          @job = args[:job] if args.key?(:job)
          @jobs = args[:jobs] if args.key?(:jobs)
          @tarball_access = args[:tarball_access] if args.key?(:tarball_access)
          @tarball_gcs_dir = args[:tarball_gcs_dir] if args.key?(:tarball_gcs_dir)
          @yarn_application_id = args[:yarn_application_id] if args.key?(:yarn_application_id)
          @yarn_application_ids = args[:yarn_application_ids] if args.key?(:yarn_application_ids)
        end
      end
      
      # The location of diagnostic output.
      class DiagnoseClusterResults
        include Google::Apis::Core::Hashable
      
        # Output only. The Cloud Storage URI of the diagnostic output. The output report
        # is a plain text file with a summary of collected diagnostics.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Specifies the config of boot disk and attached disk options for a group of VM
      # instances.
      class DiskConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates how many IOPS to provision for the disk. This sets the
        # number of I/O operations per second that the disk can handle. This field is
        # supported only if boot_disk_type is hyperdisk-balanced.
        # Corresponds to the JSON property `bootDiskProvisionedIops`
        # @return [Fixnum]
        attr_accessor :boot_disk_provisioned_iops
      
        # Optional. Indicates how much throughput to provision for the disk. This sets
        # the number of throughput mb per second that the disk can handle. Values must
        # be greater than or equal to 1. This field is supported only if boot_disk_type
        # is hyperdisk-balanced.
        # Corresponds to the JSON property `bootDiskProvisionedThroughput`
        # @return [Fixnum]
        attr_accessor :boot_disk_provisioned_throughput
      
        # Optional. Size in GB of the boot disk (default is 500GB).
        # Corresponds to the JSON property `bootDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :boot_disk_size_gb
      
        # Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-
        # balanced" (Persistent Disk Balanced Solid State Drive), "pd-ssd" (Persistent
        # Disk Solid State Drive), or "pd-standard" (Persistent Disk Hard Disk Drive).
        # See Disk types (https://cloud.google.com/compute/docs/disks#disk-types).
        # Corresponds to the JSON property `bootDiskType`
        # @return [String]
        attr_accessor :boot_disk_type
      
        # Optional. Interface type of local SSDs (default is "scsi"). Valid values: "
        # scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
        # See local SSD performance (https://cloud.google.com/compute/docs/disks/local-
        # ssd#performance).
        # Corresponds to the JSON property `localSsdInterface`
        # @return [String]
        attr_accessor :local_ssd_interface
      
        # Optional. Number of attached SSDs, from 0 to 8 (default is 0). If SSDs are not
        # attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.
        # apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are
        # attached, this runtime bulk data is spread across them, and the boot disk
        # contains only basic config and installed binaries.Note: Local SSD options may
        # vary by machine type and number of vCPUs selected.
        # Corresponds to the JSON property `numLocalSsds`
        # @return [Fixnum]
        attr_accessor :num_local_ssds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk_provisioned_iops = args[:boot_disk_provisioned_iops] if args.key?(:boot_disk_provisioned_iops)
          @boot_disk_provisioned_throughput = args[:boot_disk_provisioned_throughput] if args.key?(:boot_disk_provisioned_throughput)
          @boot_disk_size_gb = args[:boot_disk_size_gb] if args.key?(:boot_disk_size_gb)
          @boot_disk_type = args[:boot_disk_type] if args.key?(:boot_disk_type)
          @local_ssd_interface = args[:local_ssd_interface] if args.key?(:local_ssd_interface)
          @num_local_ssds = args[:num_local_ssds] if args.key?(:num_local_ssds)
        end
      end
      
      # Driver scheduling configuration.
      class DriverSchedulingConfig
        include Google::Apis::Core::Hashable
      
        # Required. The amount of memory in MB the driver is requesting.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # Required. The number of vCPUs the driver is requesting.
        # Corresponds to the JSON property `vcores`
        # @return [Fixnum]
        attr_accessor :vcores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @vcores = args[:vcores] if args.key?(:vcores)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encryption settings for the cluster.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud KMS key resource name to use for persistent disk
        # encryption for all instances in the cluster. See Use CMEK with cluster data (
        # https://cloud.google.com//dataproc/docs/concepts/configuring-clusters/customer-
        # managed-encryption#use_cmek_with_cluster_data) for more information.
        # Corresponds to the JSON property `gcePdKmsKeyName`
        # @return [String]
        attr_accessor :gce_pd_kms_key_name
      
        # Optional. The Cloud KMS key resource name to use for cluster persistent disk
        # and job argument encryption. See Use CMEK with cluster data (https://cloud.
        # google.com//dataproc/docs/concepts/configuring-clusters/customer-managed-
        # encryption#use_cmek_with_cluster_data) for more information.When this key
        # resource name is provided, the following job arguments of the following job
        # types submitted to the cluster are encrypted using CMEK: FlinkJob args (https:/
        # /cloud.google.com/dataproc/docs/reference/rest/v1/FlinkJob) HadoopJob args (
        # https://cloud.google.com/dataproc/docs/reference/rest/v1/HadoopJob) SparkJob
        # args (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkJob)
        # SparkRJob args (https://cloud.google.com/dataproc/docs/reference/rest/v1/
        # SparkRJob) PySparkJob args (https://cloud.google.com/dataproc/docs/reference/
        # rest/v1/PySparkJob) SparkSqlJob (https://cloud.google.com/dataproc/docs/
        # reference/rest/v1/SparkSqlJob) scriptVariables and queryList.queries HiveJob (
        # https://cloud.google.com/dataproc/docs/reference/rest/v1/HiveJob)
        # scriptVariables and queryList.queries PigJob (https://cloud.google.com/
        # dataproc/docs/reference/rest/v1/PigJob) scriptVariables and queryList.queries
        # PrestoJob (https://cloud.google.com/dataproc/docs/reference/rest/v1/PrestoJob)
        # scriptVariables and queryList.queries
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gce_pd_kms_key_name = args[:gce_pd_kms_key_name] if args.key?(:gce_pd_kms_key_name)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # Endpoint config for this cluster
      class EndpointConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If true, enable http access to specific ports on the cluster from
        # external sources. Defaults to false.
        # Corresponds to the JSON property `enableHttpPortAccess`
        # @return [Boolean]
        attr_accessor :enable_http_port_access
        alias_method :enable_http_port_access?, :enable_http_port_access
      
        # Output only. The map of port descriptions to URLs. Will only be populated if
        # enable_http_port_access is true.
        # Corresponds to the JSON property `httpPorts`
        # @return [Hash<String,String>]
        attr_accessor :http_ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_http_port_access = args[:enable_http_port_access] if args.key?(:enable_http_port_access)
          @http_ports = args[:http_ports] if args.key?(:http_ports)
        end
      end
      
      # Environment configuration for a workload.
      class EnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Execution configuration for a workload.
        # Corresponds to the JSON property `executionConfig`
        # @return [Google::Apis::DataprocV1::ExecutionConfig]
        attr_accessor :execution_config
      
        # Auxiliary services configuration for a workload.
        # Corresponds to the JSON property `peripheralsConfig`
        # @return [Google::Apis::DataprocV1::PeripheralsConfig]
        attr_accessor :peripherals_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_config = args[:execution_config] if args.key?(:execution_config)
          @peripherals_config = args[:peripherals_config] if args.key?(:peripherals_config)
        end
      end
      
      # Execution configuration for a workload.
      class ExecutionConfig
        include Google::Apis::Core::Hashable
      
        # Authentication configuration for a workload is used to set the default
        # identity for the workload execution. The config specifies the type of identity
        # (service account or user) that will be used by workloads to access resources
        # on the project(s).
        # Corresponds to the JSON property `authenticationConfig`
        # @return [Google::Apis::DataprocV1::AuthenticationConfig]
        attr_accessor :authentication_config
      
        # Optional. Applies to sessions only. The duration to keep the session alive
        # while it's idling. Exceeding this threshold causes the session to terminate.
        # This field cannot be set on a batch workload. Minimum value is 10 minutes;
        # maximum value is 14 days (see JSON representation of Duration (https://
        # developers.google.com/protocol-buffers/docs/proto3#json)). Defaults to 1 hour
        # if not set. If both ttl and idle_ttl are specified for an interactive session,
        # the conditions are treated as OR conditions: the workload will be terminated
        # when it has been idle for idle_ttl or when ttl has been exceeded, whichever
        # occurs first.
        # Corresponds to the JSON property `idleTtl`
        # @return [String]
        attr_accessor :idle_ttl
      
        # Optional. The Cloud KMS key to use for encryption.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. Tags used for network traffic control.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Optional. Network URI to connect workload to.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Optional. Service account that used to execute workload.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. A Cloud Storage bucket used to stage workload dependencies, config
        # files, and store workload output and other ephemeral data, such as Spark
        # history files. If you do not specify a staging bucket, Cloud Dataproc will
        # determine a Cloud Storage location according to the region where your workload
        # is running, and then create and manage project-level, per-location staging and
        # temporary buckets. This field requires a Cloud Storage bucket name, not a gs://
        # ... URI to a Cloud Storage bucket.
        # Corresponds to the JSON property `stagingBucket`
        # @return [String]
        attr_accessor :staging_bucket
      
        # Optional. Subnetwork URI to connect workload to.
        # Corresponds to the JSON property `subnetworkUri`
        # @return [String]
        attr_accessor :subnetwork_uri
      
        # Optional. The duration after which the workload will be terminated, specified
        # as the JSON representation for Duration (https://protobuf.dev/programming-
        # guides/proto3/#json). When the workload exceeds this duration, it will be
        # unconditionally terminated without waiting for ongoing work to finish. If ttl
        # is not specified for a batch workload, the workload will be allowed to run
        # until it exits naturally (or run forever without exiting). If ttl is not
        # specified for an interactive session, it defaults to 24 hours. If ttl is not
        # specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours.
        # Minimum value is 10 minutes; maximum value is 14 days. If both ttl and
        # idle_ttl are specified (for an interactive session), the conditions are
        # treated as OR conditions: the workload will be terminated when it has been
        # idle for idle_ttl or when ttl has been exceeded, whichever occurs first.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_config = args[:authentication_config] if args.key?(:authentication_config)
          @idle_ttl = args[:idle_ttl] if args.key?(:idle_ttl)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @service_account = args[:service_account] if args.key?(:service_account)
          @staging_bucket = args[:staging_bucket] if args.key?(:staging_bucket)
          @subnetwork_uri = args[:subnetwork_uri] if args.key?(:subnetwork_uri)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # 
      class ExecutorMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Hash<String,Fixnum>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # 
      class ExecutorMetricsDistributions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `diskBytesSpilled`
        # @return [Array<Float>]
        attr_accessor :disk_bytes_spilled
      
        # 
        # Corresponds to the JSON property `failedTasks`
        # @return [Array<Float>]
        attr_accessor :failed_tasks
      
        # 
        # Corresponds to the JSON property `inputBytes`
        # @return [Array<Float>]
        attr_accessor :input_bytes
      
        # 
        # Corresponds to the JSON property `inputRecords`
        # @return [Array<Float>]
        attr_accessor :input_records
      
        # 
        # Corresponds to the JSON property `killedTasks`
        # @return [Array<Float>]
        attr_accessor :killed_tasks
      
        # 
        # Corresponds to the JSON property `memoryBytesSpilled`
        # @return [Array<Float>]
        attr_accessor :memory_bytes_spilled
      
        # 
        # Corresponds to the JSON property `outputBytes`
        # @return [Array<Float>]
        attr_accessor :output_bytes
      
        # 
        # Corresponds to the JSON property `outputRecords`
        # @return [Array<Float>]
        attr_accessor :output_records
      
        # 
        # Corresponds to the JSON property `peakMemoryMetrics`
        # @return [Google::Apis::DataprocV1::ExecutorPeakMetricsDistributions]
        attr_accessor :peak_memory_metrics
      
        # 
        # Corresponds to the JSON property `quantiles`
        # @return [Array<Float>]
        attr_accessor :quantiles
      
        # 
        # Corresponds to the JSON property `shuffleRead`
        # @return [Array<Float>]
        attr_accessor :shuffle_read
      
        # 
        # Corresponds to the JSON property `shuffleReadRecords`
        # @return [Array<Float>]
        attr_accessor :shuffle_read_records
      
        # 
        # Corresponds to the JSON property `shuffleWrite`
        # @return [Array<Float>]
        attr_accessor :shuffle_write
      
        # 
        # Corresponds to the JSON property `shuffleWriteRecords`
        # @return [Array<Float>]
        attr_accessor :shuffle_write_records
      
        # 
        # Corresponds to the JSON property `succeededTasks`
        # @return [Array<Float>]
        attr_accessor :succeeded_tasks
      
        # 
        # Corresponds to the JSON property `taskTimeMillis`
        # @return [Array<Float>]
        attr_accessor :task_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_bytes_spilled = args[:disk_bytes_spilled] if args.key?(:disk_bytes_spilled)
          @failed_tasks = args[:failed_tasks] if args.key?(:failed_tasks)
          @input_bytes = args[:input_bytes] if args.key?(:input_bytes)
          @input_records = args[:input_records] if args.key?(:input_records)
          @killed_tasks = args[:killed_tasks] if args.key?(:killed_tasks)
          @memory_bytes_spilled = args[:memory_bytes_spilled] if args.key?(:memory_bytes_spilled)
          @output_bytes = args[:output_bytes] if args.key?(:output_bytes)
          @output_records = args[:output_records] if args.key?(:output_records)
          @peak_memory_metrics = args[:peak_memory_metrics] if args.key?(:peak_memory_metrics)
          @quantiles = args[:quantiles] if args.key?(:quantiles)
          @shuffle_read = args[:shuffle_read] if args.key?(:shuffle_read)
          @shuffle_read_records = args[:shuffle_read_records] if args.key?(:shuffle_read_records)
          @shuffle_write = args[:shuffle_write] if args.key?(:shuffle_write)
          @shuffle_write_records = args[:shuffle_write_records] if args.key?(:shuffle_write_records)
          @succeeded_tasks = args[:succeeded_tasks] if args.key?(:succeeded_tasks)
          @task_time_millis = args[:task_time_millis] if args.key?(:task_time_millis)
        end
      end
      
      # 
      class ExecutorPeakMetricsDistributions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `executorMetrics`
        # @return [Array<Google::Apis::DataprocV1::ExecutorMetrics>]
        attr_accessor :executor_metrics
      
        # 
        # Corresponds to the JSON property `quantiles`
        # @return [Array<Float>]
        attr_accessor :quantiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executor_metrics = args[:executor_metrics] if args.key?(:executor_metrics)
          @quantiles = args[:quantiles] if args.key?(:quantiles)
        end
      end
      
      # Resources used per executor used by the application.
      class ExecutorResourceRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `amount`
        # @return [Fixnum]
        attr_accessor :amount
      
        # 
        # Corresponds to the JSON property `discoveryScript`
        # @return [String]
        attr_accessor :discovery_script
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @discovery_script = args[:discovery_script] if args.key?(:discovery_script)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # Executor resources consumed by a stage.
      class ExecutorStageSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `diskBytesSpilled`
        # @return [Fixnum]
        attr_accessor :disk_bytes_spilled
      
        # 
        # Corresponds to the JSON property `executorId`
        # @return [String]
        attr_accessor :executor_id
      
        # 
        # Corresponds to the JSON property `failedTasks`
        # @return [Fixnum]
        attr_accessor :failed_tasks
      
        # 
        # Corresponds to the JSON property `inputBytes`
        # @return [Fixnum]
        attr_accessor :input_bytes
      
        # 
        # Corresponds to the JSON property `inputRecords`
        # @return [Fixnum]
        attr_accessor :input_records
      
        # 
        # Corresponds to the JSON property `isExcludedForStage`
        # @return [Boolean]
        attr_accessor :is_excluded_for_stage
        alias_method :is_excluded_for_stage?, :is_excluded_for_stage
      
        # 
        # Corresponds to the JSON property `killedTasks`
        # @return [Fixnum]
        attr_accessor :killed_tasks
      
        # 
        # Corresponds to the JSON property `memoryBytesSpilled`
        # @return [Fixnum]
        attr_accessor :memory_bytes_spilled
      
        # 
        # Corresponds to the JSON property `outputBytes`
        # @return [Fixnum]
        attr_accessor :output_bytes
      
        # 
        # Corresponds to the JSON property `outputRecords`
        # @return [Fixnum]
        attr_accessor :output_records
      
        # 
        # Corresponds to the JSON property `peakMemoryMetrics`
        # @return [Google::Apis::DataprocV1::ExecutorMetrics]
        attr_accessor :peak_memory_metrics
      
        # 
        # Corresponds to the JSON property `shuffleRead`
        # @return [Fixnum]
        attr_accessor :shuffle_read
      
        # 
        # Corresponds to the JSON property `shuffleReadRecords`
        # @return [Fixnum]
        attr_accessor :shuffle_read_records
      
        # 
        # Corresponds to the JSON property `shuffleWrite`
        # @return [Fixnum]
        attr_accessor :shuffle_write
      
        # 
        # Corresponds to the JSON property `shuffleWriteRecords`
        # @return [Fixnum]
        attr_accessor :shuffle_write_records
      
        # 
        # Corresponds to the JSON property `stageAttemptId`
        # @return [Fixnum]
        attr_accessor :stage_attempt_id
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        # 
        # Corresponds to the JSON property `succeededTasks`
        # @return [Fixnum]
        attr_accessor :succeeded_tasks
      
        # 
        # Corresponds to the JSON property `taskTimeMillis`
        # @return [Fixnum]
        attr_accessor :task_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_bytes_spilled = args[:disk_bytes_spilled] if args.key?(:disk_bytes_spilled)
          @executor_id = args[:executor_id] if args.key?(:executor_id)
          @failed_tasks = args[:failed_tasks] if args.key?(:failed_tasks)
          @input_bytes = args[:input_bytes] if args.key?(:input_bytes)
          @input_records = args[:input_records] if args.key?(:input_records)
          @is_excluded_for_stage = args[:is_excluded_for_stage] if args.key?(:is_excluded_for_stage)
          @killed_tasks = args[:killed_tasks] if args.key?(:killed_tasks)
          @memory_bytes_spilled = args[:memory_bytes_spilled] if args.key?(:memory_bytes_spilled)
          @output_bytes = args[:output_bytes] if args.key?(:output_bytes)
          @output_records = args[:output_records] if args.key?(:output_records)
          @peak_memory_metrics = args[:peak_memory_metrics] if args.key?(:peak_memory_metrics)
          @shuffle_read = args[:shuffle_read] if args.key?(:shuffle_read)
          @shuffle_read_records = args[:shuffle_read_records] if args.key?(:shuffle_read_records)
          @shuffle_write = args[:shuffle_write] if args.key?(:shuffle_write)
          @shuffle_write_records = args[:shuffle_write_records] if args.key?(:shuffle_write_records)
          @stage_attempt_id = args[:stage_attempt_id] if args.key?(:stage_attempt_id)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
          @succeeded_tasks = args[:succeeded_tasks] if args.key?(:succeeded_tasks)
          @task_time_millis = args[:task_time_millis] if args.key?(:task_time_millis)
        end
      end
      
      # Details about executors used by the application.
      class ExecutorSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `activeTasks`
        # @return [Fixnum]
        attr_accessor :active_tasks
      
        # 
        # Corresponds to the JSON property `addTime`
        # @return [String]
        attr_accessor :add_time
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `completedTasks`
        # @return [Fixnum]
        attr_accessor :completed_tasks
      
        # 
        # Corresponds to the JSON property `diskUsed`
        # @return [Fixnum]
        attr_accessor :disk_used
      
        # 
        # Corresponds to the JSON property `excludedInStages`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_in_stages
      
        # 
        # Corresponds to the JSON property `executorId`
        # @return [String]
        attr_accessor :executor_id
      
        # 
        # Corresponds to the JSON property `executorLogs`
        # @return [Hash<String,String>]
        attr_accessor :executor_logs
      
        # 
        # Corresponds to the JSON property `failedTasks`
        # @return [Fixnum]
        attr_accessor :failed_tasks
      
        # 
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        # 
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # 
        # Corresponds to the JSON property `isExcluded`
        # @return [Boolean]
        attr_accessor :is_excluded
        alias_method :is_excluded?, :is_excluded
      
        # 
        # Corresponds to the JSON property `maxMemory`
        # @return [Fixnum]
        attr_accessor :max_memory
      
        # 
        # Corresponds to the JSON property `maxTasks`
        # @return [Fixnum]
        attr_accessor :max_tasks
      
        # 
        # Corresponds to the JSON property `memoryMetrics`
        # @return [Google::Apis::DataprocV1::MemoryMetrics]
        attr_accessor :memory_metrics
      
        # 
        # Corresponds to the JSON property `memoryUsed`
        # @return [Fixnum]
        attr_accessor :memory_used
      
        # 
        # Corresponds to the JSON property `peakMemoryMetrics`
        # @return [Google::Apis::DataprocV1::ExecutorMetrics]
        attr_accessor :peak_memory_metrics
      
        # 
        # Corresponds to the JSON property `rddBlocks`
        # @return [Fixnum]
        attr_accessor :rdd_blocks
      
        # 
        # Corresponds to the JSON property `removeReason`
        # @return [String]
        attr_accessor :remove_reason
      
        # 
        # Corresponds to the JSON property `removeTime`
        # @return [String]
        attr_accessor :remove_time
      
        # 
        # Corresponds to the JSON property `resourceProfileId`
        # @return [Fixnum]
        attr_accessor :resource_profile_id
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Hash<String,Google::Apis::DataprocV1::ResourceInformation>]
        attr_accessor :resources
      
        # 
        # Corresponds to the JSON property `totalCores`
        # @return [Fixnum]
        attr_accessor :total_cores
      
        # 
        # Corresponds to the JSON property `totalDurationMillis`
        # @return [Fixnum]
        attr_accessor :total_duration_millis
      
        # 
        # Corresponds to the JSON property `totalGcTimeMillis`
        # @return [Fixnum]
        attr_accessor :total_gc_time_millis
      
        # 
        # Corresponds to the JSON property `totalInputBytes`
        # @return [Fixnum]
        attr_accessor :total_input_bytes
      
        # 
        # Corresponds to the JSON property `totalShuffleRead`
        # @return [Fixnum]
        attr_accessor :total_shuffle_read
      
        # 
        # Corresponds to the JSON property `totalShuffleWrite`
        # @return [Fixnum]
        attr_accessor :total_shuffle_write
      
        # 
        # Corresponds to the JSON property `totalTasks`
        # @return [Fixnum]
        attr_accessor :total_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_tasks = args[:active_tasks] if args.key?(:active_tasks)
          @add_time = args[:add_time] if args.key?(:add_time)
          @attributes = args[:attributes] if args.key?(:attributes)
          @completed_tasks = args[:completed_tasks] if args.key?(:completed_tasks)
          @disk_used = args[:disk_used] if args.key?(:disk_used)
          @excluded_in_stages = args[:excluded_in_stages] if args.key?(:excluded_in_stages)
          @executor_id = args[:executor_id] if args.key?(:executor_id)
          @executor_logs = args[:executor_logs] if args.key?(:executor_logs)
          @failed_tasks = args[:failed_tasks] if args.key?(:failed_tasks)
          @host_port = args[:host_port] if args.key?(:host_port)
          @is_active = args[:is_active] if args.key?(:is_active)
          @is_excluded = args[:is_excluded] if args.key?(:is_excluded)
          @max_memory = args[:max_memory] if args.key?(:max_memory)
          @max_tasks = args[:max_tasks] if args.key?(:max_tasks)
          @memory_metrics = args[:memory_metrics] if args.key?(:memory_metrics)
          @memory_used = args[:memory_used] if args.key?(:memory_used)
          @peak_memory_metrics = args[:peak_memory_metrics] if args.key?(:peak_memory_metrics)
          @rdd_blocks = args[:rdd_blocks] if args.key?(:rdd_blocks)
          @remove_reason = args[:remove_reason] if args.key?(:remove_reason)
          @remove_time = args[:remove_time] if args.key?(:remove_time)
          @resource_profile_id = args[:resource_profile_id] if args.key?(:resource_profile_id)
          @resources = args[:resources] if args.key?(:resources)
          @total_cores = args[:total_cores] if args.key?(:total_cores)
          @total_duration_millis = args[:total_duration_millis] if args.key?(:total_duration_millis)
          @total_gc_time_millis = args[:total_gc_time_millis] if args.key?(:total_gc_time_millis)
          @total_input_bytes = args[:total_input_bytes] if args.key?(:total_input_bytes)
          @total_shuffle_read = args[:total_shuffle_read] if args.key?(:total_shuffle_read)
          @total_shuffle_write = args[:total_shuffle_write] if args.key?(:total_shuffle_write)
          @total_tasks = args[:total_tasks] if args.key?(:total_tasks)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
      # Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Native SQL Execution Data
      class FallbackReason
        include Google::Apis::Core::Hashable
      
        # Optional. Fallback node information.
        # Corresponds to the JSON property `fallbackNode`
        # @return [String]
        attr_accessor :fallback_node
      
        # Optional. Fallback to Spark reason.
        # Corresponds to the JSON property `fallbackReason`
        # @return [String]
        attr_accessor :fallback_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fallback_node = args[:fallback_node] if args.key?(:fallback_node)
          @fallback_reason = args[:fallback_reason] if args.key?(:fallback_reason)
        end
      end
      
      # A Dataproc job for running Apache Flink applications on YARN.
      class FlinkJob
        include Google::Apis::Core::Hashable
      
        # Optional. The arguments to pass to the driver. Do not include arguments, such
        # as --conf, that can be set as job properties, since a collision might occur
        # that causes an incorrect job submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver
        # and tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # The name of the driver's main class. The jar file that contains the class must
        # be in the default CLASSPATH or specified in jarFileUris.
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # The HCFS URI of the jar file that contains the main class.
        # Corresponds to the JSON property `mainJarFileUri`
        # @return [String]
        attr_accessor :main_jar_file_uri
      
        # Optional. A mapping of property names to values, used to configure Flink.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/flink/conf/flink-defaults.conf
        # and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Optional. HCFS URI of the savepoint, which contains the last saved progress
        # for starting the current job.
        # Corresponds to the JSON property `savepointUri`
        # @return [String]
        attr_accessor :savepoint_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_jar_file_uri = args[:main_jar_file_uri] if args.key?(:main_jar_file_uri)
          @properties = args[:properties] if args.key?(:properties)
          @savepoint_uri = args[:savepoint_uri] if args.key?(:savepoint_uri)
        end
      end
      
      # Common config settings for resources of Compute Engine cluster instances,
      # applicable to all instances in the cluster.
      class GceClusterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. An optional list of Compute Engine zones where the Dataproc cluster
        # will not be located when Auto Zone is enabled. Only one of zone_uri or
        # auto_zone_exclude_zone_uris can be set. If both are omitted, the service will
        # pick a zone in the cluster Compute Engine region. If
        # auto_zone_exclude_zone_uris is set and there is more than one non-excluded
        # zone, the service will pick one of the non-excluded zones. Otherwise, cluster
        # creation will fail with INVALID_ARGUMENT error.A full URL, partial URI, or
        # short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/
        # [project_id]/zones/[zone] projects/[project_id]/zones/[zone] [zone]
        # Corresponds to the JSON property `autoZoneExcludeZoneUris`
        # @return [Array<String>]
        attr_accessor :auto_zone_exclude_zone_uris
      
        # Confidential Instance Config for clusters using Confidential VMs (https://
        # cloud.google.com/compute/confidential-vm/docs)
        # Corresponds to the JSON property `confidentialInstanceConfig`
        # @return [Google::Apis::DataprocV1::ConfidentialInstanceConfig]
        attr_accessor :confidential_instance_config
      
        # Optional. This setting applies to subnetwork-enabled networks. It is set to
        # true by default in clusters created with image versions 2.2.x.When set to true:
        # All cluster VMs have internal IP addresses. Google Private Access (https://
        # cloud.google.com/vpc/docs/private-google-access) must be enabled to access
        # Dataproc and other Google Cloud APIs. Off-cluster dependencies must be
        # configured to be accessible without external IP addresses.When set to false:
        # Cluster VMs are not restricted to internal IP addresses. Ephemeral external IP
        # addresses are assigned to each cluster VM.
        # Corresponds to the JSON property `internalIpOnly`
        # @return [Boolean]
        attr_accessor :internal_ip_only
        alias_method :internal_ip_only?, :internal_ip_only
      
        # Optional. The Compute Engine metadata entries to add to all instances (see
        # Project and instance metadata (https://cloud.google.com/compute/docs/storing-
        # retrieving-metadata#project_and_instance_metadata)).
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Optional. The Compute Engine network to be used for machine communications.
        # Cannot be specified with subnetwork_uri. If neither network_uri nor
        # subnetwork_uri is specified, the "default" network of the project is used, if
        # it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://
        # cloud.google.com/compute/docs/subnetworks) for more information).A full URL,
        # partial URI, or short name are valid. Examples: https://www.googleapis.com/
        # compute/v1/projects/[project_id]/global/networks/default projects/[project_id]/
        # global/networks/default default
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Node Group Affinity for clusters using sole-tenant node groups. The Dataproc
        # NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.
        # Corresponds to the JSON property `nodeGroupAffinity`
        # @return [Google::Apis::DataprocV1::NodeGroupAffinity]
        attr_accessor :node_group_affinity
      
        # Optional. The type of IPv6 access for a cluster.
        # Corresponds to the JSON property `privateIpv6GoogleAccess`
        # @return [String]
        attr_accessor :private_ipv6_google_access
      
        # Reservation Affinity for consuming Zonal reservation.
        # Corresponds to the JSON property `reservationAffinity`
        # @return [Google::Apis::DataprocV1::ReservationAffinity]
        attr_accessor :reservation_affinity
      
        # Optional. Resource manager tags (https://cloud.google.com/resource-manager/
        # docs/tags/tags-creating-and-managing) to add to all instances (see Use secure
        # tags in Dataproc (https://cloud.google.com/dataproc/docs/guides/use-secure-
        # tags)).
        # Corresponds to the JSON property `resourceManagerTags`
        # @return [Hash<String,String>]
        attr_accessor :resource_manager_tags
      
        # Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/
        # concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (
        # also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/
        # concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used
        # by Dataproc cluster VM instances to access Google Cloud Platform services.If
        # not specified, the Compute Engine default service account (https://cloud.
        # google.com/compute/docs/access/service-accounts#default_service_account) is
        # used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. The URIs of service account scopes to be included in Compute Engine
        # instances. The following base set of scopes is always included: https://www.
        # googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/
        # auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no
        # scopes are specified, the following defaults are also provided: https://www.
        # googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.
        # table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/
        # auth/devstorage.full_control
        # Corresponds to the JSON property `serviceAccountScopes`
        # @return [Array<String>]
        attr_accessor :service_account_scopes
      
        # Shielded Instance Config for clusters using Compute Engine Shielded VMs (https:
        # //cloud.google.com/security/shielded-cloud/shielded-vm).
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::DataprocV1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Optional. The Compute Engine subnetwork to be used for machine communications.
        # Cannot be specified with network_uri.A full URL, partial URI, or short name
        # are valid. Examples: https://www.googleapis.com/compute/v1/projects/[
        # project_id]/regions/[region]/subnetworks/sub0 projects/[project_id]/regions/[
        # region]/subnetworks/sub0 sub0
        # Corresponds to the JSON property `subnetworkUri`
        # @return [String]
        attr_accessor :subnetwork_uri
      
        # The Compute Engine network tags to add to all instances (see Tagging instances
        # (https://cloud.google.com/vpc/docs/add-remove-network-tags)).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Optional. The Compute Engine zone where the Dataproc cluster will be located.
        # If omitted, the service will pick a zone in the cluster's Compute Engine
        # region. On a get request, zone will always be present.A full URL, partial URI,
        # or short name are valid. Examples: https://www.googleapis.com/compute/v1/
        # projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] [zone]
        # Corresponds to the JSON property `zoneUri`
        # @return [String]
        attr_accessor :zone_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_zone_exclude_zone_uris = args[:auto_zone_exclude_zone_uris] if args.key?(:auto_zone_exclude_zone_uris)
          @confidential_instance_config = args[:confidential_instance_config] if args.key?(:confidential_instance_config)
          @internal_ip_only = args[:internal_ip_only] if args.key?(:internal_ip_only)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @node_group_affinity = args[:node_group_affinity] if args.key?(:node_group_affinity)
          @private_ipv6_google_access = args[:private_ipv6_google_access] if args.key?(:private_ipv6_google_access)
          @reservation_affinity = args[:reservation_affinity] if args.key?(:reservation_affinity)
          @resource_manager_tags = args[:resource_manager_tags] if args.key?(:resource_manager_tags)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_account_scopes = args[:service_account_scopes] if args.key?(:service_account_scopes)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @subnetwork_uri = args[:subnetwork_uri] if args.key?(:subnetwork_uri)
          @tags = args[:tags] if args.key?(:tags)
          @zone_uri = args[:zone_uri] if args.key?(:zone_uri)
        end
      end
      
      # Request message for GetIamPolicy method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DataprocV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected.Requests for policies with any conditional role bindings must specify
        # version 3. Policies with no conditional role bindings may specify any valid
        # value or leave the field unset.The policy in the response might use the policy
        # version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1.To learn which resources support
        # conditions in their IAM policies, see the IAM documentation (https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # The cluster's GKE config.
      class GkeClusterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A target GKE cluster to deploy to. It must be in the same project
        # and region as the Dataproc cluster (the GKE cluster can be zonal or regional).
        # Format: 'projects/`project`/locations/`location`/clusters/`cluster_id`'
        # Corresponds to the JSON property `gkeClusterTarget`
        # @return [String]
        attr_accessor :gke_cluster_target
      
        # Deprecated. Used only for the deprecated beta. A full, namespace-isolated
        # deployment target for an existing GKE cluster.
        # Corresponds to the JSON property `namespacedGkeDeploymentTarget`
        # @return [Google::Apis::DataprocV1::NamespacedGkeDeploymentTarget]
        attr_accessor :namespaced_gke_deployment_target
      
        # Optional. GKE node pools where workloads will be scheduled. At least one node
        # pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a
        # GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT
        # GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All
        # node pools must have the same location settings.
        # Corresponds to the JSON property `nodePoolTarget`
        # @return [Array<Google::Apis::DataprocV1::GkeNodePoolTarget>]
        attr_accessor :node_pool_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_cluster_target = args[:gke_cluster_target] if args.key?(:gke_cluster_target)
          @namespaced_gke_deployment_target = args[:namespaced_gke_deployment_target] if args.key?(:namespaced_gke_deployment_target)
          @node_pool_target = args[:node_pool_target] if args.key?(:node_pool_target)
        end
      end
      
      # Parameters that describe cluster nodes.
      class GkeNodeConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A list of hardware accelerators (https://cloud.google.com/compute/
        # docs/gpus) to attach to each node.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::DataprocV1::GkeNodePoolAcceleratorConfig>]
        attr_accessor :accelerators
      
        # Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/
        # kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk
        # attached to each node in the node pool. Specify the key using the following
        # format: projects/`project`/locations/`location`/keyRings/`key_ring`/cryptoKeys/
        # `crypto_key`
        # Corresponds to the JSON property `bootDiskKmsKey`
        # @return [String]
        attr_accessor :boot_disk_kms_key
      
        # Optional. The number of local SSD disks to attach to the node, which is
        # limited by the maximum number of disks allowable per zone (see Adding Local
        # SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        # Optional. The name of a Compute Engine machine type (https://cloud.google.com/
        # compute/docs/machine-types).
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/
        # instances/specify-min-cpu-platform) to be used by this instance. The instance
        # may be scheduled on the specified or a newer CPU platform. Specify the
        # friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy
        # Bridge".
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # Optional. Whether the nodes are created as legacy preemptible VM instances (
        # https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot
        # VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot
        # preemptible nodes cannot be used in a node pool with the CONTROLLER role or in
        # the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node
        # pool will assume the CONTROLLER role).
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # Optional. Whether the nodes are created as Spot VM instances (https://cloud.
        # google.com/compute/docs/instances/spot). Spot VMs are the latest update to
        # legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and
        # Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role
        # or in the DEFAULT node pool if the CONTROLLER role is not assigned (the
        # DEFAULT node pool will assume the CONTROLLER role).
        # Corresponds to the JSON property `spot`
        # @return [Boolean]
        attr_accessor :spot
        alias_method :spot?, :spot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @boot_disk_kms_key = args[:boot_disk_kms_key] if args.key?(:boot_disk_kms_key)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @spot = args[:spot] if args.key?(:spot)
        end
      end
      
      # A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for
      # a node pool.
      class GkeNodePoolAcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # The number of accelerator cards exposed to an instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # The accelerator type resource namename (see GPUs on Compute Engine).
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Size of partitions to create on the GPU. Valid values are described in the
        # NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/
        # #partitioning).
        # Corresponds to the JSON property `gpuPartitionSize`
        # @return [String]
        attr_accessor :gpu_partition_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @gpu_partition_size = args[:gpu_partition_size] if args.key?(:gpu_partition_size)
        end
      end
      
      # GkeNodePoolAutoscaling contains information the cluster autoscaler needs to
      # adjust the size of the node pool to the current cluster usage.
      class GkeNodePoolAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # The maximum number of nodes in the node pool. Must be >= min_node_count, and
        # must be > 0. Note: Quota must be sufficient to scale up the cluster.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # The minimum number of nodes in the node pool. Must be >= 0 and <=
        # max_node_count.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
        end
      end
      
      # The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https:/
      # /cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-
      # on-gke-cluster).
      class GkeNodePoolConfig
        include Google::Apis::Core::Hashable
      
        # GkeNodePoolAutoscaling contains information the cluster autoscaler needs to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `autoscaling`
        # @return [Google::Apis::DataprocV1::GkeNodePoolAutoscalingConfig]
        attr_accessor :autoscaling
      
        # Parameters that describe cluster nodes.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DataprocV1::GkeNodeConfig]
        attr_accessor :config
      
        # Optional. The list of Compute Engine zones (https://cloud.google.com/compute/
        # docs/zones#available) where node pool nodes associated with a Dataproc on GKE
        # virtual cluster will be located.Note: All node pools associated with a virtual
        # cluster must be located in the same region as the virtual cluster, and they
        # must be located in the same zone within that region.If a location is not
        # specified during node pool creation, Dataproc on GKE will choose the zone.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling = args[:autoscaling] if args.key?(:autoscaling)
          @config = args[:config] if args.key?(:config)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # GKE node pools that Dataproc workloads run on.
      class GkeNodePoolTarget
        include Google::Apis::Core::Hashable
      
        # Required. The target GKE node pool. Format: 'projects/`project`/locations/`
        # location`/clusters/`cluster`/nodePools/`node_pool`'
        # Corresponds to the JSON property `nodePool`
        # @return [String]
        attr_accessor :node_pool
      
        # The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https:/
        # /cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-
        # on-gke-cluster).
        # Corresponds to the JSON property `nodePoolConfig`
        # @return [Google::Apis::DataprocV1::GkeNodePoolConfig]
        attr_accessor :node_pool_config
      
        # Required. The roles associated with the GKE node pool.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool = args[:node_pool] if args.key?(:node_pool)
          @node_pool_config = args[:node_pool_config] if args.key?(:node_pool_config)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Encryption settings for encrypting workflow template job arguments.
      class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud KMS key name to use for encrypting workflow template job
        # arguments.When this this key is provided, the following workflow template job
        # arguments (https://cloud.google.com/dataproc/docs/concepts/workflows/use-
        # workflows#adding_jobs_to_a_template), if present, are CMEK encrypted (https://
        # cloud.google.com/dataproc/docs/concepts/configuring-clusters/customer-managed-
        # encryption#use_cmek_with_workflow_template_data): FlinkJob args (https://cloud.
        # google.com/dataproc/docs/reference/rest/v1/FlinkJob) HadoopJob args (https://
        # cloud.google.com/dataproc/docs/reference/rest/v1/HadoopJob) SparkJob args (
        # https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkJob) SparkRJob
        # args (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkRJob)
        # PySparkJob args (https://cloud.google.com/dataproc/docs/reference/rest/v1/
        # PySparkJob) SparkSqlJob (https://cloud.google.com/dataproc/docs/reference/rest/
        # v1/SparkSqlJob) scriptVariables and queryList.queries HiveJob (https://cloud.
        # google.com/dataproc/docs/reference/rest/v1/HiveJob) scriptVariables and
        # queryList.queries PigJob (https://cloud.google.com/dataproc/docs/reference/
        # rest/v1/PigJob) scriptVariables and queryList.queries PrestoJob (https://cloud.
        # google.com/dataproc/docs/reference/rest/v1/PrestoJob) scriptVariables and
        # queryList.queries
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/
      # docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/
      # MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/
      # docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
      class HadoopJob
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted in the working directory of
        # Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .
        # zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments, such
        # as -libjars or -Dfoo=bar, that can be set as job properties, since a collision
        # might occur that causes an incorrect job submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to
        # the working directory of Hadoop drivers and distributed tasks. Useful for
        # naively parallel tasks.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and
        # tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # The name of the driver's main class. The jar file containing the class must be
        # in the default CLASSPATH or specified in jar_file_uris.
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-
        # bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-
        # samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-
        # mapreduce-examples.jar'
        # Corresponds to the JSON property `mainJarFileUri`
        # @return [String]
        attr_accessor :main_jar_file_uri
      
        # Optional. A mapping of property names to values, used to configure Hadoop.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes
        # in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_jar_file_uri = args[:main_jar_file_uri] if args.key?(:main_jar_file_uri)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on
      # YARN.
      class HiveJob
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to continue executing queries if a query fails. The default
        # value is false. Setting to true can be useful when executing independent
        # parallel queries.
        # Corresponds to the JSON property `continueOnFailure`
        # @return [Boolean]
        attr_accessor :continue_on_failure
        alias_method :continue_on_failure?, :continue_on_failure
      
        # Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server
        # and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # Optional. A mapping of property names and values, used to configure Hive.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/
        # hive/conf/hive-site.xml, and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The HCFS URI of the script that contains Hive queries.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # A list of queries to run on a cluster.
        # Corresponds to the JSON property `queryList`
        # @return [Google::Apis::DataprocV1::QueryList]
        attr_accessor :query_list
      
        # Optional. Mapping of query variable names to values (equivalent to the Hive
        # command: SET name="value";).
        # Corresponds to the JSON property `scriptVariables`
        # @return [Hash<String,String>]
        attr_accessor :script_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_failure = args[:continue_on_failure] if args.key?(:continue_on_failure)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @properties = args[:properties] if args.key?(:properties)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_list = args[:query_list] if args.key?(:query_list)
          @script_variables = args[:script_variables] if args.key?(:script_variables)
        end
      end
      
      # Identity related configuration, including service account based secure multi-
      # tenancy user mappings.
      class IdentityConfig
        include Google::Apis::Core::Hashable
      
        # Required. Map of user to service account.
        # Corresponds to the JSON property `userServiceAccountMapping`
        # @return [Hash<String,String>]
        attr_accessor :user_service_account_mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_service_account_mapping = args[:user_service_account_mapping] if args.key?(:user_service_account_mapping)
        end
      end
      
      # A request to inject credentials into a cluster.
      class InjectCredentialsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The cluster UUID.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Required. The encrypted credentials being injected in to the cluster.The
        # client is responsible for encrypting the credentials in a way that is
        # supported by the cluster.A wrapped value is used here so that the actual
        # contents of the encrypted credentials are not written to audit logs.
        # Corresponds to the JSON property `credentialsCiphertext`
        # @return [String]
        attr_accessor :credentials_ciphertext
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @credentials_ciphertext = args[:credentials_ciphertext] if args.key?(:credentials_ciphertext)
        end
      end
      
      # Metrics about the input data read by the task.
      class InputMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesRead`
        # @return [Fixnum]
        attr_accessor :bytes_read
      
        # 
        # Corresponds to the JSON property `recordsRead`
        # @return [Fixnum]
        attr_accessor :records_read
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_read = args[:bytes_read] if args.key?(:bytes_read)
          @records_read = args[:records_read] if args.key?(:records_read)
        end
      end
      
      # 
      class InputQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `bytesRead`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :bytes_read
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `recordsRead`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :records_read
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_read = args[:bytes_read] if args.key?(:bytes_read)
          @records_read = args[:records_read] if args.key?(:records_read)
        end
      end
      
      # Instance flexibility Policy allowing a mixture of VM shapes and provisioning
      # models.
      class InstanceFlexibilityPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. List of instance selection options that the group will use when
        # creating new VMs.
        # Corresponds to the JSON property `instanceSelectionList`
        # @return [Array<Google::Apis::DataprocV1::InstanceSelection>]
        attr_accessor :instance_selection_list
      
        # Output only. A list of instance selection results in the group.
        # Corresponds to the JSON property `instanceSelectionResults`
        # @return [Array<Google::Apis::DataprocV1::InstanceSelectionResult>]
        attr_accessor :instance_selection_results
      
        # Defines how Dataproc should create VMs with a mixture of provisioning models.
        # Corresponds to the JSON property `provisioningModelMix`
        # @return [Google::Apis::DataprocV1::ProvisioningModelMix]
        attr_accessor :provisioning_model_mix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_selection_list = args[:instance_selection_list] if args.key?(:instance_selection_list)
          @instance_selection_results = args[:instance_selection_results] if args.key?(:instance_selection_results)
          @provisioning_model_mix = args[:provisioning_model_mix] if args.key?(:provisioning_model_mix)
        end
      end
      
      # Configuration for the size bounds of an instance group, including its
      # proportional size to other groups.
      class InstanceGroupAutoscalingPolicyConfig
        include Google::Apis::Core::Hashable
      
        # Required. Maximum number of instances for this group. Required for primary
        # workers. Note that by default, clusters will not use secondary workers.
        # Required for secondary workers if the minimum secondary instances is set.
        # Primary workers - Bounds: [min_instances, ). Secondary workers - Bounds: [
        # min_instances, ). Default: 0.
        # Corresponds to the JSON property `maxInstances`
        # @return [Fixnum]
        attr_accessor :max_instances
      
        # Optional. Minimum number of instances for this group.Primary workers - Bounds:
        # 2, max_instances. Default: 2. Secondary workers - Bounds: 0, max_instances.
        # Default: 0.
        # Corresponds to the JSON property `minInstances`
        # @return [Fixnum]
        attr_accessor :min_instances
      
        # Optional. Weight for the instance group, which is used to determine the
        # fraction of total workers in the cluster from this instance group. For example,
        # if primary workers have weight 2, and secondary workers have weight 1, the
        # cluster will have approximately 2 primary workers for each secondary worker.
        # The cluster may not reach the specified balance if constrained by min/max
        # bounds or other autoscaling settings. For example, if max_instances for
        # secondary workers is 0, then only primary workers will be added. The cluster
        # can also be out of balance when created.If weight is not set on any instance
        # group, the cluster will default to equal weight for all groups: the cluster
        # will attempt to maintain an equal number of workers in each group within the
        # configured size bounds for each group. If weight is set for one group only,
        # the cluster will default to zero weight on the unset group. For example if
        # weight is set only on primary workers, the cluster will use primary workers
        # only and no secondary workers.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_instances = args[:max_instances] if args.key?(:max_instances)
          @min_instances = args[:min_instances] if args.key?(:min_instances)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # The config settings for Compute Engine resources in an instance group, such as
      # a master or worker group.
      class InstanceGroupConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Compute Engine accelerator configuration for these instances.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::DataprocV1::AcceleratorConfig>]
        attr_accessor :accelerators
      
        # Specifies the config of boot disk and attached disk options for a group of VM
        # instances.
        # Corresponds to the JSON property `diskConfig`
        # @return [Google::Apis::DataprocV1::DiskConfig]
        attr_accessor :disk_config
      
        # Optional. The Compute Engine image resource used for cluster instances.The URI
        # can represent an image or image family.Image examples: https://www.googleapis.
        # com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[
        # project_id]/global/images/[image-id] image-idImage family examples. Dataproc
        # will use the most recent image from the family: https://www.googleapis.com/
        # compute/v1/projects/[project_id]/global/images/family/[custom-image-family-
        # name] projects/[project_id]/global/images/family/[custom-image-family-name]If
        # the URI is unspecified, it will be inferred from SoftwareConfig.image_version
        # or the system default.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Instance flexibility Policy allowing a mixture of VM shapes and provisioning
        # models.
        # Corresponds to the JSON property `instanceFlexibilityPolicy`
        # @return [Google::Apis::DataprocV1::InstanceFlexibilityPolicy]
        attr_accessor :instance_flexibility_policy
      
        # Output only. The list of instance names. Dataproc derives the names from
        # cluster_name, num_instances, and the instance group.
        # Corresponds to the JSON property `instanceNames`
        # @return [Array<String>]
        attr_accessor :instance_names
      
        # Output only. List of references to Compute Engine instances.
        # Corresponds to the JSON property `instanceReferences`
        # @return [Array<Google::Apis::DataprocV1::InstanceReference>]
        attr_accessor :instance_references
      
        # Output only. Specifies that this instance group contains preemptible instances.
        # Corresponds to the JSON property `isPreemptible`
        # @return [Boolean]
        attr_accessor :is_preemptible
        alias_method :is_preemptible?, :is_preemptible
      
        # Optional. The Compute Engine machine type used for cluster instances.A full
        # URL, partial URI, or short name are valid. Examples: https://www.googleapis.
        # com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2
        # projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-
        # 2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https:
        # //cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#
        # using_auto_zone_placement) feature, you must use the short name of the machine
        # type resource, for example, n1-standard-2.
        # Corresponds to the JSON property `machineTypeUri`
        # @return [String]
        attr_accessor :machine_type_uri
      
        # Specifies the resources used to actively manage an instance group.
        # Corresponds to the JSON property `managedGroupConfig`
        # @return [Google::Apis::DataprocV1::ManagedGroupConfig]
        attr_accessor :managed_group_config
      
        # Optional. Specifies the minimum cpu platform for the Instance Group. See
        # Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/
        # concepts/compute/dataproc-min-cpu).
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # Optional. The minimum number of primary worker instances to create. If
        # min_num_instances is set, cluster creation will succeed if the number of
        # primary workers created is at least equal to the min_num_instances number.
        # Example: Cluster creation request with num_instances = 5 and min_num_instances
        # = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The
        # cluster is resized to 4 instances and placed in a RUNNING state. If 2
        # instances are created and 3 instances fail, the cluster in placed in an ERROR
        # state. The failed VMs are not deleted.
        # Corresponds to the JSON property `minNumInstances`
        # @return [Fixnum]
        attr_accessor :min_num_instances
      
        # Optional. The number of VM instances in the instance group. For HA cluster
        # master_config groups, must be set to 3. For standard cluster master_config
        # groups, must be set to 1.
        # Corresponds to the JSON property `numInstances`
        # @return [Fixnum]
        attr_accessor :num_instances
      
        # Optional. Specifies the preemptibility of the instance group.The default value
        # for master and worker groups is NON_PREEMPTIBLE. This default cannot be
        # changed.The default value for secondary instances is PREEMPTIBLE.
        # Corresponds to the JSON property `preemptibility`
        # @return [String]
        attr_accessor :preemptibility
      
        # Configuration to handle the startup of instances during cluster create and
        # update process.
        # Corresponds to the JSON property `startupConfig`
        # @return [Google::Apis::DataprocV1::StartupConfig]
        attr_accessor :startup_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @disk_config = args[:disk_config] if args.key?(:disk_config)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @instance_flexibility_policy = args[:instance_flexibility_policy] if args.key?(:instance_flexibility_policy)
          @instance_names = args[:instance_names] if args.key?(:instance_names)
          @instance_references = args[:instance_references] if args.key?(:instance_references)
          @is_preemptible = args[:is_preemptible] if args.key?(:is_preemptible)
          @machine_type_uri = args[:machine_type_uri] if args.key?(:machine_type_uri)
          @managed_group_config = args[:managed_group_config] if args.key?(:managed_group_config)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @min_num_instances = args[:min_num_instances] if args.key?(:min_num_instances)
          @num_instances = args[:num_instances] if args.key?(:num_instances)
          @preemptibility = args[:preemptibility] if args.key?(:preemptibility)
          @startup_config = args[:startup_config] if args.key?(:startup_config)
        end
      end
      
      # A reference to a Compute Engine instance.
      class InstanceReference
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the Compute Engine instance.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The user-friendly name of the Compute Engine instance.
        # Corresponds to the JSON property `instanceName`
        # @return [String]
        attr_accessor :instance_name
      
        # The public ECIES key used for sharing data with this instance.
        # Corresponds to the JSON property `publicEciesKey`
        # @return [String]
        attr_accessor :public_ecies_key
      
        # The public RSA key used for sharing data with this instance.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @instance_name = args[:instance_name] if args.key?(:instance_name)
          @public_ecies_key = args[:public_ecies_key] if args.key?(:public_ecies_key)
          @public_key = args[:public_key] if args.key?(:public_key)
        end
      end
      
      # Defines machines types and a rank to which the machines types belong.
      class InstanceSelection
        include Google::Apis::Core::Hashable
      
        # Optional. Full machine-type names, e.g. "n1-standard-16".
        # Corresponds to the JSON property `machineTypes`
        # @return [Array<String>]
        attr_accessor :machine_types
      
        # Optional. Preference of this instance selection. Lower number means higher
        # preference. Dataproc will first try to create a VM based on the machine-type
        # with priority rank and fallback to next rank based on availability. Machine
        # types and instance selections with the same priority have the same preference.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_types = args[:machine_types] if args.key?(:machine_types)
          @rank = args[:rank] if args.key?(:rank)
        end
      end
      
      # Defines a mapping from machine types to the number of VMs that are created
      # with each machine type.
      class InstanceSelectionResult
        include Google::Apis::Core::Hashable
      
        # Output only. Full machine-type names, e.g. "n1-standard-16".
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Output only. Number of VM provisioned with the machine_type.
        # Corresponds to the JSON property `vmCount`
        # @return [Fixnum]
        attr_accessor :vm_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @vm_count = args[:vm_count] if args.key?(:vm_count)
        end
      end
      
      # A request to instantiate a workflow template.
      class InstantiateWorkflowTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Map from parameter names to values that should be used for those
        # parameters. Values may not exceed 1000 characters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Optional. A tag that prevents multiple concurrent workflow instances with the
        # same tag from running. This mitigates risk of concurrent instances started due
        # to retries.It is recommended to always set this value to a UUID (https://en.
        # wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only
        # letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The
        # maximum length is 40 characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. The version of workflow template to instantiate. If specified, the
        # workflow will be instantiated only if the current version of the workflow
        # template has the supplied version.This option cannot be used to instantiate a
        # previous version of workflow template.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @request_id = args[:request_id] if args.key?(:request_id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive).The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval.If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval.If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # A Dataproc job resource.
      class Job
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the job is completed. If the value is false,
        # the job is still in progress. If true, the job is completed, and status.state
        # field will indicate if it was successful, failed, or cancelled.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # Output only. If present, the location of miscellaneous control files which can
        # be used as part of job setup and handling. If not present, control files might
        # be placed in the same location as driver_output_uri.
        # Corresponds to the JSON property `driverControlFilesUri`
        # @return [String]
        attr_accessor :driver_control_files_uri
      
        # Output only. A URI pointing to the location of the stdout of the job's driver
        # program.
        # Corresponds to the JSON property `driverOutputResourceUri`
        # @return [String]
        attr_accessor :driver_output_resource_uri
      
        # Driver scheduling configuration.
        # Corresponds to the JSON property `driverSchedulingConfig`
        # @return [Google::Apis::DataprocV1::DriverSchedulingConfig]
        attr_accessor :driver_scheduling_config
      
        # A Dataproc job for running Apache Flink applications on YARN.
        # Corresponds to the JSON property `flinkJob`
        # @return [Google::Apis::DataprocV1::FlinkJob]
        attr_accessor :flink_job
      
        # A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/
        # docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/
        # MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/
        # docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
        # Corresponds to the JSON property `hadoopJob`
        # @return [Google::Apis::DataprocV1::HadoopJob]
        attr_accessor :hadoop_job
      
        # A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on
        # YARN.
        # Corresponds to the JSON property `hiveJob`
        # @return [Google::Apis::DataprocV1::HiveJob]
        attr_accessor :hive_job
      
        # Output only. A UUID that uniquely identifies a job within the project over
        # time. This is in contrast to a user-settable reference.job_id that might be
        # reused over time.
        # Corresponds to the JSON property `jobUuid`
        # @return [String]
        attr_accessor :job_uuid
      
        # Optional. The labels to associate with this job. Label keys must contain 1 to
        # 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.
        # txt). Label values can be empty, but, if present, must contain 1 to 63
        # characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt)
        # . No more than 32 labels can be associated with a job.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on
        # YARN.
        # Corresponds to the JSON property `pigJob`
        # @return [Google::Apis::DataprocV1::PigJob]
        attr_accessor :pig_job
      
        # Dataproc job config.
        # Corresponds to the JSON property `placement`
        # @return [Google::Apis::DataprocV1::JobPlacement]
        attr_accessor :placement
      
        # A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT:
        # The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/
        # concepts/components/presto) must be enabled when the cluster is created to
        # submit a Presto job to the cluster.
        # Corresponds to the JSON property `prestoJob`
        # @return [Google::Apis::DataprocV1::PrestoJob]
        attr_accessor :presto_job
      
        # A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/
        # latest/api/python/index.html#pyspark-overview) applications on YARN.
        # Corresponds to the JSON property `pysparkJob`
        # @return [Google::Apis::DataprocV1::PySparkJob]
        attr_accessor :pyspark_job
      
        # Encapsulates the full scoping used to reference a job.
        # Corresponds to the JSON property `reference`
        # @return [Google::Apis::DataprocV1::JobReference]
        attr_accessor :reference
      
        # Job scheduling options.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::DataprocV1::JobScheduling]
        attr_accessor :scheduling
      
        # A Dataproc job for running Apache Spark (https://spark.apache.org/)
        # applications on YARN.
        # Corresponds to the JSON property `sparkJob`
        # @return [Google::Apis::DataprocV1::SparkJob]
        attr_accessor :spark_job
      
        # A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/
        # sparkr.html) applications on YARN.
        # Corresponds to the JSON property `sparkRJob`
        # @return [Google::Apis::DataprocV1::SparkRJob]
        attr_accessor :spark_r_job
      
        # A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/)
        # queries.
        # Corresponds to the JSON property `sparkSqlJob`
        # @return [Google::Apis::DataprocV1::SparkSqlJob]
        attr_accessor :spark_sql_job
      
        # Dataproc job status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::JobStatus]
        attr_accessor :status
      
        # Output only. The previous job status.
        # Corresponds to the JSON property `statusHistory`
        # @return [Array<Google::Apis::DataprocV1::JobStatus>]
        attr_accessor :status_history
      
        # A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The
        # Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/
        # concepts/components/trino) must be enabled when the cluster is created to
        # submit a Trino job to the cluster.
        # Corresponds to the JSON property `trinoJob`
        # @return [Google::Apis::DataprocV1::TrinoJob]
        attr_accessor :trino_job
      
        # Output only. The collection of YARN applications spun up by this job.Beta
        # Feature: This report is available for testing purposes only. It might be
        # changed before final release.
        # Corresponds to the JSON property `yarnApplications`
        # @return [Array<Google::Apis::DataprocV1::YarnApplication>]
        attr_accessor :yarn_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @driver_control_files_uri = args[:driver_control_files_uri] if args.key?(:driver_control_files_uri)
          @driver_output_resource_uri = args[:driver_output_resource_uri] if args.key?(:driver_output_resource_uri)
          @driver_scheduling_config = args[:driver_scheduling_config] if args.key?(:driver_scheduling_config)
          @flink_job = args[:flink_job] if args.key?(:flink_job)
          @hadoop_job = args[:hadoop_job] if args.key?(:hadoop_job)
          @hive_job = args[:hive_job] if args.key?(:hive_job)
          @job_uuid = args[:job_uuid] if args.key?(:job_uuid)
          @labels = args[:labels] if args.key?(:labels)
          @pig_job = args[:pig_job] if args.key?(:pig_job)
          @placement = args[:placement] if args.key?(:placement)
          @presto_job = args[:presto_job] if args.key?(:presto_job)
          @pyspark_job = args[:pyspark_job] if args.key?(:pyspark_job)
          @reference = args[:reference] if args.key?(:reference)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @spark_job = args[:spark_job] if args.key?(:spark_job)
          @spark_r_job = args[:spark_r_job] if args.key?(:spark_r_job)
          @spark_sql_job = args[:spark_sql_job] if args.key?(:spark_sql_job)
          @status = args[:status] if args.key?(:status)
          @status_history = args[:status_history] if args.key?(:status_history)
          @trino_job = args[:trino_job] if args.key?(:trino_job)
          @yarn_applications = args[:yarn_applications] if args.key?(:yarn_applications)
        end
      end
      
      # Data corresponding to a spark job.
      class JobData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `jobGroup`
        # @return [String]
        attr_accessor :job_group
      
        # 
        # Corresponds to the JSON property `jobId`
        # @return [Fixnum]
        attr_accessor :job_id
      
        # 
        # Corresponds to the JSON property `killTasksSummary`
        # @return [Hash<String,Fixnum>]
        attr_accessor :kill_tasks_summary
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `numActiveStages`
        # @return [Fixnum]
        attr_accessor :num_active_stages
      
        # 
        # Corresponds to the JSON property `numActiveTasks`
        # @return [Fixnum]
        attr_accessor :num_active_tasks
      
        # 
        # Corresponds to the JSON property `numCompletedIndices`
        # @return [Fixnum]
        attr_accessor :num_completed_indices
      
        # 
        # Corresponds to the JSON property `numCompletedStages`
        # @return [Fixnum]
        attr_accessor :num_completed_stages
      
        # 
        # Corresponds to the JSON property `numCompletedTasks`
        # @return [Fixnum]
        attr_accessor :num_completed_tasks
      
        # 
        # Corresponds to the JSON property `numFailedStages`
        # @return [Fixnum]
        attr_accessor :num_failed_stages
      
        # 
        # Corresponds to the JSON property `numFailedTasks`
        # @return [Fixnum]
        attr_accessor :num_failed_tasks
      
        # 
        # Corresponds to the JSON property `numKilledTasks`
        # @return [Fixnum]
        attr_accessor :num_killed_tasks
      
        # 
        # Corresponds to the JSON property `numSkippedStages`
        # @return [Fixnum]
        attr_accessor :num_skipped_stages
      
        # 
        # Corresponds to the JSON property `numSkippedTasks`
        # @return [Fixnum]
        attr_accessor :num_skipped_tasks
      
        # 
        # Corresponds to the JSON property `numTasks`
        # @return [Fixnum]
        attr_accessor :num_tasks
      
        # 
        # Corresponds to the JSON property `skippedStages`
        # @return [Array<Fixnum>]
        attr_accessor :skipped_stages
      
        # 
        # Corresponds to the JSON property `sqlExecutionId`
        # @return [Fixnum]
        attr_accessor :sql_execution_id
      
        # 
        # Corresponds to the JSON property `stageIds`
        # @return [Array<Fixnum>]
        attr_accessor :stage_ids
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @description = args[:description] if args.key?(:description)
          @job_group = args[:job_group] if args.key?(:job_group)
          @job_id = args[:job_id] if args.key?(:job_id)
          @kill_tasks_summary = args[:kill_tasks_summary] if args.key?(:kill_tasks_summary)
          @name = args[:name] if args.key?(:name)
          @num_active_stages = args[:num_active_stages] if args.key?(:num_active_stages)
          @num_active_tasks = args[:num_active_tasks] if args.key?(:num_active_tasks)
          @num_completed_indices = args[:num_completed_indices] if args.key?(:num_completed_indices)
          @num_completed_stages = args[:num_completed_stages] if args.key?(:num_completed_stages)
          @num_completed_tasks = args[:num_completed_tasks] if args.key?(:num_completed_tasks)
          @num_failed_stages = args[:num_failed_stages] if args.key?(:num_failed_stages)
          @num_failed_tasks = args[:num_failed_tasks] if args.key?(:num_failed_tasks)
          @num_killed_tasks = args[:num_killed_tasks] if args.key?(:num_killed_tasks)
          @num_skipped_stages = args[:num_skipped_stages] if args.key?(:num_skipped_stages)
          @num_skipped_tasks = args[:num_skipped_tasks] if args.key?(:num_skipped_tasks)
          @num_tasks = args[:num_tasks] if args.key?(:num_tasks)
          @skipped_stages = args[:skipped_stages] if args.key?(:skipped_stages)
          @sql_execution_id = args[:sql_execution_id] if args.key?(:sql_execution_id)
          @stage_ids = args[:stage_ids] if args.key?(:stage_ids)
          @status = args[:status] if args.key?(:status)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
        end
      end
      
      # Job Operation metadata.
      class JobMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The job id.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Output only. Operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Output only. Job submission time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Dataproc job status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::JobStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Dataproc job config.
      class JobPlacement
        include Google::Apis::Core::Hashable
      
        # Optional. Cluster labels to identify a cluster where the job will be submitted.
        # Corresponds to the JSON property `clusterLabels`
        # @return [Hash<String,String>]
        attr_accessor :cluster_labels
      
        # Required. The name of the cluster where the job will be submitted.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. A cluster UUID generated by the Dataproc service when the job is
        # submitted.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_labels = args[:cluster_labels] if args.key?(:cluster_labels)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
        end
      end
      
      # Encapsulates the full scoping used to reference a job.
      class JobReference
        include Google::Apis::Core::Hashable
      
        # Optional. The job ID, which must be unique within the project.The ID must
        # contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-)
        # . The maximum length is 100 characters.If not specified by the caller, the job
        # ID will be provided by the server.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Optional. The ID of the Google Cloud Platform project that the job belongs to.
        # If specified, must match the request project ID.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Job scheduling options.
      class JobScheduling
        include Google::Apis::Core::Hashable
      
        # Optional. Maximum number of times per hour a driver can be restarted as a
        # result of driver exiting with non-zero code before job is reported failed.A
        # job might be reported as thrashing if the driver exits with a non-zero code
        # four times within a 10-minute window.Maximum value is 10.Note: This
        # restartable job option is not supported in Dataproc workflow templates (https:/
        # /cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#
        # adding_jobs_to_a_template).
        # Corresponds to the JSON property `maxFailuresPerHour`
        # @return [Fixnum]
        attr_accessor :max_failures_per_hour
      
        # Optional. Maximum total number of times a driver can be restarted as a result
        # of the driver exiting with a non-zero code. After the maximum number is
        # reached, the job will be reported as failed.Maximum value is 240.Note:
        # Currently, this restartable job option is not supported in Dataproc workflow
        # templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-
        # workflows#adding_jobs_to_a_template).
        # Corresponds to the JSON property `maxFailuresTotal`
        # @return [Fixnum]
        attr_accessor :max_failures_total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_failures_per_hour = args[:max_failures_per_hour] if args.key?(:max_failures_per_hour)
          @max_failures_total = args[:max_failures_total] if args.key?(:max_failures_total)
        end
      end
      
      # Dataproc job status.
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. Job state details, such as an error description if the
        # state is ERROR.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Output only. A state message specifying the overall job state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when this state was entered.
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        # Output only. Additional state information, which includes status reported by
        # the agent.
        # Corresponds to the JSON property `substate`
        # @return [String]
        attr_accessor :substate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @state = args[:state] if args.key?(:state)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
          @substate = args[:substate] if args.key?(:substate)
        end
      end
      
      # Data related to Jobs page summary
      class JobsSummary
        include Google::Apis::Core::Hashable
      
        # Number of active jobs
        # Corresponds to the JSON property `activeJobs`
        # @return [Fixnum]
        attr_accessor :active_jobs
      
        # Spark Application Id
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # Attempts info
        # Corresponds to the JSON property `attempts`
        # @return [Array<Google::Apis::DataprocV1::ApplicationAttemptInfo>]
        attr_accessor :attempts
      
        # Number of completed jobs
        # Corresponds to the JSON property `completedJobs`
        # @return [Fixnum]
        attr_accessor :completed_jobs
      
        # Number of failed jobs
        # Corresponds to the JSON property `failedJobs`
        # @return [Fixnum]
        attr_accessor :failed_jobs
      
        # Spark Scheduling mode
        # Corresponds to the JSON property `schedulingMode`
        # @return [String]
        attr_accessor :scheduling_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_jobs = args[:active_jobs] if args.key?(:active_jobs)
          @application_id = args[:application_id] if args.key?(:application_id)
          @attempts = args[:attempts] if args.key?(:attempts)
          @completed_jobs = args[:completed_jobs] if args.key?(:completed_jobs)
          @failed_jobs = args[:failed_jobs] if args.key?(:failed_jobs)
          @scheduling_mode = args[:scheduling_mode] if args.key?(:scheduling_mode)
        end
      end
      
      # Jupyter configuration for an interactive session.
      class JupyterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Display name, shown in the Jupyter kernelspec card.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Kernel
        # Corresponds to the JSON property `kernel`
        # @return [String]
        attr_accessor :kernel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @kernel = args[:kernel] if args.key?(:kernel)
        end
      end
      
      # Specifies Kerberos related configuration.
      class KerberosConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The admin server (IP or hostname) for the remote trusted realm in a
        # cross realm trust relationship.
        # Corresponds to the JSON property `crossRealmTrustAdminServer`
        # @return [String]
        attr_accessor :cross_realm_trust_admin_server
      
        # Optional. The KDC (IP or hostname) for the remote trusted realm in a cross
        # realm trust relationship.
        # Corresponds to the JSON property `crossRealmTrustKdc`
        # @return [String]
        attr_accessor :cross_realm_trust_kdc
      
        # Optional. The remote realm the Dataproc on-cluster KDC will trust, should the
        # user enable cross realm trust.
        # Corresponds to the JSON property `crossRealmTrustRealm`
        # @return [String]
        attr_accessor :cross_realm_trust_realm
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the shared
        # password between the on-cluster Kerberos realm and the remote trusted realm,
        # in a cross realm trust relationship.
        # Corresponds to the JSON property `crossRealmTrustSharedPasswordUri`
        # @return [String]
        attr_accessor :cross_realm_trust_shared_password_uri
      
        # Optional. Flag to indicate whether to Kerberize the cluster (default: false).
        # Set this field to true to enable Kerberos on a cluster.
        # Corresponds to the JSON property `enableKerberos`
        # @return [Boolean]
        attr_accessor :enable_kerberos
        alias_method :enable_kerberos?, :enable_kerberos
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the master
        # key of the KDC database.
        # Corresponds to the JSON property `kdcDbKeyUri`
        # @return [String]
        attr_accessor :kdc_db_key_uri
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the
        # password to the user provided key. For the self-signed certificate, this
        # password is generated by Dataproc.
        # Corresponds to the JSON property `keyPasswordUri`
        # @return [String]
        attr_accessor :key_password_uri
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the
        # password to the user provided keystore. For the self-signed certificate, this
        # password is generated by Dataproc.
        # Corresponds to the JSON property `keystorePasswordUri`
        # @return [String]
        attr_accessor :keystore_password_uri
      
        # Optional. The Cloud Storage URI of the keystore file used for SSL encryption.
        # If not provided, Dataproc will provide a self-signed certificate.
        # Corresponds to the JSON property `keystoreUri`
        # @return [String]
        attr_accessor :keystore_uri
      
        # Optional. The URI of the KMS key used to encrypt sensitive files.
        # Corresponds to the JSON property `kmsKeyUri`
        # @return [String]
        attr_accessor :kms_key_uri
      
        # Optional. The name of the on-cluster Kerberos realm. If not specified, the
        # uppercased domain of hostnames will be the realm.
        # Corresponds to the JSON property `realm`
        # @return [String]
        attr_accessor :realm
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the root
        # principal password.
        # Corresponds to the JSON property `rootPrincipalPasswordUri`
        # @return [String]
        attr_accessor :root_principal_password_uri
      
        # Optional. The lifetime of the ticket granting ticket, in hours. If not
        # specified, or user specifies 0, then default value 10 will be used.
        # Corresponds to the JSON property `tgtLifetimeHours`
        # @return [Fixnum]
        attr_accessor :tgt_lifetime_hours
      
        # Optional. The Cloud Storage URI of a KMS encrypted file containing the
        # password to the user provided truststore. For the self-signed certificate,
        # this password is generated by Dataproc.
        # Corresponds to the JSON property `truststorePasswordUri`
        # @return [String]
        attr_accessor :truststore_password_uri
      
        # Optional. The Cloud Storage URI of the truststore file used for SSL encryption.
        # If not provided, Dataproc will provide a self-signed certificate.
        # Corresponds to the JSON property `truststoreUri`
        # @return [String]
        attr_accessor :truststore_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cross_realm_trust_admin_server = args[:cross_realm_trust_admin_server] if args.key?(:cross_realm_trust_admin_server)
          @cross_realm_trust_kdc = args[:cross_realm_trust_kdc] if args.key?(:cross_realm_trust_kdc)
          @cross_realm_trust_realm = args[:cross_realm_trust_realm] if args.key?(:cross_realm_trust_realm)
          @cross_realm_trust_shared_password_uri = args[:cross_realm_trust_shared_password_uri] if args.key?(:cross_realm_trust_shared_password_uri)
          @enable_kerberos = args[:enable_kerberos] if args.key?(:enable_kerberos)
          @kdc_db_key_uri = args[:kdc_db_key_uri] if args.key?(:kdc_db_key_uri)
          @key_password_uri = args[:key_password_uri] if args.key?(:key_password_uri)
          @keystore_password_uri = args[:keystore_password_uri] if args.key?(:keystore_password_uri)
          @keystore_uri = args[:keystore_uri] if args.key?(:keystore_uri)
          @kms_key_uri = args[:kms_key_uri] if args.key?(:kms_key_uri)
          @realm = args[:realm] if args.key?(:realm)
          @root_principal_password_uri = args[:root_principal_password_uri] if args.key?(:root_principal_password_uri)
          @tgt_lifetime_hours = args[:tgt_lifetime_hours] if args.key?(:tgt_lifetime_hours)
          @truststore_password_uri = args[:truststore_password_uri] if args.key?(:truststore_password_uri)
          @truststore_uri = args[:truststore_uri] if args.key?(:truststore_uri)
        end
      end
      
      # The configuration for running the Dataproc cluster on Kubernetes.
      class KubernetesClusterConfig
        include Google::Apis::Core::Hashable
      
        # The cluster's GKE config.
        # Corresponds to the JSON property `gkeClusterConfig`
        # @return [Google::Apis::DataprocV1::GkeClusterConfig]
        attr_accessor :gke_cluster_config
      
        # Optional. A namespace within the Kubernetes cluster to deploy into. If this
        # namespace does not exist, it is created. If it exists, Dataproc verifies that
        # another Dataproc VirtualCluster is not installed into it. If not specified,
        # the name of the Dataproc Cluster is used.
        # Corresponds to the JSON property `kubernetesNamespace`
        # @return [String]
        attr_accessor :kubernetes_namespace
      
        # The software configuration for this Dataproc cluster running on Kubernetes.
        # Corresponds to the JSON property `kubernetesSoftwareConfig`
        # @return [Google::Apis::DataprocV1::KubernetesSoftwareConfig]
        attr_accessor :kubernetes_software_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_cluster_config = args[:gke_cluster_config] if args.key?(:gke_cluster_config)
          @kubernetes_namespace = args[:kubernetes_namespace] if args.key?(:kubernetes_namespace)
          @kubernetes_software_config = args[:kubernetes_software_config] if args.key?(:kubernetes_software_config)
        end
      end
      
      # The software configuration for this Dataproc cluster running on Kubernetes.
      class KubernetesSoftwareConfig
        include Google::Apis::Core::Hashable
      
        # The components that should be installed in this Dataproc cluster. The key must
        # be a string from the KubernetesComponent enumeration. The value is the version
        # of the software to be installed. At least one entry must be specified.
        # Corresponds to the JSON property `componentVersion`
        # @return [Hash<String,String>]
        attr_accessor :component_version
      
        # The properties to set on daemon config files.Property keys are specified in
        # prefix:property format, for example spark:spark.kubernetes.container.image.
        # The following are supported prefixes and their mappings: spark: spark-defaults.
        # confFor more information, see Cluster properties (https://cloud.google.com/
        # dataproc/docs/concepts/cluster-properties).
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_version = args[:component_version] if args.key?(:component_version)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Specifies the cluster auto-delete schedule configuration.
      class LifecycleConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The time when cluster will be auto-deleted (see JSON representation
        # of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json))
        # .
        # Corresponds to the JSON property `autoDeleteTime`
        # @return [String]
        attr_accessor :auto_delete_time
      
        # Optional. The lifetime duration of cluster. The cluster will be auto-deleted
        # at the end of this period. Minimum value is 10 minutes; maximum value is 14
        # days (see JSON representation of Duration (https://developers.google.com/
        # protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `autoDeleteTtl`
        # @return [String]
        attr_accessor :auto_delete_ttl
      
        # Optional. The time when cluster will be auto-stopped (see JSON representation
        # of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json))
        # .
        # Corresponds to the JSON property `autoStopTime`
        # @return [String]
        attr_accessor :auto_stop_time
      
        # Optional. The lifetime duration of the cluster. The cluster will be auto-
        # stopped at the end of this period, calculated from the time of submission of
        # the create or update cluster request. Minimum value is 10 minutes; maximum
        # value is 14 days (see JSON representation of Duration (https://developers.
        # google.com/protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `autoStopTtl`
        # @return [String]
        attr_accessor :auto_stop_ttl
      
        # Optional. The duration to keep the cluster alive while idling (when no jobs
        # are running). Passing this threshold will cause the cluster to be deleted.
        # Minimum value is 5 minutes; maximum value is 14 days (see JSON representation
        # of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `idleDeleteTtl`
        # @return [String]
        attr_accessor :idle_delete_ttl
      
        # Output only. The time when cluster became idle (most recent job finished) and
        # became eligible for deletion due to idleness (see JSON representation of
        # Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `idleStartTime`
        # @return [String]
        attr_accessor :idle_start_time
      
        # Optional. The duration to keep the cluster started while idling (when no jobs
        # are running). Passing this threshold will cause the cluster to be stopped.
        # Minimum value is 5 minutes; maximum value is 14 days (see JSON representation
        # of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # Corresponds to the JSON property `idleStopTtl`
        # @return [String]
        attr_accessor :idle_stop_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_delete_time = args[:auto_delete_time] if args.key?(:auto_delete_time)
          @auto_delete_ttl = args[:auto_delete_ttl] if args.key?(:auto_delete_ttl)
          @auto_stop_time = args[:auto_stop_time] if args.key?(:auto_stop_time)
          @auto_stop_ttl = args[:auto_stop_ttl] if args.key?(:auto_stop_ttl)
          @idle_delete_ttl = args[:idle_delete_ttl] if args.key?(:idle_delete_ttl)
          @idle_start_time = args[:idle_start_time] if args.key?(:idle_start_time)
          @idle_stop_ttl = args[:idle_stop_ttl] if args.key?(:idle_stop_ttl)
        end
      end
      
      # A response to a request to list autoscaling policies in a project.
      class ListAutoscalingPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. This token is included in the response if there are more results
        # to fetch.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Autoscaling policies list.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::DataprocV1::AutoscalingPolicy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # A list of batch workloads.
      class ListBatchesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The batches from the specified collection.
        # Corresponds to the JSON property `batches`
        # @return [Array<Google::Apis::DataprocV1::Batch>]
        attr_accessor :batches
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. List of Batches that could not be included in the response.
        # Attempting to get one of these resources may indicate why it was not included
        # in the list response.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batches = args[:batches] if args.key?(:batches)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The list of all clusters in a project.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The clusters in the project.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::DataprocV1::Cluster>]
        attr_accessor :clusters
      
        # Output only. This token is included in the response if there are more results
        # to fetch. To fetch additional results, provide this value as the page_token in
        # a subsequent ListClustersRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A list of jobs in a project.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Jobs list.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DataprocV1::Job>]
        attr_accessor :jobs
      
        # Optional. This token is included in the response if there are more results to
        # fetch. To fetch additional results, provide this value as the page_token in a
        # subsequent ListJobsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. List of jobs with kms_key-encrypted parameters that could not be
        # decrypted. A response to a jobs.get request may indicate the reason for the
        # decryption failure for a specific job.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::DataprocV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets
        # ListOperationsRequest.return_partial_success and reads across collections e.g.
        # when attempting to list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A list of session templates.
      class ListSessionTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Session template list
        # Corresponds to the JSON property `sessionTemplates`
        # @return [Array<Google::Apis::DataprocV1::SessionTemplate>]
        attr_accessor :session_templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @session_templates = args[:session_templates] if args.key?(:session_templates)
        end
      end
      
      # A list of interactive sessions.
      class ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as page_token, to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The sessions from the specified collection.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::DataprocV1::Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # A response to a request to list workflow templates in a project.
      class ListWorkflowTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. This token is included in the response if there are more results
        # to fetch. To fetch additional results, provide this value as the page_token in
        # a subsequent ListWorkflowTemplatesRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. WorkflowTemplates list.
        # Corresponds to the JSON property `templates`
        # @return [Array<Google::Apis::DataprocV1::WorkflowTemplate>]
        attr_accessor :templates
      
        # Output only. List of workflow templates that could not be included in the
        # response. Attempting to get one of these resources may indicate why it was not
        # included in the list response.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @templates = args[:templates] if args.key?(:templates)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The runtime logging config of the job.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # The per-package log levels for the driver. This can include "root" package
        # name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO'
        # - 'org.apache = DEBUG'
        # Corresponds to the JSON property `driverLogLevels`
        # @return [Hash<String,String>]
        attr_accessor :driver_log_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @driver_log_levels = args[:driver_log_levels] if args.key?(:driver_log_levels)
        end
      end
      
      # Cluster that is managed by the workflow.
      class ManagedCluster
        include Google::Apis::Core::Hashable
      
        # Required. The cluster name prefix. A unique cluster name will be formed by
        # appending a random suffix.The name must contain only lower-case letters (a-z),
        # numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end
        # with hyphen. Must consist of between 2 and 35 characters.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # The cluster config.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DataprocV1::ClusterConfig]
        attr_accessor :config
      
        # Optional. The labels to associate with this cluster.Label keys must be between
        # 1 and 63 characters long, and must conform to the following PCRE regular
        # expression: \p`Ll`\p`Lo``0,62`Label values must be between 1 and 63 characters
        # long, and must conform to the following PCRE regular expression: \p`Ll`\p`Lo`\
        # p`N`_-`0,63`No more than 32 labels can be associated with a given cluster.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @config = args[:config] if args.key?(:config)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Specifies the resources used to actively manage an instance group.
      class ManagedGroupConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Instance Group Manager for this group.
        # Corresponds to the JSON property `instanceGroupManagerName`
        # @return [String]
        attr_accessor :instance_group_manager_name
      
        # Output only. The partial URI to the instance group manager for this group. E.g.
        # projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
        # Corresponds to the JSON property `instanceGroupManagerUri`
        # @return [String]
        attr_accessor :instance_group_manager_uri
      
        # Output only. The name of the Instance Template used for the Managed Instance
        # Group.
        # Corresponds to the JSON property `instanceTemplateName`
        # @return [String]
        attr_accessor :instance_template_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_group_manager_name = args[:instance_group_manager_name] if args.key?(:instance_group_manager_name)
          @instance_group_manager_uri = args[:instance_group_manager_uri] if args.key?(:instance_group_manager_uri)
          @instance_template_name = args[:instance_template_name] if args.key?(:instance_template_name)
        end
      end
      
      # 
      class MemoryMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `totalOffHeapStorageMemory`
        # @return [Fixnum]
        attr_accessor :total_off_heap_storage_memory
      
        # 
        # Corresponds to the JSON property `totalOnHeapStorageMemory`
        # @return [Fixnum]
        attr_accessor :total_on_heap_storage_memory
      
        # 
        # Corresponds to the JSON property `usedOffHeapStorageMemory`
        # @return [Fixnum]
        attr_accessor :used_off_heap_storage_memory
      
        # 
        # Corresponds to the JSON property `usedOnHeapStorageMemory`
        # @return [Fixnum]
        attr_accessor :used_on_heap_storage_memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_off_heap_storage_memory = args[:total_off_heap_storage_memory] if args.key?(:total_off_heap_storage_memory)
          @total_on_heap_storage_memory = args[:total_on_heap_storage_memory] if args.key?(:total_on_heap_storage_memory)
          @used_off_heap_storage_memory = args[:used_off_heap_storage_memory] if args.key?(:used_off_heap_storage_memory)
          @used_on_heap_storage_memory = args[:used_on_heap_storage_memory] if args.key?(:used_on_heap_storage_memory)
        end
      end
      
      # Specifies a Metastore configuration.
      class MetastoreConfig
        include Google::Apis::Core::Hashable
      
        # Required. Resource name of an existing Dataproc Metastore service.Example:
        # projects/[project_id]/locations/[dataproc_region]/services/[service-name]
        # Corresponds to the JSON property `dataprocMetastoreService`
        # @return [String]
        attr_accessor :dataproc_metastore_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataproc_metastore_service = args[:dataproc_metastore_service] if args.key?(:dataproc_metastore_service)
        end
      end
      
      # A Dataproc custom metric.
      class Metric
        include Google::Apis::Core::Hashable
      
        # Optional. Specify one or more Custom metrics (https://cloud.google.com/
        # dataproc/docs/guides/dataproc-metrics#custom_metrics) to collect for the
        # metric course (for the SPARK metric source (any Spark metric (https://spark.
        # apache.org/docs/latest/monitoring.html#metrics) can be specified).Provide
        # metrics in the following format: METRIC_SOURCE: INSTANCE:GROUP:METRIC Use
        # camelcase as appropriate.Examples: yarn:ResourceManager:QueueMetrics:
        # AppsCompleted spark:driver:DAGScheduler:job.allJobs sparkHistoryServer:JVM:
        # Memory:NonHeapMemoryUsage.committed hiveserver2:JVM:Memory:NonHeapMemoryUsage.
        # used Notes: Only the specified overridden metrics are collected for the metric
        # source. For example, if one or more spark:executive metrics are listed as
        # metric overrides, other SPARK metrics are not collected. The collection of the
        # metrics for other enabled custom metric sources is unaffected. For example, if
        # both SPARK and YARN metric sources are enabled, and overrides are provided for
        # Spark metrics only, all YARN metrics are collected.
        # Corresponds to the JSON property `metricOverrides`
        # @return [Array<String>]
        attr_accessor :metric_overrides
      
        # Required. A standard set of metrics is collected unless metricOverrides are
        # specified for the metric source (see Custom metrics (https://cloud.google.com/
        # dataproc/docs/guides/dataproc-metrics#custom_metrics) for more information).
        # Corresponds to the JSON property `metricSource`
        # @return [String]
        attr_accessor :metric_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_overrides = args[:metric_overrides] if args.key?(:metric_overrides)
          @metric_source = args[:metric_source] if args.key?(:metric_source)
        end
      end
      
      # Deprecated. Used only for the deprecated beta. A full, namespace-isolated
      # deployment target for an existing GKE cluster.
      class NamespacedGkeDeploymentTarget
        include Google::Apis::Core::Hashable
      
        # Optional. A namespace within the GKE cluster to deploy into.
        # Corresponds to the JSON property `clusterNamespace`
        # @return [String]
        attr_accessor :cluster_namespace
      
        # Optional. The target GKE cluster to deploy to. Format: 'projects/`project`/
        # locations/`location`/clusters/`cluster_id`'
        # Corresponds to the JSON property `targetGkeCluster`
        # @return [String]
        attr_accessor :target_gke_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_namespace = args[:cluster_namespace] if args.key?(:cluster_namespace)
          @target_gke_cluster = args[:target_gke_cluster] if args.key?(:target_gke_cluster)
        end
      end
      
      # 
      class NativeBuildInfoUiData
        include Google::Apis::Core::Hashable
      
        # Optional. Build class of Native.
        # Corresponds to the JSON property `buildClass`
        # @return [String]
        attr_accessor :build_class
      
        # Optional. Build related details.
        # Corresponds to the JSON property `buildInfo`
        # @return [Array<Google::Apis::DataprocV1::BuildInfo>]
        attr_accessor :build_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_class = args[:build_class] if args.key?(:build_class)
          @build_info = args[:build_info] if args.key?(:build_info)
        end
      end
      
      # Native SQL Execution Data
      class NativeSqlExecutionUiData
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the execution.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Execution ID of the Native SQL Execution.
        # Corresponds to the JSON property `executionId`
        # @return [Fixnum]
        attr_accessor :execution_id
      
        # Optional. Description of the fallback.
        # Corresponds to the JSON property `fallbackDescription`
        # @return [String]
        attr_accessor :fallback_description
      
        # Optional. Fallback node to reason.
        # Corresponds to the JSON property `fallbackNodeToReason`
        # @return [Array<Google::Apis::DataprocV1::FallbackReason>]
        attr_accessor :fallback_node_to_reason
      
        # Optional. Number of nodes fallen back to Spark.
        # Corresponds to the JSON property `numFallbackNodes`
        # @return [Fixnum]
        attr_accessor :num_fallback_nodes
      
        # Optional. Number of nodes in Native.
        # Corresponds to the JSON property `numNativeNodes`
        # @return [Fixnum]
        attr_accessor :num_native_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @fallback_description = args[:fallback_description] if args.key?(:fallback_description)
          @fallback_node_to_reason = args[:fallback_node_to_reason] if args.key?(:fallback_node_to_reason)
          @num_fallback_nodes = args[:num_fallback_nodes] if args.key?(:num_fallback_nodes)
          @num_native_nodes = args[:num_native_nodes] if args.key?(:num_native_nodes)
        end
      end
      
      # Dataproc Node Group. The Dataproc NodeGroup resource is not related to the
      # Dataproc NodeGroupAffinity resource.
      class NodeGroup
        include Google::Apis::Core::Hashable
      
        # Optional. Node group labels. Label keys must consist of from 1 to 63
        # characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).
        # Label values can be empty. If specified, they must consist of from 1 to 63
        # characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The
        # node group must have no more than 32 labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The Node group resource name (https://aip.dev/122).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The config settings for Compute Engine resources in an instance group, such as
        # a master or worker group.
        # Corresponds to the JSON property `nodeGroupConfig`
        # @return [Google::Apis::DataprocV1::InstanceGroupConfig]
        attr_accessor :node_group_config
      
        # Required. Node group roles.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @node_group_config = args[:node_group_config] if args.key?(:node_group_config)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Node Group Affinity for clusters using sole-tenant node groups. The Dataproc
      # NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.
      class NodeGroupAffinity
        include Google::Apis::Core::Hashable
      
        # Required. The URI of a sole-tenant node group resource (https://cloud.google.
        # com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be
        # created on.A full URL, partial URI, or node group name are valid. Examples:
        # https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/
        # nodeGroups/node-group-1 projects/[project_id]/zones/[zone]/nodeGroups/node-
        # group-1 node-group-1
        # Corresponds to the JSON property `nodeGroupUri`
        # @return [String]
        attr_accessor :node_group_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_group_uri = args[:node_group_uri] if args.key?(:node_group_uri)
        end
      end
      
      # Metadata describing the node group operation.
      class NodeGroupOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Cluster UUID associated with the node group operation.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Output only. Short description of operation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Labels associated with the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Node group ID for the operation.
        # Corresponds to the JSON property `nodeGroupId`
        # @return [String]
        attr_accessor :node_group_id
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The status of the operation.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::ClusterOperationStatus]
        attr_accessor :status
      
        # Output only. The previous operation status.
        # Corresponds to the JSON property `statusHistory`
        # @return [Array<Google::Apis::DataprocV1::ClusterOperationStatus>]
        attr_accessor :status_history
      
        # Output only. Errors encountered during operation execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @node_group_id = args[:node_group_id] if args.key?(:node_group_id)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @status = args[:status] if args.key?(:status)
          @status_history = args[:status_history] if args.key?(:status_history)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Specifies an executable to run on a fully configured node and a timeout period
      # for executable completion.
      class NodeInitializationAction
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage URI of executable file.
        # Corresponds to the JSON property `executableFile`
        # @return [String]
        attr_accessor :executable_file
      
        # Optional. Amount of time executable has to complete. Default is 10 minutes (
        # see JSON representation of Duration (https://developers.google.com/protocol-
        # buffers/docs/proto3#json)).Cluster creation fails with an explanatory error
        # message (the name of the executable that caused the error and the exceeded
        # timeout period) if the executable is not completed at end of the timeout
        # period.
        # Corresponds to the JSON property `executionTimeout`
        # @return [String]
        attr_accessor :execution_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executable_file = args[:executable_file] if args.key?(:executable_file)
          @execution_timeout = args[:execution_timeout] if args.key?(:execution_timeout)
        end
      end
      
      # indicating a list of workers of same type
      class NodePool
        include Google::Apis::Core::Hashable
      
        # Required. A unique id of the node pool. Primary and Secondary workers can be
        # specified using special reserved ids PRIMARY_WORKER_POOL and
        # SECONDARY_WORKER_POOL respectively. Aux node pools can be referenced using
        # corresponding pool id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of instances to be repaired. These instances must belong to specified
        # node pool.
        # Corresponds to the JSON property `instanceNames`
        # @return [Array<String>]
        attr_accessor :instance_names
      
        # Required. Repair action to take on specified resources of the node pool.
        # Corresponds to the JSON property `repairAction`
        # @return [String]
        attr_accessor :repair_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @instance_names = args[:instance_names] if args.key?(:instance_names)
          @repair_action = args[:repair_action] if args.key?(:repair_action)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DataprocV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as Delete, the response is google.protobuf.
        # Empty. If the original method is standard Get/Create/Update, the response
        # should be the resource. For other methods, the response should have the type
        # XxxResponse, where Xxx is the original method name. For example, if the
        # original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
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
      
      # A job executed by the workflow.
      class OrderedJob
        include Google::Apis::Core::Hashable
      
        # A Dataproc job for running Apache Flink applications on YARN.
        # Corresponds to the JSON property `flinkJob`
        # @return [Google::Apis::DataprocV1::FlinkJob]
        attr_accessor :flink_job
      
        # A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/
        # docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/
        # MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/
        # docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
        # Corresponds to the JSON property `hadoopJob`
        # @return [Google::Apis::DataprocV1::HadoopJob]
        attr_accessor :hadoop_job
      
        # A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on
        # YARN.
        # Corresponds to the JSON property `hiveJob`
        # @return [Google::Apis::DataprocV1::HiveJob]
        attr_accessor :hive_job
      
        # Optional. The labels to associate with this job.Label keys must be between 1
        # and 63 characters long, and must conform to the following regular expression: \
        # p`Ll`\p`Lo``0,62`Label values must be between 1 and 63 characters long, and
        # must conform to the following regular expression: \p`Ll`\p`Lo`\p`N`_-`0,63`No
        # more than 32 labels can be associated with a given job.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on
        # YARN.
        # Corresponds to the JSON property `pigJob`
        # @return [Google::Apis::DataprocV1::PigJob]
        attr_accessor :pig_job
      
        # Optional. The optional list of prerequisite job step_ids. If not specified,
        # the job will start at the beginning of workflow.
        # Corresponds to the JSON property `prerequisiteStepIds`
        # @return [Array<String>]
        attr_accessor :prerequisite_step_ids
      
        # A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT:
        # The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/
        # concepts/components/presto) must be enabled when the cluster is created to
        # submit a Presto job to the cluster.
        # Corresponds to the JSON property `prestoJob`
        # @return [Google::Apis::DataprocV1::PrestoJob]
        attr_accessor :presto_job
      
        # A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/
        # latest/api/python/index.html#pyspark-overview) applications on YARN.
        # Corresponds to the JSON property `pysparkJob`
        # @return [Google::Apis::DataprocV1::PySparkJob]
        attr_accessor :pyspark_job
      
        # Job scheduling options.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::DataprocV1::JobScheduling]
        attr_accessor :scheduling
      
        # A Dataproc job for running Apache Spark (https://spark.apache.org/)
        # applications on YARN.
        # Corresponds to the JSON property `sparkJob`
        # @return [Google::Apis::DataprocV1::SparkJob]
        attr_accessor :spark_job
      
        # A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/
        # sparkr.html) applications on YARN.
        # Corresponds to the JSON property `sparkRJob`
        # @return [Google::Apis::DataprocV1::SparkRJob]
        attr_accessor :spark_r_job
      
        # A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/)
        # queries.
        # Corresponds to the JSON property `sparkSqlJob`
        # @return [Google::Apis::DataprocV1::SparkSqlJob]
        attr_accessor :spark_sql_job
      
        # Required. The step id. The id must be unique among all jobs within the
        # template.The step id is used as prefix for job id, as job goog-dataproc-
        # workflow-step-id label, and in prerequisiteStepIds field from other steps.The
        # id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
        # hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of
        # between 3 and 50 characters.
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        # A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The
        # Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/
        # concepts/components/trino) must be enabled when the cluster is created to
        # submit a Trino job to the cluster.
        # Corresponds to the JSON property `trinoJob`
        # @return [Google::Apis::DataprocV1::TrinoJob]
        attr_accessor :trino_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flink_job = args[:flink_job] if args.key?(:flink_job)
          @hadoop_job = args[:hadoop_job] if args.key?(:hadoop_job)
          @hive_job = args[:hive_job] if args.key?(:hive_job)
          @labels = args[:labels] if args.key?(:labels)
          @pig_job = args[:pig_job] if args.key?(:pig_job)
          @prerequisite_step_ids = args[:prerequisite_step_ids] if args.key?(:prerequisite_step_ids)
          @presto_job = args[:presto_job] if args.key?(:presto_job)
          @pyspark_job = args[:pyspark_job] if args.key?(:pyspark_job)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @spark_job = args[:spark_job] if args.key?(:spark_job)
          @spark_r_job = args[:spark_r_job] if args.key?(:spark_r_job)
          @spark_sql_job = args[:spark_sql_job] if args.key?(:spark_sql_job)
          @step_id = args[:step_id] if args.key?(:step_id)
          @trino_job = args[:trino_job] if args.key?(:trino_job)
        end
      end
      
      # Metrics about the data written by the task.
      class OutputMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesWritten`
        # @return [Fixnum]
        attr_accessor :bytes_written
      
        # 
        # Corresponds to the JSON property `recordsWritten`
        # @return [Fixnum]
        attr_accessor :records_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_written = args[:bytes_written] if args.key?(:bytes_written)
          @records_written = args[:records_written] if args.key?(:records_written)
        end
      end
      
      # 
      class OutputQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `bytesWritten`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :bytes_written
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `recordsWritten`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :records_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_written = args[:bytes_written] if args.key?(:bytes_written)
          @records_written = args[:records_written] if args.key?(:records_written)
        end
      end
      
      # Configuration for parameter validation.
      class ParameterValidation
        include Google::Apis::Core::Hashable
      
        # Validation based on regular expressions.
        # Corresponds to the JSON property `regex`
        # @return [Google::Apis::DataprocV1::RegexValidation]
        attr_accessor :regex
      
        # Validation based on a list of allowed values.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::DataprocV1::ValueValidation]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regex = args[:regex] if args.key?(:regex)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Auxiliary services configuration for a workload.
      class PeripheralsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of an existing Dataproc Metastore service.Example:
        # projects/[project_id]/locations/[region]/services/[service_id]
        # Corresponds to the JSON property `metastoreService`
        # @return [String]
        attr_accessor :metastore_service
      
        # Spark History Server configuration for the workload.
        # Corresponds to the JSON property `sparkHistoryServerConfig`
        # @return [Google::Apis::DataprocV1::SparkHistoryServerConfig]
        attr_accessor :spark_history_server_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metastore_service = args[:metastore_service] if args.key?(:metastore_service)
          @spark_history_server_config = args[:spark_history_server_config] if args.key?(:spark_history_server_config)
        end
      end
      
      # A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on
      # YARN.
      class PigJob
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to continue executing queries if a query fails. The default
        # value is false. Setting to true can be useful when executing independent
        # parallel queries.
        # Corresponds to the JSON property `continueOnFailure`
        # @return [Boolean]
        attr_accessor :continue_on_failure
        alias_method :continue_on_failure?, :continue_on_failure
      
        # Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and
        # Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Optional. A mapping of property names to values, used to configure Pig.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/
        # pig/conf/pig.properties, and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The HCFS URI of the script that contains the Pig queries.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # A list of queries to run on a cluster.
        # Corresponds to the JSON property `queryList`
        # @return [Google::Apis::DataprocV1::QueryList]
        attr_accessor :query_list
      
        # Optional. Mapping of query variable names to values (equivalent to the Pig
        # command: name=[value]).
        # Corresponds to the JSON property `scriptVariables`
        # @return [Hash<String,String>]
        attr_accessor :script_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_failure = args[:continue_on_failure] if args.key?(:continue_on_failure)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @properties = args[:properties] if args.key?(:properties)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_list = args[:query_list] if args.key?(:query_list)
          @script_variables = args[:script_variables] if args.key?(:script_variables)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.A Policy is a collection of bindings. A
      # binding binds one or more members, or principals, to a single role. Principals
      # can be user accounts, service accounts, Google groups, and domains (such as G
      # Suite). A role is a named list of permissions; each role can be an IAM
      # predefined role or a user-created custom role.For some types of Google Cloud
      # resources, a binding can also specify a condition, which is a logical
      # expression that allows access to a resource only if the expression evaluates
      # to true. A condition can add constraints based on attributes of the request,
      # the resource, or both. To learn which resources support conditions in their
      # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
      # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
      # - user:mike@example.com - group:admins@example.com - domain:google.com -
      # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
      # description of IAM and its features, see the IAM documentation (https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of members, or principals, with a role. Optionally, may
        # specify a condition that determines how and when the bindings are applied.
        # Each of the bindings must contain at least one principal.The bindings in a
        # Policy can refer to up to 1,500 principals; up to 250 of these principals can
        # be Google groups. Each occurrence of a principal counts towards these limits.
        # For example, if the bindings grant 50 different roles to user:alice@example.
        # com, and not to any other principal, then you can add another 1,450 principals
        # to the bindings in the Policy.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DataprocV1::Binding>]
        attr_accessor :bindings
      
        # etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the etag in the read-modify-write cycle to
        # perform policy updates in order to avoid race conditions: An etag is returned
        # in the response to getIamPolicy, and systems are expected to put that etag in
        # the request to setIamPolicy to ensure that their change will be applied to the
        # same version of the policy.Important: If you use IAM Conditions, you must
        # include the etag field whenever you call setIamPolicy. If you omit this field,
        # then IAM allows you to overwrite a version 3 policy with a version 1 policy,
        # and all of the conditions in the version 3 policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that
        # specify an invalid value are rejected.Any operation that affects conditional
        # role bindings must specify version 3. This requirement applies to the
        # following operations: Getting a policy that includes a conditional role
        # binding Adding a conditional role binding to a policy Changing a conditional
        # role binding in a policy Removing any role binding, with or without a
        # condition, from a policy that includes conditionsImportant: If you use IAM
        # Conditions, you must include the etag field whenever you call setIamPolicy. If
        # you omit this field, then IAM allows you to overwrite a version 3 policy with
        # a version 1 policy, and all of the conditions in the version 3 policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.To learn which resources
        # support conditions in their IAM policies, see the IAM documentation (https://
        # cloud.google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Pool Data
      class PoolData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `stageIds`
        # @return [Array<Fixnum>]
        attr_accessor :stage_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @stage_ids = args[:stage_ids] if args.key?(:stage_ids)
        end
      end
      
      # A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT:
      # The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/
      # concepts/components/presto) must be enabled when the cluster is created to
      # submit a Presto job to the cluster.
      class PrestoJob
        include Google::Apis::Core::Hashable
      
        # Optional. Presto client tags to attach to this query
        # Corresponds to the JSON property `clientTags`
        # @return [Array<String>]
        attr_accessor :client_tags
      
        # Optional. Whether to continue executing queries if a query fails. The default
        # value is false. Setting to true can be useful when executing independent
        # parallel queries.
        # Corresponds to the JSON property `continueOnFailure`
        # @return [Boolean]
        attr_accessor :continue_on_failure
        alias_method :continue_on_failure?, :continue_on_failure
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Optional. The format in which query output will be displayed. See the Presto
        # documentation for supported output formats
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Optional. A mapping of property names to values. Used to set Presto session
        # properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent
        # to using the --session flag in the Presto CLI
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The HCFS URI of the script that contains SQL queries.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # A list of queries to run on a cluster.
        # Corresponds to the JSON property `queryList`
        # @return [Google::Apis::DataprocV1::QueryList]
        attr_accessor :query_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_tags = args[:client_tags] if args.key?(:client_tags)
          @continue_on_failure = args[:continue_on_failure] if args.key?(:continue_on_failure)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @output_format = args[:output_format] if args.key?(:output_format)
          @properties = args[:properties] if args.key?(:properties)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_list = args[:query_list] if args.key?(:query_list)
        end
      end
      
      # Process Summary
      class ProcessSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addTime`
        # @return [String]
        attr_accessor :add_time
      
        # 
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        # 
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # 
        # Corresponds to the JSON property `processId`
        # @return [String]
        attr_accessor :process_id
      
        # 
        # Corresponds to the JSON property `processLogs`
        # @return [Hash<String,String>]
        attr_accessor :process_logs
      
        # 
        # Corresponds to the JSON property `removeTime`
        # @return [String]
        attr_accessor :remove_time
      
        # 
        # Corresponds to the JSON property `totalCores`
        # @return [Fixnum]
        attr_accessor :total_cores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_time = args[:add_time] if args.key?(:add_time)
          @host_port = args[:host_port] if args.key?(:host_port)
          @is_active = args[:is_active] if args.key?(:is_active)
          @process_id = args[:process_id] if args.key?(:process_id)
          @process_logs = args[:process_logs] if args.key?(:process_logs)
          @remove_time = args[:remove_time] if args.key?(:remove_time)
          @total_cores = args[:total_cores] if args.key?(:total_cores)
        end
      end
      
      # Properties of the workload organized by origin.
      class PropertiesInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Properties set by autotuning engine.
        # Corresponds to the JSON property `autotuningProperties`
        # @return [Hash<String,Google::Apis::DataprocV1::ValueInfo>]
        attr_accessor :autotuning_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autotuning_properties = args[:autotuning_properties] if args.key?(:autotuning_properties)
        end
      end
      
      # Defines how Dataproc should create VMs with a mixture of provisioning models.
      class ProvisioningModelMix
        include Google::Apis::Core::Hashable
      
        # Optional. The base capacity that will always use Standard VMs to avoid risk of
        # more preemption than the minimum capacity you need. Dataproc will create only
        # standard VMs until it reaches standard_capacity_base, then it will start using
        # standard_capacity_percent_above_base to mix Spot with Standard VMs. eg. If 15
        # instances are requested and standard_capacity_base is 5, Dataproc will create
        # 5 standard VMs and then start mixing spot and standard VMs for remaining 10
        # instances.
        # Corresponds to the JSON property `standardCapacityBase`
        # @return [Fixnum]
        attr_accessor :standard_capacity_base
      
        # Optional. The percentage of target capacity that should use Standard VM. The
        # remaining percentage will use Spot VMs. The percentage applies only to the
        # capacity above standard_capacity_base. eg. If 15 instances are requested and
        # standard_capacity_base is 5 and standard_capacity_percent_above_base is 30,
        # Dataproc will create 5 standard VMs and then start mixing spot and standard
        # VMs for remaining 10 instances. The mix will be 30% standard and 70% spot.
        # Corresponds to the JSON property `standardCapacityPercentAboveBase`
        # @return [Fixnum]
        attr_accessor :standard_capacity_percent_above_base
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard_capacity_base = args[:standard_capacity_base] if args.key?(:standard_capacity_base)
          @standard_capacity_percent_above_base = args[:standard_capacity_percent_above_base] if args.key?(:standard_capacity_percent_above_base)
        end
      end
      
      # Configuration for PyPi repository
      class PyPiRepositoryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. PyPi repository address
        # Corresponds to the JSON property `pypiRepository`
        # @return [String]
        attr_accessor :pypi_repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pypi_repository = args[:pypi_repository] if args.key?(:pypi_repository)
        end
      end
      
      # A configuration for running an Apache PySpark (https://spark.apache.org/docs/
      # latest/api/python/getting_started/quickstart.html) batch workload.
      class PySparkBatch
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments that
        # can be set as batch properties, such as --conf, since a collision can occur
        # that causes an incorrect batch submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Optional. HCFS URIs of jar files to add to the classpath of the Spark driver
        # and tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # Required. The HCFS URI of the main Python file to use as the Spark driver.
        # Must be a .py file.
        # Corresponds to the JSON property `mainPythonFileUri`
        # @return [String]
        attr_accessor :main_python_file_uri
      
        # Optional. HCFS file URIs of Python files to pass to the PySpark framework.
        # Supported file types: .py, .egg, and .zip.
        # Corresponds to the JSON property `pythonFileUris`
        # @return [Array<String>]
        attr_accessor :python_file_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @main_python_file_uri = args[:main_python_file_uri] if args.key?(:main_python_file_uri)
          @python_file_uris = args[:python_file_uris] if args.key?(:python_file_uris)
        end
      end
      
      # A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/
      # latest/api/python/index.html#pyspark-overview) applications on YARN.
      class PySparkJob
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.Note:
        # Spark applications must be deployed in cluster mode (https://spark.apache.org/
        # docs/latest/cluster-overview.html) for correct environment propagation.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments, such
        # as --conf, that can be set as job properties, since a collision may occur that
        # causes an incorrect job submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor. Useful for naively parallel tasks.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver
        # and tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Required. The HCFS URI of the main Python file to use as the driver. Must be a
        # .py file.
        # Corresponds to the JSON property `mainPythonFileUri`
        # @return [String]
        attr_accessor :main_python_file_uri
      
        # Optional. A mapping of property names to values, used to configure PySpark.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf
        # and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Optional. HCFS file URIs of Python files to pass to the PySpark framework.
        # Supported file types: .py, .egg, and .zip.
        # Corresponds to the JSON property `pythonFileUris`
        # @return [Array<String>]
        attr_accessor :python_file_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @main_python_file_uri = args[:main_python_file_uri] if args.key?(:main_python_file_uri)
          @properties = args[:properties] if args.key?(:properties)
          @python_file_uris = args[:python_file_uris] if args.key?(:python_file_uris)
        end
      end
      
      # Quantile metrics data related to Tasks. Units can be seconds, bytes,
      # milliseconds, etc depending on the message type.
      class Quantiles
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `maximum`
        # @return [Fixnum]
        attr_accessor :maximum
      
        # 
        # Corresponds to the JSON property `minimum`
        # @return [Fixnum]
        attr_accessor :minimum
      
        # 
        # Corresponds to the JSON property `percentile25`
        # @return [Fixnum]
        attr_accessor :percentile25
      
        # 
        # Corresponds to the JSON property `percentile50`
        # @return [Fixnum]
        attr_accessor :percentile50
      
        # 
        # Corresponds to the JSON property `percentile75`
        # @return [Fixnum]
        attr_accessor :percentile75
      
        # 
        # Corresponds to the JSON property `sum`
        # @return [Fixnum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
          @percentile25 = args[:percentile25] if args.key?(:percentile25)
          @percentile50 = args[:percentile50] if args.key?(:percentile50)
          @percentile75 = args[:percentile75] if args.key?(:percentile75)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # A list of queries to run on a cluster.
      class QueryList
        include Google::Apis::Core::Hashable
      
        # Required. The queries to execute. You do not need to end a query expression
        # with a semicolon. Multiple queries can be specified in one string by
        # separating each with a semicolon. Here is an example of a Dataproc API snippet
        # that uses a QueryList to specify a HiveJob: "hiveJob": ` "queryList": ` "
        # queries": [ "query1", "query2", "query3;query4", ] ` `
        # Corresponds to the JSON property `queries`
        # @return [Array<String>]
        attr_accessor :queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @queries = args[:queries] if args.key?(:queries)
        end
      end
      
      # Details about RDD usage.
      class RddDataDistribution
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # 
        # Corresponds to the JSON property `diskUsed`
        # @return [Fixnum]
        attr_accessor :disk_used
      
        # 
        # Corresponds to the JSON property `memoryRemaining`
        # @return [Fixnum]
        attr_accessor :memory_remaining
      
        # 
        # Corresponds to the JSON property `memoryUsed`
        # @return [Fixnum]
        attr_accessor :memory_used
      
        # 
        # Corresponds to the JSON property `offHeapMemoryRemaining`
        # @return [Fixnum]
        attr_accessor :off_heap_memory_remaining
      
        # 
        # Corresponds to the JSON property `offHeapMemoryUsed`
        # @return [Fixnum]
        attr_accessor :off_heap_memory_used
      
        # 
        # Corresponds to the JSON property `onHeapMemoryRemaining`
        # @return [Fixnum]
        attr_accessor :on_heap_memory_remaining
      
        # 
        # Corresponds to the JSON property `onHeapMemoryUsed`
        # @return [Fixnum]
        attr_accessor :on_heap_memory_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @disk_used = args[:disk_used] if args.key?(:disk_used)
          @memory_remaining = args[:memory_remaining] if args.key?(:memory_remaining)
          @memory_used = args[:memory_used] if args.key?(:memory_used)
          @off_heap_memory_remaining = args[:off_heap_memory_remaining] if args.key?(:off_heap_memory_remaining)
          @off_heap_memory_used = args[:off_heap_memory_used] if args.key?(:off_heap_memory_used)
          @on_heap_memory_remaining = args[:on_heap_memory_remaining] if args.key?(:on_heap_memory_remaining)
          @on_heap_memory_used = args[:on_heap_memory_used] if args.key?(:on_heap_memory_used)
        end
      end
      
      # A grouping of nodes representing higher level constructs (stage, job etc.).
      class RddOperationCluster
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `childClusters`
        # @return [Array<Google::Apis::DataprocV1::RddOperationCluster>]
        attr_accessor :child_clusters
      
        # 
        # Corresponds to the JSON property `childNodes`
        # @return [Array<Google::Apis::DataprocV1::RddOperationNode>]
        attr_accessor :child_nodes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `rddClusterId`
        # @return [String]
        attr_accessor :rdd_cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_clusters = args[:child_clusters] if args.key?(:child_clusters)
          @child_nodes = args[:child_nodes] if args.key?(:child_nodes)
          @name = args[:name] if args.key?(:name)
          @rdd_cluster_id = args[:rdd_cluster_id] if args.key?(:rdd_cluster_id)
        end
      end
      
      # A directed edge representing dependency between two RDDs.
      class RddOperationEdge
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fromId`
        # @return [Fixnum]
        attr_accessor :from_id
      
        # 
        # Corresponds to the JSON property `toId`
        # @return [Fixnum]
        attr_accessor :to_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_id = args[:from_id] if args.key?(:from_id)
          @to_id = args[:to_id] if args.key?(:to_id)
        end
      end
      
      # Graph representing RDD dependencies. Consists of edges and a root cluster.
      class RddOperationGraph
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `edges`
        # @return [Array<Google::Apis::DataprocV1::RddOperationEdge>]
        attr_accessor :edges
      
        # 
        # Corresponds to the JSON property `incomingEdges`
        # @return [Array<Google::Apis::DataprocV1::RddOperationEdge>]
        attr_accessor :incoming_edges
      
        # 
        # Corresponds to the JSON property `outgoingEdges`
        # @return [Array<Google::Apis::DataprocV1::RddOperationEdge>]
        attr_accessor :outgoing_edges
      
        # A grouping of nodes representing higher level constructs (stage, job etc.).
        # Corresponds to the JSON property `rootCluster`
        # @return [Google::Apis::DataprocV1::RddOperationCluster]
        attr_accessor :root_cluster
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edges = args[:edges] if args.key?(:edges)
          @incoming_edges = args[:incoming_edges] if args.key?(:incoming_edges)
          @outgoing_edges = args[:outgoing_edges] if args.key?(:outgoing_edges)
          @root_cluster = args[:root_cluster] if args.key?(:root_cluster)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # A node in the RDD operation graph. Corresponds to a single RDD.
      class RddOperationNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `barrier`
        # @return [Boolean]
        attr_accessor :barrier
        alias_method :barrier?, :barrier
      
        # 
        # Corresponds to the JSON property `cached`
        # @return [Boolean]
        attr_accessor :cached
        alias_method :cached?, :cached
      
        # 
        # Corresponds to the JSON property `callsite`
        # @return [String]
        attr_accessor :callsite
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nodeId`
        # @return [Fixnum]
        attr_accessor :node_id
      
        # 
        # Corresponds to the JSON property `outputDeterministicLevel`
        # @return [String]
        attr_accessor :output_deterministic_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barrier = args[:barrier] if args.key?(:barrier)
          @cached = args[:cached] if args.key?(:cached)
          @callsite = args[:callsite] if args.key?(:callsite)
          @name = args[:name] if args.key?(:name)
          @node_id = args[:node_id] if args.key?(:node_id)
          @output_deterministic_level = args[:output_deterministic_level] if args.key?(:output_deterministic_level)
        end
      end
      
      # Information about RDD partitions.
      class RddPartitionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `blockName`
        # @return [String]
        attr_accessor :block_name
      
        # 
        # Corresponds to the JSON property `diskUsed`
        # @return [Fixnum]
        attr_accessor :disk_used
      
        # 
        # Corresponds to the JSON property `executors`
        # @return [Array<String>]
        attr_accessor :executors
      
        # 
        # Corresponds to the JSON property `memoryUsed`
        # @return [Fixnum]
        attr_accessor :memory_used
      
        # 
        # Corresponds to the JSON property `storageLevel`
        # @return [String]
        attr_accessor :storage_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_name = args[:block_name] if args.key?(:block_name)
          @disk_used = args[:disk_used] if args.key?(:disk_used)
          @executors = args[:executors] if args.key?(:executors)
          @memory_used = args[:memory_used] if args.key?(:memory_used)
          @storage_level = args[:storage_level] if args.key?(:storage_level)
        end
      end
      
      # Overall data about RDD storage.
      class RddStorageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataDistribution`
        # @return [Array<Google::Apis::DataprocV1::RddDataDistribution>]
        attr_accessor :data_distribution
      
        # 
        # Corresponds to the JSON property `diskUsed`
        # @return [Fixnum]
        attr_accessor :disk_used
      
        # 
        # Corresponds to the JSON property `memoryUsed`
        # @return [Fixnum]
        attr_accessor :memory_used
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `numCachedPartitions`
        # @return [Fixnum]
        attr_accessor :num_cached_partitions
      
        # 
        # Corresponds to the JSON property `numPartitions`
        # @return [Fixnum]
        attr_accessor :num_partitions
      
        # 
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::DataprocV1::RddPartitionInfo>]
        attr_accessor :partitions
      
        # 
        # Corresponds to the JSON property `rddStorageId`
        # @return [Fixnum]
        attr_accessor :rdd_storage_id
      
        # 
        # Corresponds to the JSON property `storageLevel`
        # @return [String]
        attr_accessor :storage_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_distribution = args[:data_distribution] if args.key?(:data_distribution)
          @disk_used = args[:disk_used] if args.key?(:disk_used)
          @memory_used = args[:memory_used] if args.key?(:memory_used)
          @name = args[:name] if args.key?(:name)
          @num_cached_partitions = args[:num_cached_partitions] if args.key?(:num_cached_partitions)
          @num_partitions = args[:num_partitions] if args.key?(:num_partitions)
          @partitions = args[:partitions] if args.key?(:partitions)
          @rdd_storage_id = args[:rdd_storage_id] if args.key?(:rdd_storage_id)
          @storage_level = args[:storage_level] if args.key?(:storage_level)
        end
      end
      
      # Validation based on regular expressions.
      class RegexValidation
        include Google::Apis::Core::Hashable
      
        # Required. RE2 regular expressions used to validate the parameter's value. The
        # value must match the regex in its entirety (substring matches are not
        # sufficient).
        # Corresponds to the JSON property `regexes`
        # @return [Array<String>]
        attr_accessor :regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regexes = args[:regexes] if args.key?(:regexes)
        end
      end
      
      # A request to repair a cluster.
      class RepairClusterRequest
        include Google::Apis::Core::Hashable
      
        # Cluster to be repaired
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::DataprocV1::ClusterToRepair]
        attr_accessor :cluster
      
        # Optional. Specifying the cluster_uuid means the RPC will fail (with error
        # NOT_FOUND) if a cluster with the specified UUID does not exist.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Optional. Whether the request is submitted by Dataproc super user. If true,
        # IAM will check 'dataproc.clusters.repair' permission instead of 'dataproc.
        # clusters.update' permission. This is to give Dataproc superuser the ability to
        # repair clusters without granting the overly broad update permission.
        # Corresponds to the JSON property `dataprocSuperUser`
        # @return [Boolean]
        attr_accessor :dataproc_super_user
        alias_method :dataproc_super_user?, :dataproc_super_user
      
        # Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning
        # facilitates the removal of cluster nodes without interrupting jobs in progress.
        # The timeout specifies the amount of time to wait for jobs finish before
        # forcefully removing nodes. The default timeout is 0 for forceful
        # decommissioning, and the maximum timeout period is 1 day. (see JSON Mapping—
        # Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
        # graceful_decommission_timeout is supported in Dataproc image versions 1.2+.
        # Corresponds to the JSON property `gracefulDecommissionTimeout`
        # @return [String]
        attr_accessor :graceful_decommission_timeout
      
        # Optional. Node pools and corresponding repair action to be taken. All node
        # pools should be unique in this request. i.e. Multiple entries for the same
        # node pool id are not allowed.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::DataprocV1::NodePool>]
        attr_accessor :node_pools
      
        # Optional. operation id of the parent operation sending the repair request
        # Corresponds to the JSON property `parentOperationId`
        # @return [String]
        attr_accessor :parent_operation_id
      
        # Optional. A unique ID used to identify the request. If the server receives two
        # RepairClusterRequests with the same ID, the second request is ignored, and the
        # first google.longrunning.Operation created and stored in the backend is
        # returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/
        # wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z)
        # , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @dataproc_super_user = args[:dataproc_super_user] if args.key?(:dataproc_super_user)
          @graceful_decommission_timeout = args[:graceful_decommission_timeout] if args.key?(:graceful_decommission_timeout)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @parent_operation_id = args[:parent_operation_id] if args.key?(:parent_operation_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class RepairNodeGroupRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of instances to be repaired. These instances must belong to
        # specified node pool.
        # Corresponds to the JSON property `instanceNames`
        # @return [Array<String>]
        attr_accessor :instance_names
      
        # Required. Repair action to take on specified resources of the node pool.
        # Corresponds to the JSON property `repairAction`
        # @return [String]
        attr_accessor :repair_action
      
        # Optional. A unique ID used to identify the request. If the server receives two
        # RepairNodeGroupRequest with the same ID, the second request is ignored and the
        # first google.longrunning.Operation created and stored in the backend is
        # returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/
        # wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z)
        # , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_names = args[:instance_names] if args.key?(:instance_names)
          @repair_action = args[:repair_action] if args.key?(:repair_action)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Configuration for dependency repositories
      class RepositoryConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for PyPi repository
        # Corresponds to the JSON property `pypiRepositoryConfig`
        # @return [Google::Apis::DataprocV1::PyPiRepositoryConfig]
        attr_accessor :pypi_repository_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pypi_repository_config = args[:pypi_repository_config] if args.key?(:pypi_repository_config)
        end
      end
      
      # Reservation Affinity for consuming Zonal reservation.
      class ReservationAffinity
        include Google::Apis::Core::Hashable
      
        # Optional. Type of reservation to consume
        # Corresponds to the JSON property `consumeReservationType`
        # @return [String]
        attr_accessor :consume_reservation_type
      
        # Optional. Corresponds to the label key of reservation resource.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Corresponds to the label values of reservation resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consume_reservation_type = args[:consume_reservation_type] if args.key?(:consume_reservation_type)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A request to resize a node group.
      class ResizeNodeGroupRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning (
        # https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/scaling-
        # clusters#graceful_decommissioning) allows the removal of nodes from the
        # Compute Engine node group without interrupting jobs in progress. This timeout
        # specifies how long to wait for jobs in progress to finish before forcefully
        # removing nodes (and potentially interrupting jobs). Default timeout is 0 (for
        # forceful decommission), and the maximum allowed timeout is 1 day. (see JSON
        # representation of Duration (https://developers.google.com/protocol-buffers/
        # docs/proto3#json)).Only supported on Dataproc image versions 1.2 and higher.
        # Corresponds to the JSON property `gracefulDecommissionTimeout`
        # @return [String]
        attr_accessor :graceful_decommission_timeout
      
        # Optional. operation id of the parent operation sending the resize request
        # Corresponds to the JSON property `parentOperationId`
        # @return [String]
        attr_accessor :parent_operation_id
      
        # Optional. A unique ID used to identify the request. If the server receives two
        # ResizeNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#google.cloud.dataproc.v1.ResizeNodeGroupRequests)
        # with the same ID, the second request is ignored and the first google.
        # longrunning.Operation created and stored in the backend is returned.
        # Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/
        # Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The number of running instances for the node group to maintain. The
        # group adds or removes instances to maintain the number of instances specified
        # by this parameter.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @graceful_decommission_timeout = args[:graceful_decommission_timeout] if args.key?(:graceful_decommission_timeout)
          @parent_operation_id = args[:parent_operation_id] if args.key?(:parent_operation_id)
          @request_id = args[:request_id] if args.key?(:request_id)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # 
      class ResourceInformation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addresses`
        # @return [Array<String>]
        attr_accessor :addresses
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Resource profile that contains information about all the resources required by
      # executors and tasks.
      class ResourceProfileInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `executorResources`
        # @return [Hash<String,Google::Apis::DataprocV1::ExecutorResourceRequest>]
        attr_accessor :executor_resources
      
        # 
        # Corresponds to the JSON property `resourceProfileId`
        # @return [Fixnum]
        attr_accessor :resource_profile_id
      
        # 
        # Corresponds to the JSON property `taskResources`
        # @return [Hash<String,Google::Apis::DataprocV1::TaskResourceRequest>]
        attr_accessor :task_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executor_resources = args[:executor_resources] if args.key?(:executor_resources)
          @resource_profile_id = args[:resource_profile_id] if args.key?(:resource_profile_id)
          @task_resources = args[:task_resources] if args.key?(:task_resources)
        end
      end
      
      # Runtime configuration for a workload.
      class RuntimeConfig
        include Google::Apis::Core::Hashable
      
        # Autotuning configuration of the workload.
        # Corresponds to the JSON property `autotuningConfig`
        # @return [Google::Apis::DataprocV1::AutotuningConfig]
        attr_accessor :autotuning_config
      
        # Optional. Cohort identifier. Identifies families of the workloads having the
        # same shape, e.g. daily ETL jobs.
        # Corresponds to the JSON property `cohort`
        # @return [String]
        attr_accessor :cohort
      
        # Optional. Optional custom container image for the job runtime environment. If
        # not specified, a default container image will be used.
        # Corresponds to the JSON property `containerImage`
        # @return [String]
        attr_accessor :container_image
      
        # Optional. A mapping of property names to values, which are used to configure
        # workload execution.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Configuration for dependency repositories
        # Corresponds to the JSON property `repositoryConfig`
        # @return [Google::Apis::DataprocV1::RepositoryConfig]
        attr_accessor :repository_config
      
        # Optional. Version of the batch runtime.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autotuning_config = args[:autotuning_config] if args.key?(:autotuning_config)
          @cohort = args[:cohort] if args.key?(:cohort)
          @container_image = args[:container_image] if args.key?(:container_image)
          @properties = args[:properties] if args.key?(:properties)
          @repository_config = args[:repository_config] if args.key?(:repository_config)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Runtime information about workload execution.
      class RuntimeInfo
        include Google::Apis::Core::Hashable
      
        # Usage metrics represent approximate total resources consumed by a workload.
        # Corresponds to the JSON property `approximateUsage`
        # @return [Google::Apis::DataprocV1::UsageMetrics]
        attr_accessor :approximate_usage
      
        # The usage snapshot represents the resources consumed by a workload at a
        # specified time.
        # Corresponds to the JSON property `currentUsage`
        # @return [Google::Apis::DataprocV1::UsageSnapshot]
        attr_accessor :current_usage
      
        # Output only. A URI pointing to the location of the diagnostics tarball.
        # Corresponds to the JSON property `diagnosticOutputUri`
        # @return [String]
        attr_accessor :diagnostic_output_uri
      
        # Output only. Map of remote access endpoints (such as web interfaces and APIs)
        # to their URIs.
        # Corresponds to the JSON property `endpoints`
        # @return [Hash<String,String>]
        attr_accessor :endpoints
      
        # Output only. A URI pointing to the location of the stdout and stderr of the
        # workload.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        # Properties of the workload organized by origin.
        # Corresponds to the JSON property `propertiesInfo`
        # @return [Google::Apis::DataprocV1::PropertiesInfo]
        attr_accessor :properties_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approximate_usage = args[:approximate_usage] if args.key?(:approximate_usage)
          @current_usage = args[:current_usage] if args.key?(:current_usage)
          @diagnostic_output_uri = args[:diagnostic_output_uri] if args.key?(:diagnostic_output_uri)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
          @properties_info = args[:properties_info] if args.key?(:properties_info)
        end
      end
      
      # List of Executors associated with a Spark Application Stage.
      class SearchSessionSparkApplicationExecutorStageSummaryResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationExecutorStageSummaryRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Details about executors used by the application stage.
        # Corresponds to the JSON property `sparkApplicationStageExecutors`
        # @return [Array<Google::Apis::DataprocV1::ExecutorStageSummary>]
        attr_accessor :spark_application_stage_executors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_executors = args[:spark_application_stage_executors] if args.key?(:spark_application_stage_executors)
        end
      end
      
      # List of Executors associated with a Spark Application.
      class SearchSessionSparkApplicationExecutorsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationExecutorsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Details about executors used by the application.
        # Corresponds to the JSON property `sparkApplicationExecutors`
        # @return [Array<Google::Apis::DataprocV1::ExecutorSummary>]
        attr_accessor :spark_application_executors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_executors = args[:spark_application_executors] if args.key?(:spark_application_executors)
        end
      end
      
      # A list of Jobs associated with a Spark Application.
      class SearchSessionSparkApplicationJobsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationJobsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a spark job.
        # Corresponds to the JSON property `sparkApplicationJobs`
        # @return [Array<Google::Apis::DataprocV1::JobData>]
        attr_accessor :spark_application_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_jobs = args[:spark_application_jobs] if args.key?(:spark_application_jobs)
        end
      end
      
      # List of all queries for a Spark Application.
      class SearchSessionSparkApplicationSqlQueriesResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationSqlQueriesRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. SQL Execution Data
        # Corresponds to the JSON property `sparkApplicationSqlQueries`
        # @return [Array<Google::Apis::DataprocV1::SqlExecutionUiData>]
        attr_accessor :spark_application_sql_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_sql_queries = args[:spark_application_sql_queries] if args.key?(:spark_application_sql_queries)
        end
      end
      
      # List of tasks for a stage of a Spark Application
      class SearchSessionSparkApplicationStageAttemptTasksResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationStageAttemptTasksRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to tasks created by spark.
        # Corresponds to the JSON property `sparkApplicationStageAttemptTasks`
        # @return [Array<Google::Apis::DataprocV1::TaskData>]
        attr_accessor :spark_application_stage_attempt_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_attempt_tasks = args[:spark_application_stage_attempt_tasks] if args.key?(:spark_application_stage_attempt_tasks)
        end
      end
      
      # A list of Stage Attempts for a Stage of a Spark Application.
      class SearchSessionSparkApplicationStageAttemptsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationStageAttemptsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a stage attempts
        # Corresponds to the JSON property `sparkApplicationStageAttempts`
        # @return [Array<Google::Apis::DataprocV1::StageData>]
        attr_accessor :spark_application_stage_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_attempts = args[:spark_application_stage_attempts] if args.key?(:spark_application_stage_attempts)
        end
      end
      
      # A list of stages associated with a Spark Application.
      class SearchSessionSparkApplicationStagesResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationStages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a stage.
        # Corresponds to the JSON property `sparkApplicationStages`
        # @return [Array<Google::Apis::DataprocV1::StageData>]
        attr_accessor :spark_application_stages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stages = args[:spark_application_stages] if args.key?(:spark_application_stages)
        end
      end
      
      # A list of summary of Spark Applications
      class SearchSessionSparkApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSessionSparkApplicationsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. High level information corresponding to an application.
        # Corresponds to the JSON property `sparkApplications`
        # @return [Array<Google::Apis::DataprocV1::SparkApplication>]
        attr_accessor :spark_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_applications = args[:spark_applications] if args.key?(:spark_applications)
        end
      end
      
      # List of Executors associated with a Spark Application Stage.
      class SearchSparkApplicationExecutorStageSummaryResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationExecutorsListRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Details about executors used by the application stage.
        # Corresponds to the JSON property `sparkApplicationStageExecutors`
        # @return [Array<Google::Apis::DataprocV1::ExecutorStageSummary>]
        attr_accessor :spark_application_stage_executors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_executors = args[:spark_application_stage_executors] if args.key?(:spark_application_stage_executors)
        end
      end
      
      # List of Executors associated with a Spark Application.
      class SearchSparkApplicationExecutorsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationExecutorsListRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Details about executors used by the application.
        # Corresponds to the JSON property `sparkApplicationExecutors`
        # @return [Array<Google::Apis::DataprocV1::ExecutorSummary>]
        attr_accessor :spark_application_executors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_executors = args[:spark_application_executors] if args.key?(:spark_application_executors)
        end
      end
      
      # A list of Jobs associated with a Spark Application.
      class SearchSparkApplicationJobsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationJobsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a spark job.
        # Corresponds to the JSON property `sparkApplicationJobs`
        # @return [Array<Google::Apis::DataprocV1::JobData>]
        attr_accessor :spark_application_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_jobs = args[:spark_application_jobs] if args.key?(:spark_application_jobs)
        end
      end
      
      # List of all queries for a Spark Application.
      class SearchSparkApplicationSqlQueriesResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationSqlQueriesRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. SQL Execution Data
        # Corresponds to the JSON property `sparkApplicationSqlQueries`
        # @return [Array<Google::Apis::DataprocV1::SqlExecutionUiData>]
        attr_accessor :spark_application_sql_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_sql_queries = args[:spark_application_sql_queries] if args.key?(:spark_application_sql_queries)
        end
      end
      
      # List of tasks for a stage of a Spark Application
      class SearchSparkApplicationStageAttemptTasksResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # ListSparkApplicationStageAttemptTasksRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to tasks created by spark.
        # Corresponds to the JSON property `sparkApplicationStageAttemptTasks`
        # @return [Array<Google::Apis::DataprocV1::TaskData>]
        attr_accessor :spark_application_stage_attempt_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_attempt_tasks = args[:spark_application_stage_attempt_tasks] if args.key?(:spark_application_stage_attempt_tasks)
        end
      end
      
      # A list of Stage Attempts for a Stage of a Spark Application.
      class SearchSparkApplicationStageAttemptsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # ListSparkApplicationStageAttemptsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a stage attempts
        # Corresponds to the JSON property `sparkApplicationStageAttempts`
        # @return [Array<Google::Apis::DataprocV1::StageData>]
        attr_accessor :spark_application_stage_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stage_attempts = args[:spark_application_stage_attempts] if args.key?(:spark_application_stage_attempts)
        end
      end
      
      # A list of stages associated with a Spark Application.
      class SearchSparkApplicationStagesResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationStages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Data corresponding to a stage.
        # Corresponds to the JSON property `sparkApplicationStages`
        # @return [Array<Google::Apis::DataprocV1::StageData>]
        attr_accessor :spark_application_stages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_application_stages = args[:spark_application_stages] if args.key?(:spark_application_stages)
        end
      end
      
      # A list of summary of Spark Applications
      class SearchSparkApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # This token is included in the response if there are more results to fetch. To
        # fetch additional results, provide this value as the page_token in a subsequent
        # SearchSparkApplicationsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. High level information corresponding to an application.
        # Corresponds to the JSON property `sparkApplications`
        # @return [Array<Google::Apis::DataprocV1::SparkApplication>]
        attr_accessor :spark_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spark_applications = args[:spark_applications] if args.key?(:spark_applications)
        end
      end
      
      # Security related configuration, including encryption, Kerberos, etc.
      class SecurityConfig
        include Google::Apis::Core::Hashable
      
        # Identity related configuration, including service account based secure multi-
        # tenancy user mappings.
        # Corresponds to the JSON property `identityConfig`
        # @return [Google::Apis::DataprocV1::IdentityConfig]
        attr_accessor :identity_config
      
        # Specifies Kerberos related configuration.
        # Corresponds to the JSON property `kerberosConfig`
        # @return [Google::Apis::DataprocV1::KerberosConfig]
        attr_accessor :kerberos_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_config = args[:identity_config] if args.key?(:identity_config)
          @kerberos_config = args[:kerberos_config] if args.key?(:kerberos_config)
        end
      end
      
      # A representation of a session.
      class Session
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the session was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The email address of the user who created the session.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Environment configuration for a workload.
        # Corresponds to the JSON property `environmentConfig`
        # @return [Google::Apis::DataprocV1::EnvironmentConfig]
        attr_accessor :environment_config
      
        # Jupyter configuration for an interactive session.
        # Corresponds to the JSON property `jupyterSession`
        # @return [Google::Apis::DataprocV1::JupyterConfig]
        attr_accessor :jupyter_session
      
        # Optional. The labels to associate with the session. Label keys must contain 1
        # to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/
        # rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63
        # characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt)
        # . No more than 32 labels can be associated with a session.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the session.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Runtime configuration for a workload.
        # Corresponds to the JSON property `runtimeConfig`
        # @return [Google::Apis::DataprocV1::RuntimeConfig]
        attr_accessor :runtime_config
      
        # Runtime information about workload execution.
        # Corresponds to the JSON property `runtimeInfo`
        # @return [Google::Apis::DataprocV1::RuntimeInfo]
        attr_accessor :runtime_info
      
        # Optional. The session template used by the session.Only resource names,
        # including project ID and location, are valid.Example: * https://www.googleapis.
        # com/compute/v1/projects/[project_id]/locations/[dataproc_region]/
        # sessionTemplates/[template_id] * projects/[project_id]/locations/[
        # dataproc_region]/sessionTemplates/[template_id]The template must be in the
        # same project and Dataproc region as the session.
        # Corresponds to the JSON property `sessionTemplate`
        # @return [String]
        attr_accessor :session_template
      
        # Spark connect configuration for an interactive session.
        # Corresponds to the JSON property `sparkConnectSession`
        # @return [Google::Apis::DataprocV1::SparkConnectConfig]
        attr_accessor :spark_connect_session
      
        # Output only. A state of the session.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Historical state information for the session.
        # Corresponds to the JSON property `stateHistory`
        # @return [Array<Google::Apis::DataprocV1::SessionStateHistory>]
        attr_accessor :state_history
      
        # Output only. Session state details, such as the failure description if the
        # state is FAILED.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time when the session entered the current state.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Optional. The email address of the user who owns the session.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Output only. A session UUID (Unique Universal Identifier). The service
        # generates this value when it creates the session.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @environment_config = args[:environment_config] if args.key?(:environment_config)
          @jupyter_session = args[:jupyter_session] if args.key?(:jupyter_session)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @runtime_config = args[:runtime_config] if args.key?(:runtime_config)
          @runtime_info = args[:runtime_info] if args.key?(:runtime_info)
          @session_template = args[:session_template] if args.key?(:session_template)
          @spark_connect_session = args[:spark_connect_session] if args.key?(:spark_connect_session)
          @state = args[:state] if args.key?(:state)
          @state_history = args[:state_history] if args.key?(:state_history)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_time = args[:state_time] if args.key?(:state_time)
          @user = args[:user] if args.key?(:user)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Metadata describing the Session operation.
      class SessionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Short description of the operation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time when the operation was finished.
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # Labels associated with the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Name of the session for the operation.
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        # Session UUID for the operation.
        # Corresponds to the JSON property `sessionUuid`
        # @return [String]
        attr_accessor :session_uuid
      
        # Warnings encountered during operation execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @done_time = args[:done_time] if args.key?(:done_time)
          @labels = args[:labels] if args.key?(:labels)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @session = args[:session] if args.key?(:session)
          @session_uuid = args[:session_uuid] if args.key?(:session_uuid)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Historical state information.
      class SessionStateHistory
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the session at this point in the session history.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Details about the state at this point in the session history.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time when the session entered the historical state.
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
        end
      end
      
      # A representation of a session template.
      class SessionTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the template was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The email address of the user who created the template.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Optional. Brief description of the template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Environment configuration for a workload.
        # Corresponds to the JSON property `environmentConfig`
        # @return [Google::Apis::DataprocV1::EnvironmentConfig]
        attr_accessor :environment_config
      
        # Jupyter configuration for an interactive session.
        # Corresponds to the JSON property `jupyterSession`
        # @return [Google::Apis::DataprocV1::JupyterConfig]
        attr_accessor :jupyter_session
      
        # Optional. Labels to associate with sessions created using this template. Label
        # keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://
        # www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present,
        # must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/
        # rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. The resource name of the session template.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Runtime configuration for a workload.
        # Corresponds to the JSON property `runtimeConfig`
        # @return [Google::Apis::DataprocV1::RuntimeConfig]
        attr_accessor :runtime_config
      
        # Spark connect configuration for an interactive session.
        # Corresponds to the JSON property `sparkConnectSession`
        # @return [Google::Apis::DataprocV1::SparkConnectConfig]
        attr_accessor :spark_connect_session
      
        # Output only. The time the template was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. A session template UUID (Unique Universal Identifier). The
        # service generates this value when it creates the session template.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @environment_config = args[:environment_config] if args.key?(:environment_config)
          @jupyter_session = args[:jupyter_session] if args.key?(:jupyter_session)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @runtime_config = args[:runtime_config] if args.key?(:runtime_config)
          @spark_connect_session = args[:spark_connect_session] if args.key?(:spark_connect_session)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Request message for SetIamPolicy method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.A Policy is a collection of bindings. A
        # binding binds one or more members, or principals, to a single role. Principals
        # can be user accounts, service accounts, Google groups, and domains (such as G
        # Suite). A role is a named list of permissions; each role can be an IAM
        # predefined role or a user-created custom role.For some types of Google Cloud
        # resources, a binding can also specify a condition, which is a logical
        # expression that allows access to a resource only if the expression evaluates
        # to true. A condition can add constraints based on attributes of the request,
        # the resource, or both. To learn which resources support conditions in their
        # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
        # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
        # - user:mike@example.com - group:admins@example.com - domain:google.com -
        # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
        # description of IAM and its features, see the IAM documentation (https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DataprocV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Shielded Instance Config for clusters using Compute Engine Shielded VMs (https:
      # //cloud.google.com/security/shielded-cloud/shielded-vm).
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether instances have integrity monitoring enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether instances have Secure Boot enabled.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        # Optional. Defines whether instances have the vTPM enabled.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_secure_boot = args[:enable_secure_boot] if args.key?(:enable_secure_boot)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
        end
      end
      
      # 
      class ShufflePushReadMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `corruptMergedBlockChunks`
        # @return [Fixnum]
        attr_accessor :corrupt_merged_block_chunks
      
        # 
        # Corresponds to the JSON property `localMergedBlocksFetched`
        # @return [Fixnum]
        attr_accessor :local_merged_blocks_fetched
      
        # 
        # Corresponds to the JSON property `localMergedBytesRead`
        # @return [Fixnum]
        attr_accessor :local_merged_bytes_read
      
        # 
        # Corresponds to the JSON property `localMergedChunksFetched`
        # @return [Fixnum]
        attr_accessor :local_merged_chunks_fetched
      
        # 
        # Corresponds to the JSON property `mergedFetchFallbackCount`
        # @return [Fixnum]
        attr_accessor :merged_fetch_fallback_count
      
        # 
        # Corresponds to the JSON property `remoteMergedBlocksFetched`
        # @return [Fixnum]
        attr_accessor :remote_merged_blocks_fetched
      
        # 
        # Corresponds to the JSON property `remoteMergedBytesRead`
        # @return [Fixnum]
        attr_accessor :remote_merged_bytes_read
      
        # 
        # Corresponds to the JSON property `remoteMergedChunksFetched`
        # @return [Fixnum]
        attr_accessor :remote_merged_chunks_fetched
      
        # 
        # Corresponds to the JSON property `remoteMergedReqsDuration`
        # @return [Fixnum]
        attr_accessor :remote_merged_reqs_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrupt_merged_block_chunks = args[:corrupt_merged_block_chunks] if args.key?(:corrupt_merged_block_chunks)
          @local_merged_blocks_fetched = args[:local_merged_blocks_fetched] if args.key?(:local_merged_blocks_fetched)
          @local_merged_bytes_read = args[:local_merged_bytes_read] if args.key?(:local_merged_bytes_read)
          @local_merged_chunks_fetched = args[:local_merged_chunks_fetched] if args.key?(:local_merged_chunks_fetched)
          @merged_fetch_fallback_count = args[:merged_fetch_fallback_count] if args.key?(:merged_fetch_fallback_count)
          @remote_merged_blocks_fetched = args[:remote_merged_blocks_fetched] if args.key?(:remote_merged_blocks_fetched)
          @remote_merged_bytes_read = args[:remote_merged_bytes_read] if args.key?(:remote_merged_bytes_read)
          @remote_merged_chunks_fetched = args[:remote_merged_chunks_fetched] if args.key?(:remote_merged_chunks_fetched)
          @remote_merged_reqs_duration = args[:remote_merged_reqs_duration] if args.key?(:remote_merged_reqs_duration)
        end
      end
      
      # 
      class ShufflePushReadQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `corruptMergedBlockChunks`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :corrupt_merged_block_chunks
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `localMergedBlocksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :local_merged_blocks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `localMergedBytesRead`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :local_merged_bytes_read
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `localMergedChunksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :local_merged_chunks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `mergedFetchFallbackCount`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :merged_fetch_fallback_count
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteMergedBlocksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_merged_blocks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteMergedBytesRead`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_merged_bytes_read
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteMergedChunksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_merged_chunks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteMergedReqsDuration`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_merged_reqs_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrupt_merged_block_chunks = args[:corrupt_merged_block_chunks] if args.key?(:corrupt_merged_block_chunks)
          @local_merged_blocks_fetched = args[:local_merged_blocks_fetched] if args.key?(:local_merged_blocks_fetched)
          @local_merged_bytes_read = args[:local_merged_bytes_read] if args.key?(:local_merged_bytes_read)
          @local_merged_chunks_fetched = args[:local_merged_chunks_fetched] if args.key?(:local_merged_chunks_fetched)
          @merged_fetch_fallback_count = args[:merged_fetch_fallback_count] if args.key?(:merged_fetch_fallback_count)
          @remote_merged_blocks_fetched = args[:remote_merged_blocks_fetched] if args.key?(:remote_merged_blocks_fetched)
          @remote_merged_bytes_read = args[:remote_merged_bytes_read] if args.key?(:remote_merged_bytes_read)
          @remote_merged_chunks_fetched = args[:remote_merged_chunks_fetched] if args.key?(:remote_merged_chunks_fetched)
          @remote_merged_reqs_duration = args[:remote_merged_reqs_duration] if args.key?(:remote_merged_reqs_duration)
        end
      end
      
      # Shuffle data read by the task.
      class ShuffleReadMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fetchWaitTimeMillis`
        # @return [Fixnum]
        attr_accessor :fetch_wait_time_millis
      
        # 
        # Corresponds to the JSON property `localBlocksFetched`
        # @return [Fixnum]
        attr_accessor :local_blocks_fetched
      
        # 
        # Corresponds to the JSON property `localBytesRead`
        # @return [Fixnum]
        attr_accessor :local_bytes_read
      
        # 
        # Corresponds to the JSON property `recordsRead`
        # @return [Fixnum]
        attr_accessor :records_read
      
        # 
        # Corresponds to the JSON property `remoteBlocksFetched`
        # @return [Fixnum]
        attr_accessor :remote_blocks_fetched
      
        # 
        # Corresponds to the JSON property `remoteBytesRead`
        # @return [Fixnum]
        attr_accessor :remote_bytes_read
      
        # 
        # Corresponds to the JSON property `remoteBytesReadToDisk`
        # @return [Fixnum]
        attr_accessor :remote_bytes_read_to_disk
      
        # 
        # Corresponds to the JSON property `remoteReqsDuration`
        # @return [Fixnum]
        attr_accessor :remote_reqs_duration
      
        # 
        # Corresponds to the JSON property `shufflePushReadMetrics`
        # @return [Google::Apis::DataprocV1::ShufflePushReadMetrics]
        attr_accessor :shuffle_push_read_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fetch_wait_time_millis = args[:fetch_wait_time_millis] if args.key?(:fetch_wait_time_millis)
          @local_blocks_fetched = args[:local_blocks_fetched] if args.key?(:local_blocks_fetched)
          @local_bytes_read = args[:local_bytes_read] if args.key?(:local_bytes_read)
          @records_read = args[:records_read] if args.key?(:records_read)
          @remote_blocks_fetched = args[:remote_blocks_fetched] if args.key?(:remote_blocks_fetched)
          @remote_bytes_read = args[:remote_bytes_read] if args.key?(:remote_bytes_read)
          @remote_bytes_read_to_disk = args[:remote_bytes_read_to_disk] if args.key?(:remote_bytes_read_to_disk)
          @remote_reqs_duration = args[:remote_reqs_duration] if args.key?(:remote_reqs_duration)
          @shuffle_push_read_metrics = args[:shuffle_push_read_metrics] if args.key?(:shuffle_push_read_metrics)
        end
      end
      
      # 
      class ShuffleReadQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `fetchWaitTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :fetch_wait_time_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `localBlocksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :local_blocks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `readBytes`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :read_bytes
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `readRecords`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :read_records
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteBlocksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_blocks_fetched
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteBytesRead`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_bytes_read
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteBytesReadToDisk`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_bytes_read_to_disk
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `remoteReqsDuration`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :remote_reqs_duration
      
        # 
        # Corresponds to the JSON property `shufflePushReadMetrics`
        # @return [Google::Apis::DataprocV1::ShufflePushReadQuantileMetrics]
        attr_accessor :shuffle_push_read_metrics
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `totalBlocksFetched`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :total_blocks_fetched
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fetch_wait_time_millis = args[:fetch_wait_time_millis] if args.key?(:fetch_wait_time_millis)
          @local_blocks_fetched = args[:local_blocks_fetched] if args.key?(:local_blocks_fetched)
          @read_bytes = args[:read_bytes] if args.key?(:read_bytes)
          @read_records = args[:read_records] if args.key?(:read_records)
          @remote_blocks_fetched = args[:remote_blocks_fetched] if args.key?(:remote_blocks_fetched)
          @remote_bytes_read = args[:remote_bytes_read] if args.key?(:remote_bytes_read)
          @remote_bytes_read_to_disk = args[:remote_bytes_read_to_disk] if args.key?(:remote_bytes_read_to_disk)
          @remote_reqs_duration = args[:remote_reqs_duration] if args.key?(:remote_reqs_duration)
          @shuffle_push_read_metrics = args[:shuffle_push_read_metrics] if args.key?(:shuffle_push_read_metrics)
          @total_blocks_fetched = args[:total_blocks_fetched] if args.key?(:total_blocks_fetched)
        end
      end
      
      # Shuffle data written by task.
      class ShuffleWriteMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesWritten`
        # @return [Fixnum]
        attr_accessor :bytes_written
      
        # 
        # Corresponds to the JSON property `recordsWritten`
        # @return [Fixnum]
        attr_accessor :records_written
      
        # 
        # Corresponds to the JSON property `writeTimeNanos`
        # @return [Fixnum]
        attr_accessor :write_time_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_written = args[:bytes_written] if args.key?(:bytes_written)
          @records_written = args[:records_written] if args.key?(:records_written)
          @write_time_nanos = args[:write_time_nanos] if args.key?(:write_time_nanos)
        end
      end
      
      # 
      class ShuffleWriteQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `writeBytes`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :write_bytes
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `writeRecords`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :write_records
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `writeTimeNanos`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :write_time_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @write_bytes = args[:write_bytes] if args.key?(:write_bytes)
          @write_records = args[:write_records] if args.key?(:write_records)
          @write_time_nanos = args[:write_time_nanos] if args.key?(:write_time_nanos)
        end
      end
      
      # 
      class SinkProgress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Hash<String,String>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `numOutputRows`
        # @return [Fixnum]
        attr_accessor :num_output_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @metrics = args[:metrics] if args.key?(:metrics)
          @num_output_rows = args[:num_output_rows] if args.key?(:num_output_rows)
        end
      end
      
      # Specifies the selection and config of software inside the cluster.
      class SoftwareConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The version of software inside the cluster. It must be one of the
        # supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/
        # versioning/dataproc-versions#supported-dataproc-image-versions), such as "1.2"
        # (including a subminor version, such as "1.2.29"), or the "preview" version (
        # https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#
        # other_versions). If unspecified, it defaults to the latest Debian version.
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # Optional. The set of components to activate on the cluster.
        # Corresponds to the JSON property `optionalComponents`
        # @return [Array<String>]
        attr_accessor :optional_components
      
        # Optional. The properties to set on daemon config files.Property keys are
        # specified in prefix:property format, for example core:hadoop.tmp.dir. The
        # following are supported prefixes and their mappings: capacity-scheduler:
        # capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs:
        # hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties
        # spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see
        # Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-
        # properties).
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_version = args[:image_version] if args.key?(:image_version)
          @optional_components = args[:optional_components] if args.key?(:optional_components)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # 
      class SourceProgress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # 
        # Corresponds to the JSON property `inputRowsPerSecond`
        # @return [Float]
        attr_accessor :input_rows_per_second
      
        # 
        # Corresponds to the JSON property `latestOffset`
        # @return [String]
        attr_accessor :latest_offset
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Hash<String,String>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `numInputRows`
        # @return [Fixnum]
        attr_accessor :num_input_rows
      
        # 
        # Corresponds to the JSON property `processedRowsPerSecond`
        # @return [Float]
        attr_accessor :processed_rows_per_second
      
        # 
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @input_rows_per_second = args[:input_rows_per_second] if args.key?(:input_rows_per_second)
          @latest_offset = args[:latest_offset] if args.key?(:latest_offset)
          @metrics = args[:metrics] if args.key?(:metrics)
          @num_input_rows = args[:num_input_rows] if args.key?(:num_input_rows)
          @processed_rows_per_second = args[:processed_rows_per_second] if args.key?(:processed_rows_per_second)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # A summary of Spark Application
      class SparkApplication
        include Google::Apis::Core::Hashable
      
        # High level information corresponding to an application.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::DataprocV1::ApplicationInfo]
        attr_accessor :application
      
        # Identifier. Name of the spark application
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A configuration for running an Apache Spark (https://spark.apache.org/) batch
      # workload.
      class SparkBatch
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments that
        # can be set as batch properties, such as --conf, since a collision can occur
        # that causes an incorrect batch submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Optional. HCFS URIs of jar files to add to the classpath of the Spark driver
        # and tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # Optional. The name of the driver main class. The jar file that contains the
        # class must be in the classpath or specified in jar_file_uris.
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # Optional. The HCFS URI of the jar file that contains the main class.
        # Corresponds to the JSON property `mainJarFileUri`
        # @return [String]
        attr_accessor :main_jar_file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_jar_file_uri = args[:main_jar_file_uri] if args.key?(:main_jar_file_uri)
        end
      end
      
      # Spark connect configuration for an interactive session.
      class SparkConnectConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Spark History Server configuration for the workload.
      class SparkHistoryServerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of an existing Dataproc Cluster to act as a Spark
        # History Server for the workload.Example: projects/[project_id]/regions/[region]
        # /clusters/[cluster_name]
        # Corresponds to the JSON property `dataprocCluster`
        # @return [String]
        attr_accessor :dataproc_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataproc_cluster = args[:dataproc_cluster] if args.key?(:dataproc_cluster)
        end
      end
      
      # A Dataproc job for running Apache Spark (https://spark.apache.org/)
      # applications on YARN.
      class SparkJob
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments, such
        # as --conf, that can be set as job properties, since a collision may occur that
        # causes an incorrect job submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor. Useful for naively parallel tasks.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver
        # and tasks.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # The name of the driver's main class. The jar file that contains the class must
        # be in the default CLASSPATH or specified in SparkJob.jar_file_uris.
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # The HCFS URI of the jar file that contains the main class.
        # Corresponds to the JSON property `mainJarFileUri`
        # @return [String]
        attr_accessor :main_jar_file_uri
      
        # Optional. A mapping of property names to values, used to configure Spark.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf
        # and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_jar_file_uri = args[:main_jar_file_uri] if args.key?(:main_jar_file_uri)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A graph used for storing information of an executionPlan of DataFrame.
      class SparkPlanGraph
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `edges`
        # @return [Array<Google::Apis::DataprocV1::SparkPlanGraphEdge>]
        attr_accessor :edges
      
        # 
        # Corresponds to the JSON property `executionId`
        # @return [Fixnum]
        attr_accessor :execution_id
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::DataprocV1::SparkPlanGraphNodeWrapper>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edges = args[:edges] if args.key?(:edges)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Represents a tree of spark plan.
      class SparkPlanGraphCluster
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `desc`
        # @return [String]
        attr_accessor :desc
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DataprocV1::SqlPlanMetric>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::DataprocV1::SparkPlanGraphNodeWrapper>]
        attr_accessor :nodes
      
        # 
        # Corresponds to the JSON property `sparkPlanGraphClusterId`
        # @return [Fixnum]
        attr_accessor :spark_plan_graph_cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desc = args[:desc] if args.key?(:desc)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
          @spark_plan_graph_cluster_id = args[:spark_plan_graph_cluster_id] if args.key?(:spark_plan_graph_cluster_id)
        end
      end
      
      # Represents a directed edge in the spark plan tree from child to parent.
      class SparkPlanGraphEdge
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fromId`
        # @return [Fixnum]
        attr_accessor :from_id
      
        # 
        # Corresponds to the JSON property `toId`
        # @return [Fixnum]
        attr_accessor :to_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_id = args[:from_id] if args.key?(:from_id)
          @to_id = args[:to_id] if args.key?(:to_id)
        end
      end
      
      # Represents a node in the spark plan tree.
      class SparkPlanGraphNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `desc`
        # @return [String]
        attr_accessor :desc
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DataprocV1::SqlPlanMetric>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `sparkPlanGraphNodeId`
        # @return [Fixnum]
        attr_accessor :spark_plan_graph_node_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desc = args[:desc] if args.key?(:desc)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @spark_plan_graph_node_id = args[:spark_plan_graph_node_id] if args.key?(:spark_plan_graph_node_id)
        end
      end
      
      # Wrapper user to represent either a node or a cluster.
      class SparkPlanGraphNodeWrapper
        include Google::Apis::Core::Hashable
      
        # Represents a tree of spark plan.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::DataprocV1::SparkPlanGraphCluster]
        attr_accessor :cluster
      
        # Represents a node in the spark plan tree.
        # Corresponds to the JSON property `node`
        # @return [Google::Apis::DataprocV1::SparkPlanGraphNode]
        attr_accessor :node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @node = args[:node] if args.key?(:node)
        end
      end
      
      # A configuration for running an Apache SparkR (https://spark.apache.org/docs/
      # latest/sparkr.html) batch workload.
      class SparkRBatch
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the Spark driver. Do not include arguments
        # that can be set as batch properties, such as --conf, since a collision can
        # occur that causes an incorrect batch submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Required. The HCFS URI of the main R file to use as the driver. Must be a .R
        # or .r file.
        # Corresponds to the JSON property `mainRFileUri`
        # @return [String]
        attr_accessor :main_r_file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @main_r_file_uri = args[:main_r_file_uri] if args.key?(:main_r_file_uri)
        end
      end
      
      # A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/
      # sparkr.html) applications on YARN.
      class SparkRJob
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of archives to be extracted into the working directory of
        # each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. The arguments to pass to the driver. Do not include arguments, such
        # as --conf, that can be set as job properties, since a collision may occur that
        # causes an incorrect job submission.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. HCFS URIs of files to be placed in the working directory of each
        # executor. Useful for naively parallel tasks.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Required. The HCFS URI of the main R file to use as the driver. Must be a .R
        # file.
        # Corresponds to the JSON property `mainRFileUri`
        # @return [String]
        attr_accessor :main_r_file_uri
      
        # Optional. A mapping of property names to values, used to configure SparkR.
        # Properties that conflict with values set by the Dataproc API might be
        # overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf
        # and classes in user code.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @args = args[:args] if args.key?(:args)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @main_r_file_uri = args[:main_r_file_uri] if args.key?(:main_r_file_uri)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # 
      class SparkRuntimeInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `javaHome`
        # @return [String]
        attr_accessor :java_home
      
        # 
        # Corresponds to the JSON property `javaVersion`
        # @return [String]
        attr_accessor :java_version
      
        # 
        # Corresponds to the JSON property `scalaVersion`
        # @return [String]
        attr_accessor :scala_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @java_home = args[:java_home] if args.key?(:java_home)
          @java_version = args[:java_version] if args.key?(:java_version)
          @scala_version = args[:scala_version] if args.key?(:scala_version)
        end
      end
      
      # A configuration for running Apache Spark SQL (https://spark.apache.org/sql/)
      # queries as a batch workload.
      class SparkSqlBatch
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # Required. The HCFS URI of the script that contains Spark SQL queries to
        # execute.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # Optional. Mapping of query variable names to values (equivalent to the Spark
        # SQL command: SET name="value";).
        # Corresponds to the JSON property `queryVariables`
        # @return [Hash<String,String>]
        attr_accessor :query_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_variables = args[:query_variables] if args.key?(:query_variables)
        end
      end
      
      # A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/)
      # queries.
      class SparkSqlJob
        include Google::Apis::Core::Hashable
      
        # Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
        # Corresponds to the JSON property `jarFileUris`
        # @return [Array<String>]
        attr_accessor :jar_file_uris
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Optional. A mapping of property names to values, used to configure Spark SQL's
        # SparkConf. Properties that conflict with values set by the Dataproc API might
        # be overwritten.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The HCFS URI of the script that contains SQL queries.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # A list of queries to run on a cluster.
        # Corresponds to the JSON property `queryList`
        # @return [Google::Apis::DataprocV1::QueryList]
        attr_accessor :query_list
      
        # Optional. Mapping of query variable names to values (equivalent to the Spark
        # SQL command: SET name="value";).
        # Corresponds to the JSON property `scriptVariables`
        # @return [Hash<String,String>]
        attr_accessor :script_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jar_file_uris = args[:jar_file_uris] if args.key?(:jar_file_uris)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @properties = args[:properties] if args.key?(:properties)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_list = args[:query_list] if args.key?(:query_list)
          @script_variables = args[:script_variables] if args.key?(:script_variables)
        end
      end
      
      # Basic autoscaling configurations for Spark Standalone.
      class SparkStandaloneAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Required. Timeout for Spark graceful decommissioning of spark workers.
        # Specifies the duration to wait for spark worker to complete spark
        # decommissioning tasks before forcefully removing workers. Only applicable to
        # downscaling operations.Bounds: 0s, 1d.
        # Corresponds to the JSON property `gracefulDecommissionTimeout`
        # @return [String]
        attr_accessor :graceful_decommission_timeout
      
        # Optional. Remove only idle workers when scaling down cluster
        # Corresponds to the JSON property `removeOnlyIdleWorkers`
        # @return [Boolean]
        attr_accessor :remove_only_idle_workers
        alias_method :remove_only_idle_workers?, :remove_only_idle_workers
      
        # Required. Fraction of required executors to remove from Spark Serverless
        # clusters. A scale-down factor of 1.0 will result in scaling down so that there
        # are no more executors for the Spark Job.(more aggressive scaling). A scale-
        # down factor closer to 0 will result in a smaller magnitude of scaling donw (
        # less aggressive scaling).Bounds: 0.0, 1.0.
        # Corresponds to the JSON property `scaleDownFactor`
        # @return [Float]
        attr_accessor :scale_down_factor
      
        # Optional. Minimum scale-down threshold as a fraction of total cluster size
        # before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1
        # means the autoscaler must recommend at least a 2 worker scale-down for the
        # cluster to scale. A threshold of 0 means the autoscaler will scale down on any
        # recommended change.Bounds: 0.0, 1.0. Default: 0.0.
        # Corresponds to the JSON property `scaleDownMinWorkerFraction`
        # @return [Float]
        attr_accessor :scale_down_min_worker_fraction
      
        # Required. Fraction of required workers to add to Spark Standalone clusters. A
        # scale-up factor of 1.0 will result in scaling up so that there are no more
        # required workers for the Spark Job (more aggressive scaling). A scale-up
        # factor closer to 0 will result in a smaller magnitude of scaling up (less
        # aggressive scaling).Bounds: 0.0, 1.0.
        # Corresponds to the JSON property `scaleUpFactor`
        # @return [Float]
        attr_accessor :scale_up_factor
      
        # Optional. Minimum scale-up threshold as a fraction of total cluster size
        # before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1
        # means the autoscaler must recommend at least a 2-worker scale-up for the
        # cluster to scale. A threshold of 0 means the autoscaler will scale up on any
        # recommended change.Bounds: 0.0, 1.0. Default: 0.0.
        # Corresponds to the JSON property `scaleUpMinWorkerFraction`
        # @return [Float]
        attr_accessor :scale_up_min_worker_fraction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @graceful_decommission_timeout = args[:graceful_decommission_timeout] if args.key?(:graceful_decommission_timeout)
          @remove_only_idle_workers = args[:remove_only_idle_workers] if args.key?(:remove_only_idle_workers)
          @scale_down_factor = args[:scale_down_factor] if args.key?(:scale_down_factor)
          @scale_down_min_worker_fraction = args[:scale_down_min_worker_fraction] if args.key?(:scale_down_min_worker_fraction)
          @scale_up_factor = args[:scale_up_factor] if args.key?(:scale_up_factor)
          @scale_up_min_worker_fraction = args[:scale_up_min_worker_fraction] if args.key?(:scale_up_min_worker_fraction)
        end
      end
      
      # Outer message that contains the data obtained from spark listener, packaged
      # with information that is required to process it.
      class SparkWrapperObject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appSummary`
        # @return [Google::Apis::DataprocV1::AppSummary]
        attr_accessor :app_summary
      
        # Details about the Environment that the application is running in.
        # Corresponds to the JSON property `applicationEnvironmentInfo`
        # @return [Google::Apis::DataprocV1::ApplicationEnvironmentInfo]
        attr_accessor :application_environment_info
      
        # Application Id created by Spark.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # High level information corresponding to an application.
        # Corresponds to the JSON property `applicationInfo`
        # @return [Google::Apis::DataprocV1::ApplicationInfo]
        attr_accessor :application_info
      
        # VM Timestamp associated with the data object.
        # Corresponds to the JSON property `eventTimestamp`
        # @return [String]
        attr_accessor :event_timestamp
      
        # Executor resources consumed by a stage.
        # Corresponds to the JSON property `executorStageSummary`
        # @return [Google::Apis::DataprocV1::ExecutorStageSummary]
        attr_accessor :executor_stage_summary
      
        # Details about executors used by the application.
        # Corresponds to the JSON property `executorSummary`
        # @return [Google::Apis::DataprocV1::ExecutorSummary]
        attr_accessor :executor_summary
      
        # Data corresponding to a spark job.
        # Corresponds to the JSON property `jobData`
        # @return [Google::Apis::DataprocV1::JobData]
        attr_accessor :job_data
      
        # Native Build Info
        # Corresponds to the JSON property `nativeBuildInfoUiData`
        # @return [Google::Apis::DataprocV1::NativeBuildInfoUiData]
        attr_accessor :native_build_info_ui_data
      
        # Native SQL Execution Data
        # Corresponds to the JSON property `nativeSqlExecutionUiData`
        # @return [Google::Apis::DataprocV1::NativeSqlExecutionUiData]
        attr_accessor :native_sql_execution_ui_data
      
        # Pool Data
        # Corresponds to the JSON property `poolData`
        # @return [Google::Apis::DataprocV1::PoolData]
        attr_accessor :pool_data
      
        # Process Summary
        # Corresponds to the JSON property `processSummary`
        # @return [Google::Apis::DataprocV1::ProcessSummary]
        attr_accessor :process_summary
      
        # Graph representing RDD dependencies. Consists of edges and a root cluster.
        # Corresponds to the JSON property `rddOperationGraph`
        # @return [Google::Apis::DataprocV1::RddOperationGraph]
        attr_accessor :rdd_operation_graph
      
        # Overall data about RDD storage.
        # Corresponds to the JSON property `rddStorageInfo`
        # @return [Google::Apis::DataprocV1::RddStorageInfo]
        attr_accessor :rdd_storage_info
      
        # Resource profile that contains information about all the resources required by
        # executors and tasks.
        # Corresponds to the JSON property `resourceProfileInfo`
        # @return [Google::Apis::DataprocV1::ResourceProfileInfo]
        attr_accessor :resource_profile_info
      
        # A graph used for storing information of an executionPlan of DataFrame.
        # Corresponds to the JSON property `sparkPlanGraph`
        # @return [Google::Apis::DataprocV1::SparkPlanGraph]
        attr_accessor :spark_plan_graph
      
        # Details of the speculation task when speculative execution is enabled.
        # Corresponds to the JSON property `speculationStageSummary`
        # @return [Google::Apis::DataprocV1::SpeculationStageSummary]
        attr_accessor :speculation_stage_summary
      
        # SQL Execution Data
        # Corresponds to the JSON property `sqlExecutionUiData`
        # @return [Google::Apis::DataprocV1::SqlExecutionUiData]
        attr_accessor :sql_execution_ui_data
      
        # Data corresponding to a stage.
        # Corresponds to the JSON property `stageData`
        # @return [Google::Apis::DataprocV1::StageData]
        attr_accessor :stage_data
      
        # Stream Block Data.
        # Corresponds to the JSON property `streamBlockData`
        # @return [Google::Apis::DataprocV1::StreamBlockData]
        attr_accessor :stream_block_data
      
        # Streaming
        # Corresponds to the JSON property `streamingQueryData`
        # @return [Google::Apis::DataprocV1::StreamingQueryData]
        attr_accessor :streaming_query_data
      
        # 
        # Corresponds to the JSON property `streamingQueryProgress`
        # @return [Google::Apis::DataprocV1::StreamingQueryProgress]
        attr_accessor :streaming_query_progress
      
        # Data corresponding to tasks created by spark.
        # Corresponds to the JSON property `taskData`
        # @return [Google::Apis::DataprocV1::TaskData]
        attr_accessor :task_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_summary = args[:app_summary] if args.key?(:app_summary)
          @application_environment_info = args[:application_environment_info] if args.key?(:application_environment_info)
          @application_id = args[:application_id] if args.key?(:application_id)
          @application_info = args[:application_info] if args.key?(:application_info)
          @event_timestamp = args[:event_timestamp] if args.key?(:event_timestamp)
          @executor_stage_summary = args[:executor_stage_summary] if args.key?(:executor_stage_summary)
          @executor_summary = args[:executor_summary] if args.key?(:executor_summary)
          @job_data = args[:job_data] if args.key?(:job_data)
          @native_build_info_ui_data = args[:native_build_info_ui_data] if args.key?(:native_build_info_ui_data)
          @native_sql_execution_ui_data = args[:native_sql_execution_ui_data] if args.key?(:native_sql_execution_ui_data)
          @pool_data = args[:pool_data] if args.key?(:pool_data)
          @process_summary = args[:process_summary] if args.key?(:process_summary)
          @rdd_operation_graph = args[:rdd_operation_graph] if args.key?(:rdd_operation_graph)
          @rdd_storage_info = args[:rdd_storage_info] if args.key?(:rdd_storage_info)
          @resource_profile_info = args[:resource_profile_info] if args.key?(:resource_profile_info)
          @spark_plan_graph = args[:spark_plan_graph] if args.key?(:spark_plan_graph)
          @speculation_stage_summary = args[:speculation_stage_summary] if args.key?(:speculation_stage_summary)
          @sql_execution_ui_data = args[:sql_execution_ui_data] if args.key?(:sql_execution_ui_data)
          @stage_data = args[:stage_data] if args.key?(:stage_data)
          @stream_block_data = args[:stream_block_data] if args.key?(:stream_block_data)
          @streaming_query_data = args[:streaming_query_data] if args.key?(:streaming_query_data)
          @streaming_query_progress = args[:streaming_query_progress] if args.key?(:streaming_query_progress)
          @task_data = args[:task_data] if args.key?(:task_data)
        end
      end
      
      # Details of the speculation task when speculative execution is enabled.
      class SpeculationStageSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `numActiveTasks`
        # @return [Fixnum]
        attr_accessor :num_active_tasks
      
        # 
        # Corresponds to the JSON property `numCompletedTasks`
        # @return [Fixnum]
        attr_accessor :num_completed_tasks
      
        # 
        # Corresponds to the JSON property `numFailedTasks`
        # @return [Fixnum]
        attr_accessor :num_failed_tasks
      
        # 
        # Corresponds to the JSON property `numKilledTasks`
        # @return [Fixnum]
        attr_accessor :num_killed_tasks
      
        # 
        # Corresponds to the JSON property `numTasks`
        # @return [Fixnum]
        attr_accessor :num_tasks
      
        # 
        # Corresponds to the JSON property `stageAttemptId`
        # @return [Fixnum]
        attr_accessor :stage_attempt_id
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_active_tasks = args[:num_active_tasks] if args.key?(:num_active_tasks)
          @num_completed_tasks = args[:num_completed_tasks] if args.key?(:num_completed_tasks)
          @num_failed_tasks = args[:num_failed_tasks] if args.key?(:num_failed_tasks)
          @num_killed_tasks = args[:num_killed_tasks] if args.key?(:num_killed_tasks)
          @num_tasks = args[:num_tasks] if args.key?(:num_tasks)
          @stage_attempt_id = args[:stage_attempt_id] if args.key?(:stage_attempt_id)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # SQL Execution Data
      class SqlExecutionUiData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # 
        # Corresponds to the JSON property `executionId`
        # @return [Fixnum]
        attr_accessor :execution_id
      
        # 
        # Corresponds to the JSON property `jobs`
        # @return [Hash<String,String>]
        attr_accessor :jobs
      
        # 
        # Corresponds to the JSON property `metricValues`
        # @return [Hash<String,String>]
        attr_accessor :metric_values
      
        # 
        # Corresponds to the JSON property `metricValuesIsNull`
        # @return [Boolean]
        attr_accessor :metric_values_is_null
        alias_method :metric_values_is_null?, :metric_values_is_null
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DataprocV1::SqlPlanMetric>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `modifiedConfigs`
        # @return [Hash<String,String>]
        attr_accessor :modified_configs
      
        # 
        # Corresponds to the JSON property `physicalPlanDescription`
        # @return [String]
        attr_accessor :physical_plan_description
      
        # 
        # Corresponds to the JSON property `rootExecutionId`
        # @return [Fixnum]
        attr_accessor :root_execution_id
      
        # 
        # Corresponds to the JSON property `stages`
        # @return [Array<Fixnum>]
        attr_accessor :stages
      
        # 
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @error_message = args[:error_message] if args.key?(:error_message)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @jobs = args[:jobs] if args.key?(:jobs)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
          @metric_values_is_null = args[:metric_values_is_null] if args.key?(:metric_values_is_null)
          @metrics = args[:metrics] if args.key?(:metrics)
          @modified_configs = args[:modified_configs] if args.key?(:modified_configs)
          @physical_plan_description = args[:physical_plan_description] if args.key?(:physical_plan_description)
          @root_execution_id = args[:root_execution_id] if args.key?(:root_execution_id)
          @stages = args[:stages] if args.key?(:stages)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
        end
      end
      
      # Metrics related to SQL execution.
      class SqlPlanMetric
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accumulatorId`
        # @return [Fixnum]
        attr_accessor :accumulator_id
      
        # 
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accumulator_id = args[:accumulator_id] if args.key?(:accumulator_id)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Data related to tasks summary for a Spark Stage Attempt
      class StageAttemptTasksSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # 
        # Corresponds to the JSON property `numFailedTasks`
        # @return [Fixnum]
        attr_accessor :num_failed_tasks
      
        # 
        # Corresponds to the JSON property `numKilledTasks`
        # @return [Fixnum]
        attr_accessor :num_killed_tasks
      
        # 
        # Corresponds to the JSON property `numPendingTasks`
        # @return [Fixnum]
        attr_accessor :num_pending_tasks
      
        # 
        # Corresponds to the JSON property `numRunningTasks`
        # @return [Fixnum]
        attr_accessor :num_running_tasks
      
        # 
        # Corresponds to the JSON property `numSuccessTasks`
        # @return [Fixnum]
        attr_accessor :num_success_tasks
      
        # 
        # Corresponds to the JSON property `numTasks`
        # @return [Fixnum]
        attr_accessor :num_tasks
      
        # 
        # Corresponds to the JSON property `stageAttemptId`
        # @return [Fixnum]
        attr_accessor :stage_attempt_id
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @num_failed_tasks = args[:num_failed_tasks] if args.key?(:num_failed_tasks)
          @num_killed_tasks = args[:num_killed_tasks] if args.key?(:num_killed_tasks)
          @num_pending_tasks = args[:num_pending_tasks] if args.key?(:num_pending_tasks)
          @num_running_tasks = args[:num_running_tasks] if args.key?(:num_running_tasks)
          @num_success_tasks = args[:num_success_tasks] if args.key?(:num_success_tasks)
          @num_tasks = args[:num_tasks] if args.key?(:num_tasks)
          @stage_attempt_id = args[:stage_attempt_id] if args.key?(:stage_attempt_id)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # Data corresponding to a stage.
      class StageData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accumulatorUpdates`
        # @return [Array<Google::Apis::DataprocV1::AccumulableInfo>]
        attr_accessor :accumulator_updates
      
        # 
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # 
        # Corresponds to the JSON property `executorMetricsDistributions`
        # @return [Google::Apis::DataprocV1::ExecutorMetricsDistributions]
        attr_accessor :executor_metrics_distributions
      
        # 
        # Corresponds to the JSON property `executorSummary`
        # @return [Hash<String,Google::Apis::DataprocV1::ExecutorStageSummary>]
        attr_accessor :executor_summary
      
        # 
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # 
        # Corresponds to the JSON property `firstTaskLaunchedTime`
        # @return [String]
        attr_accessor :first_task_launched_time
      
        # 
        # Corresponds to the JSON property `isShufflePushEnabled`
        # @return [Boolean]
        attr_accessor :is_shuffle_push_enabled
        alias_method :is_shuffle_push_enabled?, :is_shuffle_push_enabled
      
        # 
        # Corresponds to the JSON property `jobIds`
        # @return [Array<Fixnum>]
        attr_accessor :job_ids
      
        # 
        # Corresponds to the JSON property `killedTasksSummary`
        # @return [Hash<String,Fixnum>]
        attr_accessor :killed_tasks_summary
      
        # 
        # Corresponds to the JSON property `locality`
        # @return [Hash<String,Fixnum>]
        attr_accessor :locality
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `numActiveTasks`
        # @return [Fixnum]
        attr_accessor :num_active_tasks
      
        # 
        # Corresponds to the JSON property `numCompleteTasks`
        # @return [Fixnum]
        attr_accessor :num_complete_tasks
      
        # 
        # Corresponds to the JSON property `numCompletedIndices`
        # @return [Fixnum]
        attr_accessor :num_completed_indices
      
        # 
        # Corresponds to the JSON property `numFailedTasks`
        # @return [Fixnum]
        attr_accessor :num_failed_tasks
      
        # 
        # Corresponds to the JSON property `numKilledTasks`
        # @return [Fixnum]
        attr_accessor :num_killed_tasks
      
        # 
        # Corresponds to the JSON property `numTasks`
        # @return [Fixnum]
        attr_accessor :num_tasks
      
        # 
        # Corresponds to the JSON property `parentStageIds`
        # @return [Array<Fixnum>]
        attr_accessor :parent_stage_ids
      
        # 
        # Corresponds to the JSON property `peakExecutorMetrics`
        # @return [Google::Apis::DataprocV1::ExecutorMetrics]
        attr_accessor :peak_executor_metrics
      
        # 
        # Corresponds to the JSON property `rddIds`
        # @return [Array<Fixnum>]
        attr_accessor :rdd_ids
      
        # 
        # Corresponds to the JSON property `resourceProfileId`
        # @return [Fixnum]
        attr_accessor :resource_profile_id
      
        # 
        # Corresponds to the JSON property `schedulingPool`
        # @return [String]
        attr_accessor :scheduling_pool
      
        # 
        # Corresponds to the JSON property `shuffleMergersCount`
        # @return [Fixnum]
        attr_accessor :shuffle_mergers_count
      
        # Details of the speculation task when speculative execution is enabled.
        # Corresponds to the JSON property `speculationSummary`
        # @return [Google::Apis::DataprocV1::SpeculationStageSummary]
        attr_accessor :speculation_summary
      
        # 
        # Corresponds to the JSON property `stageAttemptId`
        # @return [Fixnum]
        attr_accessor :stage_attempt_id
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        # Stage Level Aggregated Metrics
        # Corresponds to the JSON property `stageMetrics`
        # @return [Google::Apis::DataprocV1::StageMetrics]
        attr_accessor :stage_metrics
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        # Summary metrics fields. These are included in response only if present in
        # summary_metrics_mask field in request
        # Corresponds to the JSON property `taskQuantileMetrics`
        # @return [Google::Apis::DataprocV1::TaskQuantileMetrics]
        attr_accessor :task_quantile_metrics
      
        # 
        # Corresponds to the JSON property `tasks`
        # @return [Hash<String,Google::Apis::DataprocV1::TaskData>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accumulator_updates = args[:accumulator_updates] if args.key?(:accumulator_updates)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @executor_metrics_distributions = args[:executor_metrics_distributions] if args.key?(:executor_metrics_distributions)
          @executor_summary = args[:executor_summary] if args.key?(:executor_summary)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @first_task_launched_time = args[:first_task_launched_time] if args.key?(:first_task_launched_time)
          @is_shuffle_push_enabled = args[:is_shuffle_push_enabled] if args.key?(:is_shuffle_push_enabled)
          @job_ids = args[:job_ids] if args.key?(:job_ids)
          @killed_tasks_summary = args[:killed_tasks_summary] if args.key?(:killed_tasks_summary)
          @locality = args[:locality] if args.key?(:locality)
          @name = args[:name] if args.key?(:name)
          @num_active_tasks = args[:num_active_tasks] if args.key?(:num_active_tasks)
          @num_complete_tasks = args[:num_complete_tasks] if args.key?(:num_complete_tasks)
          @num_completed_indices = args[:num_completed_indices] if args.key?(:num_completed_indices)
          @num_failed_tasks = args[:num_failed_tasks] if args.key?(:num_failed_tasks)
          @num_killed_tasks = args[:num_killed_tasks] if args.key?(:num_killed_tasks)
          @num_tasks = args[:num_tasks] if args.key?(:num_tasks)
          @parent_stage_ids = args[:parent_stage_ids] if args.key?(:parent_stage_ids)
          @peak_executor_metrics = args[:peak_executor_metrics] if args.key?(:peak_executor_metrics)
          @rdd_ids = args[:rdd_ids] if args.key?(:rdd_ids)
          @resource_profile_id = args[:resource_profile_id] if args.key?(:resource_profile_id)
          @scheduling_pool = args[:scheduling_pool] if args.key?(:scheduling_pool)
          @shuffle_mergers_count = args[:shuffle_mergers_count] if args.key?(:shuffle_mergers_count)
          @speculation_summary = args[:speculation_summary] if args.key?(:speculation_summary)
          @stage_attempt_id = args[:stage_attempt_id] if args.key?(:stage_attempt_id)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
          @stage_metrics = args[:stage_metrics] if args.key?(:stage_metrics)
          @status = args[:status] if args.key?(:status)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
          @task_quantile_metrics = args[:task_quantile_metrics] if args.key?(:task_quantile_metrics)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # Metrics about the input read by the stage.
      class StageInputMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesRead`
        # @return [Fixnum]
        attr_accessor :bytes_read
      
        # 
        # Corresponds to the JSON property `recordsRead`
        # @return [Fixnum]
        attr_accessor :records_read
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_read = args[:bytes_read] if args.key?(:bytes_read)
          @records_read = args[:records_read] if args.key?(:records_read)
        end
      end
      
      # Stage Level Aggregated Metrics
      class StageMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `diskBytesSpilled`
        # @return [Fixnum]
        attr_accessor :disk_bytes_spilled
      
        # 
        # Corresponds to the JSON property `executorCpuTimeNanos`
        # @return [Fixnum]
        attr_accessor :executor_cpu_time_nanos
      
        # 
        # Corresponds to the JSON property `executorDeserializeCpuTimeNanos`
        # @return [Fixnum]
        attr_accessor :executor_deserialize_cpu_time_nanos
      
        # 
        # Corresponds to the JSON property `executorDeserializeTimeMillis`
        # @return [Fixnum]
        attr_accessor :executor_deserialize_time_millis
      
        # 
        # Corresponds to the JSON property `executorRunTimeMillis`
        # @return [Fixnum]
        attr_accessor :executor_run_time_millis
      
        # 
        # Corresponds to the JSON property `jvmGcTimeMillis`
        # @return [Fixnum]
        attr_accessor :jvm_gc_time_millis
      
        # 
        # Corresponds to the JSON property `memoryBytesSpilled`
        # @return [Fixnum]
        attr_accessor :memory_bytes_spilled
      
        # 
        # Corresponds to the JSON property `peakExecutionMemoryBytes`
        # @return [Fixnum]
        attr_accessor :peak_execution_memory_bytes
      
        # 
        # Corresponds to the JSON property `resultSerializationTimeMillis`
        # @return [Fixnum]
        attr_accessor :result_serialization_time_millis
      
        # 
        # Corresponds to the JSON property `resultSize`
        # @return [Fixnum]
        attr_accessor :result_size
      
        # Metrics about the input read by the stage.
        # Corresponds to the JSON property `stageInputMetrics`
        # @return [Google::Apis::DataprocV1::StageInputMetrics]
        attr_accessor :stage_input_metrics
      
        # Metrics about the output written by the stage.
        # Corresponds to the JSON property `stageOutputMetrics`
        # @return [Google::Apis::DataprocV1::StageOutputMetrics]
        attr_accessor :stage_output_metrics
      
        # Shuffle data read for the stage.
        # Corresponds to the JSON property `stageShuffleReadMetrics`
        # @return [Google::Apis::DataprocV1::StageShuffleReadMetrics]
        attr_accessor :stage_shuffle_read_metrics
      
        # Shuffle data written for the stage.
        # Corresponds to the JSON property `stageShuffleWriteMetrics`
        # @return [Google::Apis::DataprocV1::StageShuffleWriteMetrics]
        attr_accessor :stage_shuffle_write_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_bytes_spilled = args[:disk_bytes_spilled] if args.key?(:disk_bytes_spilled)
          @executor_cpu_time_nanos = args[:executor_cpu_time_nanos] if args.key?(:executor_cpu_time_nanos)
          @executor_deserialize_cpu_time_nanos = args[:executor_deserialize_cpu_time_nanos] if args.key?(:executor_deserialize_cpu_time_nanos)
          @executor_deserialize_time_millis = args[:executor_deserialize_time_millis] if args.key?(:executor_deserialize_time_millis)
          @executor_run_time_millis = args[:executor_run_time_millis] if args.key?(:executor_run_time_millis)
          @jvm_gc_time_millis = args[:jvm_gc_time_millis] if args.key?(:jvm_gc_time_millis)
          @memory_bytes_spilled = args[:memory_bytes_spilled] if args.key?(:memory_bytes_spilled)
          @peak_execution_memory_bytes = args[:peak_execution_memory_bytes] if args.key?(:peak_execution_memory_bytes)
          @result_serialization_time_millis = args[:result_serialization_time_millis] if args.key?(:result_serialization_time_millis)
          @result_size = args[:result_size] if args.key?(:result_size)
          @stage_input_metrics = args[:stage_input_metrics] if args.key?(:stage_input_metrics)
          @stage_output_metrics = args[:stage_output_metrics] if args.key?(:stage_output_metrics)
          @stage_shuffle_read_metrics = args[:stage_shuffle_read_metrics] if args.key?(:stage_shuffle_read_metrics)
          @stage_shuffle_write_metrics = args[:stage_shuffle_write_metrics] if args.key?(:stage_shuffle_write_metrics)
        end
      end
      
      # Metrics about the output written by the stage.
      class StageOutputMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesWritten`
        # @return [Fixnum]
        attr_accessor :bytes_written
      
        # 
        # Corresponds to the JSON property `recordsWritten`
        # @return [Fixnum]
        attr_accessor :records_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_written = args[:bytes_written] if args.key?(:bytes_written)
          @records_written = args[:records_written] if args.key?(:records_written)
        end
      end
      
      # 
      class StageShufflePushReadMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `corruptMergedBlockChunks`
        # @return [Fixnum]
        attr_accessor :corrupt_merged_block_chunks
      
        # 
        # Corresponds to the JSON property `localMergedBlocksFetched`
        # @return [Fixnum]
        attr_accessor :local_merged_blocks_fetched
      
        # 
        # Corresponds to the JSON property `localMergedBytesRead`
        # @return [Fixnum]
        attr_accessor :local_merged_bytes_read
      
        # 
        # Corresponds to the JSON property `localMergedChunksFetched`
        # @return [Fixnum]
        attr_accessor :local_merged_chunks_fetched
      
        # 
        # Corresponds to the JSON property `mergedFetchFallbackCount`
        # @return [Fixnum]
        attr_accessor :merged_fetch_fallback_count
      
        # 
        # Corresponds to the JSON property `remoteMergedBlocksFetched`
        # @return [Fixnum]
        attr_accessor :remote_merged_blocks_fetched
      
        # 
        # Corresponds to the JSON property `remoteMergedBytesRead`
        # @return [Fixnum]
        attr_accessor :remote_merged_bytes_read
      
        # 
        # Corresponds to the JSON property `remoteMergedChunksFetched`
        # @return [Fixnum]
        attr_accessor :remote_merged_chunks_fetched
      
        # 
        # Corresponds to the JSON property `remoteMergedReqsDuration`
        # @return [Fixnum]
        attr_accessor :remote_merged_reqs_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrupt_merged_block_chunks = args[:corrupt_merged_block_chunks] if args.key?(:corrupt_merged_block_chunks)
          @local_merged_blocks_fetched = args[:local_merged_blocks_fetched] if args.key?(:local_merged_blocks_fetched)
          @local_merged_bytes_read = args[:local_merged_bytes_read] if args.key?(:local_merged_bytes_read)
          @local_merged_chunks_fetched = args[:local_merged_chunks_fetched] if args.key?(:local_merged_chunks_fetched)
          @merged_fetch_fallback_count = args[:merged_fetch_fallback_count] if args.key?(:merged_fetch_fallback_count)
          @remote_merged_blocks_fetched = args[:remote_merged_blocks_fetched] if args.key?(:remote_merged_blocks_fetched)
          @remote_merged_bytes_read = args[:remote_merged_bytes_read] if args.key?(:remote_merged_bytes_read)
          @remote_merged_chunks_fetched = args[:remote_merged_chunks_fetched] if args.key?(:remote_merged_chunks_fetched)
          @remote_merged_reqs_duration = args[:remote_merged_reqs_duration] if args.key?(:remote_merged_reqs_duration)
        end
      end
      
      # Shuffle data read for the stage.
      class StageShuffleReadMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesRead`
        # @return [Fixnum]
        attr_accessor :bytes_read
      
        # 
        # Corresponds to the JSON property `fetchWaitTimeMillis`
        # @return [Fixnum]
        attr_accessor :fetch_wait_time_millis
      
        # 
        # Corresponds to the JSON property `localBlocksFetched`
        # @return [Fixnum]
        attr_accessor :local_blocks_fetched
      
        # 
        # Corresponds to the JSON property `localBytesRead`
        # @return [Fixnum]
        attr_accessor :local_bytes_read
      
        # 
        # Corresponds to the JSON property `recordsRead`
        # @return [Fixnum]
        attr_accessor :records_read
      
        # 
        # Corresponds to the JSON property `remoteBlocksFetched`
        # @return [Fixnum]
        attr_accessor :remote_blocks_fetched
      
        # 
        # Corresponds to the JSON property `remoteBytesRead`
        # @return [Fixnum]
        attr_accessor :remote_bytes_read
      
        # 
        # Corresponds to the JSON property `remoteBytesReadToDisk`
        # @return [Fixnum]
        attr_accessor :remote_bytes_read_to_disk
      
        # 
        # Corresponds to the JSON property `remoteReqsDuration`
        # @return [Fixnum]
        attr_accessor :remote_reqs_duration
      
        # 
        # Corresponds to the JSON property `stageShufflePushReadMetrics`
        # @return [Google::Apis::DataprocV1::StageShufflePushReadMetrics]
        attr_accessor :stage_shuffle_push_read_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_read = args[:bytes_read] if args.key?(:bytes_read)
          @fetch_wait_time_millis = args[:fetch_wait_time_millis] if args.key?(:fetch_wait_time_millis)
          @local_blocks_fetched = args[:local_blocks_fetched] if args.key?(:local_blocks_fetched)
          @local_bytes_read = args[:local_bytes_read] if args.key?(:local_bytes_read)
          @records_read = args[:records_read] if args.key?(:records_read)
          @remote_blocks_fetched = args[:remote_blocks_fetched] if args.key?(:remote_blocks_fetched)
          @remote_bytes_read = args[:remote_bytes_read] if args.key?(:remote_bytes_read)
          @remote_bytes_read_to_disk = args[:remote_bytes_read_to_disk] if args.key?(:remote_bytes_read_to_disk)
          @remote_reqs_duration = args[:remote_reqs_duration] if args.key?(:remote_reqs_duration)
          @stage_shuffle_push_read_metrics = args[:stage_shuffle_push_read_metrics] if args.key?(:stage_shuffle_push_read_metrics)
        end
      end
      
      # Shuffle data written for the stage.
      class StageShuffleWriteMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bytesWritten`
        # @return [Fixnum]
        attr_accessor :bytes_written
      
        # 
        # Corresponds to the JSON property `recordsWritten`
        # @return [Fixnum]
        attr_accessor :records_written
      
        # 
        # Corresponds to the JSON property `writeTimeNanos`
        # @return [Fixnum]
        attr_accessor :write_time_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_written = args[:bytes_written] if args.key?(:bytes_written)
          @records_written = args[:records_written] if args.key?(:records_written)
          @write_time_nanos = args[:write_time_nanos] if args.key?(:write_time_nanos)
        end
      end
      
      # Data related to Stages page summary
      class StagesSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # 
        # Corresponds to the JSON property `numActiveStages`
        # @return [Fixnum]
        attr_accessor :num_active_stages
      
        # 
        # Corresponds to the JSON property `numCompletedStages`
        # @return [Fixnum]
        attr_accessor :num_completed_stages
      
        # 
        # Corresponds to the JSON property `numFailedStages`
        # @return [Fixnum]
        attr_accessor :num_failed_stages
      
        # 
        # Corresponds to the JSON property `numPendingStages`
        # @return [Fixnum]
        attr_accessor :num_pending_stages
      
        # 
        # Corresponds to the JSON property `numSkippedStages`
        # @return [Fixnum]
        attr_accessor :num_skipped_stages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @num_active_stages = args[:num_active_stages] if args.key?(:num_active_stages)
          @num_completed_stages = args[:num_completed_stages] if args.key?(:num_completed_stages)
          @num_failed_stages = args[:num_failed_stages] if args.key?(:num_failed_stages)
          @num_pending_stages = args[:num_pending_stages] if args.key?(:num_pending_stages)
          @num_skipped_stages = args[:num_skipped_stages] if args.key?(:num_skipped_stages)
        end
      end
      
      # A request to start a cluster.
      class StartClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Specifying the cluster_uuid means the RPC will fail (with error
        # NOT_FOUND) if a cluster with the specified UUID does not exist.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Optional. A unique ID used to identify the request. If the server receives two
        # StartClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#google.cloud.dataproc.v1.StartClusterRequest)s with
        # the same id, then the second request will be ignored and the first google.
        # longrunning.Operation created and stored in the backend is returned.
        # Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/
        # Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Configuration to handle the startup of instances during cluster create and
      # update process.
      class StartupConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The config setting to enable cluster creation/ updation to be
        # successful only after required_registration_fraction of instances are up and
        # running. This configuration is applicable to only secondary workers for now.
        # The cluster will fail if required_registration_fraction of instances are not
        # available. This will include instance creation, agent registration, and
        # service registration (if enabled).
        # Corresponds to the JSON property `requiredRegistrationFraction`
        # @return [Float]
        attr_accessor :required_registration_fraction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_registration_fraction = args[:required_registration_fraction] if args.key?(:required_registration_fraction)
        end
      end
      
      # Historical state information.
      class StateHistory
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the batch at this point in history.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Details about the state at this point in history.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time when the batch entered the historical state.
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
        end
      end
      
      # 
      class StateOperatorProgress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allRemovalsTimeMs`
        # @return [Fixnum]
        attr_accessor :all_removals_time_ms
      
        # 
        # Corresponds to the JSON property `allUpdatesTimeMs`
        # @return [Fixnum]
        attr_accessor :all_updates_time_ms
      
        # 
        # Corresponds to the JSON property `commitTimeMs`
        # @return [Fixnum]
        attr_accessor :commit_time_ms
      
        # 
        # Corresponds to the JSON property `customMetrics`
        # @return [Hash<String,Fixnum>]
        attr_accessor :custom_metrics
      
        # 
        # Corresponds to the JSON property `memoryUsedBytes`
        # @return [Fixnum]
        attr_accessor :memory_used_bytes
      
        # 
        # Corresponds to the JSON property `numRowsDroppedByWatermark`
        # @return [Fixnum]
        attr_accessor :num_rows_dropped_by_watermark
      
        # 
        # Corresponds to the JSON property `numRowsRemoved`
        # @return [Fixnum]
        attr_accessor :num_rows_removed
      
        # 
        # Corresponds to the JSON property `numRowsTotal`
        # @return [Fixnum]
        attr_accessor :num_rows_total
      
        # 
        # Corresponds to the JSON property `numRowsUpdated`
        # @return [Fixnum]
        attr_accessor :num_rows_updated
      
        # 
        # Corresponds to the JSON property `numShufflePartitions`
        # @return [Fixnum]
        attr_accessor :num_shuffle_partitions
      
        # 
        # Corresponds to the JSON property `numStateStoreInstances`
        # @return [Fixnum]
        attr_accessor :num_state_store_instances
      
        # 
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_removals_time_ms = args[:all_removals_time_ms] if args.key?(:all_removals_time_ms)
          @all_updates_time_ms = args[:all_updates_time_ms] if args.key?(:all_updates_time_ms)
          @commit_time_ms = args[:commit_time_ms] if args.key?(:commit_time_ms)
          @custom_metrics = args[:custom_metrics] if args.key?(:custom_metrics)
          @memory_used_bytes = args[:memory_used_bytes] if args.key?(:memory_used_bytes)
          @num_rows_dropped_by_watermark = args[:num_rows_dropped_by_watermark] if args.key?(:num_rows_dropped_by_watermark)
          @num_rows_removed = args[:num_rows_removed] if args.key?(:num_rows_removed)
          @num_rows_total = args[:num_rows_total] if args.key?(:num_rows_total)
          @num_rows_updated = args[:num_rows_updated] if args.key?(:num_rows_updated)
          @num_shuffle_partitions = args[:num_shuffle_partitions] if args.key?(:num_shuffle_partitions)
          @num_state_store_instances = args[:num_state_store_instances] if args.key?(:num_state_store_instances)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
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
      
      # A request to stop a cluster.
      class StopClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Specifying the cluster_uuid means the RPC will fail (with error
        # NOT_FOUND) if a cluster with the specified UUID does not exist.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # Optional. A unique ID used to identify the request. If the server receives two
        # StopClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#google.cloud.dataproc.v1.StopClusterRequest)s with
        # the same id, then the second request will be ignored and the first google.
        # longrunning.Operation created and stored in the backend is returned.
        # Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/
        # Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        # characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Stream Block Data.
      class StreamBlockData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deserialized`
        # @return [Boolean]
        attr_accessor :deserialized
        alias_method :deserialized?, :deserialized
      
        # 
        # Corresponds to the JSON property `diskSize`
        # @return [Fixnum]
        attr_accessor :disk_size
      
        # 
        # Corresponds to the JSON property `executorId`
        # @return [String]
        attr_accessor :executor_id
      
        # 
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        # 
        # Corresponds to the JSON property `memSize`
        # @return [Fixnum]
        attr_accessor :mem_size
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `storageLevel`
        # @return [String]
        attr_accessor :storage_level
      
        # 
        # Corresponds to the JSON property `useDisk`
        # @return [Boolean]
        attr_accessor :use_disk
        alias_method :use_disk?, :use_disk
      
        # 
        # Corresponds to the JSON property `useMemory`
        # @return [Boolean]
        attr_accessor :use_memory
        alias_method :use_memory?, :use_memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deserialized = args[:deserialized] if args.key?(:deserialized)
          @disk_size = args[:disk_size] if args.key?(:disk_size)
          @executor_id = args[:executor_id] if args.key?(:executor_id)
          @host_port = args[:host_port] if args.key?(:host_port)
          @mem_size = args[:mem_size] if args.key?(:mem_size)
          @name = args[:name] if args.key?(:name)
          @storage_level = args[:storage_level] if args.key?(:storage_level)
          @use_disk = args[:use_disk] if args.key?(:use_disk)
          @use_memory = args[:use_memory] if args.key?(:use_memory)
        end
      end
      
      # Streaming
      class StreamingQueryData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endTimestamp`
        # @return [Fixnum]
        attr_accessor :end_timestamp
      
        # 
        # Corresponds to the JSON property `exception`
        # @return [String]
        attr_accessor :exception
      
        # 
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `runId`
        # @return [String]
        attr_accessor :run_id
      
        # 
        # Corresponds to the JSON property `startTimestamp`
        # @return [Fixnum]
        attr_accessor :start_timestamp
      
        # 
        # Corresponds to the JSON property `streamingQueryId`
        # @return [String]
        attr_accessor :streaming_query_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @exception = args[:exception] if args.key?(:exception)
          @is_active = args[:is_active] if args.key?(:is_active)
          @name = args[:name] if args.key?(:name)
          @run_id = args[:run_id] if args.key?(:run_id)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @streaming_query_id = args[:streaming_query_id] if args.key?(:streaming_query_id)
        end
      end
      
      # 
      class StreamingQueryProgress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `batchDuration`
        # @return [Fixnum]
        attr_accessor :batch_duration
      
        # 
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # 
        # Corresponds to the JSON property `durationMillis`
        # @return [Hash<String,Fixnum>]
        attr_accessor :duration_millis
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [Hash<String,String>]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `observedMetrics`
        # @return [Hash<String,String>]
        attr_accessor :observed_metrics
      
        # 
        # Corresponds to the JSON property `runId`
        # @return [String]
        attr_accessor :run_id
      
        # 
        # Corresponds to the JSON property `sink`
        # @return [Google::Apis::DataprocV1::SinkProgress]
        attr_accessor :sink
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::DataprocV1::SourceProgress>]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `stateOperators`
        # @return [Array<Google::Apis::DataprocV1::StateOperatorProgress>]
        attr_accessor :state_operators
      
        # 
        # Corresponds to the JSON property `streamingQueryProgressId`
        # @return [String]
        attr_accessor :streaming_query_progress_id
      
        # 
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_duration = args[:batch_duration] if args.key?(:batch_duration)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
          @event_time = args[:event_time] if args.key?(:event_time)
          @name = args[:name] if args.key?(:name)
          @observed_metrics = args[:observed_metrics] if args.key?(:observed_metrics)
          @run_id = args[:run_id] if args.key?(:run_id)
          @sink = args[:sink] if args.key?(:sink)
          @sources = args[:sources] if args.key?(:sources)
          @state_operators = args[:state_operators] if args.key?(:state_operators)
          @streaming_query_progress_id = args[:streaming_query_progress_id] if args.key?(:streaming_query_progress_id)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # A request to submit a job.
      class SubmitJobRequest
        include Google::Apis::Core::Hashable
      
        # A Dataproc job resource.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::DataprocV1::Job]
        attr_accessor :job
      
        # Optional. A unique id used to identify the request. If the server receives two
        # SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.
        # cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id,
        # then the second request will be ignored and the first Job created and stored
        # in the backend is returned.It is recommended to always set this value to a
        # UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
        # contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        # ). The maximum length is 40 characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Consolidated summary of executors for a Spark Application.
      class SummarizeSessionSparkApplicationExecutorsResponse
        include Google::Apis::Core::Hashable
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `activeExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :active_executor_summary
      
        # Spark Application Id
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `deadExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :dead_executor_summary
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `totalExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :total_executor_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_executor_summary = args[:active_executor_summary] if args.key?(:active_executor_summary)
          @application_id = args[:application_id] if args.key?(:application_id)
          @dead_executor_summary = args[:dead_executor_summary] if args.key?(:dead_executor_summary)
          @total_executor_summary = args[:total_executor_summary] if args.key?(:total_executor_summary)
        end
      end
      
      # Summary of a Spark Application jobs.
      class SummarizeSessionSparkApplicationJobsResponse
        include Google::Apis::Core::Hashable
      
        # Data related to Jobs page summary
        # Corresponds to the JSON property `jobsSummary`
        # @return [Google::Apis::DataprocV1::JobsSummary]
        attr_accessor :jobs_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs_summary = args[:jobs_summary] if args.key?(:jobs_summary)
        end
      end
      
      # Summary of tasks for a Spark Application stage attempt.
      class SummarizeSessionSparkApplicationStageAttemptTasksResponse
        include Google::Apis::Core::Hashable
      
        # Data related to tasks summary for a Spark Stage Attempt
        # Corresponds to the JSON property `stageAttemptTasksSummary`
        # @return [Google::Apis::DataprocV1::StageAttemptTasksSummary]
        attr_accessor :stage_attempt_tasks_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stage_attempt_tasks_summary = args[:stage_attempt_tasks_summary] if args.key?(:stage_attempt_tasks_summary)
        end
      end
      
      # Summary of a Spark Application stages.
      class SummarizeSessionSparkApplicationStagesResponse
        include Google::Apis::Core::Hashable
      
        # Data related to Stages page summary
        # Corresponds to the JSON property `stagesSummary`
        # @return [Google::Apis::DataprocV1::StagesSummary]
        attr_accessor :stages_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stages_summary = args[:stages_summary] if args.key?(:stages_summary)
        end
      end
      
      # Consolidated summary of executors for a Spark Application.
      class SummarizeSparkApplicationExecutorsResponse
        include Google::Apis::Core::Hashable
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `activeExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :active_executor_summary
      
        # Spark Application Id
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `deadExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :dead_executor_summary
      
        # Consolidated summary about executors used by the application.
        # Corresponds to the JSON property `totalExecutorSummary`
        # @return [Google::Apis::DataprocV1::ConsolidatedExecutorSummary]
        attr_accessor :total_executor_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_executor_summary = args[:active_executor_summary] if args.key?(:active_executor_summary)
          @application_id = args[:application_id] if args.key?(:application_id)
          @dead_executor_summary = args[:dead_executor_summary] if args.key?(:dead_executor_summary)
          @total_executor_summary = args[:total_executor_summary] if args.key?(:total_executor_summary)
        end
      end
      
      # Summary of a Spark Application jobs.
      class SummarizeSparkApplicationJobsResponse
        include Google::Apis::Core::Hashable
      
        # Data related to Jobs page summary
        # Corresponds to the JSON property `jobsSummary`
        # @return [Google::Apis::DataprocV1::JobsSummary]
        attr_accessor :jobs_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs_summary = args[:jobs_summary] if args.key?(:jobs_summary)
        end
      end
      
      # Summary of tasks for a Spark Application stage attempt.
      class SummarizeSparkApplicationStageAttemptTasksResponse
        include Google::Apis::Core::Hashable
      
        # Data related to tasks summary for a Spark Stage Attempt
        # Corresponds to the JSON property `stageAttemptTasksSummary`
        # @return [Google::Apis::DataprocV1::StageAttemptTasksSummary]
        attr_accessor :stage_attempt_tasks_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stage_attempt_tasks_summary = args[:stage_attempt_tasks_summary] if args.key?(:stage_attempt_tasks_summary)
        end
      end
      
      # Summary of a Spark Application stages.
      class SummarizeSparkApplicationStagesResponse
        include Google::Apis::Core::Hashable
      
        # Data related to Stages page summary
        # Corresponds to the JSON property `stagesSummary`
        # @return [Google::Apis::DataprocV1::StagesSummary]
        attr_accessor :stages_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stages_summary = args[:stages_summary] if args.key?(:stages_summary)
        end
      end
      
      # Data corresponding to tasks created by spark.
      class TaskData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accumulatorUpdates`
        # @return [Array<Google::Apis::DataprocV1::AccumulableInfo>]
        attr_accessor :accumulator_updates
      
        # 
        # Corresponds to the JSON property `attempt`
        # @return [Fixnum]
        attr_accessor :attempt
      
        # 
        # Corresponds to the JSON property `durationMillis`
        # @return [Fixnum]
        attr_accessor :duration_millis
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # 
        # Corresponds to the JSON property `executorId`
        # @return [String]
        attr_accessor :executor_id
      
        # 
        # Corresponds to the JSON property `executorLogs`
        # @return [Hash<String,String>]
        attr_accessor :executor_logs
      
        # 
        # Corresponds to the JSON property `gettingResultTimeMillis`
        # @return [Fixnum]
        attr_accessor :getting_result_time_millis
      
        # 
        # Corresponds to the JSON property `hasMetrics`
        # @return [Boolean]
        attr_accessor :has_metrics
        alias_method :has_metrics?, :has_metrics
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # 
        # Corresponds to the JSON property `launchTime`
        # @return [String]
        attr_accessor :launch_time
      
        # 
        # Corresponds to the JSON property `partitionId`
        # @return [Fixnum]
        attr_accessor :partition_id
      
        # 
        # Corresponds to the JSON property `resultFetchStart`
        # @return [String]
        attr_accessor :result_fetch_start
      
        # 
        # Corresponds to the JSON property `schedulerDelayMillis`
        # @return [Fixnum]
        attr_accessor :scheduler_delay_millis
      
        # 
        # Corresponds to the JSON property `speculative`
        # @return [Boolean]
        attr_accessor :speculative
        alias_method :speculative?, :speculative
      
        # 
        # Corresponds to the JSON property `stageAttemptId`
        # @return [Fixnum]
        attr_accessor :stage_attempt_id
      
        # 
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `taskId`
        # @return [Fixnum]
        attr_accessor :task_id
      
        # 
        # Corresponds to the JSON property `taskLocality`
        # @return [String]
        attr_accessor :task_locality
      
        # Executor Task Metrics
        # Corresponds to the JSON property `taskMetrics`
        # @return [Google::Apis::DataprocV1::TaskMetrics]
        attr_accessor :task_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accumulator_updates = args[:accumulator_updates] if args.key?(:accumulator_updates)
          @attempt = args[:attempt] if args.key?(:attempt)
          @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
          @error_message = args[:error_message] if args.key?(:error_message)
          @executor_id = args[:executor_id] if args.key?(:executor_id)
          @executor_logs = args[:executor_logs] if args.key?(:executor_logs)
          @getting_result_time_millis = args[:getting_result_time_millis] if args.key?(:getting_result_time_millis)
          @has_metrics = args[:has_metrics] if args.key?(:has_metrics)
          @host = args[:host] if args.key?(:host)
          @index = args[:index] if args.key?(:index)
          @launch_time = args[:launch_time] if args.key?(:launch_time)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @result_fetch_start = args[:result_fetch_start] if args.key?(:result_fetch_start)
          @scheduler_delay_millis = args[:scheduler_delay_millis] if args.key?(:scheduler_delay_millis)
          @speculative = args[:speculative] if args.key?(:speculative)
          @stage_attempt_id = args[:stage_attempt_id] if args.key?(:stage_attempt_id)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
          @status = args[:status] if args.key?(:status)
          @task_id = args[:task_id] if args.key?(:task_id)
          @task_locality = args[:task_locality] if args.key?(:task_locality)
          @task_metrics = args[:task_metrics] if args.key?(:task_metrics)
        end
      end
      
      # Executor Task Metrics
      class TaskMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `diskBytesSpilled`
        # @return [Fixnum]
        attr_accessor :disk_bytes_spilled
      
        # 
        # Corresponds to the JSON property `executorCpuTimeNanos`
        # @return [Fixnum]
        attr_accessor :executor_cpu_time_nanos
      
        # 
        # Corresponds to the JSON property `executorDeserializeCpuTimeNanos`
        # @return [Fixnum]
        attr_accessor :executor_deserialize_cpu_time_nanos
      
        # 
        # Corresponds to the JSON property `executorDeserializeTimeMillis`
        # @return [Fixnum]
        attr_accessor :executor_deserialize_time_millis
      
        # 
        # Corresponds to the JSON property `executorRunTimeMillis`
        # @return [Fixnum]
        attr_accessor :executor_run_time_millis
      
        # Metrics about the input data read by the task.
        # Corresponds to the JSON property `inputMetrics`
        # @return [Google::Apis::DataprocV1::InputMetrics]
        attr_accessor :input_metrics
      
        # 
        # Corresponds to the JSON property `jvmGcTimeMillis`
        # @return [Fixnum]
        attr_accessor :jvm_gc_time_millis
      
        # 
        # Corresponds to the JSON property `memoryBytesSpilled`
        # @return [Fixnum]
        attr_accessor :memory_bytes_spilled
      
        # Metrics about the data written by the task.
        # Corresponds to the JSON property `outputMetrics`
        # @return [Google::Apis::DataprocV1::OutputMetrics]
        attr_accessor :output_metrics
      
        # 
        # Corresponds to the JSON property `peakExecutionMemoryBytes`
        # @return [Fixnum]
        attr_accessor :peak_execution_memory_bytes
      
        # 
        # Corresponds to the JSON property `resultSerializationTimeMillis`
        # @return [Fixnum]
        attr_accessor :result_serialization_time_millis
      
        # 
        # Corresponds to the JSON property `resultSize`
        # @return [Fixnum]
        attr_accessor :result_size
      
        # Shuffle data read by the task.
        # Corresponds to the JSON property `shuffleReadMetrics`
        # @return [Google::Apis::DataprocV1::ShuffleReadMetrics]
        attr_accessor :shuffle_read_metrics
      
        # Shuffle data written by task.
        # Corresponds to the JSON property `shuffleWriteMetrics`
        # @return [Google::Apis::DataprocV1::ShuffleWriteMetrics]
        attr_accessor :shuffle_write_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_bytes_spilled = args[:disk_bytes_spilled] if args.key?(:disk_bytes_spilled)
          @executor_cpu_time_nanos = args[:executor_cpu_time_nanos] if args.key?(:executor_cpu_time_nanos)
          @executor_deserialize_cpu_time_nanos = args[:executor_deserialize_cpu_time_nanos] if args.key?(:executor_deserialize_cpu_time_nanos)
          @executor_deserialize_time_millis = args[:executor_deserialize_time_millis] if args.key?(:executor_deserialize_time_millis)
          @executor_run_time_millis = args[:executor_run_time_millis] if args.key?(:executor_run_time_millis)
          @input_metrics = args[:input_metrics] if args.key?(:input_metrics)
          @jvm_gc_time_millis = args[:jvm_gc_time_millis] if args.key?(:jvm_gc_time_millis)
          @memory_bytes_spilled = args[:memory_bytes_spilled] if args.key?(:memory_bytes_spilled)
          @output_metrics = args[:output_metrics] if args.key?(:output_metrics)
          @peak_execution_memory_bytes = args[:peak_execution_memory_bytes] if args.key?(:peak_execution_memory_bytes)
          @result_serialization_time_millis = args[:result_serialization_time_millis] if args.key?(:result_serialization_time_millis)
          @result_size = args[:result_size] if args.key?(:result_size)
          @shuffle_read_metrics = args[:shuffle_read_metrics] if args.key?(:shuffle_read_metrics)
          @shuffle_write_metrics = args[:shuffle_write_metrics] if args.key?(:shuffle_write_metrics)
        end
      end
      
      # 
      class TaskQuantileMetrics
        include Google::Apis::Core::Hashable
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `diskBytesSpilled`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :disk_bytes_spilled
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `durationMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :duration_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `executorCpuTimeNanos`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :executor_cpu_time_nanos
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `executorDeserializeCpuTimeNanos`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :executor_deserialize_cpu_time_nanos
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `executorDeserializeTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :executor_deserialize_time_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `executorRunTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :executor_run_time_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `gettingResultTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :getting_result_time_millis
      
        # 
        # Corresponds to the JSON property `inputMetrics`
        # @return [Google::Apis::DataprocV1::InputQuantileMetrics]
        attr_accessor :input_metrics
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `jvmGcTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :jvm_gc_time_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `memoryBytesSpilled`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :memory_bytes_spilled
      
        # 
        # Corresponds to the JSON property `outputMetrics`
        # @return [Google::Apis::DataprocV1::OutputQuantileMetrics]
        attr_accessor :output_metrics
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `peakExecutionMemoryBytes`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :peak_execution_memory_bytes
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `resultSerializationTimeMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :result_serialization_time_millis
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `resultSize`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :result_size
      
        # Quantile metrics data related to Tasks. Units can be seconds, bytes,
        # milliseconds, etc depending on the message type.
        # Corresponds to the JSON property `schedulerDelayMillis`
        # @return [Google::Apis::DataprocV1::Quantiles]
        attr_accessor :scheduler_delay_millis
      
        # 
        # Corresponds to the JSON property `shuffleReadMetrics`
        # @return [Google::Apis::DataprocV1::ShuffleReadQuantileMetrics]
        attr_accessor :shuffle_read_metrics
      
        # 
        # Corresponds to the JSON property `shuffleWriteMetrics`
        # @return [Google::Apis::DataprocV1::ShuffleWriteQuantileMetrics]
        attr_accessor :shuffle_write_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_bytes_spilled = args[:disk_bytes_spilled] if args.key?(:disk_bytes_spilled)
          @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
          @executor_cpu_time_nanos = args[:executor_cpu_time_nanos] if args.key?(:executor_cpu_time_nanos)
          @executor_deserialize_cpu_time_nanos = args[:executor_deserialize_cpu_time_nanos] if args.key?(:executor_deserialize_cpu_time_nanos)
          @executor_deserialize_time_millis = args[:executor_deserialize_time_millis] if args.key?(:executor_deserialize_time_millis)
          @executor_run_time_millis = args[:executor_run_time_millis] if args.key?(:executor_run_time_millis)
          @getting_result_time_millis = args[:getting_result_time_millis] if args.key?(:getting_result_time_millis)
          @input_metrics = args[:input_metrics] if args.key?(:input_metrics)
          @jvm_gc_time_millis = args[:jvm_gc_time_millis] if args.key?(:jvm_gc_time_millis)
          @memory_bytes_spilled = args[:memory_bytes_spilled] if args.key?(:memory_bytes_spilled)
          @output_metrics = args[:output_metrics] if args.key?(:output_metrics)
          @peak_execution_memory_bytes = args[:peak_execution_memory_bytes] if args.key?(:peak_execution_memory_bytes)
          @result_serialization_time_millis = args[:result_serialization_time_millis] if args.key?(:result_serialization_time_millis)
          @result_size = args[:result_size] if args.key?(:result_size)
          @scheduler_delay_millis = args[:scheduler_delay_millis] if args.key?(:scheduler_delay_millis)
          @shuffle_read_metrics = args[:shuffle_read_metrics] if args.key?(:shuffle_read_metrics)
          @shuffle_write_metrics = args[:shuffle_write_metrics] if args.key?(:shuffle_write_metrics)
        end
      end
      
      # Resources used per task created by the application.
      class TaskResourceRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `amount`
        # @return [Float]
        attr_accessor :amount
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A configurable parameter that replaces one or more fields in the template.
      # Parameterizable fields: - Labels - File uris - Job properties - Job arguments -
      # Script variables - Main class (in HadoopJob and SparkJob) - Zone (in
      # ClusterSelector)
      class TemplateParameter
        include Google::Apis::Core::Hashable
      
        # Optional. Brief description of the parameter. Must not exceed 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Paths to all fields that the parameter replaces. A field is allowed
        # to appear in at most one parameter's list of field paths.A field path is
        # similar in syntax to a google.protobuf.FieldMask. For example, a field path
        # that references the zone field of a workflow template's cluster selector would
        # be specified as placement.clusterSelector.zone.Also, field paths can reference
        # fields using the following syntax: Values in maps can be referenced by key:
        # labels'key' placement.clusterSelector.clusterLabels'key' placement.
        # managedCluster.labels'key' placement.clusterSelector.clusterLabels'key' jobs'
        # step-id'.labels'key' Jobs in the jobs list can be referenced by step-id: jobs'
        # step-id'.hadoopJob.mainJarFileUri jobs'step-id'.hiveJob.queryFileUri jobs'step-
        # id'.pySparkJob.mainPythonFileUri jobs'step-id'.hadoopJob.jarFileUris0 jobs'
        # step-id'.hadoopJob.archiveUris0 jobs'step-id'.hadoopJob.fileUris0 jobs'step-id'
        # .pySparkJob.pythonFileUris0 Items in repeated fields can be referenced by a
        # zero-based index: jobs'step-id'.sparkJob.args0 Other examples: jobs'step-id'.
        # hadoopJob.properties'key' jobs'step-id'.hadoopJob.args0 jobs'step-id'.hiveJob.
        # scriptVariables'key' jobs'step-id'.hadoopJob.mainJarFileUri placement.
        # clusterSelector.zoneIt may not be possible to parameterize maps and repeated
        # fields in their entirety since only individual map values and individual items
        # in repeated fields can be referenced. For example, the following field paths
        # are invalid: placement.clusterSelector.clusterLabels jobs'step-id'.sparkJob.
        # args
        # Corresponds to the JSON property `fields`
        # @return [Array<String>]
        attr_accessor :fields
      
        # Required. Parameter name. The parameter name is used as the key, and paired
        # with the parameter value, which are passed to the template when the template
        # is instantiated. The name must contain only capital letters (A-Z), numbers (0-
        # 9), and underscores (_), and must not start with a number. The maximum length
        # is 40 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for parameter validation.
        # Corresponds to the JSON property `validation`
        # @return [Google::Apis::DataprocV1::ParameterValidation]
        attr_accessor :validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @validation = args[:validation] if args.key?(:validation)
        end
      end
      
      # A request to terminate an interactive session.
      class TerminateSessionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A unique ID used to identify the request. If the service receives
        # two TerminateSessionRequest (https://cloud.google.com/dataproc/docs/reference/
        # rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.TerminateSessionRequest)
        # s with the same ID, the second request is ignored.Recommendation: Set this
        # value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).
        # The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
        # and hyphens (-). The maximum length is 40 characters.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for TestIamPermissions method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the resource. Permissions with wildcards (
        # such as * or storage.*) are not allowed. For more information see IAM Overview
        # (https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for TestIamPermissions method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of TestPermissionsRequest.permissions that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The
      # Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/
      # concepts/components/trino) must be enabled when the cluster is created to
      # submit a Trino job to the cluster.
      class TrinoJob
        include Google::Apis::Core::Hashable
      
        # Optional. Trino client tags to attach to this query
        # Corresponds to the JSON property `clientTags`
        # @return [Array<String>]
        attr_accessor :client_tags
      
        # Optional. Whether to continue executing queries if a query fails. The default
        # value is false. Setting to true can be useful when executing independent
        # parallel queries.
        # Corresponds to the JSON property `continueOnFailure`
        # @return [Boolean]
        attr_accessor :continue_on_failure
        alias_method :continue_on_failure?, :continue_on_failure
      
        # The runtime logging config of the job.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DataprocV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Optional. The format in which query output will be displayed. See the Trino
        # documentation for supported output formats
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Optional. A mapping of property names to values. Used to set Trino session
        # properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to
        # using the --session flag in the Trino CLI
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The HCFS URI of the script that contains SQL queries.
        # Corresponds to the JSON property `queryFileUri`
        # @return [String]
        attr_accessor :query_file_uri
      
        # A list of queries to run on a cluster.
        # Corresponds to the JSON property `queryList`
        # @return [Google::Apis::DataprocV1::QueryList]
        attr_accessor :query_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_tags = args[:client_tags] if args.key?(:client_tags)
          @continue_on_failure = args[:continue_on_failure] if args.key?(:continue_on_failure)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @output_format = args[:output_format] if args.key?(:output_format)
          @properties = args[:properties] if args.key?(:properties)
          @query_file_uri = args[:query_file_uri] if args.key?(:query_file_uri)
          @query_list = args[:query_list] if args.key?(:query_list)
        end
      end
      
      # Usage metrics represent approximate total resources consumed by a workload.
      class UsageMetrics
        include Google::Apis::Core::Hashable
      
        # Optional. DEPRECATED Accelerator type being used, if any
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Optional. DEPRECATED Accelerator usage in (milliAccelerator x seconds) (see
        # Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/
        # pricing)).
        # Corresponds to the JSON property `milliAcceleratorSeconds`
        # @return [Fixnum]
        attr_accessor :milli_accelerator_seconds
      
        # Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see
        # Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/
        # pricing)).
        # Corresponds to the JSON property `milliDcuSeconds`
        # @return [Fixnum]
        attr_accessor :milli_dcu_seconds
      
        # Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless
        # pricing (https://cloud.google.com/dataproc-serverless/pricing)).
        # Corresponds to the JSON property `shuffleStorageGbSeconds`
        # @return [Fixnum]
        attr_accessor :shuffle_storage_gb_seconds
      
        # Optional. The timestamp of the usage metrics.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @milli_accelerator_seconds = args[:milli_accelerator_seconds] if args.key?(:milli_accelerator_seconds)
          @milli_dcu_seconds = args[:milli_dcu_seconds] if args.key?(:milli_dcu_seconds)
          @shuffle_storage_gb_seconds = args[:shuffle_storage_gb_seconds] if args.key?(:shuffle_storage_gb_seconds)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The usage snapshot represents the resources consumed by a workload at a
      # specified time.
      class UsageSnapshot
        include Google::Apis::Core::Hashable
      
        # Optional. Accelerator type being used, if any
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing
        # (https://cloud.google.com/dataproc-serverless/pricing))
        # Corresponds to the JSON property `milliAccelerator`
        # @return [Fixnum]
        attr_accessor :milli_accelerator
      
        # Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc
        # Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
        # Corresponds to the JSON property `milliDcu`
        # @return [Fixnum]
        attr_accessor :milli_dcu
      
        # Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at
        # premium tier (see Dataproc Serverless pricing (https://cloud.google.com/
        # dataproc-serverless/pricing)).
        # Corresponds to the JSON property `milliDcuPremium`
        # @return [Fixnum]
        attr_accessor :milli_dcu_premium
      
        # Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (
        # https://cloud.google.com/dataproc-serverless/pricing))
        # Corresponds to the JSON property `shuffleStorageGb`
        # @return [Fixnum]
        attr_accessor :shuffle_storage_gb
      
        # Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see
        # Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/
        # pricing))
        # Corresponds to the JSON property `shuffleStorageGbPremium`
        # @return [Fixnum]
        attr_accessor :shuffle_storage_gb_premium
      
        # Optional. The timestamp of the usage snapshot.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @milli_accelerator = args[:milli_accelerator] if args.key?(:milli_accelerator)
          @milli_dcu = args[:milli_dcu] if args.key?(:milli_dcu)
          @milli_dcu_premium = args[:milli_dcu_premium] if args.key?(:milli_dcu_premium)
          @shuffle_storage_gb = args[:shuffle_storage_gb] if args.key?(:shuffle_storage_gb)
          @shuffle_storage_gb_premium = args[:shuffle_storage_gb_premium] if args.key?(:shuffle_storage_gb_premium)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Annotatated property value.
      class ValueInfo
        include Google::Apis::Core::Hashable
      
        # Annotation, comment or explanation why the property was set.
        # Corresponds to the JSON property `annotation`
        # @return [String]
        attr_accessor :annotation
      
        # Optional. Value which was replaced by the corresponding component.
        # Corresponds to the JSON property `overriddenValue`
        # @return [String]
        attr_accessor :overridden_value
      
        # Property value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation = args[:annotation] if args.key?(:annotation)
          @overridden_value = args[:overridden_value] if args.key?(:overridden_value)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Validation based on a list of allowed values.
      class ValueValidation
        include Google::Apis::Core::Hashable
      
        # Required. List of allowed values for the parameter.
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
      
      # The Dataproc cluster config for a cluster that does not directly control the
      # underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.
      # google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
      class VirtualClusterConfig
        include Google::Apis::Core::Hashable
      
        # Auxiliary services configuration for a Cluster.
        # Corresponds to the JSON property `auxiliaryServicesConfig`
        # @return [Google::Apis::DataprocV1::AuxiliaryServicesConfig]
        attr_accessor :auxiliary_services_config
      
        # The configuration for running the Dataproc cluster on Kubernetes.
        # Corresponds to the JSON property `kubernetesClusterConfig`
        # @return [Google::Apis::DataprocV1::KubernetesClusterConfig]
        attr_accessor :kubernetes_cluster_config
      
        # Optional. A Cloud Storage bucket used to stage job dependencies, config files,
        # and job driver console output. If you do not specify a staging bucket, Cloud
        # Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your
        # cluster's staging bucket according to the Compute Engine zone where your
        # cluster is deployed, and then create and manage this project-level, per-
        # location bucket (see Dataproc staging and temp buckets (https://cloud.google.
        # com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field
        # requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage
        # bucket.
        # Corresponds to the JSON property `stagingBucket`
        # @return [String]
        attr_accessor :staging_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_services_config = args[:auxiliary_services_config] if args.key?(:auxiliary_services_config)
          @kubernetes_cluster_config = args[:kubernetes_cluster_config] if args.key?(:kubernetes_cluster_config)
          @staging_bucket = args[:staging_bucket] if args.key?(:staging_bucket)
        end
      end
      
      # The workflow graph.
      class WorkflowGraph
        include Google::Apis::Core::Hashable
      
        # Output only. The workflow nodes.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::DataprocV1::WorkflowNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # A Dataproc workflow template resource.
      class WorkflowMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the target cluster.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. The UUID of target cluster.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # The cluster operation triggered by a workflow.
        # Corresponds to the JSON property `createCluster`
        # @return [Google::Apis::DataprocV1::ClusterOperation]
        attr_accessor :create_cluster
      
        # Output only. DAG end time, only set for workflows with dag_timeout when DAG
        # ends.
        # Corresponds to the JSON property `dagEndTime`
        # @return [String]
        attr_accessor :dag_end_time
      
        # Output only. DAG start time, only set for workflows with dag_timeout when DAG
        # begins.
        # Corresponds to the JSON property `dagStartTime`
        # @return [String]
        attr_accessor :dag_start_time
      
        # Output only. The timeout duration for the DAG of jobs, expressed in seconds (
        # see JSON representation of duration (https://developers.google.com/protocol-
        # buffers/docs/proto3#json)).
        # Corresponds to the JSON property `dagTimeout`
        # @return [String]
        attr_accessor :dag_timeout
      
        # The cluster operation triggered by a workflow.
        # Corresponds to the JSON property `deleteCluster`
        # @return [Google::Apis::DataprocV1::ClusterOperation]
        attr_accessor :delete_cluster
      
        # Output only. Workflow end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The workflow graph.
        # Corresponds to the JSON property `graph`
        # @return [Google::Apis::DataprocV1::WorkflowGraph]
        attr_accessor :graph
      
        # Map from parameter names to values that were used for those parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Output only. Workflow start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The workflow state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The resource name of the workflow template as described in https:/
        # /cloud.google.com/apis/design/resource_names. For projects.regions.
        # workflowTemplates, the resource name of the template has the following format:
        # projects/`project_id`/regions/`region`/workflowTemplates/`template_id` For
        # projects.locations.workflowTemplates, the resource name of the template has
        # the following format: projects/`project_id`/locations/`location`/
        # workflowTemplates/`template_id`
        # Corresponds to the JSON property `template`
        # @return [String]
        attr_accessor :template
      
        # Output only. The version of template at the time of workflow instantiation.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @create_cluster = args[:create_cluster] if args.key?(:create_cluster)
          @dag_end_time = args[:dag_end_time] if args.key?(:dag_end_time)
          @dag_start_time = args[:dag_start_time] if args.key?(:dag_start_time)
          @dag_timeout = args[:dag_timeout] if args.key?(:dag_timeout)
          @delete_cluster = args[:delete_cluster] if args.key?(:delete_cluster)
          @end_time = args[:end_time] if args.key?(:end_time)
          @graph = args[:graph] if args.key?(:graph)
          @parameters = args[:parameters] if args.key?(:parameters)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @template = args[:template] if args.key?(:template)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The workflow node.
      class WorkflowNode
        include Google::Apis::Core::Hashable
      
        # Output only. The error detail.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. The job id; populated after the node enters RUNNING state.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Output only. Node's prerequisite nodes.
        # Corresponds to the JSON property `prerequisiteStepIds`
        # @return [Array<String>]
        attr_accessor :prerequisite_step_ids
      
        # Output only. The node state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The name of the node.
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @job_id = args[:job_id] if args.key?(:job_id)
          @prerequisite_step_ids = args[:prerequisite_step_ids] if args.key?(:prerequisite_step_ids)
          @state = args[:state] if args.key?(:state)
          @step_id = args[:step_id] if args.key?(:step_id)
        end
      end
      
      # A Dataproc workflow template resource.
      class WorkflowTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The time template was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON
        # representation of duration (https://developers.google.com/protocol-buffers/
        # docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to
        # 24 hours ("86400s"). The timer begins when the first job is submitted. If the
        # workflow is running at the end of the timeout period, any remaining jobs are
        # cancelled, the workflow is ended, and if the workflow was running on a managed
        # cluster, the cluster is deleted.
        # Corresponds to the JSON property `dagTimeout`
        # @return [String]
        attr_accessor :dag_timeout
      
        # Encryption settings for encrypting workflow template job arguments.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::DataprocV1::GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig]
        attr_accessor :encryption_config
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The Directed Acyclic Graph of Jobs to submit.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DataprocV1::OrderedJob>]
        attr_accessor :jobs
      
        # Optional. The labels to associate with this template. These labels will be
        # propagated to all jobs and clusters created by the workflow instance.Label
        # keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://
        # www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must
        # contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/
        # rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the workflow template, as described in https:
        # //cloud.google.com/apis/design/resource_names. For projects.regions.
        # workflowTemplates, the resource name of the template has the following format:
        # projects/`project_id`/regions/`region`/workflowTemplates/`template_id` For
        # projects.locations.workflowTemplates, the resource name of the template has
        # the following format: projects/`project_id`/locations/`location`/
        # workflowTemplates/`template_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Template parameters whose values are substituted into the template.
        # Values for parameters must be provided when the template is instantiated.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DataprocV1::TemplateParameter>]
        attr_accessor :parameters
      
        # Specifies workflow execution target.Either managed_cluster or cluster_selector
        # is required.
        # Corresponds to the JSON property `placement`
        # @return [Google::Apis::DataprocV1::WorkflowTemplatePlacement]
        attr_accessor :placement
      
        # Output only. The time template was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Used to perform a consistent read-modify-write.This field should be
        # left blank for a CreateWorkflowTemplate request. It is required for an
        # UpdateWorkflowTemplate request, and must match the current server version. A
        # typical update template flow would fetch the current template with a
        # GetWorkflowTemplate request, which will return the current template with the
        # version field filled in with the current server version. The user updates
        # other fields in the template, then returns it as part of the
        # UpdateWorkflowTemplate request.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dag_timeout = args[:dag_timeout] if args.key?(:dag_timeout)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @id = args[:id] if args.key?(:id)
          @jobs = args[:jobs] if args.key?(:jobs)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @placement = args[:placement] if args.key?(:placement)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specifies workflow execution target.Either managed_cluster or cluster_selector
      # is required.
      class WorkflowTemplatePlacement
        include Google::Apis::Core::Hashable
      
        # A selector that chooses target cluster for jobs based on metadata.
        # Corresponds to the JSON property `clusterSelector`
        # @return [Google::Apis::DataprocV1::ClusterSelector]
        attr_accessor :cluster_selector
      
        # Cluster that is managed by the workflow.
        # Corresponds to the JSON property `managedCluster`
        # @return [Google::Apis::DataprocV1::ManagedCluster]
        attr_accessor :managed_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_selector = args[:cluster_selector] if args.key?(:cluster_selector)
          @managed_cluster = args[:managed_cluster] if args.key?(:managed_cluster)
        end
      end
      
      # Write Spark Application data to internal storage systems
      class WriteSessionSparkApplicationContextRequest
        include Google::Apis::Core::Hashable
      
        # Required. Parent (Batch) resource reference.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Required. The batch of spark application context objects sent for ingestion.
        # Corresponds to the JSON property `sparkWrapperObjects`
        # @return [Array<Google::Apis::DataprocV1::SparkWrapperObject>]
        attr_accessor :spark_wrapper_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @spark_wrapper_objects = args[:spark_wrapper_objects] if args.key?(:spark_wrapper_objects)
        end
      end
      
      # Response returned as an acknowledgement of receipt of data.
      class WriteSessionSparkApplicationContextResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Write Spark Application data to internal storage systems
      class WriteSparkApplicationContextRequest
        include Google::Apis::Core::Hashable
      
        # Required. Parent (Batch) resource reference.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `sparkWrapperObjects`
        # @return [Array<Google::Apis::DataprocV1::SparkWrapperObject>]
        attr_accessor :spark_wrapper_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @spark_wrapper_objects = args[:spark_wrapper_objects] if args.key?(:spark_wrapper_objects)
        end
      end
      
      # Response returned as an acknowledgement of receipt of data.
      class WriteSparkApplicationContextResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A YARN application created by a job. Application information is a subset of
      # org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature:
      # This report is available for testing purposes only. It may be changed before
      # final release.
      class YarnApplication
        include Google::Apis::Core::Hashable
      
        # Optional. The cumulative memory usage of the application for a job, measured
        # in mb-seconds.
        # Corresponds to the JSON property `memoryMbSeconds`
        # @return [Fixnum]
        attr_accessor :memory_mb_seconds
      
        # Required. The application name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The numerical progress of the application, from 1 to 100.
        # Corresponds to the JSON property `progress`
        # @return [Float]
        attr_accessor :progress
      
        # Required. The application state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or
        # TimelineServer that provides application-specific information. The URL uses
        # the internal hostname, and requires a proxy server for resolution and,
        # possibly, access.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        # Optional. The cumulative CPU time consumed by the application for a job,
        # measured in vcore-seconds.
        # Corresponds to the JSON property `vcoreSeconds`
        # @return [Fixnum]
        attr_accessor :vcore_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_mb_seconds = args[:memory_mb_seconds] if args.key?(:memory_mb_seconds)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
          @state = args[:state] if args.key?(:state)
          @tracking_url = args[:tracking_url] if args.key?(:tracking_url)
          @vcore_seconds = args[:vcore_seconds] if args.key?(:vcore_seconds)
        end
      end
    end
  end
end
