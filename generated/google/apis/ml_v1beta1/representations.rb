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
    module MlV1beta1
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutoScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1AutoScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1GetConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1HyperparameterOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1HyperparameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1ParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1PredictionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1PredictionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1SetDefaultVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1TrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1TrainingOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1beta1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1LogConfigCloudAuditOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1LogConfigCounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1LogConfigDataAccessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1LogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
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
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudMlV1AutoScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_nodes, as: 'minNodes'
        end
      end
      
      class GoogleCloudMlV1ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nodes, as: 'nodes'
        end
      end
      
      class GoogleCloudMlV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :is_cancellation_requested, as: 'isCancellationRequested'
          property :model_name, as: 'modelName'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
          property :version, as: 'version', class: Google::Apis::MlV1beta1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_scaling, as: 'autoScaling', class: Google::Apis::MlV1beta1::GoogleCloudMlV1AutoScaling, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1AutoScaling::Representation
      
          property :create_time, as: 'createTime'
          property :deployment_uri, as: 'deploymentUri'
          property :description, as: 'description'
          property :error_message, as: 'errorMessage'
          property :is_default, as: 'isDefault'
          property :last_use_time, as: 'lastUseTime'
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::MlV1beta1::GoogleCloudMlV1ManualScaling, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1ManualScaling::Representation
      
          property :name, as: 'name'
          property :runtime_version, as: 'runtimeVersion'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :objective_value, as: 'objectiveValue'
          property :training_step, :numeric_string => true, as: 'trainingStep'
        end
      end
      
      class GoogleCloudMlV1beta1AutoScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_nodes, as: 'minNodes'
        end
      end
      
      class GoogleCloudMlV1beta1CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1beta1GetConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
          property :service_account_project, :numeric_string => true, as: 'serviceAccountProject'
        end
      end
      
      class GoogleCloudMlV1beta1HyperparameterOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :all_metrics, as: 'allMetrics', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric::Representation
      
          property :final_metric, as: 'finalMetric', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric::Representation
      
          hash :hyperparameters, as: 'hyperparameters'
          property :trial_id, as: 'trialId'
        end
      end
      
      class GoogleCloudMlV1beta1HyperparameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goal, as: 'goal'
          property :hyperparameter_metric_tag, as: 'hyperparameterMetricTag'
          property :max_parallel_trials, as: 'maxParallelTrials'
          property :max_trials, as: 'maxTrials'
          collection :params, as: 'params', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ParameterSpec, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ParameterSpec::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error_message, as: 'errorMessage'
          property :job_id, as: 'jobId'
          property :prediction_input, as: 'predictionInput', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionInput, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionInput::Representation
      
          property :prediction_output, as: 'predictionOutput', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionOutput, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionOutput::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :training_input, as: 'trainingInput', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingInput, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingInput::Representation
      
          property :training_output, as: 'trainingOutput', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingOutput, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingOutput::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1beta1ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1beta1ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nodes, as: 'nodes'
        end
      end
      
      class GoogleCloudMlV1beta1Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_version, as: 'defaultVersion', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          property :online_prediction_logging, as: 'onlinePredictionLogging'
          collection :regions, as: 'regions'
        end
      end
      
      class GoogleCloudMlV1beta1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :is_cancellation_requested, as: 'isCancellationRequested'
          property :model_name, as: 'modelName'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
          property :version, as: 'version', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1ParameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categorical_values, as: 'categoricalValues'
          collection :discrete_values, as: 'discreteValues'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :parameter_name, as: 'parameterName'
          property :scale_type, as: 'scaleType'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudMlV1beta1PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::MlV1beta1::GoogleApiHttpBody, decorator: Google::Apis::MlV1beta1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1PredictionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_size, :numeric_string => true, as: 'batchSize'
          property :data_format, as: 'dataFormat'
          collection :input_paths, as: 'inputPaths'
          property :max_worker_count, :numeric_string => true, as: 'maxWorkerCount'
          property :model_name, as: 'modelName'
          property :output_path, as: 'outputPath'
          property :region, as: 'region'
          property :runtime_version, as: 'runtimeVersion'
          property :uri, as: 'uri'
          property :version_name, as: 'versionName'
        end
      end
      
      class GoogleCloudMlV1beta1PredictionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_count, :numeric_string => true, as: 'errorCount'
          property :node_hours, as: 'nodeHours'
          property :output_path, as: 'outputPath'
          property :prediction_count, :numeric_string => true, as: 'predictionCount'
        end
      end
      
      class GoogleCloudMlV1beta1SetDefaultVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1beta1TrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :hyperparameters, as: 'hyperparameters', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterSpec, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterSpec::Representation
      
          property :job_dir, as: 'jobDir'
          property :master_type, as: 'masterType'
          collection :package_uris, as: 'packageUris'
          property :parameter_server_count, :numeric_string => true, as: 'parameterServerCount'
          property :parameter_server_type, as: 'parameterServerType'
          property :python_module, as: 'pythonModule'
          property :region, as: 'region'
          property :runtime_version, as: 'runtimeVersion'
          property :scale_tier, as: 'scaleTier'
          property :worker_count, :numeric_string => true, as: 'workerCount'
          property :worker_type, as: 'workerType'
        end
      end
      
      class GoogleCloudMlV1beta1TrainingOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_trial_count, :numeric_string => true, as: 'completedTrialCount'
          property :consumed_ml_units, as: 'consumedMLUnits'
          property :is_hyperparameter_tuning_job, as: 'isHyperparameterTuningJob'
          collection :trials, as: 'trials', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutput, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutput::Representation
      
        end
      end
      
      class GoogleCloudMlV1beta1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_scaling, as: 'autoScaling', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1AutoScaling, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1AutoScaling::Representation
      
          property :create_time, as: 'createTime'
          property :deployment_uri, as: 'deploymentUri'
          property :description, as: 'description'
          property :error_message, as: 'errorMessage'
          property :is_default, as: 'isDefault'
          property :last_use_time, as: 'lastUseTime'
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ManualScaling, decorator: Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ManualScaling::Representation
      
          property :name, as: 'name'
          property :runtime_version, as: 'runtimeVersion'
          property :state, as: 'state'
        end
      end
      
      class GoogleIamV1LogConfigCloudAuditOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_name, as: 'logName'
        end
      end
      
      class GoogleIamV1LogConfigCounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :metric, as: 'metric'
        end
      end
      
      class GoogleIamV1LogConfigDataAccessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_mode, as: 'logMode'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::MlV1beta1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::MlV1beta1::GoogleIamV1AuditLogConfig::Representation
      
          collection :exempted_members, as: 'exemptedMembers'
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::MlV1beta1::GoogleTypeExpr, decorator: Google::Apis::MlV1beta1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          property :op, as: 'op'
          property :svc, as: 'svc'
          property :sys, as: 'sys'
          property :value, as: 'value'
          collection :values, as: 'values'
        end
      end
      
      class GoogleIamV1LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_audit, as: 'cloudAudit', class: Google::Apis::MlV1beta1::GoogleIamV1LogConfigCloudAuditOptions, decorator: Google::Apis::MlV1beta1::GoogleIamV1LogConfigCloudAuditOptions::Representation
      
          property :counter, as: 'counter', class: Google::Apis::MlV1beta1::GoogleIamV1LogConfigCounterOptions, decorator: Google::Apis::MlV1beta1::GoogleIamV1LogConfigCounterOptions::Representation
      
          property :data_access, as: 'dataAccess', class: Google::Apis::MlV1beta1::GoogleIamV1LogConfigDataAccessOptions, decorator: Google::Apis::MlV1beta1::GoogleIamV1LogConfigDataAccessOptions::Representation
      
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::MlV1beta1::GoogleIamV1AuditConfig, decorator: Google::Apis::MlV1beta1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::MlV1beta1::GoogleIamV1Binding, decorator: Google::Apis::MlV1beta1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :iam_owned, as: 'iamOwned'
          collection :rules, as: 'rules', class: Google::Apis::MlV1beta1::GoogleIamV1Rule, decorator: Google::Apis::MlV1beta1::GoogleIamV1Rule::Representation
      
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :conditions, as: 'conditions', class: Google::Apis::MlV1beta1::GoogleIamV1Condition, decorator: Google::Apis::MlV1beta1::GoogleIamV1Condition::Representation
      
          property :description, as: 'description'
          collection :in, as: 'in'
          collection :log_config, as: 'logConfig', class: Google::Apis::MlV1beta1::GoogleIamV1LogConfig, decorator: Google::Apis::MlV1beta1::GoogleIamV1LogConfig::Representation
      
          collection :not_in, as: 'notIn'
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::MlV1beta1::GoogleIamV1Policy, decorator: Google::Apis::MlV1beta1::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::MlV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::MlV1beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MlV1beta1::GoogleRpcStatus, decorator: Google::Apis::MlV1beta1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
