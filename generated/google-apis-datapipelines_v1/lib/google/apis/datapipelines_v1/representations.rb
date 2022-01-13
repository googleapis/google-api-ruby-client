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
      
      class GoogleCloudDatapipelinesV1DataflowJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
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
      
      class GoogleCloudDatapipelinesV1Pipeline
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
      
      class GoogleCloudDatapipelinesV1SdkVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatapipelinesV1StopPipelineRequest
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
      
      class GoogleCloudDatapipelinesV1DataflowJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_workers, as: 'currentWorkers'
          hash :resource_info, as: 'resourceInfo'
          property :sdk_version, as: 'sdkVersion', class: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SdkVersion, decorator: Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1SdkVersion::Representation
      
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
    end
  end
end
