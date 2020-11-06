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
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1MeasurementMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1TrialParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AddTrialMeasurementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutoScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1AutomatedStoppingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1BuiltInAlgorithmOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Capability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1CompleteTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ContainerPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ContainerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ExplainRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ExplanationConfig
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
      
      class GoogleCloudMlV1HyperparameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1IntegratedGradientsAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListOptimalTrialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListOptimalTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListStudiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Measurement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1MetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1PredictionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1ReplicaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1RequestLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1RouteMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SampledShapleyAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Scheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SetDefaultVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StopTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Study
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1StudyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SuggestTrialsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SuggestTrialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1SuggestTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1TrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1TrainingOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Trial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMlV1XraiAttribution
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
      
      class GoogleIamV1Policy
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
      
      class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_elapsed_time, as: 'useElapsedTime'
        end
      end
      
      class GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_elapsed_time, as: 'useElapsedTime'
        end
      end
      
      class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :objective_value, as: 'objectiveValue'
          property :training_step, :numeric_string => true, as: 'trainingStep'
        end
      end
      
      class GoogleCloudMlV1MeasurementMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudMlV1StudyConfigMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goal, as: 'goal'
          property :metric, as: 'metric'
        end
      end
      
      class GoogleCloudMlV1StudyConfigParameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_value_spec, as: 'categoricalValueSpec', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec::Representation
      
          collection :child_parameter_specs, as: 'childParameterSpecs', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpec::Representation
      
          property :discrete_value_spec, as: 'discreteValueSpec', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec::Representation
      
          property :double_value_spec, as: 'doubleValueSpec', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec::Representation
      
          property :integer_value_spec, as: 'integerValueSpec', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec::Representation
      
          property :parameter, as: 'parameter'
          property :parent_categorical_values, as: 'parentCategoricalValues', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec::Representation
      
          property :parent_discrete_values, as: 'parentDiscreteValues', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec::Representation
      
          property :parent_int_values, as: 'parentIntValues', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec::Representation
      
          property :scale_type, as: 'scaleType'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudMlV1TrialParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :float_value, as: 'floatValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :parameter, as: 'parameter'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudMlV1AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudMlV1AddTrialMeasurementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :measurement, as: 'measurement', class: Google::Apis::MlV1::GoogleCloudMlV1Measurement, decorator: Google::Apis::MlV1::GoogleCloudMlV1Measurement::Representation
      
        end
      end
      
      class GoogleCloudMlV1AutoScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_nodes, as: 'maxNodes'
          collection :metrics, as: 'metrics', class: Google::Apis::MlV1::GoogleCloudMlV1MetricSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1MetricSpec::Representation
      
          property :min_nodes, as: 'minNodes'
        end
      end
      
      class GoogleCloudMlV1AutomatedStoppingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :decay_curve_stopping_config, as: 'decayCurveStoppingConfig', class: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig::Representation
      
          property :median_automated_stopping_config, as: 'medianAutomatedStoppingConfig', class: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig::Representation
      
        end
      end
      
      class GoogleCloudMlV1BuiltInAlgorithmOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :framework, as: 'framework'
          property :model_path, as: 'modelPath'
          property :python_version, as: 'pythonVersion'
          property :runtime_version, as: 'runtimeVersion'
        end
      end
      
      class GoogleCloudMlV1CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1Capability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_accelerators, as: 'availableAccelerators'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :study, as: 'study'
          property :trial, as: 'trial'
        end
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :should_stop, as: 'shouldStop'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudMlV1CompleteTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :final_measurement, as: 'finalMeasurement', class: Google::Apis::MlV1::GoogleCloudMlV1Measurement, decorator: Google::Apis::MlV1::GoogleCloudMlV1Measurement::Representation
      
          property :infeasible_reason, as: 'infeasibleReason'
          property :trial_infeasible, as: 'trialInfeasible'
        end
      end
      
      class GoogleCloudMlV1Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tpu_service_account, as: 'tpuServiceAccount'
        end
      end
      
      class GoogleCloudMlV1ContainerPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_port, as: 'containerPort'
        end
      end
      
      class GoogleCloudMlV1ContainerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::MlV1::GoogleCloudMlV1EnvVar, decorator: Google::Apis::MlV1::GoogleCloudMlV1EnvVar::Representation
      
          property :image, as: 'image'
          collection :ports, as: 'ports', class: Google::Apis::MlV1::GoogleCloudMlV1ContainerPort, decorator: Google::Apis::MlV1::GoogleCloudMlV1ContainerPort::Representation
      
        end
      end
      
      class GoogleCloudMlV1EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GoogleCloudMlV1EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudMlV1ExplainRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::MlV1::GoogleApiHttpBody, decorator: Google::Apis::MlV1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudMlV1ExplanationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrated_gradients_attribution, as: 'integratedGradientsAttribution', class: Google::Apis::MlV1::GoogleCloudMlV1IntegratedGradientsAttribution, decorator: Google::Apis::MlV1::GoogleCloudMlV1IntegratedGradientsAttribution::Representation
      
          property :sampled_shapley_attribution, as: 'sampledShapleyAttribution', class: Google::Apis::MlV1::GoogleCloudMlV1SampledShapleyAttribution, decorator: Google::Apis::MlV1::GoogleCloudMlV1SampledShapleyAttribution::Representation
      
          property :xrai_attribution, as: 'xraiAttribution', class: Google::Apis::MlV1::GoogleCloudMlV1XraiAttribution, decorator: Google::Apis::MlV1::GoogleCloudMlV1XraiAttribution::Representation
      
        end
      end
      
      class GoogleCloudMlV1GetConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::MlV1::GoogleCloudMlV1Config, decorator: Google::Apis::MlV1::GoogleCloudMlV1Config::Representation
      
          property :service_account, as: 'serviceAccount'
          property :service_account_project, :numeric_string => true, as: 'serviceAccountProject'
        end
      end
      
      class GoogleCloudMlV1HyperparameterOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :all_metrics, as: 'allMetrics', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric::Representation
      
          property :built_in_algorithm_output, as: 'builtInAlgorithmOutput', class: Google::Apis::MlV1::GoogleCloudMlV1BuiltInAlgorithmOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1BuiltInAlgorithmOutput::Representation
      
          property :end_time, as: 'endTime'
          property :final_metric, as: 'finalMetric', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutputHyperparameterMetric::Representation
      
          hash :hyperparameters, as: 'hyperparameters'
          property :is_trial_stopped_early, as: 'isTrialStoppedEarly'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :trial_id, as: 'trialId'
        end
      end
      
      class GoogleCloudMlV1HyperparameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :enable_trial_early_stopping, as: 'enableTrialEarlyStopping'
          property :goal, as: 'goal'
          property :hyperparameter_metric_tag, as: 'hyperparameterMetricTag'
          property :max_failed_trials, as: 'maxFailedTrials'
          property :max_parallel_trials, as: 'maxParallelTrials'
          property :max_trials, as: 'maxTrials'
          collection :params, as: 'params', class: Google::Apis::MlV1::GoogleCloudMlV1ParameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1ParameterSpec::Representation
      
          property :resume_previous_job_id, as: 'resumePreviousJobId'
        end
      end
      
      class GoogleCloudMlV1IntegratedGradientsAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_integral_steps, as: 'numIntegralSteps'
        end
      end
      
      class GoogleCloudMlV1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error_message, as: 'errorMessage'
          property :etag, :base64 => true, as: 'etag'
          property :job_id, as: 'jobId'
          hash :labels, as: 'labels'
          property :prediction_input, as: 'predictionInput', class: Google::Apis::MlV1::GoogleCloudMlV1PredictionInput, decorator: Google::Apis::MlV1::GoogleCloudMlV1PredictionInput::Representation
      
          property :prediction_output, as: 'predictionOutput', class: Google::Apis::MlV1::GoogleCloudMlV1PredictionOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1PredictionOutput::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :training_input, as: 'trainingInput', class: Google::Apis::MlV1::GoogleCloudMlV1TrainingInput, decorator: Google::Apis::MlV1::GoogleCloudMlV1TrainingInput::Representation
      
          property :training_output, as: 'trainingOutput', class: Google::Apis::MlV1::GoogleCloudMlV1TrainingOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1TrainingOutput::Representation
      
        end
      end
      
      class GoogleCloudMlV1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::MlV1::GoogleCloudMlV1Job, decorator: Google::Apis::MlV1::GoogleCloudMlV1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MlV1::GoogleCloudMlV1Location, decorator: Google::Apis::MlV1::GoogleCloudMlV1Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::MlV1::GoogleCloudMlV1Model, decorator: Google::Apis::MlV1::GoogleCloudMlV1Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudMlV1ListOptimalTrialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1ListOptimalTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trials, as: 'trials', class: Google::Apis::MlV1::GoogleCloudMlV1Trial, decorator: Google::Apis::MlV1::GoogleCloudMlV1Trial::Representation
      
        end
      end
      
      class GoogleCloudMlV1ListStudiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :studies, as: 'studies', class: Google::Apis::MlV1::GoogleCloudMlV1Study, decorator: Google::Apis::MlV1::GoogleCloudMlV1Study::Representation
      
        end
      end
      
      class GoogleCloudMlV1ListTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trials, as: 'trials', class: Google::Apis::MlV1::GoogleCloudMlV1Trial, decorator: Google::Apis::MlV1::GoogleCloudMlV1Trial::Representation
      
        end
      end
      
      class GoogleCloudMlV1ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :capabilities, as: 'capabilities', class: Google::Apis::MlV1::GoogleCloudMlV1Capability, decorator: Google::Apis::MlV1::GoogleCloudMlV1Capability::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudMlV1ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nodes, as: 'nodes'
        end
      end
      
      class GoogleCloudMlV1Measurement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :elapsed_time, as: 'elapsedTime'
          collection :metrics, as: 'metrics', class: Google::Apis::MlV1::GoogleCloudMlV1MeasurementMetric, decorator: Google::Apis::MlV1::GoogleCloudMlV1MeasurementMetric::Representation
      
          property :step_count, :numeric_string => true, as: 'stepCount'
        end
      end
      
      class GoogleCloudMlV1MetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :target, as: 'target'
        end
      end
      
      class GoogleCloudMlV1Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_version, as: 'defaultVersion', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
          property :description, as: 'description'
          property :etag, :base64 => true, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :online_prediction_console_logging, as: 'onlinePredictionConsoleLogging'
          property :online_prediction_logging, as: 'onlinePredictionLogging'
          collection :regions, as: 'regions'
        end
      end
      
      class GoogleCloudMlV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :is_cancellation_requested, as: 'isCancellationRequested'
          hash :labels, as: 'labels'
          property :model_name, as: 'modelName'
          property :operation_type, as: 'operationType'
          property :project_number, :numeric_string => true, as: 'projectNumber'
          property :start_time, as: 'startTime'
          property :version, as: 'version', class: Google::Apis::MlV1::GoogleCloudMlV1Version, decorator: Google::Apis::MlV1::GoogleCloudMlV1Version::Representation
      
        end
      end
      
      class GoogleCloudMlV1ParameterSpec
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
      
      class GoogleCloudMlV1PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::MlV1::GoogleApiHttpBody, decorator: Google::Apis::MlV1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudMlV1PredictionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_size, :numeric_string => true, as: 'batchSize'
          property :data_format, as: 'dataFormat'
          collection :input_paths, as: 'inputPaths'
          property :max_worker_count, :numeric_string => true, as: 'maxWorkerCount'
          property :model_name, as: 'modelName'
          property :output_data_format, as: 'outputDataFormat'
          property :output_path, as: 'outputPath'
          property :region, as: 'region'
          property :runtime_version, as: 'runtimeVersion'
          property :signature_name, as: 'signatureName'
          property :uri, as: 'uri'
          property :version_name, as: 'versionName'
        end
      end
      
      class GoogleCloudMlV1PredictionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_count, :numeric_string => true, as: 'errorCount'
          property :node_hours, as: 'nodeHours'
          property :output_path, as: 'outputPath'
          property :prediction_count, :numeric_string => true, as: 'predictionCount'
        end
      end
      
      class GoogleCloudMlV1ReplicaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::MlV1::GoogleCloudMlV1AcceleratorConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1AcceleratorConfig::Representation
      
          collection :container_args, as: 'containerArgs'
          collection :container_command, as: 'containerCommand'
          property :image_uri, as: 'imageUri'
          property :tpu_tf_version, as: 'tpuTfVersion'
        end
      end
      
      class GoogleCloudMlV1RequestLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_table_name, as: 'bigqueryTableName'
          property :sampling_percentage, as: 'samplingPercentage'
        end
      end
      
      class GoogleCloudMlV1RouteMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health, as: 'health'
          property :predict, as: 'predict'
        end
      end
      
      class GoogleCloudMlV1SampledShapleyAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_paths, as: 'numPaths'
        end
      end
      
      class GoogleCloudMlV1Scheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_running_time, as: 'maxRunningTime'
          property :max_wait_time, as: 'maxWaitTime'
        end
      end
      
      class GoogleCloudMlV1SetDefaultVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1StopTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMlV1Study
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :inactive_reason, as: 'inactiveReason'
          property :name, as: 'name'
          property :state, as: 'state'
          property :study_config, as: 'studyConfig', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfig::Representation
      
        end
      end
      
      class GoogleCloudMlV1StudyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :automated_stopping_config, as: 'automatedStoppingConfig', class: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1AutomatedStoppingConfig::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigMetricSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigMetricSpec::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1StudyConfigParameterSpec::Representation
      
        end
      end
      
      class GoogleCloudMlV1SuggestTrialsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :create_time, as: 'createTime'
          property :study, as: 'study'
          property :suggestion_count, as: 'suggestionCount'
        end
      end
      
      class GoogleCloudMlV1SuggestTrialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :suggestion_count, as: 'suggestionCount'
        end
      end
      
      class GoogleCloudMlV1SuggestTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :study_state, as: 'studyState'
          collection :trials, as: 'trials', class: Google::Apis::MlV1::GoogleCloudMlV1Trial, decorator: Google::Apis::MlV1::GoogleCloudMlV1Trial::Representation
      
        end
      end
      
      class GoogleCloudMlV1TrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::MlV1::GoogleCloudMlV1EncryptionConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1EncryptionConfig::Representation
      
          property :evaluator_config, as: 'evaluatorConfig', class: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig::Representation
      
          property :evaluator_count, :numeric_string => true, as: 'evaluatorCount'
          property :evaluator_type, as: 'evaluatorType'
          property :hyperparameters, as: 'hyperparameters', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterSpec::Representation
      
          property :job_dir, as: 'jobDir'
          property :master_config, as: 'masterConfig', class: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig::Representation
      
          property :master_type, as: 'masterType'
          property :network, as: 'network'
          collection :package_uris, as: 'packageUris'
          property :parameter_server_config, as: 'parameterServerConfig', class: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig::Representation
      
          property :parameter_server_count, :numeric_string => true, as: 'parameterServerCount'
          property :parameter_server_type, as: 'parameterServerType'
          property :python_module, as: 'pythonModule'
          property :python_version, as: 'pythonVersion'
          property :region, as: 'region'
          property :runtime_version, as: 'runtimeVersion'
          property :scale_tier, as: 'scaleTier'
          property :scheduling, as: 'scheduling', class: Google::Apis::MlV1::GoogleCloudMlV1Scheduling, decorator: Google::Apis::MlV1::GoogleCloudMlV1Scheduling::Representation
      
          property :service_account, as: 'serviceAccount'
          property :use_chief_in_tf_config, as: 'useChiefInTfConfig'
          property :worker_config, as: 'workerConfig', class: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1ReplicaConfig::Representation
      
          property :worker_count, :numeric_string => true, as: 'workerCount'
          property :worker_type, as: 'workerType'
        end
      end
      
      class GoogleCloudMlV1TrainingOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :built_in_algorithm_output, as: 'builtInAlgorithmOutput', class: Google::Apis::MlV1::GoogleCloudMlV1BuiltInAlgorithmOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1BuiltInAlgorithmOutput::Representation
      
          property :completed_trial_count, :numeric_string => true, as: 'completedTrialCount'
          property :consumed_ml_units, as: 'consumedMLUnits'
          property :hyperparameter_metric_tag, as: 'hyperparameterMetricTag'
          property :is_built_in_algorithm_job, as: 'isBuiltInAlgorithmJob'
          property :is_hyperparameter_tuning_job, as: 'isHyperparameterTuningJob'
          collection :trials, as: 'trials', class: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutput, decorator: Google::Apis::MlV1::GoogleCloudMlV1HyperparameterOutput::Representation
      
        end
      end
      
      class GoogleCloudMlV1Trial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :end_time, as: 'endTime'
          property :final_measurement, as: 'finalMeasurement', class: Google::Apis::MlV1::GoogleCloudMlV1Measurement, decorator: Google::Apis::MlV1::GoogleCloudMlV1Measurement::Representation
      
          property :infeasible_reason, as: 'infeasibleReason'
          collection :measurements, as: 'measurements', class: Google::Apis::MlV1::GoogleCloudMlV1Measurement, decorator: Google::Apis::MlV1::GoogleCloudMlV1Measurement::Representation
      
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::MlV1::GoogleCloudMlV1TrialParameter, decorator: Google::Apis::MlV1::GoogleCloudMlV1TrialParameter::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :trial_infeasible, as: 'trialInfeasible'
        end
      end
      
      class GoogleCloudMlV1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::MlV1::GoogleCloudMlV1AcceleratorConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1AcceleratorConfig::Representation
      
          property :auto_scaling, as: 'autoScaling', class: Google::Apis::MlV1::GoogleCloudMlV1AutoScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1AutoScaling::Representation
      
          property :container, as: 'container', class: Google::Apis::MlV1::GoogleCloudMlV1ContainerSpec, decorator: Google::Apis::MlV1::GoogleCloudMlV1ContainerSpec::Representation
      
          property :create_time, as: 'createTime'
          property :deployment_uri, as: 'deploymentUri'
          property :description, as: 'description'
          property :error_message, as: 'errorMessage'
          property :etag, :base64 => true, as: 'etag'
          property :explanation_config, as: 'explanationConfig', class: Google::Apis::MlV1::GoogleCloudMlV1ExplanationConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1ExplanationConfig::Representation
      
          property :framework, as: 'framework'
          property :is_default, as: 'isDefault'
          hash :labels, as: 'labels'
          property :last_use_time, as: 'lastUseTime'
          property :machine_type, as: 'machineType'
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::MlV1::GoogleCloudMlV1ManualScaling, decorator: Google::Apis::MlV1::GoogleCloudMlV1ManualScaling::Representation
      
          property :name, as: 'name'
          collection :package_uris, as: 'packageUris'
          property :prediction_class, as: 'predictionClass'
          property :python_version, as: 'pythonVersion'
          property :request_logging_config, as: 'requestLoggingConfig', class: Google::Apis::MlV1::GoogleCloudMlV1RequestLoggingConfig, decorator: Google::Apis::MlV1::GoogleCloudMlV1RequestLoggingConfig::Representation
      
          property :routes, as: 'routes', class: Google::Apis::MlV1::GoogleCloudMlV1RouteMap, decorator: Google::Apis::MlV1::GoogleCloudMlV1RouteMap::Representation
      
          property :runtime_version, as: 'runtimeVersion'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudMlV1XraiAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_integral_steps, as: 'numIntegralSteps'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::MlV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::MlV1::GoogleIamV1AuditLogConfig::Representation
      
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
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::MlV1::GoogleTypeExpr, decorator: Google::Apis::MlV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::MlV1::GoogleIamV1AuditConfig, decorator: Google::Apis::MlV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::MlV1::GoogleIamV1Binding, decorator: Google::Apis::MlV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::MlV1::GoogleIamV1Policy, decorator: Google::Apis::MlV1::GoogleIamV1Policy::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::MlV1::GoogleLongrunningOperation, decorator: Google::Apis::MlV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MlV1::GoogleRpcStatus, decorator: Google::Apis::MlV1::GoogleRpcStatus::Representation
      
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
