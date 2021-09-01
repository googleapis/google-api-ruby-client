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
    module RunV1alpha1
      
      # Not supported by Cloud Run ConfigMapEnvSource selects a ConfigMap to populate
      # the environment variables with. The contents of the target ConfigMap's Data
      # field will represent the key-value pairs as environment variables.
      class ConfigMapEnvSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run LocalObjectReference contains enough information to
        # let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1alpha1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The ConfigMap to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Specify whether the ConfigMap must be defined
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_object_reference = args[:local_object_reference] if args.key?(:local_object_reference)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
        end
      end
      
      # Not supported by Cloud Run Selects a key from a ConfigMap.
      class ConfigMapKeySelector
        include Google::Apis::Core::Hashable
      
        # The key to select.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Not supported by Cloud Run LocalObjectReference contains enough information to
        # let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1alpha1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The ConfigMap to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Specify whether the ConfigMap or its key must be defined
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @local_object_reference = args[:local_object_reference] if args.key?(:local_object_reference)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
        end
      end
      
      # Not supported by Cloud Run Adapts a ConfigMap into a volume. The contents of
      # the target ConfigMap's Data field will be presented in a volume as files using
      # the keys in the Data field as the file names, unless the items element is
      # populated with specific mappings of keys to paths.
      class ConfigMapVolumeSource
        include Google::Apis::Core::Hashable
      
        # (Optional) Mode bits to use on created files by default. Must be a value
        # between 0 and 0777. Defaults to 0644. Directories within the path are not
        # affected by this setting. This might be in conflict with other options that
        # affect the file mode, like fsGroup, and the result can be other mode bits set.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # (Optional) If unspecified, each key-value pair in the Data field of the
        # referenced Secret will be projected into the volume as a file whose name is
        # the key and content is the value. If specified, the listed keys will be
        # projected into the specified paths, and unlisted keys will not be present. If
        # a key is specified that is not present in the Secret, the volume setup will
        # error unless it is marked optional.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1alpha1::KeyToPath>]
        attr_accessor :items
      
        # Name of the config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Specify whether the Secret or its keys must be defined.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_mode = args[:default_mode] if args.key?(:default_mode)
          @items = args[:items] if args.key?(:items)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
        end
      end
      
      # A single application container. This specifies both the container to run, the
      # command to run in the container and the arguments to supply to it. Note that
      # additional arguments may be supplied by the system to the container at runtime.
      class Container
        include Google::Apis::Core::Hashable
      
        # (Optional) Arguments to the entrypoint. The docker image's CMD is used if this
        # is not provided. Variable references $(VAR_NAME) are expanded using the
        # container's environment. If a variable cannot be resolved, the reference in
        # the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with
        # a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded,
        # regardless of whether the variable exists or not. More info: https://
        # kubernetes.io/docs/tasks/inject-data-application/define-command-argument-
        # container/#running-a-command-in-a-shell
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # 
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # (Optional) List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV1alpha1::EnvVar>]
        attr_accessor :env
      
        # (Optional) List of sources to populate environment variables in the container.
        # The keys defined within a source must be a C_IDENTIFIER. All invalid keys will
        # be reported as an event when the container is starting. When a key exists in
        # multiple sources, the value associated with the last source will take
        # precedence. Values defined by an Env with a duplicate key will take precedence.
        # Cannot be updated.
        # Corresponds to the JSON property `envFrom`
        # @return [Array<Google::Apis::RunV1alpha1::EnvFromSource>]
        attr_accessor :env_from
      
        # Only supports containers from Google Container Registry or Artifact Registry
        # URL of the Container image. More info: https://kubernetes.io/docs/concepts/
        # containers/images
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # (Optional) Image pull policy. One of Always, Never, IfNotPresent. Defaults to
        # Always if :latest tag is specified, or IfNotPresent otherwise. More info:
        # https://kubernetes.io/docs/concepts/containers/images#updating-images
        # Corresponds to the JSON property `imagePullPolicy`
        # @return [String]
        attr_accessor :image_pull_policy
      
        # Not supported by Cloud Run Probe describes a health check to be performed
        # against a container to determine whether it is alive or ready to receive
        # traffic.
        # Corresponds to the JSON property `livenessProbe`
        # @return [Google::Apis::RunV1alpha1::Probe]
        attr_accessor :liveness_probe
      
        # (Optional) Name of the container specified as a DNS_LABEL. Currently unused in
        # Cloud Run. More info: https://kubernetes.io/docs/concepts/overview/working-
        # with-objects/names/#dns-label-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) List of ports to expose from the container. Only a single port can
        # be specified. The specified ports must be listening on all interfaces (0.0.0.0)
        # within the container to be accessible. If omitted, a port number will be
        # chosen and passed to the container through the PORT environment variable for
        # the container to listen on.
        # Corresponds to the JSON property `ports`
        # @return [Array<Google::Apis::RunV1alpha1::ContainerPort>]
        attr_accessor :ports
      
        # Not supported by Cloud Run Probe describes a health check to be performed
        # against a container to determine whether it is alive or ready to receive
        # traffic.
        # Corresponds to the JSON property `readinessProbe`
        # @return [Google::Apis::RunV1alpha1::Probe]
        attr_accessor :readiness_probe
      
        # ResourceRequirements describes the compute resource requirements.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::RunV1alpha1::ResourceRequirements]
        attr_accessor :resources
      
        # Not supported by Cloud Run SecurityContext holds security configuration that
        # will be applied to a container. Some fields are present in both
        # SecurityContext and PodSecurityContext. When both are set, the values in
        # SecurityContext take precedence.
        # Corresponds to the JSON property `securityContext`
        # @return [Google::Apis::RunV1alpha1::SecurityContext]
        attr_accessor :security_context
      
        # Not supported by Cloud Run Probe describes a health check to be performed
        # against a container to determine whether it is alive or ready to receive
        # traffic.
        # Corresponds to the JSON property `startupProbe`
        # @return [Google::Apis::RunV1alpha1::Probe]
        attr_accessor :startup_probe
      
        # (Optional) Path at which the file to which the container's termination message
        # will be written is mounted into the container's filesystem. Message written is
        # intended to be brief final status, such as an assertion failure message. Will
        # be truncated by the node if greater than 4096 bytes. The total message length
        # across all containers will be limited to 12kb. Defaults to /dev/termination-
        # log.
        # Corresponds to the JSON property `terminationMessagePath`
        # @return [String]
        attr_accessor :termination_message_path
      
        # (Optional) Indicate how the termination message should be populated. File will
        # use the contents of terminationMessagePath to populate the container status
        # message on both success and failure. FallbackToLogsOnError will use the last
        # chunk of container log output if the termination message file is empty and the
        # container exited with an error. The log output is limited to 2048 bytes or 80
        # lines, whichever is smaller. Defaults to File. Cannot be updated.
        # Corresponds to the JSON property `terminationMessagePolicy`
        # @return [String]
        attr_accessor :termination_message_policy
      
        # (Optional) Volume to mount into the container's filesystem. Only supports
        # SecretVolumeSources. Pod volumes to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::RunV1alpha1::VolumeMount>]
        attr_accessor :volume_mounts
      
        # (Optional) Container's working directory. If not specified, the container
        # runtime's default will be used, which might be configured in the container
        # image.
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
          @env_from = args[:env_from] if args.key?(:env_from)
          @image = args[:image] if args.key?(:image)
          @image_pull_policy = args[:image_pull_policy] if args.key?(:image_pull_policy)
          @liveness_probe = args[:liveness_probe] if args.key?(:liveness_probe)
          @name = args[:name] if args.key?(:name)
          @ports = args[:ports] if args.key?(:ports)
          @readiness_probe = args[:readiness_probe] if args.key?(:readiness_probe)
          @resources = args[:resources] if args.key?(:resources)
          @security_context = args[:security_context] if args.key?(:security_context)
          @startup_probe = args[:startup_probe] if args.key?(:startup_probe)
          @termination_message_path = args[:termination_message_path] if args.key?(:termination_message_path)
          @termination_message_policy = args[:termination_message_policy] if args.key?(:termination_message_policy)
          @volume_mounts = args[:volume_mounts] if args.key?(:volume_mounts)
          @working_dir = args[:working_dir] if args.key?(:working_dir)
        end
      end
      
      # ContainerPort represents a network port in a single container.
      class ContainerPort
        include Google::Apis::Core::Hashable
      
        # (Optional) Port number the container listens on. This must be a valid port
        # number, 0 < x < 65536.
        # Corresponds to the JSON property `containerPort`
        # @return [Fixnum]
        attr_accessor :container_port
      
        # (Optional) If specified, used to specify which protocol to use. Allowed values
        # are "http1" and "h2c".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Protocol for port. Must be "TCP". Defaults to "TCP".
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_port = args[:container_port] if args.key?(:container_port)
          @name = args[:name] if args.key?(:name)
          @protocol = args[:protocol] if args.key?(:protocol)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Not supported by Cloud Run EnvFromSource represents the source of a set of
      # ConfigMaps
      class EnvFromSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run ConfigMapEnvSource selects a ConfigMap to populate
        # the environment variables with. The contents of the target ConfigMap's Data
        # field will represent the key-value pairs as environment variables.
        # Corresponds to the JSON property `configMapRef`
        # @return [Google::Apis::RunV1alpha1::ConfigMapEnvSource]
        attr_accessor :config_map_ref
      
        # (Optional) An optional identifier to prepend to each key in the ConfigMap.
        # Must be a C_IDENTIFIER.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # Not supported by Cloud Run SecretEnvSource selects a Secret to populate the
        # environment variables with. The contents of the target Secret's Data field
        # will represent the key-value pairs as environment variables.
        # Corresponds to the JSON property `secretRef`
        # @return [Google::Apis::RunV1alpha1::SecretEnvSource]
        attr_accessor :secret_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_map_ref = args[:config_map_ref] if args.key?(:config_map_ref)
          @prefix = args[:prefix] if args.key?(:prefix)
          @secret_ref = args[:secret_ref] if args.key?(:secret_ref)
        end
      end
      
      # EnvVar represents an environment variable present in a Container.
      class EnvVar
        include Google::Apis::Core::Hashable
      
        # Name of the environment variable. Must be a C_IDENTIFIER.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Variable references $(VAR_NAME) are expanded using the previous
        # defined environment variables in the container and any route environment
        # variables. If a variable cannot be resolved, the reference in the input string
        # will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie:
        # $$(VAR_NAME). Escaped references will never be expanded, regardless of whether
        # the variable exists or not. Defaults to "".
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # EnvVarSource represents a source for the value of an EnvVar.
        # Corresponds to the JSON property `valueFrom`
        # @return [Google::Apis::RunV1alpha1::EnvVarSource]
        attr_accessor :value_from
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
          @value_from = args[:value_from] if args.key?(:value_from)
        end
      end
      
      # EnvVarSource represents a source for the value of an EnvVar.
      class EnvVarSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run Selects a key from a ConfigMap.
        # Corresponds to the JSON property `configMapKeyRef`
        # @return [Google::Apis::RunV1alpha1::ConfigMapKeySelector]
        attr_accessor :config_map_key_ref
      
        # SecretKeySelector selects a key of a Secret.
        # Corresponds to the JSON property `secretKeyRef`
        # @return [Google::Apis::RunV1alpha1::SecretKeySelector]
        attr_accessor :secret_key_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_map_key_ref = args[:config_map_key_ref] if args.key?(:config_map_key_ref)
          @secret_key_ref = args[:secret_key_ref] if args.key?(:secret_key_ref)
        end
      end
      
      # Not supported by Cloud Run ExecAction describes a "run in container" action.
      class ExecAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Command is the command line to execute inside the container, the
        # working directory for the command is root ('/') in the container's filesystem.
        # The command is simply exec'd, it is not run inside a shell, so traditional
        # shell instructions ('|', etc) won't work. To use a shell, you need to
        # explicitly call out to that shell. Exit status of 0 is treated as live/healthy
        # and non-zero is unhealthy.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
        end
      end
      
      # Not supported by Cloud Run HTTPGetAction describes an action based on HTTP Get
      # requests.
      class HttpGetAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Host name to connect to, defaults to the pod IP. You probably want
        # to set "Host" in httpHeaders instead.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # (Optional) Custom headers to set in the request. HTTP allows repeated headers.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Array<Google::Apis::RunV1alpha1::HttpHeader>]
        attr_accessor :http_headers
      
        # (Optional) Path to access on the HTTP server.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # (Optional) Scheme to use for connecting to the host. Defaults to HTTP.
        # Corresponds to the JSON property `scheme`
        # @return [String]
        attr_accessor :scheme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @http_headers = args[:http_headers] if args.key?(:http_headers)
          @path = args[:path] if args.key?(:path)
          @scheme = args[:scheme] if args.key?(:scheme)
        end
      end
      
      # Not supported by Cloud Run HTTPHeader describes a custom header to be used in
      # HTTP probes
      class HttpHeader
        include Google::Apis::Core::Hashable
      
        # The header field name
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
      
      # InstanceSpec is a description of an instance.
      class InstanceSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Optional duration in seconds the instance may be active relative to
        # StartTime before the system will actively try to mark it failed and kill
        # associated containers. If set to zero, the system will never attempt to kill
        # an instance based on time. Otherwise, value must be a positive integer. +
        # optional
        # Corresponds to the JSON property `activeDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :active_deadline_seconds
      
        # Optional. List of containers belonging to the instance. We disallow a number
        # of fields on this Container. Only a single container may be provided.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV1alpha1::Container>]
        attr_accessor :containers
      
        # Optional. Restart policy for all containers within the instance. Allowed
        # values are: - OnFailure: Instances will always be restarted on failure if the
        # backoffLimit has not been reached. - Never: Instances are never restarted and
        # all failures are permanent. Cannot be used if backoffLimit is set. +optional
        # Corresponds to the JSON property `restartPolicy`
        # @return [String]
        attr_accessor :restart_policy
      
        # Optional. Email address of the IAM service account associated with the
        # instance of a Job. The service account represents the identity of the running
        # instance, and determines what permissions the instance has. If not provided,
        # the instance will use the project's default service account. +optional
        # Corresponds to the JSON property `serviceAccountName`
        # @return [String]
        attr_accessor :service_account_name
      
        # Optional. Optional duration in seconds the instance needs to terminate
        # gracefully. Value must be non-negative integer. The value zero indicates
        # delete immediately. The grace period is the duration in seconds after the
        # processes running in the instance are sent a termination signal and the time
        # when the processes are forcibly halted with a kill signal. Set this value
        # longer than the expected cleanup time for your process. +optional
        # Corresponds to the JSON property `terminationGracePeriodSeconds`
        # @return [Fixnum]
        attr_accessor :termination_grace_period_seconds
      
        # Optional. List of volumes that can be mounted by containers belonging to the
        # instance. More info: https://kubernetes.io/docs/concepts/storage/volumes +
        # optional
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV1alpha1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_deadline_seconds = args[:active_deadline_seconds] if args.key?(:active_deadline_seconds)
          @containers = args[:containers] if args.key?(:containers)
          @restart_policy = args[:restart_policy] if args.key?(:restart_policy)
          @service_account_name = args[:service_account_name] if args.key?(:service_account_name)
          @termination_grace_period_seconds = args[:termination_grace_period_seconds] if args.key?(:termination_grace_period_seconds)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # Instance represents the status of an instance of a Job.
      class InstanceStatus
        include Google::Apis::Core::Hashable
      
        # Optional. Represents time when the instance was completed. It is not
        # guaranteed to be set in happens-before order across separate operations. It is
        # represented in RFC3339 form and is in UTC. +optional
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Optional. The number of times this instance exited with code > 0; +optional
        # Corresponds to the JSON property `failed`
        # @return [Fixnum]
        attr_accessor :failed
      
        # Required. Index of the instance, unique per Job, and beginning at 0.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Optional. Last exit code seen for this instance. +optional
        # Corresponds to the JSON property `lastExitCode`
        # @return [Fixnum]
        attr_accessor :last_exit_code
      
        # Optional. The number of times this instance was restarted. Instances are
        # restarted according the restartPolicy configured in the Job template. +
        # optional
        # Corresponds to the JSON property `restarted`
        # @return [Fixnum]
        attr_accessor :restarted
      
        # Optional. Represents time when the instance was created by the job controller.
        # It is not guaranteed to be set in happens-before order across separate
        # operations. It is represented in RFC3339 form and is in UTC. +optional
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional. The number of times this instance exited with code == 0. +optional
        # Corresponds to the JSON property `succeeded`
        # @return [Fixnum]
        attr_accessor :succeeded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @failed = args[:failed] if args.key?(:failed)
          @index = args[:index] if args.key?(:index)
          @last_exit_code = args[:last_exit_code] if args.key?(:last_exit_code)
          @restarted = args[:restarted] if args.key?(:restarted)
          @start_time = args[:start_time] if args.key?(:start_time)
          @succeeded = args[:succeeded] if args.key?(:succeeded)
        end
      end
      
      # InstanceTemplateSpec describes the data an instance should have when created
      # from a template.
      class InstanceTemplateSpec
        include Google::Apis::Core::Hashable
      
        # InstanceSpec is a description of an instance.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1alpha1::InstanceSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Job represents the configuration of a single job. A job an immutable resource
      # that references a container image which is run to completion.
      class Job
        include Google::Apis::Core::Hashable
      
        # Optional. APIVersion defines the versioned schema of this representation of an
        # object. Servers should convert recognized schemas to the latest internal value,
        # and may reject unrecognized values. More info: https://git.k8s.io/community/
        # contributors/devel/sig-architecture/api-conventions.md#resources +optional
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/
        # community/contributors/devel/sig-architecture/api-conventions.md#types-kinds +
        # optional
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1alpha1::ObjectMeta]
        attr_accessor :metadata
      
        # JobSpec describes how the job execution will look like.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1alpha1::JobSpec]
        attr_accessor :spec
      
        # JobStatus represents the current state of a Job.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1alpha1::JobStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @spec = args[:spec] if args.key?(:spec)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # JobCondition defines a readiness condition for a Revision.
      class JobCondition
        include Google::Apis::Core::Hashable
      
        # Optional. Last time the condition transitioned from one status to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # Optional. Human readable message indicating details about the current status.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Optional. One-word CamelCase reason for the condition's last transition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Optional. How to interpret failures of this condition, one of Error, Warning,
        # Info
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Required. Status of the condition, one of True, False, Unknown.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Required. Type is used to communicate the status of the reconciliation process.
        # See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#
        # error-conditions-and-reporting Types include: * "Completed": True when the Job
        # has successfully completed. * "Started": True when the Job has successfully
        # started running. * "ResourcesAvailable": True when underlying resources have
        # been provisioned.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @severity = args[:severity] if args.key?(:severity)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # JobSpec describes how the job execution will look like.
      class JobSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Not supported. Specifies the duration in seconds relative to the
        # startTime that the job may be active before the system tries to terminate it.
        # If set to zero, the system will never attempt to terminate the job based on
        # time. Otherwise, the value must be positive integer. +optional
        # Corresponds to the JSON property `activeDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :active_deadline_seconds
      
        # Optional. Specifies the number of retries per instance, before marking this
        # job failed. If set to zero, instances will never retry on failure. +optional
        # Corresponds to the JSON property `backoffLimit`
        # @return [Fixnum]
        attr_accessor :backoff_limit
      
        # Optional. Specifies the desired number of successfully finished instances the
        # job should be run with. Setting to 1 means that parallelism is limited to 1
        # and the success of that instance signals the success of the job. More info:
        # https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-
        # completion/ +optional
        # Corresponds to the JSON property `completions`
        # @return [Fixnum]
        attr_accessor :completions
      
        # Optional. Specifies the maximum desired number of instances the job should run
        # at any given time. Must be <= completions. The actual number of instances
        # running in steady state will be less than this number when ((.spec.completions
        # - .status.successful) < .spec.parallelism), i.e. when the work left to do is
        # less than max parallelism. More info: https://kubernetes.io/docs/concepts/
        # workloads/controllers/jobs-run-to-completion/ +optional
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # InstanceTemplateSpec describes the data an instance should have when created
        # from a template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1alpha1::InstanceTemplateSpec]
        attr_accessor :template
      
        # Optional. Not supported. ttlSecondsAfterFinished limits the lifetime of a Job
        # that has finished execution (either Complete or Failed). If this field is set,
        # ttlSecondsAfterFinished after the Job finishes, it is eligible to be
        # automatically deleted. When the Job is being deleted, its lifecycle guarantees
        # (e.g. finalizers) will be honored. If this field is set to zero, the Job won't
        # be automatically deleted. +optional
        # Corresponds to the JSON property `ttlSecondsAfterFinished`
        # @return [Fixnum]
        attr_accessor :ttl_seconds_after_finished
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_deadline_seconds = args[:active_deadline_seconds] if args.key?(:active_deadline_seconds)
          @backoff_limit = args[:backoff_limit] if args.key?(:backoff_limit)
          @completions = args[:completions] if args.key?(:completions)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @template = args[:template] if args.key?(:template)
          @ttl_seconds_after_finished = args[:ttl_seconds_after_finished] if args.key?(:ttl_seconds_after_finished)
        end
      end
      
      # JobStatus represents the current state of a Job.
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # Optional. The number of actively running instances. +optional
        # Corresponds to the JSON property `active`
        # @return [Fixnum]
        attr_accessor :active
      
        # Optional. Represents time when the job was completed. It is not guaranteed to
        # be set in happens-before order across separate operations. It is represented
        # in RFC3339 form and is in UTC. +optional
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Optional. The latest available observations of a job's current state. More
        # info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-
        # completion/ +optional
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1alpha1::JobCondition>]
        attr_accessor :conditions
      
        # Optional. The number of instances which reached phase Failed. +optional
        # Corresponds to the JSON property `failed`
        # @return [Fixnum]
        attr_accessor :failed
      
        # Optional. ImageDigest holds the resolved digest for the image specified within
        # .Spec.Template.Spec.Container.Image. The digest is resolved during the
        # creation of the Job. This field holds the digest value regardless of whether a
        # tag or digest was originally specified in the Container object.
        # Corresponds to the JSON property `imageDigest`
        # @return [String]
        attr_accessor :image_digest
      
        # Optional. Status of completed, failed, and running instances. +optional
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::RunV1alpha1::InstanceStatus>]
        attr_accessor :instances
      
        # Optional. The 'generation' of the job that was last processed by the
        # controller.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Optional. Represents time when the job was acknowledged by the job controller.
        # It is not guaranteed to be set in happens-before order across separate
        # operations. It is represented in RFC3339 form and is in UTC. +optional
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional. The number of instances which reached phase Succeeded. +optional
        # Corresponds to the JSON property `succeeded`
        # @return [Fixnum]
        attr_accessor :succeeded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @failed = args[:failed] if args.key?(:failed)
          @image_digest = args[:image_digest] if args.key?(:image_digest)
          @instances = args[:instances] if args.key?(:instances)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @start_time = args[:start_time] if args.key?(:start_time)
          @succeeded = args[:succeeded] if args.key?(:succeeded)
        end
      end
      
      # Maps a string key to a path within a volume.
      class KeyToPath
        include Google::Apis::Core::Hashable
      
        # The Cloud Secret Manager secret version. Can be 'latest' for the latest value
        # or an integer for a specific version. The key to project.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # (Optional) Mode bits to use on this file, must be a value between 0000 and
        # 0777. If not specified, the volume defaultMode will be used. This might be in
        # conflict with other options that affect the file mode, like fsGroup, and the
        # result can be other mode bits set.
        # Corresponds to the JSON property `mode`
        # @return [Fixnum]
        attr_accessor :mode
      
        # The relative path of the file to map the key to. May not be an absolute path.
        # May not contain the path element '..'. May not start with the string '..'.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @mode = args[:mode] if args.key?(:mode)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # ListJobsResponse is a list of Jobs resources.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "run.googleapis.com/v1alpha1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Jobs.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1alpha1::Job>]
        attr_accessor :items
      
        # The kind of this resource, in this case "JobsList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1alpha1::ListMeta]
        attr_accessor :metadata
      
        # This field is equivalent to the metadata.continue field and is provided as a
        # convenience for compatibility with https://google.aip.dev/158. The value is
        # opaque and may be used to issue another request to the endpoint that served
        # this list to retrieve the next set of available objects. Continuing a list may
        # not be possible if the server configuration has changed or more than a few
        # minutes have passed. The metadata.resourceVersion field returned when using
        # this field will be identical to the value in the first response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListMeta describes metadata that synthetic resources must have, including
      # lists and various status objects. A resource may have only one of `ObjectMeta,
      # ListMeta`.
      class ListMeta
        include Google::Apis::Core::Hashable
      
        # continue may be set if the user set a limit on the number of items returned,
        # and indicates that the server has more data available. The value is opaque and
        # may be used to issue another request to the endpoint that served this list to
        # retrieve the next set of available objects. Continuing a list may not be
        # possible if the server configuration has changed or more than a few minutes
        # have passed. The resourceVersion field returned when using this continue value
        # will be identical to the value in the first response.
        # Corresponds to the JSON property `continue`
        # @return [String]
        attr_accessor :continue
      
        # String that identifies the server's internal version of this object that can
        # be used by clients to determine when objects have changed. Value must be
        # treated as opaque by clients and passed unmodified back to the server.
        # Populated by the system. Read-only. More info: https://git.k8s.io/community/
        # contributors/devel/api-conventions.md#concurrency-control-and-consistency +
        # optional
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # SelfLink is a URL representing this object. Populated by the system. Read-only.
        # +optional
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue = args[:continue] if args.key?(:continue)
          @resource_version = args[:resource_version] if args.key?(:resource_version)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Not supported by Cloud Run LocalObjectReference contains enough information to
      # let you locate the referenced object inside the same namespace.
      class LocalObjectReference
        include Google::Apis::Core::Hashable
      
        # (Optional) Name of the referent. More info: https://kubernetes.io/docs/
        # concepts/overview/working-with-objects/names/#names
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
      
      # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
      # resources must have, which includes all objects users must create.
      class ObjectMeta
        include Google::Apis::Core::Hashable
      
        # (Optional) Annotations is an unstructured key value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: http://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # (Optional) Not supported by Cloud Run The name of the cluster which the object
        # belongs to. This is used to distinguish resources with same name and namespace
        # in different clusters. This field is not set anywhere right now and apiserver
        # is going to ignore it if set in create or update request.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # (Optional) CreationTimestamp is a timestamp representing the server time when
        # this object was created. It is not guaranteed to be set in happens-before
        # order across separate operations. Clients may not set this value. It is
        # represented in RFC3339 form and is in UTC. Populated by the system. Read-only.
        # Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-
        # conventions.md#metadata
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # (Optional) Not supported by Cloud Run Number of seconds allowed for this
        # object to gracefully terminate before it will be removed from the system. Only
        # set when deletionTimestamp is also set. May only be shortened. Read-only.
        # Corresponds to the JSON property `deletionGracePeriodSeconds`
        # @return [Fixnum]
        attr_accessor :deletion_grace_period_seconds
      
        # (Optional) Not supported by Cloud Run DeletionTimestamp is RFC 3339 date and
        # time at which this resource will be deleted. This field is set by the server
        # when a graceful deletion is requested by the user, and is not directly
        # settable by a client. The resource is expected to be deleted (no longer
        # visible from resource lists, and not reachable by name) after the time in this
        # field, once the finalizers list is empty. As long as the finalizers list
        # contains items, deletion is blocked. Once the deletionTimestamp is set, this
        # value may not be unset or be set further into the future, although it may be
        # shortened or the resource may be deleted prior to this time. For example, a
        # user may request that a pod is deleted in 30 seconds. The Kubelet will react
        # by sending a graceful termination signal to the containers in the pod. After
        # that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to
        # the container and after cleanup, remove the pod from the API. In the presence
        # of network partitions, this object may still exist after this timestamp, until
        # an administrator or automated process can determine the resource is fully
        # terminated. If not set, graceful deletion of the object has not been requested.
        # Populated by the system when a graceful deletion is requested. Read-only.
        # More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#
        # metadata
        # Corresponds to the JSON property `deletionTimestamp`
        # @return [String]
        attr_accessor :deletion_timestamp
      
        # (Optional) Not supported by Cloud Run Must be empty before the object is
        # deleted from the registry. Each entry is an identifier for the responsible
        # component that will remove the entry from the list. If the deletionTimestamp
        # of the object is non-nil, entries in this list can only be removed. +
        # patchStrategy=merge
        # Corresponds to the JSON property `finalizers`
        # @return [Array<String>]
        attr_accessor :finalizers
      
        # (Optional) Not supported by Cloud Run GenerateName is an optional prefix, used
        # by the server, to generate a unique name ONLY IF the Name field has not been
        # provided. If this field is used, the name returned to the client will be
        # different than the name passed. This value will also be combined with a unique
        # suffix. The provided value has the same validation rules as the Name field,
        # and may be truncated by the length of the suffix required to make the value
        # unique on the server. If this field is specified and the generated name exists,
        # the server will NOT return a 409 - instead, it will either return 201 Created
        # or 500 with Reason ServerTimeout indicating a unique name could not be found
        # in the time allotted, and the client should retry (optionally after the time
        # indicated in the Retry-After header). Applied only if Name is not specified.
        # More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#
        # idempotency string generateName = 2;
        # Corresponds to the JSON property `generateName`
        # @return [String]
        attr_accessor :generate_name
      
        # (Optional) A sequence number representing a specific generation of the desired
        # state. Populated by the system. Read-only.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # (Optional) Map of string keys and values that can be used to organize and
        # categorize (scope and select) objects. May match selectors of replication
        # controllers and routes. More info: http://kubernetes.io/docs/user-guide/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Name must be unique within a namespace, within a Cloud Run region. Is required
        # when creating resources, although some resources may allow a client to request
        # the generation of an appropriate name automatically. Name is primarily
        # intended for creation idempotence and configuration definition. Cannot be
        # updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names +
        # optional
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace defines the space within each name must be unique, within a Cloud
        # Run region. In Cloud Run the namespace must be equal to either the project ID
        # or project number.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # (Optional) Not supported by Cloud Run List of objects that own this object. If
        # ALL objects in the list have been deleted, this object will be garbage
        # collected.
        # Corresponds to the JSON property `ownerReferences`
        # @return [Array<Google::Apis::RunV1alpha1::OwnerReference>]
        attr_accessor :owner_references
      
        # Optional. An opaque value that represents the internal version of this object
        # that can be used by clients to determine when objects have changed. May be
        # used for optimistic concurrency, change detection, and the watch operation on
        # a resource or set of resources. Clients must treat these values as opaque and
        # passed unmodified back to the server or omit the value to disable conflict-
        # detection. They may only be valid for a particular resource or set of
        # resources. Populated by the system. Read-only. Value must be treated as opaque
        # by clients or omitted. More info: https://git.k8s.io/community/contributors/
        # devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # (Optional) SelfLink is a URL representing this object. Populated by the system.
        # Read-only. string selfLink = 4;
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # (Optional) UID is the unique in time and space value for this object. It is
        # typically generated by the server on successful creation of a resource and is
        # not allowed to change on PUT operations. Populated by the system. Read-only.
        # More info: http://kubernetes.io/docs/user-guide/identifiers#uids
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deletion_grace_period_seconds = args[:deletion_grace_period_seconds] if args.key?(:deletion_grace_period_seconds)
          @deletion_timestamp = args[:deletion_timestamp] if args.key?(:deletion_timestamp)
          @finalizers = args[:finalizers] if args.key?(:finalizers)
          @generate_name = args[:generate_name] if args.key?(:generate_name)
          @generation = args[:generation] if args.key?(:generation)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @namespace = args[:namespace] if args.key?(:namespace)
          @owner_references = args[:owner_references] if args.key?(:owner_references)
          @resource_version = args[:resource_version] if args.key?(:resource_version)
          @self_link = args[:self_link] if args.key?(:self_link)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # OwnerReference contains enough information to let you identify an owning
      # object. Currently, an owning object must be in the same namespace, so there is
      # no namespace field.
      class OwnerReference
        include Google::Apis::Core::Hashable
      
        # API version of the referent.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # If true, AND if the owner has the "foregroundDeletion" finalizer, then the
        # owner cannot be deleted from the key-value store until this reference is
        # removed. Defaults to false. To set this field, a user needs "delete"
        # permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
        # +optional
        # Corresponds to the JSON property `blockOwnerDeletion`
        # @return [Boolean]
        attr_accessor :block_owner_deletion
        alias_method :block_owner_deletion?, :block_owner_deletion
      
        # If true, this reference points to the managing controller. +optional
        # Corresponds to the JSON property `controller`
        # @return [Boolean]
        attr_accessor :controller
        alias_method :controller?, :controller
      
        # Kind of the referent. More info: https://git.k8s.io/community/contributors/
        # devel/sig-architecture/api-conventions.md#types-kinds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the referent. More info: http://kubernetes.io/docs/user-guide/
        # identifiers#names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # UID of the referent. More info: http://kubernetes.io/docs/user-guide/
        # identifiers#uids
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @block_owner_deletion = args[:block_owner_deletion] if args.key?(:block_owner_deletion)
          @controller = args[:controller] if args.key?(:controller)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Not supported by Cloud Run Probe describes a health check to be performed
      # against a container to determine whether it is alive or ready to receive
      # traffic.
      class Probe
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run ExecAction describes a "run in container" action.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::RunV1alpha1::ExecAction]
        attr_accessor :exec
      
        # (Optional) Minimum consecutive failures for the probe to be considered failed
        # after having succeeded. Defaults to 3. Minimum value is 1.
        # Corresponds to the JSON property `failureThreshold`
        # @return [Fixnum]
        attr_accessor :failure_threshold
      
        # Not supported by Cloud Run HTTPGetAction describes an action based on HTTP Get
        # requests.
        # Corresponds to the JSON property `httpGet`
        # @return [Google::Apis::RunV1alpha1::HttpGetAction]
        attr_accessor :http_get
      
        # (Optional) Number of seconds after the container has started before liveness
        # probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/
        # pods/pod-lifecycle#container-probes
        # Corresponds to the JSON property `initialDelaySeconds`
        # @return [Fixnum]
        attr_accessor :initial_delay_seconds
      
        # (Optional) How often (in seconds) to perform the probe. Default to 10 seconds.
        # Minimum value is 1.
        # Corresponds to the JSON property `periodSeconds`
        # @return [Fixnum]
        attr_accessor :period_seconds
      
        # (Optional) Minimum consecutive successes for the probe to be considered
        # successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum
        # value is 1.
        # Corresponds to the JSON property `successThreshold`
        # @return [Fixnum]
        attr_accessor :success_threshold
      
        # Not supported by Cloud Run TCPSocketAction describes an action based on
        # opening a socket
        # Corresponds to the JSON property `tcpSocket`
        # @return [Google::Apis::RunV1alpha1::TcpSocketAction]
        attr_accessor :tcp_socket
      
        # (Optional) Number of seconds after which the probe times out. Defaults to 1
        # second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/
        # workloads/pods/pod-lifecycle#container-probes
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exec = args[:exec] if args.key?(:exec)
          @failure_threshold = args[:failure_threshold] if args.key?(:failure_threshold)
          @http_get = args[:http_get] if args.key?(:http_get)
          @initial_delay_seconds = args[:initial_delay_seconds] if args.key?(:initial_delay_seconds)
          @period_seconds = args[:period_seconds] if args.key?(:period_seconds)
          @success_threshold = args[:success_threshold] if args.key?(:success_threshold)
          @tcp_socket = args[:tcp_socket] if args.key?(:tcp_socket)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
        end
      end
      
      # ResourceRequirements describes the compute resource requirements.
      class ResourceRequirements
        include Google::Apis::Core::Hashable
      
        # (Optional) Only memory and CPU are supported. Note: The only supported values
        # for CPU are '1', '2', and '4'. Setting 4 CPU requires at least 2Gi of memory.
        # Limits describes the maximum amount of compute resources allowed. The values
        # of the map is string form of the 'quantity' k8s type: https://github.com/
        # kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/
        # resource/quantity.go
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        # (Optional) Only memory and CPU are supported. Note: The only supported values
        # for CPU are '1' and '2'. Requests describes the minimum amount of compute
        # resources required. If Requests is omitted for a container, it defaults to
        # Limits if that is explicitly specified, otherwise to an implementation-defined
        # value. The values of the map is string form of the 'quantity' k8s type: https:/
        # /github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/
        # pkg/api/resource/quantity.go
        # Corresponds to the JSON property `requests`
        # @return [Hash<String,String>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limits = args[:limits] if args.key?(:limits)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Not supported by Cloud Run SecretEnvSource selects a Secret to populate the
      # environment variables with. The contents of the target Secret's Data field
      # will represent the key-value pairs as environment variables.
      class SecretEnvSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run LocalObjectReference contains enough information to
        # let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1alpha1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The Secret to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Specify whether the Secret must be defined
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_object_reference = args[:local_object_reference] if args.key?(:local_object_reference)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
        end
      end
      
      # SecretKeySelector selects a key of a Secret.
      class SecretKeySelector
        include Google::Apis::Core::Hashable
      
        # A Cloud Secret Manager secret version. Must be 'latest' for the latest version
        # or an integer for a specific version. The key of the secret to select from.
        # Must be a valid secret key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Not supported by Cloud Run LocalObjectReference contains enough information to
        # let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1alpha1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The name of the secret in Cloud Secret Manager. By default, the secret is
        # assumed to be in the same project. If the secret is in another project, you
        # must define an alias. An alias definition has the form: :projects//secrets/.
        # If multiple alias definitions are needed, they must be separated by commas.
        # The alias definitions must be set on the run.googleapis.com/secrets annotation.
        # The name of the secret in the pod's namespace to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Specify whether the Secret or its key must be defined
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @local_object_reference = args[:local_object_reference] if args.key?(:local_object_reference)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
        end
      end
      
      # The secret's value will be presented as the content of a file whose name is
      # defined in the item path. If no items are defined, the name of the file is the
      # secret_name. The contents of the target Secret's Data field will be presented
      # in a volume as files using the keys in the Data field as the file names.
      class SecretVolumeSource
        include Google::Apis::Core::Hashable
      
        # (Optional) Mode bits to use on created files by default. Must be a value
        # between 0000 and 0777. Defaults to 0644. Directories within the path are not
        # affected by this setting. This might be in conflict with other options that
        # affect the file mode, like fsGroup, and the result can be other mode bits set.
        # NOTE: This is an integer representation of the mode bits. So, the integer
        # value should look exactly as the chmod numeric notation, i.e. Unix chmod "777"
        # (a=rwx) should have the integer value 777.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # (Optional) If unspecified, the volume will expose a file whose name is the
        # secret_name. If specified, the key will be used as the version to fetch from
        # Cloud Secret Manager and the path will be the name of the file exposed in the
        # volume. When items are defined, they must specify a key and a path. If
        # unspecified, each key-value pair in the Data field of the referenced Secret
        # will be projected into the volume as a file whose name is the key and content
        # is the value. If specified, the listed keys will be projected into the
        # specified paths, and unlisted keys will not be present. If a key is specified
        # that is not present in the Secret, the volume setup will error unless it is
        # marked optional.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1alpha1::KeyToPath>]
        attr_accessor :items
      
        # (Optional) Specify whether the Secret or its keys must be defined.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        # The name of the secret in Cloud Secret Manager. By default, the secret is
        # assumed to be in the same project. If the secret is in another project, you
        # must define an alias. An alias definition has the form: :projects//secrets/.
        # If multiple alias definitions are needed, they must be separated by commas.
        # The alias definitions must be set on the run.googleapis.com/secrets annotation.
        # Name of the secret in the container's namespace to use.
        # Corresponds to the JSON property `secretName`
        # @return [String]
        attr_accessor :secret_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_mode = args[:default_mode] if args.key?(:default_mode)
          @items = args[:items] if args.key?(:items)
          @optional = args[:optional] if args.key?(:optional)
          @secret_name = args[:secret_name] if args.key?(:secret_name)
        end
      end
      
      # Not supported by Cloud Run SecurityContext holds security configuration that
      # will be applied to a container. Some fields are present in both
      # SecurityContext and PodSecurityContext. When both are set, the values in
      # SecurityContext take precedence.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # (Optional) The UID to run the entrypoint of the container process. Defaults to
        # user specified in image metadata if unspecified. May also be set in
        # PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the
        # value specified in SecurityContext takes precedence.
        # Corresponds to the JSON property `runAsUser`
        # @return [Fixnum]
        attr_accessor :run_as_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_as_user = args[:run_as_user] if args.key?(:run_as_user)
        end
      end
      
      # Not supported by Cloud Run TCPSocketAction describes an action based on
      # opening a socket
      class TcpSocketAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Optional: Host name to connect to, defaults to the pod IP.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Number or name of the port to access on the container. Number must be in the
        # range 1 to 65535. Name must be an IANA_SVC_NAME. This field is currently
        # limited to integer types only because of proto's inability to properly support
        # the IntOrString golang type.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Volume represents a named volume in a container.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run Adapts a ConfigMap into a volume. The contents of
        # the target ConfigMap's Data field will be presented in a volume as files using
        # the keys in the Data field as the file names, unless the items element is
        # populated with specific mappings of keys to paths.
        # Corresponds to the JSON property `configMap`
        # @return [Google::Apis::RunV1alpha1::ConfigMapVolumeSource]
        attr_accessor :config_map
      
        # Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The secret's value will be presented as the content of a file whose name is
        # defined in the item path. If no items are defined, the name of the file is the
        # secret_name. The contents of the target Secret's Data field will be presented
        # in a volume as files using the keys in the Data field as the file names.
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::RunV1alpha1::SecretVolumeSource]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_map = args[:config_map] if args.key?(:config_map)
          @name = args[:name] if args.key?(:name)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # VolumeMount describes a mounting of a Volume within a container.
      class VolumeMount
        include Google::Apis::Core::Hashable
      
        # Path within the container at which the volume should be mounted. Must not
        # contain ':'.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # The name of the volume. There must be a corresponding Volume with the same
        # name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Only true is accepted. Defaults to true.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # (Optional) Path within the volume from which the container's volume should be
        # mounted. Defaults to "" (volume's root).
        # Corresponds to the JSON property `subPath`
        # @return [String]
        attr_accessor :sub_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @name = args[:name] if args.key?(:name)
          @read_only = args[:read_only] if args.key?(:read_only)
          @sub_path = args[:sub_path] if args.key?(:sub_path)
        end
      end
    end
  end
end
