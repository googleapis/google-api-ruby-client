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
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or
      # an HTML page.
      # This message can be used both in streaming and non-streaming API methods in
      # the request as well as the response.
      # It can be used as a top-level request field, which is convenient if one
      # wants to extract parameters from either the URL or HTTP template into the
      # request fields and also want access to the raw HTTP body.
      # Example:
      # message GetResourceRequest `
      # // A unique request id.
      # string request_id = 1;
      # // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2;
      # `
      # service ResourceService `
      # rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
      # rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty);
      # `
      # Example with streaming methods:
      # service CaldavService `
      # rpc GetCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # rpc UpdateCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # `
      # Use of this type only changes how the request and response bodies are
      # handled, all other features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type string representing the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # HTTP body binary data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response
        # for streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Options for automatically scaling a model.
      class GoogleCloudMlV1AutoScaling
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum number of nodes to allocate for this model. These
        # nodes are always up, starting from the time the model is deployed, so the
        # cost of operating this model will be at least
        # `rate` * `min_nodes` * number of hours since last billing cycle,
        # where `rate` is the cost per node-hour as documented in
        # [pricing](https://cloud.google.com/ml-engine/pricing#prediction_pricing),
        # even if no predictions are performed. There is additional cost for each
        # prediction performed.
        # Unlike manual scaling, if the load gets too heavy for the nodes
        # that are up, the service will automatically add nodes to handle the
        # increased load as well as scale back as traffic drops, always maintaining
        # at least `min_nodes`. You will be charged for the time in which additional
        # nodes are used.
        # If not specified, `min_nodes` defaults to 0, in which case, when traffic
        # to a model stops (and after a cool-down period), nodes will be shut down
        # and no charges will be incurred until traffic to the model resumes.
        # Corresponds to the JSON property `minNodes`
        # @return [Fixnum]
        attr_accessor :min_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_nodes = args[:min_nodes] if args.key?(:min_nodes)
        end
      end
      
      # Options for manually scaling a model.
      class GoogleCloudMlV1ManualScaling
        include Google::Apis::Core::Hashable
      
        # The number of nodes to allocate for this model. These nodes are always up,
        # starting from the time the model is deployed, so the cost of operating
        # this model will be proportional to `nodes` * number of hours since
        # last billing cycle plus the cost for each prediction performed.
        # Corresponds to the JSON property `nodes`
        # @return [Fixnum]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Represents the metadata of the long-running operation.
      # Next ID: 9
      class GoogleCloudMlV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was submitted.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time operation processing completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Indicates whether a request to cancel this operation has been made.
        # Corresponds to the JSON property `isCancellationRequested`
        # @return [Boolean]
        attr_accessor :is_cancellation_requested
        alias_method :is_cancellation_requested?, :is_cancellation_requested
      
        # Contains the name of the model associated with the operation.
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The time operation processing started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Represents a version of the model.
        # Each version is a trained model deployed in the cloud, ready to handle
        # prediction requests. A model can have multiple versions. You can get
        # information about all of the versions of a given model by calling
        # [projects.models.versions.list](/ml-engine/reference/rest/v1/projects.models.
        # versions/list).
        # Next ID: 18
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @is_cancellation_requested = args[:is_cancellation_requested] if args.key?(:is_cancellation_requested)
          @model_name = args[:model_name] if args.key?(:model_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents a version of the model.
      # Each version is a trained model deployed in the cloud, ready to handle
      # prediction requests. A model can have multiple versions. You can get
      # information about all of the versions of a given model by calling
      # [projects.models.versions.list](/ml-engine/reference/rest/v1/projects.models.
      # versions/list).
      # Next ID: 18
      class GoogleCloudMlV1Version
        include Google::Apis::Core::Hashable
      
        # Options for automatically scaling a model.
        # Corresponds to the JSON property `autoScaling`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1AutoScaling]
        attr_accessor :auto_scaling
      
        # Output only. The time the version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The Google Cloud Storage location of the trained model used to
        # create the version. See the
        # [overview of model
        # deployment](/ml-engine/docs/concepts/deployment-overview) for more
        # information.
        # When passing Version to
        # [projects.models.versions.create](/ml-engine/reference/rest/v1/projects.models.
        # versions/create)
        # the model service uses the specified location as the source of the model.
        # Once deployed, the model version is hosted by the prediction service, so
        # this location is useful only as a historical record.
        # The total number of model files can't exceed 1000.
        # Corresponds to the JSON property `deploymentUri`
        # @return [String]
        attr_accessor :deployment_uri
      
        # Optional. The description specified for the version when it was created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The details of a failure or a cancellation.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Output only. If true, this version will be used to handle prediction
        # requests that do not specify a version.
        # You can change the default version by calling
        # [projects.methods.versions.setDefault](/ml-engine/reference/rest/v1/projects.
        # models.versions/setDefault).
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Output only. The time the version was last used for prediction.
        # Corresponds to the JSON property `lastUseTime`
        # @return [String]
        attr_accessor :last_use_time
      
        # Options for manually scaling a model.
        # Corresponds to the JSON property `manualScaling`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1ManualScaling]
        attr_accessor :manual_scaling
      
        # Required.The name specified for the version when it was created.
        # The version name must be unique within the model it is created in.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The Google Cloud ML runtime version to use for this deployment.
        # If not set, Google Cloud ML will choose a version.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Output only. The state of a version.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_scaling = args[:auto_scaling] if args.key?(:auto_scaling)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment_uri = args[:deployment_uri] if args.key?(:deployment_uri)
          @description = args[:description] if args.key?(:description)
          @error_message = args[:error_message] if args.key?(:error_message)
          @is_default = args[:is_default] if args.key?(:is_default)
          @last_use_time = args[:last_use_time] if args.key?(:last_use_time)
          @manual_scaling = args[:manual_scaling] if args.key?(:manual_scaling)
          @name = args[:name] if args.key?(:name)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # An observed value of a metric.
      class GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric
        include Google::Apis::Core::Hashable
      
        # The objective value at this training step.
        # Corresponds to the JSON property `objectiveValue`
        # @return [Float]
        attr_accessor :objective_value
      
        # The global training step for this metric.
        # Corresponds to the JSON property `trainingStep`
        # @return [Fixnum]
        attr_accessor :training_step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @objective_value = args[:objective_value] if args.key?(:objective_value)
          @training_step = args[:training_step] if args.key?(:training_step)
        end
      end
      
      # Options for automatically scaling a model.
      class GoogleCloudMlV1beta1AutoScaling
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum number of nodes to allocate for this model. These
        # nodes are always up, starting from the time the model is deployed, so the
        # cost of operating this model will be at least
        # `rate` * `min_nodes` * number of hours since last billing cycle,
        # where `rate` is the cost per node-hour as documented in
        # [pricing](https://cloud.google.com/ml-engine/pricing#prediction_pricing),
        # even if no predictions are performed. There is additional cost for each
        # prediction performed.
        # Unlike manual scaling, if the load gets too heavy for the nodes
        # that are up, the service will automatically add nodes to handle the
        # increased load as well as scale back as traffic drops, always maintaining
        # at least `min_nodes`. You will be charged for the time in which additional
        # nodes are used.
        # If not specified, `min_nodes` defaults to 0, in which case, when traffic
        # to a model stops (and after a cool-down period), nodes will be shut down
        # and no charges will be incurred until traffic to the model resumes.
        # Corresponds to the JSON property `minNodes`
        # @return [Fixnum]
        attr_accessor :min_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_nodes = args[:min_nodes] if args.key?(:min_nodes)
        end
      end
      
      # Request message for the CancelJob method.
      class GoogleCloudMlV1beta1CancelJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Returns service account information associated with a project.
      class GoogleCloudMlV1beta1GetConfigResponse
        include Google::Apis::Core::Hashable
      
        # The service account Cloud ML uses to access resources in the project.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The project number for `service_account`.
        # Corresponds to the JSON property `serviceAccountProject`
        # @return [Fixnum]
        attr_accessor :service_account_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_account_project = args[:service_account_project] if args.key?(:service_account_project)
        end
      end
      
      # Represents the result of a single hyperparameter tuning trial from a
      # training job. The TrainingOutput object that is returned on successful
      # completion of a training job with hyperparameter tuning includes a list
      # of HyperparameterOutput objects, one for each successful trial.
      class GoogleCloudMlV1beta1HyperparameterOutput
        include Google::Apis::Core::Hashable
      
        # All recorded object metrics for this trial.
        # Corresponds to the JSON property `allMetrics`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric>]
        attr_accessor :all_metrics
      
        # An observed value of a metric.
        # Corresponds to the JSON property `finalMetric`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric]
        attr_accessor :final_metric
      
        # The hyperparameters given to this trial.
        # Corresponds to the JSON property `hyperparameters`
        # @return [Hash<String,String>]
        attr_accessor :hyperparameters
      
        # The trial id for these results.
        # Corresponds to the JSON property `trialId`
        # @return [String]
        attr_accessor :trial_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_metrics = args[:all_metrics] if args.key?(:all_metrics)
          @final_metric = args[:final_metric] if args.key?(:final_metric)
          @hyperparameters = args[:hyperparameters] if args.key?(:hyperparameters)
          @trial_id = args[:trial_id] if args.key?(:trial_id)
        end
      end
      
      # Represents a set of hyperparameters to optimize.
      class GoogleCloudMlV1beta1HyperparameterSpec
        include Google::Apis::Core::Hashable
      
        # Required. The type of goal to use for tuning. Available types are
        # `MAXIMIZE` and `MINIMIZE`.
        # Defaults to `MAXIMIZE`.
        # Corresponds to the JSON property `goal`
        # @return [String]
        attr_accessor :goal
      
        # Optional. The Tensorflow summary tag name to use for optimizing trials. For
        # current versions of Tensorflow, this tag name should exactly match what is
        # shown in Tensorboard, including all scopes.  For versions of Tensorflow
        # prior to 0.12, this should be only the tag passed to tf.Summary.
        # By default, "training/hptuning/metric" will be used.
        # Corresponds to the JSON property `hyperparameterMetricTag`
        # @return [String]
        attr_accessor :hyperparameter_metric_tag
      
        # Optional. The number of training trials to run concurrently.
        # You can reduce the time it takes to perform hyperparameter tuning by adding
        # trials in parallel. However, each trail only benefits from the information
        # gained in completed trials. That means that a trial does not get access to
        # the results of trials running at the same time, which could reduce the
        # quality of the overall optimization.
        # Each trial will use the same scale tier and machine types.
        # Defaults to one.
        # Corresponds to the JSON property `maxParallelTrials`
        # @return [Fixnum]
        attr_accessor :max_parallel_trials
      
        # Optional. How many training trials should be attempted to optimize
        # the specified hyperparameters.
        # Defaults to one.
        # Corresponds to the JSON property `maxTrials`
        # @return [Fixnum]
        attr_accessor :max_trials
      
        # Required. The set of parameters to tune.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ParameterSpec>]
        attr_accessor :params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @goal = args[:goal] if args.key?(:goal)
          @hyperparameter_metric_tag = args[:hyperparameter_metric_tag] if args.key?(:hyperparameter_metric_tag)
          @max_parallel_trials = args[:max_parallel_trials] if args.key?(:max_parallel_trials)
          @max_trials = args[:max_trials] if args.key?(:max_trials)
          @params = args[:params] if args.key?(:params)
        end
      end
      
      # Represents a training or prediction job.
      # Next ID: 16
      class GoogleCloudMlV1beta1Job
        include Google::Apis::Core::Hashable
      
        # Output only. When the job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the job processing was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The details of a failure or a cancellation.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Required. The user-specified id of the job.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Represents input parameters for a prediction job.
        # Corresponds to the JSON property `predictionInput`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionInput]
        attr_accessor :prediction_input
      
        # Represents results of a prediction job.
        # Corresponds to the JSON property `predictionOutput`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictionOutput]
        attr_accessor :prediction_output
      
        # Output only. When the job processing was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The detailed state of a job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Represents input parameters for a training job.
        # Corresponds to the JSON property `trainingInput`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingInput]
        attr_accessor :training_input
      
        # Represents results of a training job. Output only.
        # Corresponds to the JSON property `trainingOutput`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1TrainingOutput]
        attr_accessor :training_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_message = args[:error_message] if args.key?(:error_message)
          @job_id = args[:job_id] if args.key?(:job_id)
          @prediction_input = args[:prediction_input] if args.key?(:prediction_input)
          @prediction_output = args[:prediction_output] if args.key?(:prediction_output)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @training_input = args[:training_input] if args.key?(:training_input)
          @training_output = args[:training_output] if args.key?(:training_output)
        end
      end
      
      # Response message for the ListJobs method.
      class GoogleCloudMlV1beta1ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of jobs.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job>]
        attr_accessor :jobs
      
        # Optional. Pass this token as the `page_token` field of the request for a
        # subsequent call.
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
      
      # Response message for the ListModels method.
      class GoogleCloudMlV1beta1ListModelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of models.
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model>]
        attr_accessor :models
      
        # Optional. Pass this token as the `page_token` field of the request for a
        # subsequent call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @models = args[:models] if args.key?(:models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListVersions method.
      class GoogleCloudMlV1beta1ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Pass this token as the `page_token` field of the request for a
        # subsequent call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of versions.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Options for manually scaling a model.
      class GoogleCloudMlV1beta1ManualScaling
        include Google::Apis::Core::Hashable
      
        # The number of nodes to allocate for this model. These nodes are always up,
        # starting from the time the model is deployed, so the cost of operating
        # this model will be proportional to `nodes` * number of hours since
        # last billing cycle plus the cost for each prediction performed.
        # Corresponds to the JSON property `nodes`
        # @return [Fixnum]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Represents a machine learning solution.
      # A model can have multiple versions, each of which is a deployed, trained
      # model ready to receive prediction requests. The model itself is just a
      # container.
      # Next ID: 8
      class GoogleCloudMlV1beta1Model
        include Google::Apis::Core::Hashable
      
        # Represents a version of the model.
        # Each version is a trained model deployed in the cloud, ready to handle
        # prediction requests. A model can have multiple versions. You can get
        # information about all of the versions of a given model by calling
        # [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/list).
        # Next ID: 18
        # Corresponds to the JSON property `defaultVersion`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version]
        attr_accessor :default_version
      
        # Optional. The description specified for the model when it was created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name specified for the model when it was created.
        # The model name must be unique within the project it is created in.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. If true, enables StackDriver Logging for online prediction.
        # Default is false.
        # Corresponds to the JSON property `onlinePredictionLogging`
        # @return [Boolean]
        attr_accessor :online_prediction_logging
        alias_method :online_prediction_logging?, :online_prediction_logging
      
        # Optional. The list of regions where the model is going to be deployed.
        # Currently only one region per model is supported.
        # Defaults to 'us-central1' if nothing is set.
        # Note:
        # *   No matter where a model is deployed, it can always be accessed by
        # users from anywhere, both for online and batch prediction.
        # *   The region for a batch prediction job is set by the region field when
        # submitting the batch prediction job and does not take its value from
        # this field.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_version = args[:default_version] if args.key?(:default_version)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @online_prediction_logging = args[:online_prediction_logging] if args.key?(:online_prediction_logging)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Represents the metadata of the long-running operation.
      # Next ID: 9
      class GoogleCloudMlV1beta1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was submitted.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time operation processing completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Indicates whether a request to cancel this operation has been made.
        # Corresponds to the JSON property `isCancellationRequested`
        # @return [Boolean]
        attr_accessor :is_cancellation_requested
        alias_method :is_cancellation_requested?, :is_cancellation_requested
      
        # Contains the name of the model associated with the operation.
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The time operation processing started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Represents a version of the model.
        # Each version is a trained model deployed in the cloud, ready to handle
        # prediction requests. A model can have multiple versions. You can get
        # information about all of the versions of a given model by calling
        # [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/list).
        # Next ID: 18
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @is_cancellation_requested = args[:is_cancellation_requested] if args.key?(:is_cancellation_requested)
          @model_name = args[:model_name] if args.key?(:model_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents a single hyperparameter to optimize.
      class GoogleCloudMlV1beta1ParameterSpec
        include Google::Apis::Core::Hashable
      
        # Required if type is `CATEGORICAL`. The list of possible categories.
        # Corresponds to the JSON property `categoricalValues`
        # @return [Array<String>]
        attr_accessor :categorical_values
      
        # Required if type is `DISCRETE`.
        # A list of feasible points.
        # The list should be in strictly increasing order. For instance, this
        # parameter might have possible settings of 1.5, 2.5, and 4.0. This list
        # should not contain more than 1,000 values.
        # Corresponds to the JSON property `discreteValues`
        # @return [Array<Float>]
        attr_accessor :discrete_values
      
        # Required if typeis `DOUBLE` or `INTEGER`. This field
        # should be unset if type is `CATEGORICAL`. This value should be integers if
        # type is `INTEGER`.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # Required if type is `DOUBLE` or `INTEGER`. This field
        # should be unset if type is `CATEGORICAL`. This value should be integers if
        # type is INTEGER.
        # Corresponds to the JSON property `minValue`
        # @return [Float]
        attr_accessor :min_value
      
        # Required. The parameter name must be unique amongst all ParameterConfigs in
        # a HyperparameterSpec message. E.g., "learning_rate".
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Optional. How the parameter should be scaled to the hypercube.
        # Leave unset for categorical parameters.
        # Some kind of scaling is strongly recommended for real or integral
        # parameters (e.g., `UNIT_LINEAR_SCALE`).
        # Corresponds to the JSON property `scaleType`
        # @return [String]
        attr_accessor :scale_type
      
        # Required. The type of the parameter.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_values = args[:categorical_values] if args.key?(:categorical_values)
          @discrete_values = args[:discrete_values] if args.key?(:discrete_values)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @scale_type = args[:scale_type] if args.key?(:scale_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request for predictions to be issued against a trained model.
      # The body of the request is a single JSON object with a single top-level
      # field:
      # <dl>
      # <dt>instances</dt>
      # <dd>A JSON array containing values representing the instances to use for
      # prediction.</dd>
      # </dl>
      # The structure of each element of the instances list is determined by your
      # model's input definition. Instances can include named inputs or can contain
      # only unlabeled values.
      # Not all data includes named inputs. Some instances will be simple
      # JSON values (boolean, number, or string). However, instances are often lists
      # of simple values, or complex nested lists. Here are some examples of request
      # bodies:
      # CSV data with each row encoded as a string value:
      # <pre>
      # `"instances": ["1.0,true,\\"x\\"", "-2.0,false,\\"y\\""]`
      # </pre>
      # Plain text:
      # <pre>
      # `"instances": ["the quick brown fox", "la bruja le dio"]`
      # </pre>
      # Sentences encoded as lists of words (vectors of strings):
      # <pre>
      # `
      # "instances": [
      # ["the","quick","brown"],
      # ["la","bruja","le"],
      # ...
      # ]
      # `
      # </pre>
      # Floating point scalar values:
      # <pre>
      # `"instances": [0.0, 1.1, 2.2]`
      # </pre>
      # Vectors of integers:
      # <pre>
      # `
      # "instances": [
      # [0, 1, 2],
      # [3, 4, 5],
      # ...
      # ]
      # `
      # </pre>
      # Tensors (in this case, two-dimensional tensors):
      # <pre>
      # `
      # "instances": [
      # [
      # [0, 1, 2],
      # [3, 4, 5]
      # ],
      # ...
      # ]
      # `
      # </pre>
      # Images can be represented different ways. In this encoding scheme the first
      # two dimensions represent the rows and columns of the image, and the third
      # contains lists (vectors) of the R, G, and B values for each pixel.
      # <pre>
      # `
      # "instances": [
      # [
      # [
      # [138, 30, 66],
      # [130, 20, 56],
      # ...
      # ],
      # [
      # [126, 38, 61],
      # [122, 24, 57],
      # ...
      # ],
      # ...
      # ],
      # ...
      # ]
      # `
      # </pre>
      # JSON strings must be encoded as UTF-8. To send binary data, you must
      # base64-encode the data and mark it as binary. To mark a JSON string
      # as binary, replace it with a JSON object with a single attribute named `b64`:
      # <pre>`"b64": "..."` </pre>
      # For example:
      # Two Serialized tf.Examples (fake data, for illustrative purposes only):
      # <pre>
      # `"instances": [`"b64": "X5ad6u"`, `"b64": "IA9j4nx"`]`
      # </pre>
      # Two JPEG image byte strings (fake data, for illustrative purposes only):
      # <pre>
      # `"instances": [`"b64": "ASa8asdf"`, `"b64": "JLK7ljk3"`]`
      # </pre>
      # If your data includes named references, format each instance as a JSON object
      # with the named references as the keys:
      # JSON input data to be preprocessed:
      # <pre>
      # `
      # "instances": [
      # `
      # "a": 1.0,
      # "b": true,
      # "c": "x"
      # `,
      # `
      # "a": -2.0,
      # "b": false,
      # "c": "y"
      # `
      # ]
      # `
      # </pre>
      # Some models have an underlying TensorFlow graph that accepts multiple input
      # tensors. In this case, you should use the names of JSON name/value pairs to
      # identify the input tensors, as shown in the following exmaples:
      # For a graph with input tensor aliases "tag" (string) and "image"
      # (base64-encoded string):
      # <pre>
      # `
      # "instances": [
      # `
      # "tag": "beach",
      # "image": `"b64": "ASa8asdf"`
      # `,
      # `
      # "tag": "car",
      # "image": `"b64": "JLK7ljk3"`
      # `
      # ]
      # `
      # </pre>
      # For a graph with input tensor aliases "tag" (string) and "image"
      # (3-dimensional array of 8-bit ints):
      # <pre>
      # `
      # "instances": [
      # `
      # "tag": "beach",
      # "image": [
      # [
      # [138, 30, 66],
      # [130, 20, 56],
      # ...
      # ],
      # [
      # [126, 38, 61],
      # [122, 24, 57],
      # ...
      # ],
      # ...
      # ]
      # `,
      # `
      # "tag": "car",
      # "image": [
      # [
      # [255, 0, 102],
      # [255, 0, 97],
      # ...
      # ],
      # [
      # [254, 1, 101],
      # [254, 2, 93],
      # ...
      # ],
      # ...
      # ]
      # `,
      # ...
      # ]
      # `
      # </pre>
      # If the call is successful, the response body will contain one prediction
      # entry per instance in the request body. If prediction fails for any
      # instance, the response body will contain no predictions and will contian
      # a single error entry instead.
      class GoogleCloudMlV1beta1PredictRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or
        # an HTML page.
        # This message can be used both in streaming and non-streaming API methods in
        # the request as well as the response.
        # It can be used as a top-level request field, which is convenient if one
        # wants to extract parameters from either the URL or HTTP template into the
        # request fields and also want access to the raw HTTP body.
        # Example:
        # message GetResourceRequest `
        # // A unique request id.
        # string request_id = 1;
        # // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2;
        # `
        # service ResourceService `
        # rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
        # rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty);
        # `
        # Example with streaming methods:
        # service CaldavService `
        # rpc GetCalendar(stream google.api.HttpBody)
        # returns (stream google.api.HttpBody);
        # rpc UpdateCalendar(stream google.api.HttpBody)
        # returns (stream google.api.HttpBody);
        # `
        # Use of this type only changes how the request and response bodies are
        # handled, all other features will continue to work unchanged.
        # Corresponds to the JSON property `httpBody`
        # @return [Google::Apis::MlV1beta1::GoogleApiHttpBody]
        attr_accessor :http_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_body = args[:http_body] if args.key?(:http_body)
        end
      end
      
      # Represents input parameters for a prediction job.
      class GoogleCloudMlV1beta1PredictionInput
        include Google::Apis::Core::Hashable
      
        # Optional. Number of records per batch, defaults to 64.
        # The service will buffer batch_size number of records in memory before
        # invoking one Tensorflow prediction call internally. So take the record
        # size and memory available into consideration when setting this parameter.
        # Corresponds to the JSON property `batchSize`
        # @return [Fixnum]
        attr_accessor :batch_size
      
        # Required. The format of the input data files.
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # Required. The Google Cloud Storage location of the input data files.
        # May contain wildcards.
        # Corresponds to the JSON property `inputPaths`
        # @return [Array<String>]
        attr_accessor :input_paths
      
        # Optional. The maximum number of workers to be used for parallel processing.
        # Defaults to 10 if not specified.
        # Corresponds to the JSON property `maxWorkerCount`
        # @return [Fixnum]
        attr_accessor :max_worker_count
      
        # Use this field if you want to use the default version for the specified
        # model. The string must use the following format:
        # `"projects/<var>[YOUR_PROJECT]</var>/models/<var>[YOUR_MODEL]</var>"`
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        # Required. The output Google Cloud Storage location.
        # Corresponds to the JSON property `outputPath`
        # @return [String]
        attr_accessor :output_path
      
        # Required. The Google Compute Engine region to run the prediction job in.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Optional. The Google Cloud ML runtime version to use for this batch
        # prediction. If not set, Google Cloud ML will pick the runtime version used
        # during the CreateVersion request for this model version, or choose the
        # latest stable version when model version information is not available
        # such as when the model is specified by uri.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Use this field if you want to specify a Google Cloud Storage path for
        # the model to use.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Use this field if you want to specify a version of the model to use. The
        # string is formatted the same way as `model_version`, with the addition
        # of the version information:
        # `"projects/<var>[YOUR_PROJECT]</var>/models/<var>YOUR_MODEL/versions/<var>[
        # YOUR_VERSION]</var>"`
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_size = args[:batch_size] if args.key?(:batch_size)
          @data_format = args[:data_format] if args.key?(:data_format)
          @input_paths = args[:input_paths] if args.key?(:input_paths)
          @max_worker_count = args[:max_worker_count] if args.key?(:max_worker_count)
          @model_name = args[:model_name] if args.key?(:model_name)
          @output_path = args[:output_path] if args.key?(:output_path)
          @region = args[:region] if args.key?(:region)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @uri = args[:uri] if args.key?(:uri)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # Represents results of a prediction job.
      class GoogleCloudMlV1beta1PredictionOutput
        include Google::Apis::Core::Hashable
      
        # The number of data instances which resulted in errors.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # Node hours used by the batch prediction job.
        # Corresponds to the JSON property `nodeHours`
        # @return [Float]
        attr_accessor :node_hours
      
        # The output Google Cloud Storage location provided at the job creation time.
        # Corresponds to the JSON property `outputPath`
        # @return [String]
        attr_accessor :output_path
      
        # The number of generated predictions.
        # Corresponds to the JSON property `predictionCount`
        # @return [Fixnum]
        attr_accessor :prediction_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_count = args[:error_count] if args.key?(:error_count)
          @node_hours = args[:node_hours] if args.key?(:node_hours)
          @output_path = args[:output_path] if args.key?(:output_path)
          @prediction_count = args[:prediction_count] if args.key?(:prediction_count)
        end
      end
      
      # Request message for the SetDefaultVersion request.
      class GoogleCloudMlV1beta1SetDefaultVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents input parameters for a training job.
      class GoogleCloudMlV1beta1TrainingInput
        include Google::Apis::Core::Hashable
      
        # Optional. Command line arguments to pass to the program.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Represents a set of hyperparameters to optimize.
        # Corresponds to the JSON property `hyperparameters`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterSpec]
        attr_accessor :hyperparameters
      
        # Optional. A Google Cloud Storage path in which to store training outputs
        # and other data needed for training. This path is passed to your TensorFlow
        # program as the 'job_dir' command-line argument. The benefit of specifying
        # this field is that Cloud ML validates the path for use in training.
        # Corresponds to the JSON property `jobDir`
        # @return [String]
        attr_accessor :job_dir
      
        # Optional. Specifies the type of virtual machine to use for your training
        # job's master worker.
        # The following types are supported:
        # <dl>
        # <dt>standard</dt>
        # <dd>
        # A basic machine configuration suitable for training simple models with
        # small to moderate datasets.
        # </dd>
        # <dt>large_model</dt>
        # <dd>
        # A machine with a lot of memory, specially suited for parameter servers
        # when your model is large (having many hidden layers or layers with very
        # large numbers of nodes).
        # </dd>
        # <dt>complex_model_s</dt>
        # <dd>
        # A machine suitable for the master and workers of the cluster when your
        # model requires more computation than the standard machine can handle
        # satisfactorily.
        # </dd>
        # <dt>complex_model_m</dt>
        # <dd>
        # A machine with roughly twice the number of cores and roughly double the
        # memory of <code suppresswarning="true">complex_model_s</code>.
        # </dd>
        # <dt>complex_model_l</dt>
        # <dd>
        # A machine with roughly twice the number of cores and roughly double the
        # memory of <code suppresswarning="true">complex_model_m</code>.
        # </dd>
        # <dt>standard_gpu</dt>
        # <dd>
        # A machine equivalent to <code suppresswarning="true">standard</code> that
        # also includes a
        # <a href="/ml-engine/docs/how-tos/using-gpus">
        # GPU that you can use in your trainer</a>.
        # </dd>
        # <dt>complex_model_m_gpu</dt>
        # <dd>
        # A machine equivalent to
        # <code suppresswarning="true">complex_model_m</code> that also includes
        # four GPUs.
        # </dd>
        # </dl>
        # You must set this value when `scaleTier` is set to `CUSTOM`.
        # Corresponds to the JSON property `masterType`
        # @return [String]
        attr_accessor :master_type
      
        # Required. The Google Cloud Storage location of the packages with
        # the training program and any additional dependencies.
        # The maximum number of package URIs is 100.
        # Corresponds to the JSON property `packageUris`
        # @return [Array<String>]
        attr_accessor :package_uris
      
        # Optional. The number of parameter server replicas to use for the training
        # job. Each replica in the cluster will be of the type specified in
        # `parameter_server_type`.
        # This value can only be used when `scale_tier` is set to `CUSTOM`.If you
        # set this value, you must also set `parameter_server_type`.
        # Corresponds to the JSON property `parameterServerCount`
        # @return [Fixnum]
        attr_accessor :parameter_server_count
      
        # Optional. Specifies the type of virtual machine to use for your training
        # job's parameter server.
        # The supported values are the same as those described in the entry for
        # `master_type`.
        # This value must be present when `scaleTier` is set to `CUSTOM` and
        # `parameter_server_count` is greater than zero.
        # Corresponds to the JSON property `parameterServerType`
        # @return [String]
        attr_accessor :parameter_server_type
      
        # Required. The Python module name to run after installing the packages.
        # Corresponds to the JSON property `pythonModule`
        # @return [String]
        attr_accessor :python_module
      
        # Required. The Google Compute Engine region to run the training job in.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Optional. The Google Cloud ML runtime version to use for training.  If not
        # set, Google Cloud ML will choose the latest stable version.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Required. Specifies the machine types, the number of replicas for workers
        # and parameter servers.
        # Corresponds to the JSON property `scaleTier`
        # @return [String]
        attr_accessor :scale_tier
      
        # Optional. The number of worker replicas to use for the training job. Each
        # replica in the cluster will be of the type specified in `worker_type`.
        # This value can only be used when `scale_tier` is set to `CUSTOM`. If you
        # set this value, you must also set `worker_type`.
        # Corresponds to the JSON property `workerCount`
        # @return [Fixnum]
        attr_accessor :worker_count
      
        # Optional. Specifies the type of virtual machine to use for your training
        # job's worker nodes.
        # The supported values are the same as those described in the entry for
        # `masterType`.
        # This value must be present when `scaleTier` is set to `CUSTOM` and
        # `workerCount` is greater than zero.
        # Corresponds to the JSON property `workerType`
        # @return [String]
        attr_accessor :worker_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @hyperparameters = args[:hyperparameters] if args.key?(:hyperparameters)
          @job_dir = args[:job_dir] if args.key?(:job_dir)
          @master_type = args[:master_type] if args.key?(:master_type)
          @package_uris = args[:package_uris] if args.key?(:package_uris)
          @parameter_server_count = args[:parameter_server_count] if args.key?(:parameter_server_count)
          @parameter_server_type = args[:parameter_server_type] if args.key?(:parameter_server_type)
          @python_module = args[:python_module] if args.key?(:python_module)
          @region = args[:region] if args.key?(:region)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @scale_tier = args[:scale_tier] if args.key?(:scale_tier)
          @worker_count = args[:worker_count] if args.key?(:worker_count)
          @worker_type = args[:worker_type] if args.key?(:worker_type)
        end
      end
      
      # Represents results of a training job. Output only.
      class GoogleCloudMlV1beta1TrainingOutput
        include Google::Apis::Core::Hashable
      
        # The number of hyperparameter tuning trials that completed successfully.
        # Only set for hyperparameter tuning jobs.
        # Corresponds to the JSON property `completedTrialCount`
        # @return [Fixnum]
        attr_accessor :completed_trial_count
      
        # The amount of ML units consumed by the job.
        # Corresponds to the JSON property `consumedMLUnits`
        # @return [Float]
        attr_accessor :consumed_ml_units
      
        # Whether this job is a hyperparameter tuning job.
        # Corresponds to the JSON property `isHyperparameterTuningJob`
        # @return [Boolean]
        attr_accessor :is_hyperparameter_tuning_job
        alias_method :is_hyperparameter_tuning_job?, :is_hyperparameter_tuning_job
      
        # Results for individual Hyperparameter trials.
        # Only set for hyperparameter tuning jobs.
        # Corresponds to the JSON property `trials`
        # @return [Array<Google::Apis::MlV1beta1::GoogleCloudMlV1beta1HyperparameterOutput>]
        attr_accessor :trials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_trial_count = args[:completed_trial_count] if args.key?(:completed_trial_count)
          @consumed_ml_units = args[:consumed_ml_units] if args.key?(:consumed_ml_units)
          @is_hyperparameter_tuning_job = args[:is_hyperparameter_tuning_job] if args.key?(:is_hyperparameter_tuning_job)
          @trials = args[:trials] if args.key?(:trials)
        end
      end
      
      # Represents a version of the model.
      # Each version is a trained model deployed in the cloud, ready to handle
      # prediction requests. A model can have multiple versions. You can get
      # information about all of the versions of a given model by calling
      # [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
      # models.versions/list).
      # Next ID: 18
      class GoogleCloudMlV1beta1Version
        include Google::Apis::Core::Hashable
      
        # Options for automatically scaling a model.
        # Corresponds to the JSON property `autoScaling`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1AutoScaling]
        attr_accessor :auto_scaling
      
        # Output only. The time the version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The Google Cloud Storage location of the trained model used to
        # create the version. See the
        # [overview of model
        # deployment](/ml-engine/docs/concepts/deployment-overview) for more
        # information.
        # When passing Version to
        # [projects.models.versions.create](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/create)
        # the model service uses the specified location as the source of the model.
        # Once deployed, the model version is hosted by the prediction service, so
        # this location is useful only as a historical record.
        # The total number of model files can't exceed 1000.
        # Corresponds to the JSON property `deploymentUri`
        # @return [String]
        attr_accessor :deployment_uri
      
        # Optional. The description specified for the version when it was created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The details of a failure or a cancellation.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Output only. If true, this version will be used to handle prediction
        # requests that do not specify a version.
        # You can change the default version by calling
        # [projects.methods.versions.setDefault](/ml-engine/reference/rest/v1beta1/
        # projects.models.versions/setDefault).
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Output only. The time the version was last used for prediction.
        # Corresponds to the JSON property `lastUseTime`
        # @return [String]
        attr_accessor :last_use_time
      
        # Options for manually scaling a model.
        # Corresponds to the JSON property `manualScaling`
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ManualScaling]
        attr_accessor :manual_scaling
      
        # Required.The name specified for the version when it was created.
        # The version name must be unique within the model it is created in.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The Google Cloud ML runtime version to use for this deployment.
        # If not set, Google Cloud ML will choose a version.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Output only. The state of a version.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_scaling = args[:auto_scaling] if args.key?(:auto_scaling)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment_uri = args[:deployment_uri] if args.key?(:deployment_uri)
          @description = args[:description] if args.key?(:description)
          @error_message = args[:error_message] if args.key?(:error_message)
          @is_default = args[:is_default] if args.key?(:is_default)
          @last_use_time = args[:last_use_time] if args.key?(:last_use_time)
          @manual_scaling = args[:manual_scaling] if args.key?(:manual_scaling)
          @name = args[:name] if args.key?(:name)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Write a Cloud Audit log
      class GoogleIamV1LogConfigCloudAuditOptions
        include Google::Apis::Core::Hashable
      
        # The log_name to populate in the Cloud Audit Record.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_name = args[:log_name] if args.key?(:log_name)
        end
      end
      
      # Increment a streamz counter with the specified metric and field names.
      # Metric names should start with a '/', generally be lowercase-only,
      # and end in "_count". Field names should not contain an initial slash.
      # The actual exported metric names will have "/iam/policy" prepended.
      # Field names correspond to IAM request parameters and field values are
      # their respective values.
      # At present the only supported field names are
      # - "iam_principal", corresponding to IAMContext.principal;
      # - "" (empty string), resulting in one aggretated counter with no field.
      # Examples:
      # counter ` metric: "/debug_access_count"  field: "iam_principal" `
      # ==> increment counter /iam/policy/backend_debug_access_count
      # `iam_principal=[value of IAMContext.principal]`
      # At this time we do not support:
      # * multiple field names (though this may be supported in the future)
      # * decrementing the counter
      # * incrementing it by anything other than 1
      class GoogleIamV1LogConfigCounterOptions
        include Google::Apis::Core::Hashable
      
        # The field value to attribute.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # The metric to update.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # Write a Data Access (Gin) log
      class GoogleIamV1LogConfigDataAccessOptions
        include Google::Apis::Core::Hashable
      
        # Whether Gin logging should happen in a fail-closed manner at the caller.
        # This is relevant only in the LocalIAM implementation, for now.
        # Corresponds to the JSON property `logMode`
        # @return [String]
        attr_accessor :log_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_mode = args[:log_mode] if args.key?(:log_mode)
        end
      end
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "fooservice.googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:bar@gmail.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts foo@gmail.com from DATA_READ logging, and
      # bar@gmail.com from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Next ID: 4
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # 
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
        # `allServices` is a special value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # foo@gmail.com from DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members` with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::MlV1beta1::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` or `joe@example.com`.
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
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
      
      # A condition to be met.
      class GoogleIamV1Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        # Trusted attributes supplied by any service that owns resources and uses
        # the IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # DEPRECATED. Use 'values' instead.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The objects of the condition. This is mutually exclusive with 'value'.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam = args[:iam] if args.key?(:iam)
          @op = args[:op] if args.key?(:op)
          @svc = args[:svc] if args.key?(:svc)
          @sys = args[:sys] if args.key?(:sys)
          @value = args[:value] if args.key?(:value)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Specifies what kind of log the caller must write
      class GoogleIamV1LogConfig
        include Google::Apis::Core::Hashable
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::MlV1beta1::GoogleIamV1LogConfigCloudAuditOptions]
        attr_accessor :cloud_audit
      
        # Increment a streamz counter with the specified metric and field names.
        # Metric names should start with a '/', generally be lowercase-only,
        # and end in "_count". Field names should not contain an initial slash.
        # The actual exported metric names will have "/iam/policy" prepended.
        # Field names correspond to IAM request parameters and field values are
        # their respective values.
        # At present the only supported field names are
        # - "iam_principal", corresponding to IAMContext.principal;
        # - "" (empty string), resulting in one aggretated counter with no field.
        # Examples:
        # counter ` metric: "/debug_access_count"  field: "iam_principal" `
        # ==> increment counter /iam/policy/backend_debug_access_count
        # `iam_principal=[value of IAMContext.principal]`
        # At this time we do not support:
        # * multiple field names (though this may be supported in the future)
        # * decrementing the counter
        # * incrementing it by anything other than 1
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::MlV1beta1::GoogleIamV1LogConfigCounterOptions]
        attr_accessor :counter
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::MlV1beta1::GoogleIamV1LogConfigDataAccessOptions]
        attr_accessor :data_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_audit = args[:cloud_audit] if args.key?(:cloud_audit)
          @counter = args[:counter] if args.key?(:counter)
          @data_access = args[:data_access] if args.key?(:data_access)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `iamOwned`
        # @return [Boolean]
        attr_accessor :iam_owned
        alias_method :iam_owned?, :iam_owned
      
        # If more than one rule is specified, the rules are applied in the following
        # manner:
        # - All matching LOG rules are always applied.
        # - If any DENY/DENY_WITH_LOG rule matches, permission is denied.
        # Logging will be applied if one or more matching rule requires logging.
        # - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is
        # granted.
        # Logging will be applied if one or more matching rule requires logging.
        # - Otherwise, if no rule applies, permission is denied.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1Rule>]
        attr_accessor :rules
      
        # Version of the `Policy`. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @iam_owned = args[:iam_owned] if args.key?(:iam_owned)
          @rules = args[:rules] if args.key?(:rules)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A rule to be applied in a Policy.
      class GoogleIamV1Rule
        include Google::Apis::Core::Hashable
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Additional restrictions that must be met
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1Condition>]
        attr_accessor :conditions
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If one or more 'in' clauses are specified, the rule matches if
        # the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::MlV1beta1::GoogleIamV1LogConfig>]
        attr_accessor :log_config
      
        # If one or more 'not_in' clauses are specified, the rule matches
        # if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries.
        # The format for in and not_in entries is the same as for members in a
        # Binding (see google/iam/v1/policy.proto).
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # A permission is a string of form '<service>.<resource type>.<verb>'
        # (e.g., 'storage.buckets.list'). A value of '*' matches all permissions,
        # and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @conditions = args[:conditions] if args.key?(:conditions)
          @description = args[:description] if args.key?(:description)
          @in = args[:in] if args.key?(:in)
          @log_config = args[:log_config] if args.key?(:log_config)
          @not_in = args[:not_in] if args.key?(:not_in)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::MlV1beta1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the
        # following default mask is used:
        # paths: "bindings, etag"
        # This field is only used by Cloud IAM.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
      # Response message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
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
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::MlV1beta1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If true, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MlV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
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
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
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
    end
  end
end
