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
    end
  end
end
