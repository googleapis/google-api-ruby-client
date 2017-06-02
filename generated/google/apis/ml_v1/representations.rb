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
    module MlV1
      
      class GoogleCloudMlV1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SetDefaultVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1TrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1GetConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1HyperparameterOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutomaticScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1AutomaticScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1TrainingOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1HyperparameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::MlV1::GoogleCloudMlV1Job, decorator: Google::Apis::MlV1::GoogleCloudMlV1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1SetDefaultVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::MlV1::GoogleRpcStatus, decorator: Google::Apis::MlV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
        end
      end
      
      class GoogleCloudMlV1Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :online_prediction_logging, as: 'onlinePredictionLogging'
          property :default_version, as: 'defaultVersion', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
          collection :regions, as: 'regions'
          property :name, as: 'name'
          property :description, as: 'description'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :versions, as: 'versions', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1beta1ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nodes, as: 'nodes'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class GoogleCloudMlV1ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::MlV1::GoogleCloudMlV1Model, decorator: Google::Apis::MlV1::GoogleCloudMlV1Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1TrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :worker_count, :numeric_string => true, as: 'workerCount'
          property :master_type, as: 'masterType'
          property :runtime_version, as: 'runtimeVersion'
          property :python_module, as: 'pythonModule'
          property :region, as: 'region'
          collection :args, as: 'args'
          property :worker_type, as: 'workerType'
          property :parameter_server_type, as: 'parameterServerType'
          property :scale_tier, as: 'scaleTier'
          property :job_dir, as: 'jobDir'
          property :hyperparameters, as: 'hyperparameters', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterSpec::Representation
      
          property :parameter_server_count, :numeric_string => true, as: 'parameterServerCount'
          collection :package_uris, as: 'packageUris'
        end
      end
      
      class GoogleCloudMlV1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :prediction_output, as: 'predictionOutput', class: Google::Apis::MlV1::GoogleCloudMlV1PredictionOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1PredictionOutput::Representation
      
          property :training_output, as: 'trainingOutput', class: Google::Apis::MlV1::GoogleCloudMlV1TrainingOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1TrainingOutput::Representation
      
          property :training_input, as: 'trainingInput', class: Google::Apis::MlV1::GoogleCloudMlV1TrainingInput, decorator: Google::Apis::MlV1::GoogleCloudMlV1TrainingInput::Representation
      
          property :create_time, as: 'createTime'
          property :state, as: 'state'
          property :prediction_input, as: 'predictionInput', class: Google::Apis::MlV1::GoogleCloudMlV1PredictionInput, decorator: Google::Apis::MlV1::GoogleCloudMlV1PredictionInput::Representation
      
          property :job_id, as: 'jobId'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extensions, as: 'extensions'
          property :data, :base64 => true, as: 'data'
          property :content_type, as: 'contentType'
        end
      end
      
      class GoogleCloudMlV1beta1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::MlV1::GoogleCloudMlV1beta1ManualScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1beta1ManualScaling::Representation
      
          property :name, as: 'name'
          property :automatic_scaling, as: 'automaticScaling', class: Google::Apis::MlV1::GoogleCloudMlV1beta1AutomaticScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1beta1AutomaticScaling::Representation
      
          property :last_use_time, as: 'lastUseTime'
          property :runtime_version, as: 'runtimeVersion'
          property :description, as: 'description'
          property :deployment_uri, as: 'deploymentUri'
          property :is_default, as: 'isDefault'
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudMlV1GetConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
          property :service_account_project, :numeric_string => true, as: 'serviceAccountProject'
        end
      end
      
      class GoogleCloudMlV1HyperparameterOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :all_metrics, as: 'allMetrics', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric::Representation
      
          property :final_metric, as: 'finalMetric', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric::Representation
      
          hash :hyperparameters, as: 'hyperparameters'
          property :trial_id, as: 'trialId'
        end
      end
      
      class GoogleCloudMlV1AutomaticScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_nodes, as: 'minNodes'
        end
      end
      
      class GoogleCloudMlV1PredictionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_count, :numeric_string => true, as: 'errorCount'
          property :output_path, as: 'outputPath'
          property :node_hours, as: 'nodeHours'
          property :prediction_count, :numeric_string => true, as: 'predictionCount'
        end
      end
      
      class GoogleCloudMlV1beta1AutomaticScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_nodes, as: 'minNodes'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::MlV1::GoogleLongrunningOperation, decorator: Google::Apis::MlV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleCloudMlV1ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nodes, as: 'nodes'
        end
      end
      
      class GoogleCloudMlV1TrainingOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trials, as: 'trials', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutput::Representation
      
          property :completed_trial_count, :numeric_string => true, as: 'completedTrialCount'
          property :is_hyperparameter_tuning_job, as: 'isHyperparameterTuningJob'
          property :consumed_ml_units, as: 'consumedMLUnits'
        end
      end
      
      class GoogleCloudMlV1PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::MlV1::GoogleApiHttpBody, decorator: Google::Apis::MlV1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :training_step, :numeric_string => true, as: 'trainingStep'
          property :objective_value, as: 'objectiveValue'
        end
      end
      
      class GoogleCloudMlV1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_scaling, as: 'automaticScaling', class: Google::Apis::MlV1::GoogleCloudMlV1AutomaticScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1AutomaticScaling::Representation
      
          property :last_use_time, as: 'lastUseTime'
          property :runtime_version, as: 'runtimeVersion'
          property :description, as: 'description'
          property :deployment_uri, as: 'deploymentUri'
          property :is_default, as: 'isDefault'
          property :create_time, as: 'createTime'
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::MlV1::GoogleCloudMlV1ManualScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1ManualScaling::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudMlV1ParameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_value, as: 'minValue'
          collection :discrete_values, as: 'discreteValues'
          property :scale_type, as: 'scaleType'
          property :max_value, as: 'maxValue'
          property :type, as: 'type'
          collection :categorical_values, as: 'categoricalValues'
          property :parameter_name, as: 'parameterName'
        end
      end
      
      class GoogleCloudMlV1PredictionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
          property :version_name, as: 'versionName'
          property :model_name, as: 'modelName'
          property :output_path, as: 'outputPath'
          property :uri, as: 'uri'
          property :max_worker_count, :numeric_string => true, as: 'maxWorkerCount'
          property :data_format, as: 'dataFormat'
          property :runtime_version, as: 'runtimeVersion'
          collection :input_paths, as: 'inputPaths'
        end
      end
      
      class GoogleCloudMlV1beta1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_cancellation_requested, as: 'isCancellationRequested'
          property :create_time, as: 'createTime'
          property :model_name, as: 'modelName'
          property :version, as: 'version', class: Google::Apis::MlV1::GoogleCloudMlV1beta1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1beta1Version::Representation
      
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudMlV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
          property :is_cancellation_requested, as: 'isCancellationRequested'
          property :create_time, as: 'createTime'
          property :model_name, as: 'modelName'
          property :version, as: 'version', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1HyperparameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goal, as: 'goal'
          property :hyperparameter_metric_tag, as: 'hyperparameterMetricTag'
          collection :params, as: 'params', class: Google::Apis::MlV1::GoogleCloudMlV1ParameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1ParameterSpec::Representation
      
          property :max_trials, as: 'maxTrials'
          property :max_parallel_trials, as: 'maxParallelTrials'
        end
      end
    end
  end
end
