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
    module RunV2
      
      # Settings for Binary Authorization feature.
      class GoogleCloudRunV2BinaryAuthorization
        include Google::Apis::Core::Hashable
      
        # If present, indicates to use Breakglass using this justification. If
        # use_default is False, then it must be empty. For more information on
        # breakglass, see https://cloud.google.com/binary-authorization/docs/using-
        # breakglass
        # Corresponds to the JSON property `breakglassJustification`
        # @return [String]
        attr_accessor :breakglass_justification
      
        # If True, indicates to use the default project's binary authorization policy.
        # If False, binary authorization will be disabled.
        # Corresponds to the JSON property `useDefault`
        # @return [Boolean]
        attr_accessor :use_default
        alias_method :use_default?, :use_default
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakglass_justification = args[:breakglass_justification] if args.key?(:breakglass_justification)
          @use_default = args[:use_default] if args.key?(:use_default)
        end
      end
      
      # Represents a set of Cloud SQL instances. Each one will be available under /
      # cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run
      # for more information on how to connect Cloud SQL and Cloud Run.
      class GoogleCloudRunV2CloudSqlInstance
        include Google::Apis::Core::Hashable
      
        # The Cloud SQL instance connection names, as can be found in https://console.
        # cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/
        # connect-run for more information on how to connect Cloud SQL and Cloud Run.
        # Format: `project`:`location`:`instance`
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # Defines a status condition for a resource.
      class GoogleCloudRunV2Condition
        include Google::Apis::Core::Hashable
      
        # A reason for the execution condition.
        # Corresponds to the JSON property `executionReason`
        # @return [String]
        attr_accessor :execution_reason
      
        # Last time the condition transitioned from one status to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # Human readable message indicating details about the current status.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A common (service-level) reason for this condition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # A reason for the revision condition.
        # Corresponds to the JSON property `revisionReason`
        # @return [String]
        attr_accessor :revision_reason
      
        # How to interpret failures of this condition, one of Error, Warning, Info
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # State of the condition.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # type is used to communicate the status of the reconciliation process. See also:
        # https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-
        # conditions-and-reporting Types common to all resources include: * "Ready":
        # True when the Resource is ready.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_reason = args[:execution_reason] if args.key?(:execution_reason)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @revision_reason = args[:revision_reason] if args.key?(:revision_reason)
          @severity = args[:severity] if args.key?(:severity)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A single application container. This specifies both the container to run, the
      # command to run in the container and the arguments to supply to it. Note that
      # additional arguments may be supplied by the system to the container at runtime.
      class GoogleCloudRunV2Container
        include Google::Apis::Core::Hashable
      
        # Arguments to the entrypoint. The docker image's CMD is used if this is not
        # provided. Variable references $(VAR_NAME) are expanded using the container's
        # environment. If a variable cannot be resolved, the reference in the input
        # string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $
        # $, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of
        # whether the variable exists or not. More info: https://kubernetes.io/docs/
        # tasks/inject-data-application/define-command-argument-container/#running-a-
        # command-in-a-shell
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT
        # is used if this is not provided. Variable references $(VAR_NAME) are expanded
        # using the container's environment. If a variable cannot be resolved, the
        # reference in the input string will be unchanged. The $(VAR_NAME) syntax can be
        # escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be
        # expanded, regardless of whether the variable exists or not. More info: https://
        # kubernetes.io/docs/tasks/inject-data-application/define-command-argument-
        # container/#running-a-command-in-a-shell
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2EnvVar>]
        attr_accessor :env
      
        # Required. Name of the container image in Dockerhub, Google Artifact Registry,
        # or Google Container Registry. If the host is not provided, Dockerhub is
        # assumed. More info: https://kubernetes.io/docs/concepts/containers/images
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `livenessProbe`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Probe]
        attr_accessor :liveness_probe
      
        # Name of the container specified as a DNS_LABEL (RFC 1123).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of ports to expose from the container. Only a single port can be
        # specified. The specified ports must be listening on all interfaces (0.0.0.0)
        # within the container to be accessible. If omitted, a port number will be
        # chosen and passed to the container through the PORT environment variable for
        # the container to listen on.
        # Corresponds to the JSON property `ports`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2ContainerPort>]
        attr_accessor :ports
      
        # ResourceRequirements describes the compute resource requirements.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2ResourceRequirements]
        attr_accessor :resources
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `startupProbe`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Probe]
        attr_accessor :startup_probe
      
        # Volume to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2VolumeMount>]
        attr_accessor :volume_mounts
      
        # Container's working directory. If not specified, the container runtime's
        # default will be used, which might be configured in the container image.
        # Corresponds to the JSON property `workingDir`
        # @return [String]
        attr_accessor :working_dir
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @command = args[:command] if args.key?(:command)
          @env = args[:env] if args.key?(:env)
          @image = args[:image] if args.key?(:image)
          @liveness_probe = args[:liveness_probe] if args.key?(:liveness_probe)
          @name = args[:name] if args.key?(:name)
          @ports = args[:ports] if args.key?(:ports)
          @resources = args[:resources] if args.key?(:resources)
          @startup_probe = args[:startup_probe] if args.key?(:startup_probe)
          @volume_mounts = args[:volume_mounts] if args.key?(:volume_mounts)
          @working_dir = args[:working_dir] if args.key?(:working_dir)
        end
      end
      
      # ContainerPort represents a network port in a single container.
      class GoogleCloudRunV2ContainerPort
        include Google::Apis::Core::Hashable
      
        # Port number the container listens on. This must be a valid TCP port number, 0 <
        # container_port < 65536.
        # Corresponds to the JSON property `containerPort`
        # @return [Fixnum]
        attr_accessor :container_port
      
        # If specified, used to specify which protocol to use. Allowed values are "http1"
        # and "h2c".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_port = args[:container_port] if args.key?(:container_port)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # EnvVar represents an environment variable present in a Container.
      class GoogleCloudRunV2EnvVar
        include Google::Apis::Core::Hashable
      
        # Required. Name of the environment variable. Must be a C_IDENTIFIER, and mnay
        # not exceed 32768 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Variable references $(VAR_NAME) are expanded using the previous defined
        # environment variables in the container and any route environment variables. If
        # a variable cannot be resolved, the reference in the input string will be
        # unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(
        # VAR_NAME). Escaped references will never be expanded, regardless of whether
        # the variable exists or not. Defaults to "", and the maximum length is 32768
        # bytes.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # EnvVarSource represents a source for the value of an EnvVar.
        # Corresponds to the JSON property `valueSource`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2EnvVarSource]
        attr_accessor :value_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
          @value_source = args[:value_source] if args.key?(:value_source)
        end
      end
      
      # EnvVarSource represents a source for the value of an EnvVar.
      class GoogleCloudRunV2EnvVarSource
        include Google::Apis::Core::Hashable
      
        # SecretEnvVarSource represents a source for the value of an EnvVar.
        # Corresponds to the JSON property `secretKeyRef`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2SecretKeySelector]
        attr_accessor :secret_key_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_key_ref = args[:secret_key_ref] if args.key?(:secret_key_ref)
        end
      end
      
      # Execution represents the configuration of a single execution. A execution an
      # immutable resource that references a container image which is run to
      # completion.
      class GoogleCloudRunV2Execution
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The number of tasks which reached phase Cancelled.
        # Corresponds to the JSON property `cancelledCount`
        # @return [Fixnum]
        attr_accessor :cancelled_count
      
        # Output only. Represents time when the execution was completed. It is not
        # guaranteed to be set in happens-before order across separate operations.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Output only. The Condition of this Execution, containing its readiness status,
        # and detailed error information in case it did not reach the desired state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Condition>]
        attr_accessor :conditions
      
        # Output only. Represents time when the execution was acknowledged by the
        # execution controller. It is not guaranteed to be set in happens-before order
        # across separate operations.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. For a deleted resource, the deletion time. It is only populated
        # as a response to a Delete request.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. A system-generated fingerprint for this version of the resource.
        # May be used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. For a deleted resource, the time after which it will be
        # permamently deleted. It is only populated as a response to a Delete request.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The number of tasks which reached phase Failed.
        # Corresponds to the JSON property `failedCount`
        # @return [Fixnum]
        attr_accessor :failed_count
      
        # Output only. A number that monotonically increases every time the user
        # modifies the desired state.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Output only. The name of the parent Job.
        # Corresponds to the JSON property `job`
        # @return [String]
        attr_accessor :job
      
        # KRM-style labels for the resource. User-provided labels are shared with Google'
        # s billing system, so they can be used to filter, or break down billing charges
        # by team, component, environment, state, etc. For more information, visit https:
        # //cloud.google.com/resource-manager/docs/creating-managing-labels or https://
        # cloud.google.com/run/docs/configuring/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Set the launch stage to a preview stage on write to allow use of preview
        # features in that stage. On read, describes whether the resource uses preview
        # features. Launch Stages are defined at [Google Cloud Platform Launch Stages](
        # https://cloud.google.com/terms/launch-stages).
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Output only. URI where logs for this execution can be found in Cloud Console.
        # Corresponds to the JSON property `logUri`
        # @return [String]
        attr_accessor :log_uri
      
        # Output only. The unique name of this Execution.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generation of this Execution. See comments in `reconciling`
        # for additional information on reconciliation process in Cloud Run.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Output only. Specifies the maximum desired number of tasks the execution
        # should run at any given time. Must be <= task_count. The actual number of
        # tasks running in steady state will be less than this number when ((.spec.
        # task_count - .status.successful) < .spec.parallelism), i.e. when the work left
        # to do is less than max parallelism. More info: https://kubernetes.io/docs/
        # concepts/workloads/controllers/jobs-run-to-completion/
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # Output only. Indicates whether the resource's reconciliation is still in
        # progress. See comments in `Job.reconciling` for additional information on
        # reconciliation process in Cloud Run.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The number of tasks which have retried at least once.
        # Corresponds to the JSON property `retriedCount`
        # @return [Fixnum]
        attr_accessor :retried_count
      
        # Output only. The number of actively running tasks.
        # Corresponds to the JSON property `runningCount`
        # @return [Fixnum]
        attr_accessor :running_count
      
        # Output only. Represents time when the execution started to run. It is not
        # guaranteed to be set in happens-before order across separate operations.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The number of tasks which reached phase Succeeded.
        # Corresponds to the JSON property `succeededCount`
        # @return [Fixnum]
        attr_accessor :succeeded_count
      
        # Output only. Specifies the desired number of tasks the execution should run.
        # Setting to 1 means that parallelism is limited to 1 and the success of that
        # task signals the success of the execution. More info: https://kubernetes.io/
        # docs/concepts/workloads/controllers/jobs-run-to-completion/
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # TaskTemplate describes the data a task should have when created from a
        # template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate]
        attr_accessor :template
      
        # Output only. Server assigned unique identifier for the Execution. The value is
        # a UUID4 string and guaranteed to remain unchanged until the resource is
        # deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cancelled_count = args[:cancelled_count] if args.key?(:cancelled_count)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @failed_count = args[:failed_count] if args.key?(:failed_count)
          @generation = args[:generation] if args.key?(:generation)
          @job = args[:job] if args.key?(:job)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @log_uri = args[:log_uri] if args.key?(:log_uri)
          @name = args[:name] if args.key?(:name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @retried_count = args[:retried_count] if args.key?(:retried_count)
          @running_count = args[:running_count] if args.key?(:running_count)
          @start_time = args[:start_time] if args.key?(:start_time)
          @succeeded_count = args[:succeeded_count] if args.key?(:succeeded_count)
          @task_count = args[:task_count] if args.key?(:task_count)
          @template = args[:template] if args.key?(:template)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Reference to an Execution. Use /Executions.GetExecution with the given name to
      # get full execution including the latest status.
      class GoogleCloudRunV2ExecutionReference
        include Google::Apis::Core::Hashable
      
        # Creation timestamp of the execution.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Creation timestamp of the execution.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Name of the execution.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # ExecutionTemplate describes the data an execution should have when created
      # from a template.
      class GoogleCloudRunV2ExecutionTemplate
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource. Cloud Run API v2 does not support
        # annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.
        # knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be
        # rejected. All system annotations in v1 now have a corresponding field in v2
        # ExecutionTemplate.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # KRM-style labels for the resource. Cloud Run API v2 does not support labels
        # with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # labels in v1 now have a corresponding field in v2 ExecutionTemplate.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies the maximum desired number of tasks the execution should run at
        # given time. Must be <= task_count. When the job is run, if this field is 0 or
        # unset, the maximum possible value will be used for that execution. The actual
        # number of tasks running in steady state will be less than this number when
        # there are fewer tasks waiting to be completed remaining, i.e. when the work
        # left to do is less than max parallelism.
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # Specifies the desired number of tasks the execution should run. Setting to 1
        # means that parallelism is limited to 1 and the success of that task signals
        # the success of the execution. More info: https://kubernetes.io/docs/concepts/
        # workloads/controllers/jobs-run-to-completion/
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # TaskTemplate describes the data a task should have when created from a
        # template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @labels = args[:labels] if args.key?(:labels)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @task_count = args[:task_count] if args.key?(:task_count)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # GRPCAction describes an action involving a GRPC port.
      class GoogleCloudRunV2GrpcAction
        include Google::Apis::Core::Hashable
      
        # Port number of the gRPC service. Number must be in the range 1 to 65535. If
        # not specified, defaults to the exposed port of the container, which is the
        # value of container.ports[0].containerPort.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Service is the name of the service to place in the gRPC HealthCheckRequest (
        # see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this
        # is not specified, the default behavior is defined by gRPC.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port = args[:port] if args.key?(:port)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # HTTPGetAction describes an action based on HTTP Get requests.
      class GoogleCloudRunV2HttpGetAction
        include Google::Apis::Core::Hashable
      
        # Custom headers to set in the request. HTTP allows repeated headers.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2HttpHeader>]
        attr_accessor :http_headers
      
        # Path to access on the HTTP server. Defaults to '/'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Port number to access on the container. Must be in the range 1 to 65535. If
        # not specified, defaults to the exposed port of the container, which is the
        # value of container.ports[0].containerPort.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_headers = args[:http_headers] if args.key?(:http_headers)
          @path = args[:path] if args.key?(:path)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # HTTPHeader describes a custom header to be used in HTTP probes
      class GoogleCloudRunV2HttpHeader
        include Google::Apis::Core::Hashable
      
        # Required. The header field name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The header field value
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Job represents the configuration of a single job, which references a container
      # image that is run to completion.
      class GoogleCloudRunV2Job
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource. Unstructured key value map that may be
        # set by external tools to store and arbitrary metadata. They are not queryable
        # and should be preserved when modifying objects. Cloud Run API v2 does not
        # support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `
        # serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will
        # be rejected. All system annotations in v1 now have a corresponding field in v2
        # Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
        # More info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Settings for Binary Authorization feature.
        # Corresponds to the JSON property `binaryAuthorization`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization]
        attr_accessor :binary_authorization
      
        # Arbitrary identifier for the API client.
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Arbitrary version identifier for the API client.
        # Corresponds to the JSON property `clientVersion`
        # @return [String]
        attr_accessor :client_version
      
        # Output only. The Conditions of all other associated sub-resources. They
        # contain additional diagnostics information in case the Job does not reach its
        # desired state. See comments in `reconciling` for additional information on
        # reconciliation process in Cloud Run.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Condition>]
        attr_accessor :conditions
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email address of the authenticated creator.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Output only. The deletion time.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. A system-generated fingerprint for this version of the resource.
        # May be used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Number of executions created for this job.
        # Corresponds to the JSON property `executionCount`
        # @return [Fixnum]
        attr_accessor :execution_count
      
        # Output only. For a deleted resource, the time after which it will be
        # permamently deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. A number that monotonically increases every time the user
        # modifies the desired state.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # KRM-style labels for the resource. User-provided labels are shared with Google'
        # s billing system, so they can be used to filter, or break down billing charges
        # by team, component, environment, state, etc. For more information, visit https:
        # //cloud.google.com/resource-manager/docs/creating-managing-labels or https://
        # cloud.google.com/run/docs/configuring/labels Cloud Run API v2 does not support
        # labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`
        # , or `autoscaling.knative.dev` namespaces, and they will be rejected. All
        # system labels in v1 now have a corresponding field in v2 Job.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Email address of the last authenticated modifier.
        # Corresponds to the JSON property `lastModifier`
        # @return [String]
        attr_accessor :last_modifier
      
        # Reference to an Execution. Use /Executions.GetExecution with the given name to
        # get full execution including the latest status.
        # Corresponds to the JSON property `latestCreatedExecution`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2ExecutionReference]
        attr_accessor :latest_created_execution
      
        # The launch stage as defined by [Google Cloud Platform Launch Stages](https://
        # cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and
        # `GA`. If no value is specified, GA is assumed.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The fully qualified name of this Job. Format: projects/`project`/locations/`
        # location`/jobs/`job`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generation of this Job. See comments in `reconciling` for
        # additional information on reconciliation process in Cloud Run.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Output only. Returns true if the Job is currently being acted upon by the
        # system to bring it into the desired state. When a new Job is created, or an
        # existing one is updated, Cloud Run will asynchronously perform all necessary
        # steps to bring the Job to the desired state. This process is called
        # reconciliation. While reconciliation is in process, `observed_generation` and `
        # latest_succeeded_execution`, will have transient values that might mismatch
        # the intended state: Once reconciliation is over (and this field is false),
        # there are two possible outcomes: reconciliation succeeded and the state
        # matches the Job, or there was an error, and reconciliation failed. This state
        # can be found in `terminal_condition.state`. If reconciliation succeeded, the
        # following fields will match: `observed_generation` and `generation`, `
        # latest_succeeded_execution` and `latest_created_execution`. If reconciliation
        # failed, `observed_generation` and `latest_succeeded_execution` will have the
        # state of the last succeeded execution or empty for newly created Job.
        # Additional information on the failure can be found in `terminal_condition` and
        # `conditions`.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # ExecutionTemplate describes the data an execution should have when created
        # from a template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2ExecutionTemplate]
        attr_accessor :template
      
        # Defines a status condition for a resource.
        # Corresponds to the JSON property `terminalCondition`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Condition]
        attr_accessor :terminal_condition
      
        # Output only. Server assigned unique identifier for the Execution. The value is
        # a UUID4 string and guaranteed to remain unchanged until the resource is
        # deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @binary_authorization = args[:binary_authorization] if args.key?(:binary_authorization)
          @client = args[:client] if args.key?(:client)
          @client_version = args[:client_version] if args.key?(:client_version)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @etag = args[:etag] if args.key?(:etag)
          @execution_count = args[:execution_count] if args.key?(:execution_count)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @generation = args[:generation] if args.key?(:generation)
          @labels = args[:labels] if args.key?(:labels)
          @last_modifier = args[:last_modifier] if args.key?(:last_modifier)
          @latest_created_execution = args[:latest_created_execution] if args.key?(:latest_created_execution)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @template = args[:template] if args.key?(:template)
          @terminal_condition = args[:terminal_condition] if args.key?(:terminal_condition)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message containing a list of Executions.
      class GoogleCloudRunV2ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting list of Executions.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Execution>]
        attr_accessor :executions
      
        # A token indicating there are more items than page_size. Use it in the next
        # ListExecutions request to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message containing a list of Jobs.
      class GoogleCloudRunV2ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting list of Jobs.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Job>]
        attr_accessor :jobs
      
        # A token indicating there are more items than page_size. Use it in the next
        # ListJobs request to continue.
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
      
      # Response message containing a list of Revisions.
      class GoogleCloudRunV2ListRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token indicating there are more items than page_size. Use it in the next
        # ListRevisions request to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting list of Revisions.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Revision>]
        attr_accessor :revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @revisions = args[:revisions] if args.key?(:revisions)
        end
      end
      
      # Response message containing a list of Services.
      class GoogleCloudRunV2ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token indicating there are more items than page_size. Use it in the next
        # ListServices request to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting list of Services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Service>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # Response message containing a list of Tasks.
      class GoogleCloudRunV2ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # A token indicating there are more items than page_size. Use it in the next
        # ListTasks request to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting list of Tasks.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Task>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # Probe describes a health check to be performed against a container to
      # determine whether it is alive or ready to receive traffic.
      class GoogleCloudRunV2Probe
        include Google::Apis::Core::Hashable
      
        # Minimum consecutive failures for the probe to be considered failed after
        # having succeeded. Defaults to 3. Minimum value is 1.
        # Corresponds to the JSON property `failureThreshold`
        # @return [Fixnum]
        attr_accessor :failure_threshold
      
        # GRPCAction describes an action involving a GRPC port.
        # Corresponds to the JSON property `grpc`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2GrpcAction]
        attr_accessor :grpc
      
        # HTTPGetAction describes an action based on HTTP Get requests.
        # Corresponds to the JSON property `httpGet`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2HttpGetAction]
        attr_accessor :http_get
      
        # Number of seconds after the container has started before the probe is
        # initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for
        # liveness probe is 3600. Maximum value for startup probe is 240. More info:
        # https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-
        # probes
        # Corresponds to the JSON property `initialDelaySeconds`
        # @return [Fixnum]
        attr_accessor :initial_delay_seconds
      
        # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum
        # value is 1. Maximum value for liveness probe is 3600. Maximum value for
        # startup probe is 240. Must be greater or equal than timeout_seconds.
        # Corresponds to the JSON property `periodSeconds`
        # @return [Fixnum]
        attr_accessor :period_seconds
      
        # TCPSocketAction describes an action based on opening a socket
        # Corresponds to the JSON property `tcpSocket`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2TcpSocketAction]
        attr_accessor :tcp_socket
      
        # Number of seconds after which the probe times out. Defaults to 1 second.
        # Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
        # More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#
        # container-probes
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_threshold = args[:failure_threshold] if args.key?(:failure_threshold)
          @grpc = args[:grpc] if args.key?(:grpc)
          @http_get = args[:http_get] if args.key?(:http_get)
          @initial_delay_seconds = args[:initial_delay_seconds] if args.key?(:initial_delay_seconds)
          @period_seconds = args[:period_seconds] if args.key?(:period_seconds)
          @tcp_socket = args[:tcp_socket] if args.key?(:tcp_socket)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
        end
      end
      
      # ResourceRequirements describes the compute resource requirements.
      class GoogleCloudRunV2ResourceRequirements
        include Google::Apis::Core::Hashable
      
        # Determines whether CPU should be throttled or not outside of requests.
        # Corresponds to the JSON property `cpuIdle`
        # @return [Boolean]
        attr_accessor :cpu_idle
        alias_method :cpu_idle?, :cpu_idle
      
        # Only memory and CPU are supported. Note: The only supported values for CPU are
        # '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. The
        # values of the map is string form of the 'quantity' k8s type: https://github.
        # com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/
        # resource/quantity.go
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_idle = args[:cpu_idle] if args.key?(:cpu_idle)
          @limits = args[:limits] if args.key?(:limits)
        end
      end
      
      # A Revision is an immutable snapshot of code and configuration. A Revision
      # references a container image. Revisions are only created by updates to its
      # parent Service.
      class GoogleCloudRunV2Revision
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The Condition of this Revision, containing its readiness status,
        # and detailed error information in case it did not reach a serving state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Condition>]
        attr_accessor :conditions
      
        # Holds the single container that defines the unit of execution for this
        # Revision.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Container>]
        attr_accessor :containers
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. For a deleted resource, the deletion time. It is only populated
        # as a response to a Delete request.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A reference to a customer managed encryption key (CMEK) to use to encrypt this
        # container image. For more information, go to https://cloud.google.com/run/docs/
        # securing/using-cmek
        # Corresponds to the JSON property `encryptionKey`
        # @return [String]
        attr_accessor :encryption_key
      
        # The action to take if the encryption key is revoked.
        # Corresponds to the JSON property `encryptionKeyRevocationAction`
        # @return [String]
        attr_accessor :encryption_key_revocation_action
      
        # If encryption_key_revocation_action is SHUTDOWN, the duration before shutting
        # down all instances. The minimum increment is 1 hour.
        # Corresponds to the JSON property `encryptionKeyShutdownDuration`
        # @return [String]
        attr_accessor :encryption_key_shutdown_duration
      
        # Output only. A system-generated fingerprint for this version of the resource.
        # May be used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The execution environment being used to host this Revision.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # Output only. For a deleted resource, the time after which it will be
        # permamently deleted. It is only populated as a response to a Delete request.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. A number that monotonically increases every time the user
        # modifies the desired state.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # KRM-style labels for the resource. User-provided labels are shared with Google'
        # s billing system, so they can be used to filter, or break down billing charges
        # by team, component, environment, state, etc. For more information, visit https:
        # //cloud.google.com/resource-manager/docs/creating-managing-labels or https://
        # cloud.google.com/run/docs/configuring/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Set the launch stage to a preview stage on write to allow use of preview
        # features in that stage. On read, describes whether the resource uses preview
        # features. Launch Stages are defined at [Google Cloud Platform Launch Stages](
        # https://cloud.google.com/terms/launch-stages).
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Output only. The Google Console URI to obtain logs for the Revision.
        # Corresponds to the JSON property `logUri`
        # @return [String]
        attr_accessor :log_uri
      
        # Sets the maximum number of requests that each serving instance can receive.
        # Corresponds to the JSON property `maxInstanceRequestConcurrency`
        # @return [Fixnum]
        attr_accessor :max_instance_request_concurrency
      
        # Output only. The unique name of this Revision.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generation of this Revision currently serving traffic. See
        # comments in `reconciling` for additional information on reconciliation process
        # in Cloud Run.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Output only. Indicates whether the resource's reconciliation is still in
        # progress. See comments in `Service.reconciling` for additional information on
        # reconciliation process in Cloud Run.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Settings for revision-level scaling settings.
        # Corresponds to the JSON property `scaling`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling]
        attr_accessor :scaling
      
        # Output only. The name of the parent service.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Email address of the IAM service account associated with the revision of the
        # service. The service account represents the identity of the running revision,
        # and determines what permissions the revision has.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Max allowed time for an instance to respond to a request.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. Server assigned unique identifier for the Revision. The value is
        # a UUID4 string and guaranteed to remain unchanged until the resource is
        # deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on creating a VPC Connector, visit
        # https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
        # information on how to configure Cloud Run with an existing VPC Connector,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc
        # Corresponds to the JSON property `vpcAccess`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2VpcAccess]
        attr_accessor :vpc_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @conditions = args[:conditions] if args.key?(:conditions)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @encryption_key_revocation_action = args[:encryption_key_revocation_action] if args.key?(:encryption_key_revocation_action)
          @encryption_key_shutdown_duration = args[:encryption_key_shutdown_duration] if args.key?(:encryption_key_shutdown_duration)
          @etag = args[:etag] if args.key?(:etag)
          @execution_environment = args[:execution_environment] if args.key?(:execution_environment)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @generation = args[:generation] if args.key?(:generation)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @log_uri = args[:log_uri] if args.key?(:log_uri)
          @max_instance_request_concurrency = args[:max_instance_request_concurrency] if args.key?(:max_instance_request_concurrency)
          @name = args[:name] if args.key?(:name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @scaling = args[:scaling] if args.key?(:scaling)
          @service = args[:service] if args.key?(:service)
          @service_account = args[:service_account] if args.key?(:service_account)
          @timeout = args[:timeout] if args.key?(:timeout)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volumes = args[:volumes] if args.key?(:volumes)
          @vpc_access = args[:vpc_access] if args.key?(:vpc_access)
        end
      end
      
      # Settings for revision-level scaling settings.
      class GoogleCloudRunV2RevisionScaling
        include Google::Apis::Core::Hashable
      
        # Maximum number of serving instances that this resource should have.
        # Corresponds to the JSON property `maxInstanceCount`
        # @return [Fixnum]
        attr_accessor :max_instance_count
      
        # Minimum number of serving instances that this resource should have.
        # Corresponds to the JSON property `minInstanceCount`
        # @return [Fixnum]
        attr_accessor :min_instance_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_instance_count = args[:max_instance_count] if args.key?(:max_instance_count)
          @min_instance_count = args[:min_instance_count] if args.key?(:min_instance_count)
        end
      end
      
      # RevisionTemplate describes the data a revision should have when created from a
      # template.
      class GoogleCloudRunV2RevisionTemplate
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource. Cloud Run API v2 does not support
        # annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.
        # knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be
        # rejected. All system annotations in v1 now have a corresponding field in v2
        # RevisionTemplate.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Holds the single container that defines the unit of execution for this
        # Revision.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Container>]
        attr_accessor :containers
      
        # A reference to a customer managed encryption key (CMEK) to use to encrypt this
        # container image. For more information, go to https://cloud.google.com/run/docs/
        # securing/using-cmek
        # Corresponds to the JSON property `encryptionKey`
        # @return [String]
        attr_accessor :encryption_key
      
        # The sandbox environment to host this Revision.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # KRM-style labels for the resource. Cloud Run API v2 does not support labels
        # with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # labels in v1 now have a corresponding field in v2 RevisionTemplate.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Sets the maximum number of requests that each serving instance can receive.
        # Corresponds to the JSON property `maxInstanceRequestConcurrency`
        # @return [Fixnum]
        attr_accessor :max_instance_request_concurrency
      
        # The unique name for the revision. If this field is omitted, it will be
        # automatically generated based on the Service name.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Settings for revision-level scaling settings.
        # Corresponds to the JSON property `scaling`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling]
        attr_accessor :scaling
      
        # Email address of the IAM service account associated with the revision of the
        # service. The service account represents the identity of the running revision,
        # and determines what permissions the revision has. If not provided, the
        # revision will use the project's default service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Max allowed time for an instance to respond to a request.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on creating a VPC Connector, visit
        # https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
        # information on how to configure Cloud Run with an existing VPC Connector,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc
        # Corresponds to the JSON property `vpcAccess`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2VpcAccess]
        attr_accessor :vpc_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @containers = args[:containers] if args.key?(:containers)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @execution_environment = args[:execution_environment] if args.key?(:execution_environment)
          @labels = args[:labels] if args.key?(:labels)
          @max_instance_request_concurrency = args[:max_instance_request_concurrency] if args.key?(:max_instance_request_concurrency)
          @revision = args[:revision] if args.key?(:revision)
          @scaling = args[:scaling] if args.key?(:scaling)
          @service_account = args[:service_account] if args.key?(:service_account)
          @timeout = args[:timeout] if args.key?(:timeout)
          @volumes = args[:volumes] if args.key?(:volumes)
          @vpc_access = args[:vpc_access] if args.key?(:vpc_access)
        end
      end
      
      # Request message to create a new Execution of a Job.
      class GoogleCloudRunV2RunJobRequest
        include Google::Apis::Core::Hashable
      
        # A system-generated fingerprint for this version of the resource. May be used
        # to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Indicates that the request should be validated without actually deleting any
        # resources.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # SecretEnvVarSource represents a source for the value of an EnvVar.
      class GoogleCloudRunV2SecretKeySelector
        include Google::Apis::Core::Hashable
      
        # Required. The name of the secret in Cloud Secret Manager. Format: `secret_name`
        # if the secret is in the same project. projects/`project`/secrets/`secret_name`
        # if the secret is in a different project.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # The Cloud Secret Manager secret version. Can be 'latest' for the latest
        # version, an integer for a specific version, or a version alias.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret = args[:secret] if args.key?(:secret)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The secret's value will be presented as the content of a file whose name is
      # defined in the item path. If no items are defined, the name of the file is the
      # secret.
      class GoogleCloudRunV2SecretVolumeSource
        include Google::Apis::Core::Hashable
      
        # Integer representation of mode bits to use on created files by default. Must
        # be a value between 0000 and 0777 (octal), defaulting to 0444. Directories
        # within the path are not affected by this setting. Notes * Internally, a umask
        # of 0222 will be applied to any non-zero value. * This is an integer
        # representation of the mode bits. So, the octal integer value should look
        # exactly as the chmod numeric notation with a leading zero. Some examples: for
        # chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=
        # r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set
        # to 0755 (octal) or 493 (base-10). * This might be in conflict with other
        # options that affect the file mode, like fsGroup, and the result can be other
        # mode bits set. This might be in conflict with other options that affect the
        # file mode, like fsGroup, and as a result, other mode bits could be set.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # If unspecified, the volume will expose a file whose name is the secret,
        # relative to VolumeMount.mount_path. If specified, the key will be used as the
        # version to fetch from Cloud Secret Manager and the path will be the name of
        # the file exposed in the volume. When items are defined, they must specify a
        # path and a version.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2VersionToPath>]
        attr_accessor :items
      
        # Required. The name of the secret in Cloud Secret Manager. Format: `secret` if
        # the secret is in the same project. projects/`project`/secrets/`secret` if the
        # secret is in a different project.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_mode = args[:default_mode] if args.key?(:default_mode)
          @items = args[:items] if args.key?(:items)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Service acts as a top-level container that manages a set of configurations and
      # revision templates which implement a network service. Service exists to
      # provide a singular abstraction which can be access controlled, reasoned about,
      # and which encapsulates software lifecycle decisions such as rollout policy and
      # team resource ownership.
      class GoogleCloudRunV2Service
        include Google::Apis::Core::Hashable
      
        # Unstructured key value map that may be set by external tools to store and
        # arbitrary metadata. They are not queryable and should be preserved when
        # modifying objects. Cloud Run API v2 does not support annotations with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # annotations in v1 now have a corresponding field in v2 Service. This field
        # follows Kubernetes annotations' namespacing, limits, and rules. More info:
        # https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Settings for Binary Authorization feature.
        # Corresponds to the JSON property `binaryAuthorization`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization]
        attr_accessor :binary_authorization
      
        # Arbitrary identifier for the API client.
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Arbitrary version identifier for the API client.
        # Corresponds to the JSON property `clientVersion`
        # @return [String]
        attr_accessor :client_version
      
        # Output only. The Conditions of all other associated sub-resources. They
        # contain additional diagnostics information in case the Service does not reach
        # its Serving state. See comments in `reconciling` for additional information on
        # reconciliation process in Cloud Run.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Condition>]
        attr_accessor :conditions
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email address of the authenticated creator.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Output only. The deletion time.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # User-provided description of the Service. This field currently has a 512-
        # character limit.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A system-generated fingerprint for this version of the resource.
        # May be used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. For a deleted resource, the time after which it will be
        # permamently deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. A number that monotonically increases every time the user
        # modifies the desired state. Please note that unlike v1, this is an int64 value.
        # As with most Google APIs, its JSON representation will be a `string` instead
        # of an `integer`.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Provides the ingress settings for this Service. On output, returns the
        # currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no
        # revision is active.
        # Corresponds to the JSON property `ingress`
        # @return [String]
        attr_accessor :ingress
      
        # Map of string keys and values that can be used to organize and categorize
        # objects. User-provided labels are shared with Google's billing system, so they
        # can be used to filter, or break down billing charges by team, component,
        # environment, state, etc. For more information, visit https://cloud.google.com/
        # resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/
        # docs/configuring/labels Cloud Run API v2 does not support labels with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # labels in v1 now have a corresponding field in v2 Service.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Email address of the last authenticated modifier.
        # Corresponds to the JSON property `lastModifier`
        # @return [String]
        attr_accessor :last_modifier
      
        # Output only. Name of the last created revision. See comments in `reconciling`
        # for additional information on reconciliation process in Cloud Run.
        # Corresponds to the JSON property `latestCreatedRevision`
        # @return [String]
        attr_accessor :latest_created_revision
      
        # Output only. Name of the latest revision that is serving traffic. See comments
        # in `reconciling` for additional information on reconciliation process in Cloud
        # Run.
        # Corresponds to the JSON property `latestReadyRevision`
        # @return [String]
        attr_accessor :latest_ready_revision
      
        # The launch stage as defined by [Google Cloud Platform Launch Stages](https://
        # cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and
        # `GA`. If no value is specified, GA is assumed.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The fully qualified name of this Service. In CreateServiceRequest, this field
        # is ignored, and instead composed from CreateServiceRequest.parent and
        # CreateServiceRequest.service_id. Format: projects/`project`/locations/`
        # location`/services/`service_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generation of this Service currently serving traffic. See
        # comments in `reconciling` for additional information on reconciliation process
        # in Cloud Run. Please note that unlike v1, this is an int64 value. As with most
        # Google APIs, its JSON representation will be a `string` instead of an `integer`
        # .
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Output only. Returns true if the Service is currently being acted upon by the
        # system to bring it into the desired state. When a new Service is created, or
        # an existing one is updated, Cloud Run will asynchronously perform all
        # necessary steps to bring the Service to the desired serving state. This
        # process is called reconciliation. While reconciliation is in process, `
        # observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri`
        # will have transient values that might mismatch the intended state: Once
        # reconciliation is over (and this field is false), there are two possible
        # outcomes: reconciliation succeeded and the serving state matches the Service,
        # or there was an error, and reconciliation failed. This state can be found in `
        # terminal_condition.state`. If reconciliation succeeded, the following fields
        # will match: `traffic` and `traffic_statuses`, `observed_generation` and `
        # generation`, `latest_ready_revision` and `latest_created_revision`. If
        # reconciliation failed, `traffic_statuses`, `observed_generation`, and `
        # latest_ready_revision` will have the state of the last serving revision, or
        # empty for newly created Services. Additional information on the failure can be
        # found in `terminal_condition` and `conditions`.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # RevisionTemplate describes the data a revision should have when created from a
        # template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate]
        attr_accessor :template
      
        # Defines a status condition for a resource.
        # Corresponds to the JSON property `terminalCondition`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Condition]
        attr_accessor :terminal_condition
      
        # Specifies how to distribute traffic over a collection of Revisions belonging
        # to the Service. If traffic is empty or not provided, defaults to 100% traffic
        # to the latest `Ready` Revision.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2TrafficTarget>]
        attr_accessor :traffic
      
        # Output only. Detailed status information for corresponding traffic targets.
        # See comments in `reconciling` for additional information on reconciliation
        # process in Cloud Run.
        # Corresponds to the JSON property `trafficStatuses`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2TrafficTargetStatus>]
        attr_accessor :traffic_statuses
      
        # Output only. Server assigned unique identifier for the trigger. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The main URI in which this Service is serving traffic.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @binary_authorization = args[:binary_authorization] if args.key?(:binary_authorization)
          @client = args[:client] if args.key?(:client)
          @client_version = args[:client_version] if args.key?(:client_version)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @generation = args[:generation] if args.key?(:generation)
          @ingress = args[:ingress] if args.key?(:ingress)
          @labels = args[:labels] if args.key?(:labels)
          @last_modifier = args[:last_modifier] if args.key?(:last_modifier)
          @latest_created_revision = args[:latest_created_revision] if args.key?(:latest_created_revision)
          @latest_ready_revision = args[:latest_ready_revision] if args.key?(:latest_ready_revision)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @template = args[:template] if args.key?(:template)
          @terminal_condition = args[:terminal_condition] if args.key?(:terminal_condition)
          @traffic = args[:traffic] if args.key?(:traffic)
          @traffic_statuses = args[:traffic_statuses] if args.key?(:traffic_statuses)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # TCPSocketAction describes an action based on opening a socket
      class GoogleCloudRunV2TcpSocketAction
        include Google::Apis::Core::Hashable
      
        # Port number to access on the container. Must be in the range 1 to 65535. If
        # not specified, defaults to the exposed port of the container, which is the
        # value of container.ports[0].containerPort.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Task represents a single run of a container to completion.
      class GoogleCloudRunV2Task
        include Google::Apis::Core::Hashable
      
        # KRM-style annotations for the resource.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Represents time when the Task was completed. It is not guaranteed
        # to be set in happens-before order across separate operations.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Output only. The Condition of this Task, containing its readiness status, and
        # detailed error information in case it did not reach the desired state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Condition>]
        attr_accessor :conditions
      
        # Holds the single container that defines the unit of execution for this task.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Container>]
        attr_accessor :containers
      
        # Output only. Represents time when the task was created by the job controller.
        # It is not guaranteed to be set in happens-before order across separate
        # operations.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. For a deleted resource, the deletion time. It is only populated
        # as a response to a Delete request.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. A reference to a customer managed encryption key (CMEK) to use to
        # encrypt this container image. For more information, go to https://cloud.google.
        # com/run/docs/securing/using-cmek
        # Corresponds to the JSON property `encryptionKey`
        # @return [String]
        attr_accessor :encryption_key
      
        # Output only. A system-generated fingerprint for this version of the resource.
        # May be used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The name of the parent Execution.
        # Corresponds to the JSON property `execution`
        # @return [String]
        attr_accessor :execution
      
        # The execution environment being used to host this Task.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # Output only. For a deleted resource, the time after which it will be
        # permamently deleted. It is only populated as a response to a Delete request.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. A number that monotonically increases every time the user
        # modifies the desired state.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Output only. Index of the Task, unique per execution, and beginning at 0.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Output only. The name of the parent Job.
        # Corresponds to the JSON property `job`
        # @return [String]
        attr_accessor :job
      
        # KRM-style labels for the resource. User-provided labels are shared with Google'
        # s billing system, so they can be used to filter, or break down billing charges
        # by team, component, environment, state, etc. For more information, visit https:
        # //cloud.google.com/resource-manager/docs/creating-managing-labels or https://
        # cloud.google.com/run/docs/configuring/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Result of a task attempt.
        # Corresponds to the JSON property `lastAttemptResult`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2TaskAttemptResult]
        attr_accessor :last_attempt_result
      
        # Output only. URI where logs for this execution can be found in Cloud Console.
        # Corresponds to the JSON property `logUri`
        # @return [String]
        attr_accessor :log_uri
      
        # Number of retries allowed per Task, before marking this Task failed.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Output only. The unique name of this Task.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generation of this Task. See comments in `Job.reconciling`
        # for additional information on reconciliation process in Cloud Run.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Output only. Indicates whether the resource's reconciliation is still in
        # progress. See comments in `Job.reconciling` for additional information on
        # reconciliation process in Cloud Run.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The number of times this Task was retried. Tasks are retried when
        # they fail up to the maxRetries limit.
        # Corresponds to the JSON property `retried`
        # @return [Fixnum]
        attr_accessor :retried
      
        # Email address of the IAM service account associated with the Task of a Job.
        # The service account represents the identity of the running task, and
        # determines what permissions the task has. If not provided, the task will use
        # the project's default service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Represents time when the task started to run. It is not
        # guaranteed to be set in happens-before order across separate operations.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Max allowed time duration the Task may be active before the system will
        # actively try to mark it failed and kill associated containers. This applies
        # per attempt of a task, meaning each retry can run for the full timeout.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. Server assigned unique identifier for the Task. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on creating a VPC Connector, visit
        # https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
        # information on how to configure Cloud Run with an existing VPC Connector,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc
        # Corresponds to the JSON property `vpcAccess`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2VpcAccess]
        attr_accessor :vpc_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @etag = args[:etag] if args.key?(:etag)
          @execution = args[:execution] if args.key?(:execution)
          @execution_environment = args[:execution_environment] if args.key?(:execution_environment)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @generation = args[:generation] if args.key?(:generation)
          @index = args[:index] if args.key?(:index)
          @job = args[:job] if args.key?(:job)
          @labels = args[:labels] if args.key?(:labels)
          @last_attempt_result = args[:last_attempt_result] if args.key?(:last_attempt_result)
          @log_uri = args[:log_uri] if args.key?(:log_uri)
          @max_retries = args[:max_retries] if args.key?(:max_retries)
          @name = args[:name] if args.key?(:name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @retried = args[:retried] if args.key?(:retried)
          @service_account = args[:service_account] if args.key?(:service_account)
          @start_time = args[:start_time] if args.key?(:start_time)
          @timeout = args[:timeout] if args.key?(:timeout)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volumes = args[:volumes] if args.key?(:volumes)
          @vpc_access = args[:vpc_access] if args.key?(:vpc_access)
        end
      end
      
      # Result of a task attempt.
      class GoogleCloudRunV2TaskAttemptResult
        include Google::Apis::Core::Hashable
      
        # Output only. The exit code of this attempt. This may be unset if the container
        # was unable to exit cleanly with a code due to some other failure. See status
        # field for possible failure details.
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV2::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # TaskTemplate describes the data a task should have when created from a
      # template.
      class GoogleCloudRunV2TaskTemplate
        include Google::Apis::Core::Hashable
      
        # Holds the single container that defines the unit of execution for this task.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Container>]
        attr_accessor :containers
      
        # A reference to a customer managed encryption key (CMEK) to use to encrypt this
        # container image. For more information, go to https://cloud.google.com/run/docs/
        # securing/using-cmek
        # Corresponds to the JSON property `encryptionKey`
        # @return [String]
        attr_accessor :encryption_key
      
        # The execution environment being used to host this Task.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # Number of retries allowed per Task, before marking this Task failed.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Email address of the IAM service account associated with the Task of a Job.
        # The service account represents the identity of the running task, and
        # determines what permissions the task has. If not provided, the task will use
        # the project's default service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Max allowed time duration the Task may be active before the system will
        # actively try to mark it failed and kill associated containers. This applies
        # per attempt of a task, meaning each retry can run for the full timeout.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on creating a VPC Connector, visit
        # https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
        # information on how to configure Cloud Run with an existing VPC Connector,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc
        # Corresponds to the JSON property `vpcAccess`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2VpcAccess]
        attr_accessor :vpc_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @execution_environment = args[:execution_environment] if args.key?(:execution_environment)
          @max_retries = args[:max_retries] if args.key?(:max_retries)
          @service_account = args[:service_account] if args.key?(:service_account)
          @timeout = args[:timeout] if args.key?(:timeout)
          @volumes = args[:volumes] if args.key?(:volumes)
          @vpc_access = args[:vpc_access] if args.key?(:vpc_access)
        end
      end
      
      # Holds a single traffic routing entry for the Service. Allocations can be done
      # to a specific Revision name, or pointing to the latest Ready Revision.
      class GoogleCloudRunV2TrafficTarget
        include Google::Apis::Core::Hashable
      
        # Specifies percent of the traffic to this Revision. This defaults to zero if
        # unspecified.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        # Revision to which to send this portion of traffic, if traffic allocation is by
        # revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Indicates a string to be part of the URI to exclusively reference this target.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The allocation type for this traffic target.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percent = args[:percent] if args.key?(:percent)
          @revision = args[:revision] if args.key?(:revision)
          @tag = args[:tag] if args.key?(:tag)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the observed state of a single `TrafficTarget` entry.
      class GoogleCloudRunV2TrafficTargetStatus
        include Google::Apis::Core::Hashable
      
        # Specifies percent of the traffic to this Revision.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        # Revision to which this traffic is sent.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Indicates the string used in the URI to exclusively reference this target.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The allocation type for this traffic target.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Displays the target URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percent = args[:percent] if args.key?(:percent)
          @revision = args[:revision] if args.key?(:revision)
          @tag = args[:tag] if args.key?(:tag)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # VersionToPath maps a specific version of a secret to a relative file to mount
      # to, relative to VolumeMount's mount_path.
      class GoogleCloudRunV2VersionToPath
        include Google::Apis::Core::Hashable
      
        # Integer octal mode bits to use on this file, must be a value between 01 and
        # 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes *
        # Internally, a umask of 0222 will be applied to any non-zero value. * This is
        # an integer representation of the mode bits. So, the octal integer value should
        # look exactly as the chmod numeric notation with a leading zero. Some examples:
        # for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=
        # rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx),
        # set to 0755 (octal) or 493 (base-10). * This might be in conflict with other
        # options that affect the file mode, like fsGroup, and the result can be other
        # mode bits set.
        # Corresponds to the JSON property `mode`
        # @return [Fixnum]
        attr_accessor :mode
      
        # Required. The relative path of the secret in the container.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The Cloud Secret Manager secret version. Can be 'latest' for the latest value,
        # or an integer or a secret alias for a specific version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @path = args[:path] if args.key?(:path)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Volume represents a named volume in a container.
      class GoogleCloudRunV2Volume
        include Google::Apis::Core::Hashable
      
        # Represents a set of Cloud SQL instances. Each one will be available under /
        # cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run
        # for more information on how to connect Cloud SQL and Cloud Run.
        # Corresponds to the JSON property `cloudSqlInstance`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2CloudSqlInstance]
        attr_accessor :cloud_sql_instance
      
        # Required. Volume's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The secret's value will be presented as the content of a file whose name is
        # defined in the item path. If no items are defined, the name of the file is the
        # secret.
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2SecretVolumeSource]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_instance = args[:cloud_sql_instance] if args.key?(:cloud_sql_instance)
          @name = args[:name] if args.key?(:name)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # VolumeMount describes a mounting of a Volume within a container.
      class GoogleCloudRunV2VolumeMount
        include Google::Apis::Core::Hashable
      
        # Required. Path within the container at which the volume should be mounted.
        # Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must
        # otherwise be `/cloudsql`. All instances defined in the Volume will be
        # available as `/cloudsql/[instance]`. For more information on Cloud SQL volumes,
        # visit https://cloud.google.com/sql/docs/mysql/connect-run
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Required. This must match the Name of a Volume.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # VPC Access settings. For more information on creating a VPC Connector, visit
      # https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
      # information on how to configure Cloud Run with an existing VPC Connector,
      # visit https://cloud.google.com/run/docs/configuring/connecting-vpc
      class GoogleCloudRunV2VpcAccess
        include Google::Apis::Core::Hashable
      
        # VPC Access connector name. Format: projects/`project`/locations/`location`/
        # connectors/`connector`, where `project` can be project id or number.
        # Corresponds to the JSON property `connector`
        # @return [String]
        attr_accessor :connector
      
        # Traffic VPC egress settings.
        # Corresponds to the JSON property `egress`
        # @return [String]
        attr_accessor :egress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector = args[:connector] if args.key?(:connector)
          @egress = args[:egress] if args.key?(:egress)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::RunV2::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
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
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
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
        # @return [Google::Apis::RunV2::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::RunV2::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::RunV2::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
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
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::RunV2::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
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
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
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
        # @return [Array<Google::Apis::RunV2::GoogleLongrunningOperation>]
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
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::RunV2::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # The request message for Operations.WaitOperation.
      class GoogleLongrunningWaitOperationRequest
        include Google::Apis::Core::Hashable
      
        # The maximum duration to wait before timing out. If left blank, the wait will
        # be at most the time permitted by the underlying HTTP/RPC protocol. If RPC
        # context deadline is also specified, the shorter one will be used.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timeout = args[:timeout] if args.key?(:timeout)
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
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
      class GoogleTypeExpr
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
    end
  end
end
