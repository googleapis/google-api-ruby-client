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
      
        # Optional. If present, indicates to use Breakglass using this justification. If
        # use_default is False, then it must be empty. For more information on
        # breakglass, see https://cloud.google.com/binary-authorization/docs/using-
        # breakglass
        # Corresponds to the JSON property `breakglassJustification`
        # @return [String]
        attr_accessor :breakglass_justification
      
        # Optional. The path to a binary authorization policy. Format: projects/`project`
        # /platforms/cloudRun/`policy-name`
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # Optional. If True, indicates to use the default project's binary authorization
        # policy. If False, binary authorization will be disabled.
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
          @policy = args[:policy] if args.key?(:policy)
          @use_default = args[:use_default] if args.key?(:use_default)
        end
      end
      
      # Request message for deleting an Execution.
      class GoogleCloudRunV2CancelExecutionRequest
        include Google::Apis::Core::Hashable
      
        # A system-generated fingerprint for this version of the resource. This may be
        # used to detect modification conflict during updates.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Indicates that the request should be validated without actually cancelling any
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
      
        # Output only. A reason for the execution condition.
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
      
        # Output only. A common (service-level) reason for this condition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Output only. A reason for the revision condition.
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
      # additional arguments can be supplied by the system to the container at runtime.
      class GoogleCloudRunV2Container
        include Google::Apis::Core::Hashable
      
        # Arguments to the entrypoint. The docker image's CMD is used if this is not
        # provided.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT
        # is used if this is not provided.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # Names of the containers that must start before this container.
        # Corresponds to the JSON property `dependsOn`
        # @return [Array<String>]
        attr_accessor :depends_on
      
        # List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2EnvVar>]
        attr_accessor :env
      
        # Required. Name of the container image in Dockerhub, Google Artifact Registry,
        # or Google Container Registry. If the host is not provided, Dockerhub is
        # assumed.
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
          @depends_on = args[:depends_on] if args.key?(:depends_on)
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
      
      # Per-container override specification.
      class GoogleCloudRunV2ContainerOverride
        include Google::Apis::Core::Hashable
      
        # Optional. Arguments to the entrypoint. Will replace existing args for override.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. True if the intention is to clear out existing args list.
        # Corresponds to the JSON property `clearArgs`
        # @return [Boolean]
        attr_accessor :clear_args
        alias_method :clear_args?, :clear_args
      
        # List of environment variables to set in the container. Will be merged with
        # existing env for override.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2EnvVar>]
        attr_accessor :env
      
        # The name of the container specified as a DNS_LABEL.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @clear_args = args[:clear_args] if args.key?(:clear_args)
          @env = args[:env] if args.key?(:env)
          @name = args[:name] if args.key?(:name)
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
      
      # In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when
      # the sandbox is taken down, the data is destroyed with it (it does not persist
      # across sandbox runs).
      class GoogleCloudRunV2EmptyDirVolumeSource
        include Google::Apis::Core::Hashable
      
        # The medium on which the data is stored. Acceptable values today is only MEMORY
        # or none. When none, the default will currently be backed by memory but could
        # change over time. +optional
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Limit on the storage usable by this EmptyDir volume. The size limit is also
        # applicable for memory medium. The maximum usage on memory medium EmptyDir
        # would be the minimum value between the SizeLimit specified here and the sum of
        # memory limits of all containers. The default is nil which means that the limit
        # is undefined. More info: https://cloud.google.com/run/docs/configuring/in-
        # memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/
        # docs/concepts/storage/volumes/#emptydir
        # Corresponds to the JSON property `sizeLimit`
        # @return [String]
        attr_accessor :size_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @medium = args[:medium] if args.key?(:medium)
          @size_limit = args[:size_limit] if args.key?(:size_limit)
        end
      end
      
      # EnvVar represents an environment variable present in a Container.
      class GoogleCloudRunV2EnvVar
        include Google::Apis::Core::Hashable
      
        # Required. Name of the environment variable. Must not exceed 32768 characters.
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
      
        # Output only. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
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
      
        # Output only. Unstructured key value map that can be used to organize and
        # categorize objects. User-provided labels are shared with Google's billing
        # system, so they can be used to filter, or break down billing charges by team,
        # component, environment, state, etc. For more information, visit https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels or https://cloud.
        # google.com/run/docs/configuring/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The least stable launch stage needed to create this resource, as defined by [
        # Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-
        # stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value
        # might not be what was used as input. For example, if ALPHA was provided as
        # input in the parent resource, but only BETA and GA-level features are were,
        # this field will be BETA.
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
        # to do is less than max parallelism.
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
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
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
        # task signals the success of the execution.
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
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
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
      
        # Unstructured key value map that may be set by external tools to store and
        # arbitrary metadata. They are not queryable and should be preserved when
        # modifying objects. Cloud Run API v2 does not support annotations with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This
        # field follows Kubernetes annotations' namespacing, limits, and rules.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Unstructured key value map that can be used to organize and categorize objects.
        # User-provided labels are shared with Google's billing system, so they can be
        # used to filter, or break down billing charges by team, component, environment,
        # state, etc. For more information, visit https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/
        # configuring/labels. Cloud Run API v2 does not support labels with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
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
        # the success of the execution. Defaults to 1.
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
      
      # Request message for exporting Cloud Run image.
      class GoogleCloudRunV2ExportImageRequest
        include Google::Apis::Core::Hashable
      
        # Required. The export destination url (the Artifact Registry repo).
        # Corresponds to the JSON property `destinationRepo`
        # @return [String]
        attr_accessor :destination_repo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_repo = args[:destination_repo] if args.key?(:destination_repo)
        end
      end
      
      # ExportImageResponse contains an operation Id to track the image export
      # operation.
      class GoogleCloudRunV2ExportImageResponse
        include Google::Apis::Core::Hashable
      
        # An operation ID used to track the status of image exports tied to the original
        # pod ID in the request.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # ExportStatusResponse contains the status of image export operation, with the
      # status of each image export job.
      class GoogleCloudRunV2ExportStatusResponse
        include Google::Apis::Core::Hashable
      
        # The status of each image export job.
        # Corresponds to the JSON property `imageExportStatuses`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2ImageExportStatus>]
        attr_accessor :image_export_statuses
      
        # The operation id.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Output only. The state of the overall export operation.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_export_statuses = args[:image_export_statuses] if args.key?(:image_export_statuses)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
        end
      end
      
      # Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE.
      class GoogleCloudRunV2GcsVolumeSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage Bucket name.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # If true, the volume will be mounted as read only for all mounts.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @read_only = args[:read_only] if args.key?(:read_only)
        end
      end
      
      # GRPCAction describes an action involving a GRPC port.
      class GoogleCloudRunV2GrpcAction
        include Google::Apis::Core::Hashable
      
        # Optional. Port number of the gRPC service. Number must be in the range 1 to
        # 65535. If not specified, defaults to the exposed port of the container, which
        # is the value of container.ports[0].containerPort.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. Service is the name of the service to place in the gRPC
        # HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-
        # checking.md ). If this is not specified, the default behavior is defined by
        # gRPC.
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
      
        # Optional. Custom headers to set in the request. HTTP allows repeated headers.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2HttpHeader>]
        attr_accessor :http_headers
      
        # Optional. Path to access on the HTTP server. Defaults to '/'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Optional. Port number to access on the container. Must be in the range 1 to
        # 65535. If not specified, defaults to the exposed port of the container, which
        # is the value of container.ports[0].containerPort.
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
      
        # Optional. The header field value
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
      
      # The status of an image export job.
      class GoogleCloudRunV2ImageExportStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Has the image export job finished (regardless of successful or
        # failure).
        # Corresponds to the JSON property `exportJobState`
        # @return [String]
        attr_accessor :export_job_state
      
        # The exported image ID as it will appear in Artifact Registry.
        # Corresponds to the JSON property `exportedImageDigest`
        # @return [String]
        attr_accessor :exported_image_digest
      
        # Wire-format for a Status object
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV2::UtilStatusProto]
        attr_accessor :status
      
        # The image tag as it will appear in Artifact Registry.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_job_state = args[:export_job_state] if args.key?(:export_job_state)
          @exported_image_digest = args[:exported_image_digest] if args.key?(:exported_image_digest)
          @status = args[:status] if args.key?(:status)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Job represents the configuration of a single job, which references a container
      # image that is run to completion.
      class GoogleCloudRunV2Job
        include Google::Apis::Core::Hashable
      
        # Unstructured key value map that may be set by external tools to store and
        # arbitrary metadata. They are not queryable and should be preserved when
        # modifying objects. Cloud Run API v2 does not support annotations with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected on new
        # resources. All system annotations in v1 now have a corresponding field in v2
        # Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
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
      
        # Unstructured key value map that can be used to organize and categorize objects.
        # User-provided labels are shared with Google's billing system, so they can be
        # used to filter, or break down billing charges by team, component, environment,
        # state, etc. For more information, visit https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/
        # configuring/labels. Cloud Run API v2 does not support labels with `run.
        # googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # labels in v1 now have a corresponding field in v2 Job.
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
        # `GA`. If no value is specified, GA is assumed. Set the launch stage to a
        # preview stage on input to allow use of preview features in that stage. On read
        # (or output), describes whether the resource uses preview features. For example,
        # if ALPHA is provided as input, but only BETA and GA-level features are used,
        # this field will be BETA on output.
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
      
        # A unique string used as a suffix for creating a new execution. The Job will
        # become ready when the execution is successfully completed. The sum of job name
        # and token length must be fewer than 63 characters.
        # Corresponds to the JSON property `runExecutionToken`
        # @return [String]
        attr_accessor :run_execution_token
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # A unique string used as a suffix creating a new execution. The Job will become
        # ready when the execution is successfully started. The sum of job name and
        # token length must be fewer than 63 characters.
        # Corresponds to the JSON property `startExecutionToken`
        # @return [String]
        attr_accessor :start_execution_token
      
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
          @run_execution_token = args[:run_execution_token] if args.key?(:run_execution_token)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @start_execution_token = args[:start_execution_token] if args.key?(:start_execution_token)
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
      
      # Metadata represents the JSON encoded generated customer metadata.
      class GoogleCloudRunV2Metadata
        include Google::Apis::Core::Hashable
      
        # JSON encoded Google-generated Customer Metadata for a given resource/project.
        # Corresponds to the JSON property `metadata`
        # @return [String]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Represents an NFS mount.
      class GoogleCloudRunV2NfsVolumeSource
        include Google::Apis::Core::Hashable
      
        # Path that is exported by the NFS server.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # If true, the volume will be mounted as read only for all mounts.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Hostname or IP address of the NFS server
        # Corresponds to the JSON property `server`
        # @return [String]
        attr_accessor :server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @read_only = args[:read_only] if args.key?(:read_only)
          @server = args[:server] if args.key?(:server)
        end
      end
      
      # Direct VPC egress settings.
      class GoogleCloudRunV2NetworkInterface
        include Google::Apis::Core::Hashable
      
        # Optional. The VPC network that the Cloud Run resource will be able to send
        # traffic to. At least one of network or subnetwork must be specified. If both
        # network and subnetwork are specified, the given VPC subnetwork must belong to
        # the given VPC network. If network is not specified, it will be looked up from
        # the subnetwork.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The VPC subnetwork that the Cloud Run resource will get IPs from. At
        # least one of network or subnetwork must be specified. If both network and
        # subnetwork are specified, the given VPC subnetwork must belong to the given
        # VPC network. If subnetwork is not specified, the subnetwork with the same name
        # with the network will be used.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Optional. Network tags applied to this Cloud Run resource.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Hardware constraints configuration.
      class GoogleCloudRunV2NodeSelector
        include Google::Apis::Core::Hashable
      
        # Required. GPU accelerator type to attach to an instance.
        # Corresponds to the JSON property `accelerator`
        # @return [String]
        attr_accessor :accelerator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator = args[:accelerator] if args.key?(:accelerator)
        end
      end
      
      # RunJob Overrides that contains Execution fields to be overridden.
      class GoogleCloudRunV2Overrides
        include Google::Apis::Core::Hashable
      
        # Per container override specification.
        # Corresponds to the JSON property `containerOverrides`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2ContainerOverride>]
        attr_accessor :container_overrides
      
        # Optional. The desired number of tasks the execution should run. Will replace
        # existing task_count value.
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # Duration in seconds the task may be active before the system will actively try
        # to mark it failed and kill associated containers. Will replace existing
        # timeout_seconds value.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_overrides = args[:container_overrides] if args.key?(:container_overrides)
          @task_count = args[:task_count] if args.key?(:task_count)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Probe describes a health check to be performed against a container to
      # determine whether it is alive or ready to receive traffic.
      class GoogleCloudRunV2Probe
        include Google::Apis::Core::Hashable
      
        # Optional. Minimum consecutive failures for the probe to be considered failed
        # after having succeeded. Defaults to 3. Minimum value is 1.
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
      
        # Optional. Number of seconds after the container has started before the probe
        # is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for
        # liveness probe is 3600. Maximum value for startup probe is 240.
        # Corresponds to the JSON property `initialDelaySeconds`
        # @return [Fixnum]
        attr_accessor :initial_delay_seconds
      
        # Optional. How often (in seconds) to perform the probe. Default to 10 seconds.
        # Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value
        # for startup probe is 240. Must be greater or equal than timeout_seconds.
        # Corresponds to the JSON property `periodSeconds`
        # @return [Fixnum]
        attr_accessor :period_seconds
      
        # TCPSocketAction describes an action based on opening a socket
        # Corresponds to the JSON property `tcpSocket`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2TcpSocketAction]
        attr_accessor :tcp_socket
      
        # Optional. Number of seconds after which the probe times out. Defaults to 1
        # second. Minimum value is 1. Maximum value is 3600. Must be smaller than
        # period_seconds.
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
      
        # Determines whether CPU is only allocated during requests (true by default).
        # However, if ResourceRequirements is set, the caller must explicitly set this
        # field to true to preserve the default behavior.
        # Corresponds to the JSON property `cpuIdle`
        # @return [Boolean]
        attr_accessor :cpu_idle
        alias_method :cpu_idle?, :cpu_idle
      
        # Only `memory` and `cpu` keys in the map are supported. Notes: * The only
        # supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at
        # least 2Gi of memory. For more information, go to https://cloud.google.com/run/
        # docs/configuring/cpu. * For supported 'memory' values and syntax, go to https:/
        # /cloud.google.com/run/docs/configuring/memory-limits
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        # Determines whether CPU should be boosted on startup of a new container
        # instance above the requested CPU threshold, this can help reduce cold-start
        # latency.
        # Corresponds to the JSON property `startupCpuBoost`
        # @return [Boolean]
        attr_accessor :startup_cpu_boost
        alias_method :startup_cpu_boost?, :startup_cpu_boost
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_idle = args[:cpu_idle] if args.key?(:cpu_idle)
          @limits = args[:limits] if args.key?(:limits)
          @startup_cpu_boost = args[:startup_cpu_boost] if args.key?(:startup_cpu_boost)
        end
      end
      
      # A Revision is an immutable snapshot of code and configuration. A Revision
      # references a container image. Revisions are only created by updates to its
      # parent Service.
      class GoogleCloudRunV2Revision
        include Google::Apis::Core::Hashable
      
        # Output only. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
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
      
        # Output only. Unstructured key value map that can be used to organize and
        # categorize objects. User-provided labels are shared with Google's billing
        # system, so they can be used to filter, or break down billing charges by team,
        # component, environment, state, etc. For more information, visit https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels or https://cloud.
        # google.com/run/docs/configuring/labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The least stable launch stage needed to create this resource, as defined by [
        # Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-
        # stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value
        # might not be what was used as input. For example, if ALPHA was provided as
        # input in the parent resource, but only BETA and GA-level features are were,
        # this field will be BETA.
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
      
        # Hardware constraints configuration.
        # Corresponds to the JSON property `nodeSelector`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2NodeSelector]
        attr_accessor :node_selector
      
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
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Settings for revision-level scaling settings.
        # Corresponds to the JSON property `scaling`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling]
        attr_accessor :scaling
      
        # Effective settings for the current revision
        # Corresponds to the JSON property `scalingStatus`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionScalingStatus]
        attr_accessor :scaling_status
      
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
      
        # Enable session affinity.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [Boolean]
        attr_accessor :session_affinity
        alias_method :session_affinity?, :session_affinity
      
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
      
        # VPC Access settings. For more information on sending traffic to a VPC network,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
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
          @node_selector = args[:node_selector] if args.key?(:node_selector)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @scaling = args[:scaling] if args.key?(:scaling)
          @scaling_status = args[:scaling_status] if args.key?(:scaling_status)
          @service = args[:service] if args.key?(:service)
          @service_account = args[:service_account] if args.key?(:service_account)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
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
      
        # Optional. Maximum number of serving instances that this resource should have.
        # Corresponds to the JSON property `maxInstanceCount`
        # @return [Fixnum]
        attr_accessor :max_instance_count
      
        # Optional. Minimum number of serving instances that this resource should have.
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
      
      # Effective settings for the current revision
      class GoogleCloudRunV2RevisionScalingStatus
        include Google::Apis::Core::Hashable
      
        # The current number of min instances provisioned for this revision.
        # Corresponds to the JSON property `desiredMinInstanceCount`
        # @return [Fixnum]
        attr_accessor :desired_min_instance_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_min_instance_count = args[:desired_min_instance_count] if args.key?(:desired_min_instance_count)
        end
      end
      
      # RevisionTemplate describes the data a revision should have when created from a
      # template.
      class GoogleCloudRunV2RevisionTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects. Cloud Run API v2 does not support annotations with `
        # run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected. All system
        # annotations in v1 now have a corresponding field in v2 RevisionTemplate. This
        # field follows Kubernetes annotations' namespacing, limits, and rules.
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
      
        # Optional. The sandbox environment to host this Revision.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # Optional. Disables health checking containers during deployment.
        # Corresponds to the JSON property `healthCheckDisabled`
        # @return [Boolean]
        attr_accessor :health_check_disabled
        alias_method :health_check_disabled?, :health_check_disabled
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects. User-provided labels are shared with Google's billing
        # system, so they can be used to filter, or break down billing charges by team,
        # component, environment, state, etc. For more information, visit https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels or https://cloud.
        # google.com/run/docs/configuring/labels. Cloud Run API v2 does not support
        # labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`
        # , or `autoscaling.knative.dev` namespaces, and they will be rejected. All
        # system labels in v1 now have a corresponding field in v2 RevisionTemplate.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Sets the maximum number of requests that each serving instance can
        # receive.
        # Corresponds to the JSON property `maxInstanceRequestConcurrency`
        # @return [Fixnum]
        attr_accessor :max_instance_request_concurrency
      
        # Hardware constraints configuration.
        # Corresponds to the JSON property `nodeSelector`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2NodeSelector]
        attr_accessor :node_selector
      
        # Optional. The unique name for the revision. If this field is omitted, it will
        # be automatically generated based on the Service name.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Settings for revision-level scaling settings.
        # Corresponds to the JSON property `scaling`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling]
        attr_accessor :scaling
      
        # Optional. Email address of the IAM service account associated with the
        # revision of the service. The service account represents the identity of the
        # running revision, and determines what permissions the revision has. If not
        # provided, the revision will use the project's default service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. Enable session affinity.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [Boolean]
        attr_accessor :session_affinity
        alias_method :session_affinity?, :session_affinity
      
        # Optional. Max allowed time for an instance to respond to a request.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Optional. A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on sending traffic to a VPC network,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
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
          @health_check_disabled = args[:health_check_disabled] if args.key?(:health_check_disabled)
          @labels = args[:labels] if args.key?(:labels)
          @max_instance_request_concurrency = args[:max_instance_request_concurrency] if args.key?(:max_instance_request_concurrency)
          @node_selector = args[:node_selector] if args.key?(:node_selector)
          @revision = args[:revision] if args.key?(:revision)
          @scaling = args[:scaling] if args.key?(:scaling)
          @service_account = args[:service_account] if args.key?(:service_account)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
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
      
        # RunJob Overrides that contains Execution fields to be overridden.
        # Corresponds to the JSON property `overrides`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Overrides]
        attr_accessor :overrides
      
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
          @overrides = args[:overrides] if args.key?(:overrides)
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
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects. Cloud Run API v2 does not support annotations with `
        # run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `
        # autoscaling.knative.dev` namespaces, and they will be rejected in new
        # resources. All system annotations in v1 now have a corresponding field in v2
        # Service. This field follows Kubernetes annotations' namespacing, limits, and
        # rules.
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
      
        # One or more custom audiences that you want this service to support. Specify
        # each custom audience as the full URL in a string. The custom audiences are
        # encoded in the token and used to authenticate requests. For more information,
        # see https://cloud.google.com/run/docs/configuring/custom-audiences.
        # Corresponds to the JSON property `customAudiences`
        # @return [Array<String>]
        attr_accessor :custom_audiences
      
        # Optional. Disables public resolution of the default URI of this service.
        # Corresponds to the JSON property `defaultUriDisabled`
        # @return [Boolean]
        attr_accessor :default_uri_disabled
        alias_method :default_uri_disabled?, :default_uri_disabled
      
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
      
        # Optional. Provides the ingress settings for this Service. On output, returns
        # the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no
        # revision is active.
        # Corresponds to the JSON property `ingress`
        # @return [String]
        attr_accessor :ingress
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects. User-provided labels are shared with Google's billing
        # system, so they can be used to filter, or break down billing charges by team,
        # component, environment, state, etc. For more information, visit https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels or https://cloud.
        # google.com/run/docs/configuring/labels. Cloud Run API v2 does not support
        # labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`
        # , or `autoscaling.knative.dev` namespaces, and they will be rejected. All
        # system labels in v1 now have a corresponding field in v2 Service.
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
      
        # Optional. The launch stage as defined by [Google Cloud Platform Launch Stages](
        # https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `
        # BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage
        # to a preview stage on input to allow use of preview features in that stage. On
        # read (or output), describes whether the resource uses preview features. For
        # example, if ALPHA is provided as input, but only BETA and GA-level features
        # are used, this field will be BETA on output.
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
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Scaling settings applied at the service level rather than at the revision
        # level.
        # Corresponds to the JSON property `scaling`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2ServiceScaling]
        attr_accessor :scaling
      
        # RevisionTemplate describes the data a revision should have when created from a
        # template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate]
        attr_accessor :template
      
        # Defines a status condition for a resource.
        # Corresponds to the JSON property `terminalCondition`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2Condition]
        attr_accessor :terminal_condition
      
        # Optional. Specifies how to distribute traffic over a collection of Revisions
        # belonging to the Service. If traffic is empty or not provided, defaults to 100%
        # traffic to the latest `Ready` Revision.
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
          @custom_audiences = args[:custom_audiences] if args.key?(:custom_audiences)
          @default_uri_disabled = args[:default_uri_disabled] if args.key?(:default_uri_disabled)
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
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @scaling = args[:scaling] if args.key?(:scaling)
          @template = args[:template] if args.key?(:template)
          @terminal_condition = args[:terminal_condition] if args.key?(:terminal_condition)
          @traffic = args[:traffic] if args.key?(:traffic)
          @traffic_statuses = args[:traffic_statuses] if args.key?(:traffic_statuses)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Scaling settings applied at the service level rather than at the revision
      # level.
      class GoogleCloudRunV2ServiceScaling
        include Google::Apis::Core::Hashable
      
        # Optional. total min instances for the service. This number of instances is
        # divided among all revisions with specified traffic based on the percent of
        # traffic they are receiving. (BETA)
        # Corresponds to the JSON property `minInstanceCount`
        # @return [Fixnum]
        attr_accessor :min_instance_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_instance_count = args[:min_instance_count] if args.key?(:min_instance_count)
        end
      end
      
      # TCPSocketAction describes an action based on opening a socket
      class GoogleCloudRunV2TcpSocketAction
        include Google::Apis::Core::Hashable
      
        # Optional. Port number to access on the container. Must be in the range 1 to
        # 65535. If not specified, defaults to the exposed port of the container, which
        # is the value of container.ports[0].containerPort.
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
      
        # Output only. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
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
      
        # Output only. Represents time when the task was created by the system. It is
        # not guaranteed to be set in happens-before order across separate operations.
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
      
        # Output only. Unstructured key value map that can be used to organize and
        # categorize objects. User-provided labels are shared with Google's billing
        # system, so they can be used to filter, or break down billing charges by team,
        # component, environment, state, etc. For more information, visit https://cloud.
        # google.com/resource-manager/docs/creating-managing-labels or https://cloud.
        # google.com/run/docs/configuring/labels
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
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. Represents time when the task was scheduled to run by the system.
        # It is not guaranteed to be set in happens-before order across separate
        # operations.
        # Corresponds to the JSON property `scheduledTime`
        # @return [String]
        attr_accessor :scheduled_time
      
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
      
        # VPC Access settings. For more information on sending traffic to a VPC network,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
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
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @scheduled_time = args[:scheduled_time] if args.key?(:scheduled_time)
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
      
        # Optional. The execution environment being used to host this Task.
        # Corresponds to the JSON property `executionEnvironment`
        # @return [String]
        attr_accessor :execution_environment
      
        # Number of retries allowed per Task, before marking this Task failed. Defaults
        # to 3.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Optional. Email address of the IAM service account associated with the Task of
        # a Job. The service account represents the identity of the running task, and
        # determines what permissions the task has. If not provided, the task will use
        # the project's default service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. Max allowed time duration the Task may be active before the system
        # will actively try to mark it failed and kill associated containers. This
        # applies per attempt of a task, meaning each retry can run for the full timeout.
        # Defaults to 600 seconds.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Optional. A list of Volumes to make available to containers.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2Volume>]
        attr_accessor :volumes
      
        # VPC Access settings. For more information on sending traffic to a VPC network,
        # visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
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
      
        # In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when
        # the sandbox is taken down, the data is destroyed with it (it does not persist
        # across sandbox runs).
        # Corresponds to the JSON property `emptyDir`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2EmptyDirVolumeSource]
        attr_accessor :empty_dir
      
        # Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE.
        # Corresponds to the JSON property `gcs`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2GcsVolumeSource]
        attr_accessor :gcs
      
        # Required. Volume's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an NFS mount.
        # Corresponds to the JSON property `nfs`
        # @return [Google::Apis::RunV2::GoogleCloudRunV2NfsVolumeSource]
        attr_accessor :nfs
      
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
          @empty_dir = args[:empty_dir] if args.key?(:empty_dir)
          @gcs = args[:gcs] if args.key?(:gcs)
          @name = args[:name] if args.key?(:name)
          @nfs = args[:nfs] if args.key?(:nfs)
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
      
      # VPC Access settings. For more information on sending traffic to a VPC network,
      # visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
      class GoogleCloudRunV2VpcAccess
        include Google::Apis::Core::Hashable
      
        # VPC Access connector name. Format: projects/`project`/locations/`location`/
        # connectors/`connector`, where `project` can be project id or number. For more
        # information on sending traffic to a VPC network via a connector, visit https://
        # cloud.google.com/run/docs/configuring/vpc-connectors.
        # Corresponds to the JSON property `connector`
        # @return [String]
        attr_accessor :connector
      
        # Optional. Traffic VPC egress settings. If not provided, it defaults to
        # PRIVATE_RANGES_ONLY.
        # Corresponds to the JSON property `egress`
        # @return [String]
        attr_accessor :egress
      
        # Optional. Direct VPC egress settings. Currently only single network interface
        # is supported.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::RunV2::GoogleCloudRunV2NetworkInterface>]
        attr_accessor :network_interfaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector = args[:connector] if args.key?(:connector)
          @egress = args[:egress] if args.key?(:egress)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
        end
      end
      
      # ApprovalConfig describes configuration for manual approval of a build.
      class GoogleDevtoolsCloudbuildV1ApprovalConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not approval is needed. If this is set on a build, it will become
        # pending when created, and will need to be explicitly approved to start.
        # Corresponds to the JSON property `approvalRequired`
        # @return [Boolean]
        attr_accessor :approval_required
        alias_method :approval_required?, :approval_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_required = args[:approval_required] if args.key?(:approval_required)
        end
      end
      
      # ApprovalResult describes the decision and associated metadata of a manual
      # approval of a build.
      class GoogleDevtoolsCloudbuildV1ApprovalResult
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the approval decision was made.
        # Corresponds to the JSON property `approvalTime`
        # @return [String]
        attr_accessor :approval_time
      
        # Output only. Email of the user that called the ApproveBuild API to approve or
        # reject a build at the time that the API was called.
        # Corresponds to the JSON property `approverAccount`
        # @return [String]
        attr_accessor :approver_account
      
        # Optional. An optional comment for this manual approval result.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Required. The decision of this manual approval.
        # Corresponds to the JSON property `decision`
        # @return [String]
        attr_accessor :decision
      
        # Optional. An optional URL tied to this manual approval result. This field is
        # essentially the same as comment, except that it will be rendered by the UI
        # differently. An example use case is a link to an external job that approved
        # this Build.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_time = args[:approval_time] if args.key?(:approval_time)
          @approver_account = args[:approver_account] if args.key?(:approver_account)
          @comment = args[:comment] if args.key?(:comment)
          @decision = args[:decision] if args.key?(:decision)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Files in the workspace to upload to Cloud Storage upon successful completion
      # of all build steps.
      class GoogleDevtoolsCloudbuildV1ArtifactObjects
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket and optional object path, in the form "gs://bucket/path/
        # to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/
        # storage/docs/bucket-naming#requirements)). Files in the workspace matching any
        # path pattern will be uploaded to Cloud Storage with this location as a prefix.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Path globs used to match files in the build's workspace.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :timing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @paths = args[:paths] if args.key?(:paths)
          @timing = args[:timing] if args.key?(:timing)
        end
      end
      
      # Artifacts produced by a build that should be uploaded upon successful
      # completion of all build steps.
      class GoogleDevtoolsCloudbuildV1Artifacts
        include Google::Apis::Core::Hashable
      
        # A list of images to be pushed upon the successful completion of all build
        # steps. The images will be pushed using the builder service account's
        # credentials. The digests of the pushed images will be stored in the Build
        # resource's results field. If any of the images fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # A list of Maven artifacts to be uploaded to Artifact Registry upon successful
        # completion of all build steps. Artifacts in the workspace matching specified
        # paths globs will be uploaded to the specified Artifact Registry repository
        # using the builder service account's credentials. If any artifacts fail to be
        # pushed, the build is marked FAILURE.
        # Corresponds to the JSON property `mavenArtifacts`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1MavenArtifact>]
        attr_accessor :maven_artifacts
      
        # A list of npm packages to be uploaded to Artifact Registry upon successful
        # completion of all build steps. Npm packages in the specified paths will be
        # uploaded to the specified Artifact Registry repository using the builder
        # service account's credentials. If any packages fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `npmPackages`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1NpmPackage>]
        attr_accessor :npm_packages
      
        # Files in the workspace to upload to Cloud Storage upon successful completion
        # of all build steps.
        # Corresponds to the JSON property `objects`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ArtifactObjects]
        attr_accessor :objects
      
        # A list of Python packages to be uploaded to Artifact Registry upon successful
        # completion of all build steps. The build service account credentials will be
        # used to perform the upload. If any objects fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PythonPackage>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
          @maven_artifacts = args[:maven_artifacts] if args.key?(:maven_artifacts)
          @npm_packages = args[:npm_packages] if args.key?(:npm_packages)
          @objects = args[:objects] if args.key?(:objects)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # A build resource in the Cloud Build API. At a high level, a `Build` describes
      # where to find source code, how to build it (for example, the builder image to
      # run on the source), and where to store the built artifacts. Fields can include
      # the following variables, which will be expanded when the build is created: - $
      # PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number
      # of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the
      # autogenerated ID of the build. - $REPO_NAME: the source repository name
      # specified by RepoSource. - $BRANCH_NAME: the branch name specified by
      # RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID
      # or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the
      # specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $
      # COMMIT_SHA.
      class GoogleDevtoolsCloudbuildV1Build
        include Google::Apis::Core::Hashable
      
        # BuildApproval describes a build's approval configuration, state, and result.
        # Corresponds to the JSON property `approval`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildApproval]
        attr_accessor :approval
      
        # Artifacts produced by a build that should be uploaded upon successful
        # completion of all build steps.
        # Corresponds to the JSON property `artifacts`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Artifacts]
        attr_accessor :artifacts
      
        # Secrets and secret environment variables.
        # Corresponds to the JSON property `availableSecrets`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secrets]
        attr_accessor :available_secrets
      
        # Output only. The ID of the `BuildTrigger` that triggered this build, if it was
        # triggered automatically.
        # Corresponds to the JSON property `buildTriggerId`
        # @return [String]
        attr_accessor :build_trigger_id
      
        # Output only. Time at which the request to create the build was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A fatal problem encountered during the execution of the build.
        # Corresponds to the JSON property `failureInfo`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FailureInfo]
        attr_accessor :failure_info
      
        # Output only. Time at which execution of the build was finished. The difference
        # between finish_time and start_time is the duration of the build's execution.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # GitConfig is a configuration for git operations.
        # Corresponds to the JSON property `gitConfig`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitConfig]
        attr_accessor :git_config
      
        # Output only. Unique identifier of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of images to be pushed upon the successful completion of all build
        # steps. The images are pushed using the builder service account's credentials.
        # The digests of the pushed images will be stored in the `Build` resource's
        # results field. If any of the images fail to be pushed, the build status is
        # marked `FAILURE`.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # Output only. URL to logs for this build in Google Cloud Console.
        # Corresponds to the JSON property `logUrl`
        # @return [String]
        attr_accessor :log_url
      
        # Cloud Storage bucket where logs should be written (see [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ). Logs file names will be of the format `$`logs_bucket`/log-$`build_id`.txt`.
        # Corresponds to the JSON property `logsBucket`
        # @return [String]
        attr_accessor :logs_bucket
      
        # Output only. The 'Build' name with format: `projects/`project`/locations/`
        # location`/builds/`build``, where `build` is a unique identifier generated by
        # the service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional arguments to enable specific features of builds.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildOptions]
        attr_accessor :options
      
        # Output only. ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # TTL in queue for this build. If provided and the build is enqueued longer than
        # this value, the build will expire and the build status will be `EXPIRED`. The
        # TTL starts ticking from create_time.
        # Corresponds to the JSON property `queueTtl`
        # @return [String]
        attr_accessor :queue_ttl
      
        # Artifacts created by the build pipeline.
        # Corresponds to the JSON property `results`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Results]
        attr_accessor :results
      
        # Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is
        # the recommended technique for managing sensitive data with Cloud Build. Use `
        # available_secrets` to configure builds to access secrets from Secret Manager.
        # For instructions, see: https://cloud.google.com/cloud-build/docs/securing-
        # builds/use-secrets
        # Corresponds to the JSON property `secrets`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secret>]
        attr_accessor :secrets
      
        # IAM service account whose credentials will be used at build runtime. Must be
        # of the format `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``. ACCOUNT can
        # be email address or uniqueId of the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Location of the source in a supported storage service.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Source]
        attr_accessor :source
      
        # Provenance of the source. Ways to find the original source, or verify that
        # some source was used for this build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SourceProvenance]
        attr_accessor :source_provenance
      
        # Output only. Time at which execution of the build was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Status of the build.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. Customer-readable message about the current status.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Required. The operations to be performed on the workspace.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildStep>]
        attr_accessor :steps
      
        # Substitutions data for `Build` resource.
        # Corresponds to the JSON property `substitutions`
        # @return [Hash<String,String>]
        attr_accessor :substitutions
      
        # Tags for annotation of a `Build`. These are not docker tags.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Amount of time that this build should be allowed to run, to second granularity.
        # If this amount of time elapses, work on the build will cease and the build
        # status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default
        # time is 60 minutes.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. Stores timing information for phases of the build. Valid keys are:
        # * BUILD: time to execute all build steps. * PUSH: time to push all artifacts
        # including docker images and non docker artifacts. * FETCHSOURCE: time to fetch
        # source. * SETUPBUILD: time to set up build. If the build does not specify
        # source or images, these keys will not be included.
        # Corresponds to the JSON property `timing`
        # @return [Hash<String,Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan>]
        attr_accessor :timing
      
        # Output only. Non-fatal problems encountered during the execution of the build.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval = args[:approval] if args.key?(:approval)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @available_secrets = args[:available_secrets] if args.key?(:available_secrets)
          @build_trigger_id = args[:build_trigger_id] if args.key?(:build_trigger_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_info = args[:failure_info] if args.key?(:failure_info)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @git_config = args[:git_config] if args.key?(:git_config)
          @id = args[:id] if args.key?(:id)
          @images = args[:images] if args.key?(:images)
          @log_url = args[:log_url] if args.key?(:log_url)
          @logs_bucket = args[:logs_bucket] if args.key?(:logs_bucket)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @project_id = args[:project_id] if args.key?(:project_id)
          @queue_ttl = args[:queue_ttl] if args.key?(:queue_ttl)
          @results = args[:results] if args.key?(:results)
          @secrets = args[:secrets] if args.key?(:secrets)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source = args[:source] if args.key?(:source)
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @steps = args[:steps] if args.key?(:steps)
          @substitutions = args[:substitutions] if args.key?(:substitutions)
          @tags = args[:tags] if args.key?(:tags)
          @timeout = args[:timeout] if args.key?(:timeout)
          @timing = args[:timing] if args.key?(:timing)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # BuildApproval describes a build's approval configuration, state, and result.
      class GoogleDevtoolsCloudbuildV1BuildApproval
        include Google::Apis::Core::Hashable
      
        # ApprovalConfig describes configuration for manual approval of a build.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalConfig]
        attr_accessor :config
      
        # ApprovalResult describes the decision and associated metadata of a manual
        # approval of a build.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalResult]
        attr_accessor :result
      
        # Output only. The state of this build's approval.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @result = args[:result] if args.key?(:result)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for build operations.
      class GoogleDevtoolsCloudbuildV1BuildOperationMetadata
        include Google::Apis::Core::Hashable
      
        # A build resource in the Cloud Build API. At a high level, a `Build` describes
        # where to find source code, how to build it (for example, the builder image to
        # run on the source), and where to store the built artifacts. Fields can include
        # the following variables, which will be expanded when the build is created: - $
        # PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number
        # of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the
        # autogenerated ID of the build. - $REPO_NAME: the source repository name
        # specified by RepoSource. - $BRANCH_NAME: the branch name specified by
        # RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID
        # or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the
        # specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $
        # COMMIT_SHA.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Build]
        attr_accessor :build
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
        end
      end
      
      # Optional arguments to enable specific features of builds.
      class GoogleDevtoolsCloudbuildV1BuildOptions
        include Google::Apis::Core::Hashable
      
        # Option to include built-in and custom substitutions as env variables for all
        # build steps.
        # Corresponds to the JSON property `automapSubstitutions`
        # @return [Boolean]
        attr_accessor :automap_substitutions
        alias_method :automap_substitutions?, :automap_substitutions
      
        # Optional. Option to specify how default logs buckets are setup.
        # Corresponds to the JSON property `defaultLogsBucketBehavior`
        # @return [String]
        attr_accessor :default_logs_bucket_behavior
      
        # Requested disk size for the VM that runs the build. Note that this is *NOT* "
        # disk free"; some of the space will be used by the operating system and build
        # utilities. Also note that this is the minimum disk size that will be allocated
        # for the build -- the build may run with a larger disk than requested. At
        # present, the maximum disk size is 4000GB; builds that request more than the
        # maximum are rejected with an error.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Option to specify whether or not to apply bash style string operations to the
        # substitutions. NOTE: this is always enabled for triggered builds and cannot be
        # overridden in the build configuration file.
        # Corresponds to the JSON property `dynamicSubstitutions`
        # @return [Boolean]
        attr_accessor :dynamic_substitutions
        alias_method :dynamic_substitutions?, :dynamic_substitutions
      
        # A list of global environment variable definitions that will exist for all
        # build steps in this build. If a variable is defined in both globally and in a
        # build step, the variable will use the build step value. The elements are of
        # the form "KEY=VALUE" for the environment variable "KEY" being given the value "
        # VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Option to define build log streaming behavior to Cloud Storage.
        # Corresponds to the JSON property `logStreamingOption`
        # @return [String]
        attr_accessor :log_streaming_option
      
        # Option to specify the logging mode, which determines if and where build logs
        # are stored.
        # Corresponds to the JSON property `logging`
        # @return [String]
        attr_accessor :logging
      
        # Compute Engine machine type on which to run the build.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Details about how a build should be executed on a `WorkerPool`. See [running
        # builds in a private pool](https://cloud.google.com/build/docs/private-pools/
        # run-builds-in-private-pool) for more information.
        # Corresponds to the JSON property `pool`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PoolOption]
        attr_accessor :pool
      
        # Requested verifiability options.
        # Corresponds to the JSON property `requestedVerifyOption`
        # @return [String]
        attr_accessor :requested_verify_option
      
        # A list of global environment variables, which are encrypted using a Cloud Key
        # Management Service crypto key. These values must be specified in the build's `
        # Secret`. These variables will be available to all build steps in this build.
        # Corresponds to the JSON property `secretEnv`
        # @return [Array<String>]
        attr_accessor :secret_env
      
        # Requested hash for SourceProvenance.
        # Corresponds to the JSON property `sourceProvenanceHash`
        # @return [Array<String>]
        attr_accessor :source_provenance_hash
      
        # Option to specify behavior when there is an error in the substitution checks.
        # NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be
        # overridden in the build configuration file.
        # Corresponds to the JSON property `substitutionOption`
        # @return [String]
        attr_accessor :substitution_option
      
        # Global list of volumes to mount for ALL build steps Each volume is created as
        # an empty volume prior to starting the build process. Upon completion of the
        # build, volumes and their contents are discarded. Global volume names and paths
        # cannot conflict with the volumes defined a build step. Using a global volume
        # in a build with only one step is not valid as it is indicative of a build
        # request with an incorrect configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume>]
        attr_accessor :volumes
      
        # This field deprecated; please use `pool.name` instead.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automap_substitutions = args[:automap_substitutions] if args.key?(:automap_substitutions)
          @default_logs_bucket_behavior = args[:default_logs_bucket_behavior] if args.key?(:default_logs_bucket_behavior)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @dynamic_substitutions = args[:dynamic_substitutions] if args.key?(:dynamic_substitutions)
          @env = args[:env] if args.key?(:env)
          @log_streaming_option = args[:log_streaming_option] if args.key?(:log_streaming_option)
          @logging = args[:logging] if args.key?(:logging)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @pool = args[:pool] if args.key?(:pool)
          @requested_verify_option = args[:requested_verify_option] if args.key?(:requested_verify_option)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
          @source_provenance_hash = args[:source_provenance_hash] if args.key?(:source_provenance_hash)
          @substitution_option = args[:substitution_option] if args.key?(:substitution_option)
          @volumes = args[:volumes] if args.key?(:volumes)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # A step in the build pipeline.
      class GoogleDevtoolsCloudbuildV1BuildStep
        include Google::Apis::Core::Hashable
      
        # Allow this build step to fail without failing the entire build if and only if
        # the exit code is one of the specified codes. If allow_failure is also
        # specified, this field will take precedence.
        # Corresponds to the JSON property `allowExitCodes`
        # @return [Array<Fixnum>]
        attr_accessor :allow_exit_codes
      
        # Allow this build step to fail without failing the entire build. If false, the
        # entire build will fail if this step fails. Otherwise, the build will succeed,
        # but this step will still have a failure status. Error information will be
        # reported in the failure_detail field.
        # Corresponds to the JSON property `allowFailure`
        # @return [Boolean]
        attr_accessor :allow_failure
        alias_method :allow_failure?, :allow_failure
      
        # A list of arguments that will be presented to the step when it is started. If
        # the image used to run the step's container has an entrypoint, the `args` are
        # used as arguments to that entrypoint. If the image does not define an
        # entrypoint, the first element in args is used as the entrypoint, and the
        # remainder will be used as arguments.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Option to include built-in and custom substitutions as env variables for this
        # build step. This option will override the global option in BuildOption.
        # Corresponds to the JSON property `automapSubstitutions`
        # @return [Boolean]
        attr_accessor :automap_substitutions
        alias_method :automap_substitutions?, :automap_substitutions
      
        # Working directory to use when running this step's container. If this value is
        # a relative path, it is relative to the build's working directory. If this
        # value is absolute, it may be outside the build's working directory, in which
        # case the contents of the path may not be persisted across build step
        # executions, unless a `volume` for that path is specified. If the build
        # specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies
        # an absolute path, the `RepoSource` `dir` is ignored for the step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Entrypoint to be used instead of the build step image's default entrypoint. If
        # unset, the image's default entrypoint is used.
        # Corresponds to the JSON property `entrypoint`
        # @return [String]
        attr_accessor :entrypoint
      
        # A list of environment variable definitions to be used when running a step. The
        # elements are of the form "KEY=VALUE" for the environment variable "KEY" being
        # given the value "VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Output only. Return code from running the step.
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        # Unique identifier for this build step, used in `wait_for` to reference this
        # build step as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the container image that will run this particular build
        # step. If the image is available in the host's Docker daemon's cache, it will
        # be run directly. If not, the host will attempt to pull the image first, using
        # the builder service account's credentials if necessary. The Docker daemon's
        # cache will already have the latest versions of all of the officially supported
        # build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://
        # github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also
        # have cached many of the layers for some popular images, like "ubuntu", "debian"
        # , but they will be refreshed at the time you attempt to use them. If you built
        # an image in a previous build step, it will be stored in the host's Docker
        # daemon's cache and is available to use as the name for a later build step.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pullTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :pull_timing
      
        # A shell script to be executed in the step. When script is provided, the user
        # cannot specify the entrypoint or args.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # A list of environment variables which are encrypted using a Cloud Key
        # Management Service crypto key. These values must be specified in the build's `
        # Secret`.
        # Corresponds to the JSON property `secretEnv`
        # @return [Array<String>]
        attr_accessor :secret_env
      
        # Output only. Status of the build step. At this time, build step status is only
        # updated on build completion; step status is not updated in real-time as the
        # build progresses.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Time limit for executing this build step. If not defined, the step has no time
        # limit and will be allowed to continue to run until either it completes or the
        # build itself times out.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :timing
      
        # List of volumes to mount into the build step. Each volume is created as an
        # empty volume prior to execution of the build step. Upon completion of the
        # build, volumes and their contents are discarded. Using a named volume in only
        # one step is not valid as it is indicative of a build request with an incorrect
        # configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume>]
        attr_accessor :volumes
      
        # The ID(s) of the step(s) that this build step depends on. This build step will
        # not start until all the build steps in `wait_for` have completed successfully.
        # If `wait_for` is empty, this build step will start when all previous build
        # steps in the `Build.Steps` list have completed successfully.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_exit_codes = args[:allow_exit_codes] if args.key?(:allow_exit_codes)
          @allow_failure = args[:allow_failure] if args.key?(:allow_failure)
          @args = args[:args] if args.key?(:args)
          @automap_substitutions = args[:automap_substitutions] if args.key?(:automap_substitutions)
          @dir = args[:dir] if args.key?(:dir)
          @entrypoint = args[:entrypoint] if args.key?(:entrypoint)
          @env = args[:env] if args.key?(:env)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @pull_timing = args[:pull_timing] if args.key?(:pull_timing)
          @script = args[:script] if args.key?(:script)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
          @status = args[:status] if args.key?(:status)
          @timeout = args[:timeout] if args.key?(:timeout)
          @timing = args[:timing] if args.key?(:timing)
          @volumes = args[:volumes] if args.key?(:volumes)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
        end
      end
      
      # An image built by the pipeline.
      class GoogleDevtoolsCloudbuildV1BuiltImage
        include Google::Apis::Core::Hashable
      
        # Docker Registry 2.0 digest.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # Name used to push the container image to Google Container Registry, as
        # presented to `docker push`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :push_timing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @name = args[:name] if args.key?(:name)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
        end
      end
      
      # Location of the source in a 2nd-gen Google Cloud Build repository resource.
      class GoogleDevtoolsCloudbuildV1ConnectedRepository
        include Google::Apis::Core::Hashable
      
        # Optional. Directory, relative to the source root, in which to run the build.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Required. Name of the Google Cloud Build repository, formatted as `projects/*/
        # locations/*/connections/*/repositories/*`.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Required. The revision to fetch from the Git repository such as a branch, a
        # tag, a commit SHA, or any Git ref.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dir = args[:dir] if args.key?(:dir)
          @repository = args[:repository] if args.key?(:repository)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # This config defines the location of a source through Developer Connect.
      class GoogleDevtoolsCloudbuildV1DeveloperConnectConfig
        include Google::Apis::Core::Hashable
      
        # Required. Directory, relative to the source root, in which to run the build.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Required. The Developer Connect Git repository link, formatted as `projects/*/
        # locations/*/connections/*/gitRepositoryLink/*`.
        # Corresponds to the JSON property `gitRepositoryLink`
        # @return [String]
        attr_accessor :git_repository_link
      
        # Required. The revision to fetch from the Git repository such as a branch, a
        # tag, a commit SHA, or any Git ref.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dir = args[:dir] if args.key?(:dir)
          @git_repository_link = args[:git_repository_link] if args.key?(:git_repository_link)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # A fatal problem encountered during the execution of the build.
      class GoogleDevtoolsCloudbuildV1FailureInfo
        include Google::Apis::Core::Hashable
      
        # Explains the failure issue in more detail using hard-coded text.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The name of the failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Container message for hashes of byte content of files, used in
      # SourceProvenance messages to verify integrity of source input to the build.
      class GoogleDevtoolsCloudbuildV1FileHashes
        include Google::Apis::Core::Hashable
      
        # Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Hash>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
        end
      end
      
      # Represents a storage location in Cloud Storage
      class GoogleDevtoolsCloudbuildV1GcsLocation
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket. See https://cloud.google.com/storage/docs/naming#
        # requirements
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Cloud Storage generation for the object. If the generation is omitted, the
        # latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Cloud Storage object. See https://cloud.google.com/storage/docs/naming#
        # objectnames
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # GitConfig is a configuration for git operations.
      class GoogleDevtoolsCloudbuildV1GitConfig
        include Google::Apis::Core::Hashable
      
        # HttpConfig is a configuration for HTTP related git operations.
        # Corresponds to the JSON property `http`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1HttpConfig]
        attr_accessor :http
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http = args[:http] if args.key?(:http)
        end
      end
      
      # Location of the source in any accessible Git repository.
      class GoogleDevtoolsCloudbuildV1GitSource
        include Google::Apis::Core::Hashable
      
        # Optional. Directory, relative to the source root, in which to run the build.
        # This must be a relative path. If a step's `dir` is specified and is an
        # absolute path, this value is ignored for that step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Optional. The revision to fetch from the Git repository such as a branch, a
        # tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the
        # revision from the Git repository; therefore make sure that the string you
        # provide for `revision` is parsable by the command. For information on string
        # values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#
        # _specifying_revisions. For information on `git fetch`, see https://git-scm.com/
        # docs/git-fetch.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Required. Location of the Git repo to build. This will be used as a `git
        # remote`, see https://git-scm.com/docs/git-remote.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dir = args[:dir] if args.key?(:dir)
          @revision = args[:revision] if args.key?(:revision)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Container message for hash values.
      class GoogleDevtoolsCloudbuildV1Hash
        include Google::Apis::Core::Hashable
      
        # The type of hash that was performed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The hash value.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # HttpConfig is a configuration for HTTP related git operations.
      class GoogleDevtoolsCloudbuildV1HttpConfig
        include Google::Apis::Core::Hashable
      
        # SecretVersion resource of the HTTP proxy URL. The proxy URL should be in
        # format protocol://@]proxyhost[:port].
        # Corresponds to the JSON property `proxySecretVersionName`
        # @return [String]
        attr_accessor :proxy_secret_version_name
      
        # Represents a storage location in Cloud Storage
        # Corresponds to the JSON property `proxySslCaInfo`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GcsLocation]
        attr_accessor :proxy_ssl_ca_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proxy_secret_version_name = args[:proxy_secret_version_name] if args.key?(:proxy_secret_version_name)
          @proxy_ssl_ca_info = args[:proxy_ssl_ca_info] if args.key?(:proxy_ssl_ca_info)
        end
      end
      
      # Pairs a set of secret environment variables mapped to encrypted values with
      # the Cloud KMS key to use to decrypt the value.
      class GoogleDevtoolsCloudbuildV1InlineSecret
        include Google::Apis::Core::Hashable
      
        # Map of environment variable name to its encrypted value. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step. Values can be at most 64 KB in size. There can be at
        # most 100 secret values across all of a build's secrets.
        # Corresponds to the JSON property `envMap`
        # @return [Hash<String,String>]
        attr_accessor :env_map
      
        # Resource name of Cloud KMS crypto key to decrypt the encrypted value. In
        # format: projects/*/locations/*/keyRings/*/cryptoKeys/*
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env_map = args[:env_map] if args.key?(:env_map)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # A Maven artifact to upload to Artifact Registry upon successful completion of
      # all build steps.
      class GoogleDevtoolsCloudbuildV1MavenArtifact
        include Google::Apis::Core::Hashable
      
        # Maven `artifactId` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `artifactId`
        # @return [String]
        attr_accessor :artifact_id
      
        # Maven `groupId` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # Path to an artifact in the build's workspace to be uploaded to Artifact
        # Registry. This can be either an absolute path, e.g. /workspace/my-app/target/
        # my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/
        # my-app-1.0.SNAPSHOT.jar.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$
        # PROJECT/$REPOSITORY" Artifact in the workspace specified by path will be
        # uploaded to Artifact Registry with this location as a prefix.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Maven `version` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_id = args[:artifact_id] if args.key?(:artifact_id)
          @group_id = args[:group_id] if args.key?(:group_id)
          @path = args[:path] if args.key?(:path)
          @repository = args[:repository] if args.key?(:repository)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Npm package to upload to Artifact Registry upon successful completion of all
      # build steps.
      class GoogleDevtoolsCloudbuildV1NpmPackage
        include Google::Apis::Core::Hashable
      
        # Path to the package.json. e.g. workspace/path/to/package
        # Corresponds to the JSON property `packagePath`
        # @return [String]
        attr_accessor :package_path
      
        # Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$
        # PROJECT/$REPOSITORY" Npm package in the workspace specified by path will be
        # zipped and uploaded to Artifact Registry with this location as a prefix.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_path = args[:package_path] if args.key?(:package_path)
          @repository = args[:repository] if args.key?(:repository)
        end
      end
      
      # Details about how a build should be executed on a `WorkerPool`. See [running
      # builds in a private pool](https://cloud.google.com/build/docs/private-pools/
      # run-builds-in-private-pool) for more information.
      class GoogleDevtoolsCloudbuildV1PoolOption
        include Google::Apis::Core::Hashable
      
        # The `WorkerPool` resource to execute the build on. You must have `cloudbuild.
        # workerpools.use` on the project hosting the WorkerPool. Format projects/`
        # project`/locations/`location`/workerPools/`workerPoolId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Python package to upload to Artifact Registry upon successful completion of
      # all build steps. A package can encapsulate multiple objects to be uploaded to
      # a single repository.
      class GoogleDevtoolsCloudbuildV1PythonPackage
        include Google::Apis::Core::Hashable
      
        # Path globs used to match files in the build's workspace. For Python/ Twine,
        # this is usually `dist/*`, and sometimes additionally an `.asc` file.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$
        # PROJECT/$REPOSITORY" Files in the workspace matching any path pattern will be
        # uploaded to Artifact Registry with this location as a prefix.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
          @repository = args[:repository] if args.key?(:repository)
        end
      end
      
      # Location of the source in a Google Cloud Source Repository.
      class GoogleDevtoolsCloudbuildV1RepoSource
        include Google::Apis::Core::Hashable
      
        # Regex matching branches to build. The syntax of the regular expressions
        # accepted is the syntax accepted by RE2 and described at https://github.com/
        # google/re2/wiki/Syntax
        # Corresponds to the JSON property `branchName`
        # @return [String]
        attr_accessor :branch_name
      
        # Explicit commit SHA to build.
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        # Optional. Directory, relative to the source root, in which to run the build.
        # This must be a relative path. If a step's `dir` is specified and is an
        # absolute path, this value is ignored for that step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Optional. Only trigger a build if the revision regex does NOT match the
        # revision regex.
        # Corresponds to the JSON property `invertRegex`
        # @return [Boolean]
        attr_accessor :invert_regex
        alias_method :invert_regex?, :invert_regex
      
        # Optional. ID of the project that owns the Cloud Source Repository. If omitted,
        # the project ID requesting the build is assumed.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Name of the Cloud Source Repository.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        # Optional. Substitutions to use in a triggered build. Should only be used with
        # RunBuildTrigger
        # Corresponds to the JSON property `substitutions`
        # @return [Hash<String,String>]
        attr_accessor :substitutions
      
        # Regex matching tags to build. The syntax of the regular expressions accepted
        # is the syntax accepted by RE2 and described at https://github.com/google/re2/
        # wiki/Syntax
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_name = args[:branch_name] if args.key?(:branch_name)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
          @dir = args[:dir] if args.key?(:dir)
          @invert_regex = args[:invert_regex] if args.key?(:invert_regex)
          @project_id = args[:project_id] if args.key?(:project_id)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
          @substitutions = args[:substitutions] if args.key?(:substitutions)
          @tag_name = args[:tag_name] if args.key?(:tag_name)
        end
      end
      
      # Artifacts created by the build pipeline.
      class GoogleDevtoolsCloudbuildV1Results
        include Google::Apis::Core::Hashable
      
        # Path to the artifact manifest for non-container artifacts uploaded to Cloud
        # Storage. Only populated when artifacts are uploaded to Cloud Storage.
        # Corresponds to the JSON property `artifactManifest`
        # @return [String]
        attr_accessor :artifact_manifest
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `artifactTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :artifact_timing
      
        # List of build step digests, in the order corresponding to build step indices.
        # Corresponds to the JSON property `buildStepImages`
        # @return [Array<String>]
        attr_accessor :build_step_images
      
        # List of build step outputs, produced by builder images, in the order
        # corresponding to build step indices. [Cloud Builders](https://cloud.google.com/
        # cloud-build/docs/cloud-builders) can produce this output by writing to `$
        # BUILDER_OUTPUT/output`. Only the first 50KB of data is stored. Note that the `$
        # BUILDER_OUTPUT` variable is read-only and can't be substituted.
        # Corresponds to the JSON property `buildStepOutputs`
        # @return [Array<String>]
        attr_accessor :build_step_outputs
      
        # Container images that were built as a part of the build.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuiltImage>]
        attr_accessor :images
      
        # Maven artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `mavenArtifacts`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact>]
        attr_accessor :maven_artifacts
      
        # Npm packages uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `npmPackages`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedNpmPackage>]
        attr_accessor :npm_packages
      
        # Number of non-container artifacts uploaded to Cloud Storage. Only populated
        # when artifacts are uploaded to Cloud Storage.
        # Corresponds to the JSON property `numArtifacts`
        # @return [Fixnum]
        attr_accessor :num_artifacts
      
        # Python artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedPythonPackage>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_manifest = args[:artifact_manifest] if args.key?(:artifact_manifest)
          @artifact_timing = args[:artifact_timing] if args.key?(:artifact_timing)
          @build_step_images = args[:build_step_images] if args.key?(:build_step_images)
          @build_step_outputs = args[:build_step_outputs] if args.key?(:build_step_outputs)
          @images = args[:images] if args.key?(:images)
          @maven_artifacts = args[:maven_artifacts] if args.key?(:maven_artifacts)
          @npm_packages = args[:npm_packages] if args.key?(:npm_packages)
          @num_artifacts = args[:num_artifacts] if args.key?(:num_artifacts)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # Pairs a set of secret environment variables containing encrypted values with
      # the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `
      # available_secrets` instead of using `kmsKeyName` with `secret`. For
      # instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/
      # use-encrypted-credentials.
      class GoogleDevtoolsCloudbuildV1Secret
        include Google::Apis::Core::Hashable
      
        # Cloud KMS key name to use to decrypt these envs.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Map of environment variable name to its encrypted value. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step. Values can be at most 64 KB in size. There can be at
        # most 100 secret values across all of a build's secrets.
        # Corresponds to the JSON property `secretEnv`
        # @return [Hash<String,String>]
        attr_accessor :secret_env
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
        end
      end
      
      # Pairs a secret environment variable with a SecretVersion in Secret Manager.
      class GoogleDevtoolsCloudbuildV1SecretManagerSecret
        include Google::Apis::Core::Hashable
      
        # Environment variable name to associate with the secret. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step.
        # Corresponds to the JSON property `env`
        # @return [String]
        attr_accessor :env
      
        # Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # Secrets and secret environment variables.
      class GoogleDevtoolsCloudbuildV1Secrets
        include Google::Apis::Core::Hashable
      
        # Secrets encrypted with KMS key and the associated secret environment variable.
        # Corresponds to the JSON property `inline`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1InlineSecret>]
        attr_accessor :inline
      
        # Secrets in Secret Manager and associated secret environment variable.
        # Corresponds to the JSON property `secretManager`
        # @return [Array<Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SecretManagerSecret>]
        attr_accessor :secret_manager
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline = args[:inline] if args.key?(:inline)
          @secret_manager = args[:secret_manager] if args.key?(:secret_manager)
        end
      end
      
      # Location of the source in a supported storage service.
      class GoogleDevtoolsCloudbuildV1Source
        include Google::Apis::Core::Hashable
      
        # Location of the source in a 2nd-gen Google Cloud Build repository resource.
        # Corresponds to the JSON property `connectedRepository`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository]
        attr_accessor :connected_repository
      
        # This config defines the location of a source through Developer Connect.
        # Corresponds to the JSON property `developerConnectConfig`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1DeveloperConnectConfig]
        attr_accessor :developer_connect_config
      
        # Location of the source in any accessible Git repository.
        # Corresponds to the JSON property `gitSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource]
        attr_accessor :git_source
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `repoSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource]
        attr_accessor :repo_source
      
        # Location of the source in an archive file in Cloud Storage.
        # Corresponds to the JSON property `storageSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource]
        attr_accessor :storage_source
      
        # Location of the source manifest in Cloud Storage. This feature is in Preview;
        # see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/
        # tree/master/gcs-fetcher).
        # Corresponds to the JSON property `storageSourceManifest`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest]
        attr_accessor :storage_source_manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_repository = args[:connected_repository] if args.key?(:connected_repository)
          @developer_connect_config = args[:developer_connect_config] if args.key?(:developer_connect_config)
          @git_source = args[:git_source] if args.key?(:git_source)
          @repo_source = args[:repo_source] if args.key?(:repo_source)
          @storage_source = args[:storage_source] if args.key?(:storage_source)
          @storage_source_manifest = args[:storage_source_manifest] if args.key?(:storage_source_manifest)
        end
      end
      
      # Provenance of the source. Ways to find the original source, or verify that
      # some source was used for this build.
      class GoogleDevtoolsCloudbuildV1SourceProvenance
        include Google::Apis::Core::Hashable
      
        # Output only. Hash(es) of the build source, which can be used to verify that
        # the original source integrity was maintained in the build. Note that `
        # FileHashes` will only be populated if `BuildOptions` has requested a `
        # SourceProvenanceHash`. The keys to this map are file paths used as build
        # source and the values contain the hash values for those files. If the build
        # source came in a single package such as a gzipped tarfile (`.tar.gz`), the `
        # FileHash` will be for the single path to that file.
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes>]
        attr_accessor :file_hashes
      
        # Location of the source in a 2nd-gen Google Cloud Build repository resource.
        # Corresponds to the JSON property `resolvedConnectedRepository`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository]
        attr_accessor :resolved_connected_repository
      
        # Location of the source in any accessible Git repository.
        # Corresponds to the JSON property `resolvedGitSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource]
        attr_accessor :resolved_git_source
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `resolvedRepoSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource]
        attr_accessor :resolved_repo_source
      
        # Location of the source in an archive file in Cloud Storage.
        # Corresponds to the JSON property `resolvedStorageSource`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource]
        attr_accessor :resolved_storage_source
      
        # Location of the source manifest in Cloud Storage. This feature is in Preview;
        # see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/
        # tree/master/gcs-fetcher).
        # Corresponds to the JSON property `resolvedStorageSourceManifest`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest]
        attr_accessor :resolved_storage_source_manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @resolved_connected_repository = args[:resolved_connected_repository] if args.key?(:resolved_connected_repository)
          @resolved_git_source = args[:resolved_git_source] if args.key?(:resolved_git_source)
          @resolved_repo_source = args[:resolved_repo_source] if args.key?(:resolved_repo_source)
          @resolved_storage_source = args[:resolved_storage_source] if args.key?(:resolved_storage_source)
          @resolved_storage_source_manifest = args[:resolved_storage_source_manifest] if args.key?(:resolved_storage_source_manifest)
        end
      end
      
      # Location of the source in an archive file in Cloud Storage.
      class GoogleDevtoolsCloudbuildV1StorageSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket containing the source (see [Bucket Name Requirements](
        # https://cloud.google.com/storage/docs/bucket-naming#requirements)).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. Cloud Storage generation for the object. If the generation is
        # omitted, the latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Required. Cloud Storage object containing the source. This object must be a
        # zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        # Optional. Option to specify the tool to fetch the source file for the build.
        # Corresponds to the JSON property `sourceFetcher`
        # @return [String]
        attr_accessor :source_fetcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
          @source_fetcher = args[:source_fetcher] if args.key?(:source_fetcher)
        end
      end
      
      # Location of the source manifest in Cloud Storage. This feature is in Preview;
      # see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/
      # tree/master/gcs-fetcher).
      class GoogleDevtoolsCloudbuildV1StorageSourceManifest
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage bucket containing the source manifest (see [Bucket
        # Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#
        # requirements)).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Cloud Storage generation for the object. If the generation is omitted, the
        # latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Required. Cloud Storage object containing the source manifest. This object
        # must be a JSON file.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Start and end times for a build execution phase.
      class GoogleDevtoolsCloudbuildV1TimeSpan
        include Google::Apis::Core::Hashable
      
        # End of time span.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start of time span.
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
      
      # A Maven artifact uploaded using the MavenArtifact directive.
      class GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        include Google::Apis::Core::Hashable
      
        # Container message for hashes of byte content of files, used in
        # SourceProvenance messages to verify integrity of source input to the build.
        # Corresponds to the JSON property `fileHashes`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :push_timing
      
        # URI of the uploaded artifact.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An npm package uploaded to Artifact Registry using the NpmPackage directive.
      class GoogleDevtoolsCloudbuildV1UploadedNpmPackage
        include Google::Apis::Core::Hashable
      
        # Container message for hashes of byte content of files, used in
        # SourceProvenance messages to verify integrity of source input to the build.
        # Corresponds to the JSON property `fileHashes`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :push_timing
      
        # URI of the uploaded npm package.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Artifact uploaded using the PythonPackage directive.
      class GoogleDevtoolsCloudbuildV1UploadedPythonPackage
        include Google::Apis::Core::Hashable
      
        # Container message for hashes of byte content of files, used in
        # SourceProvenance messages to verify integrity of source input to the build.
        # Corresponds to the JSON property `fileHashes`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :push_timing
      
        # URI of the uploaded artifact.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Volume describes a Docker container volume which is mounted into build steps
      # in order to persist files across build step execution.
      class GoogleDevtoolsCloudbuildV1Volume
        include Google::Apis::Core::Hashable
      
        # Name of the volume to mount. Volume names must be unique per build step and
        # must be valid names for Docker volumes. Each named volume must be used by at
        # least two build steps.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Path at which to mount the volume. Paths must be absolute and cannot conflict
        # with other volume paths on the same build step or with certain reserved volume
        # paths.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A non-fatal problem encountered during the execution of the build.
      class GoogleDevtoolsCloudbuildV1Warning
        include Google::Apis::Core::Hashable
      
        # The priority for this warning.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Explanation of the warning generated.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
          @text = args[:text] if args.key?(:text)
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
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
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
      
      # This is proto2's version of MessageSet.
      class Proto2BridgeMessageSet
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Wire-format for a Status object
      class UtilStatusProto
        include Google::Apis::Core::Hashable
      
        # The canonical error code (see codes.proto) that most closely corresponds to
        # this status. This may be missing, and in the common case of the generic space,
        # it definitely will be.
        # Corresponds to the JSON property `canonicalCode`
        # @return [Fixnum]
        attr_accessor :canonical_code
      
        # Numeric code drawn from the space specified below. Often, this is the
        # canonical error space, and code is drawn from google3/util/task/codes.proto
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Detail message
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # This is proto2's version of MessageSet.
        # Corresponds to the JSON property `messageSet`
        # @return [Google::Apis::RunV2::Proto2BridgeMessageSet]
        attr_accessor :message_set
      
        # The following are usually only present when code != 0 Space to which this
        # status belongs
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_code = args[:canonical_code] if args.key?(:canonical_code)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @message_set = args[:message_set] if args.key?(:message_set)
          @space = args[:space] if args.key?(:space)
        end
      end
    end
  end
end
