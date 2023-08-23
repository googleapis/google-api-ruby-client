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
    module RunV1
      
      # Information for connecting over HTTP(s).
      class Addressable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
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
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::RunV1::AuditLogConfig>]
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
      class AuditLogConfig
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
      
      # A domain that a user has been authorized to administer. To authorize use of a
      # domain, verify ownership via [Webmaster Central](https://www.google.com/
      # webmasters/verification/home).
      class AuthorizedDomain
        include Google::Apis::Core::Hashable
      
        # Relative name of the domain authorized for use. Example: `example.com`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Deprecated Read only. Full path to the `AuthorizedDomain` resource in the API.
        # Example: `projects/myproject/authorizedDomains/example.com`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
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
        # @return [Google::Apis::RunV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # ConfigMapEnvSource selects a ConfigMap to populate the environment variables
      # with. The contents of the target ConfigMap's Data field will represent the key-
      # value pairs as environment variables.
      class ConfigMapEnvSource
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # LocalObjectReference contains enough information to let you locate the
        # referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # ConfigMap to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the ConfigMap must be defined
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Selects
      # a key from a ConfigMap.
      class ConfigMapKeySelector
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The key
        # to select.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # LocalObjectReference contains enough information to let you locate the
        # referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # ConfigMap to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the ConfigMap or its key must be defined
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Adapts
      # a ConfigMap into a volume. The contents of the target ConfigMap's Data field
      # will be presented in a volume as files using the keys in the Data field as the
      # file names, unless the items element is populated with specific mappings of
      # keys to paths.
      class ConfigMapVolumeSource
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Mode bits to use on created files by default. Must be a value
        # between 0 and 0777. Defaults to 0644. Directories within the path are not
        # affected by this setting. This might be in conflict with other options that
        # affect the file mode, like fsGroup, and the result can be other mode bits set.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported If unspecified, each key-value pair in the Data field of the
        # referenced Secret will be projected into the volume as a file whose name is
        # the key and content is the value. If specified, the listed keys will be
        # projected into the specified paths, and unlisted keys will not be present. If
        # a key is specified which is not present in the Secret, the volume setup will
        # error unless it is marked optional.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::KeyToPath>]
        attr_accessor :items
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Name of
        # the config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the Secret or its keys must be defined.
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
      
      # Configuration represents the "floating HEAD" of a linear history of Revisions,
      # and optionally how the containers those revisions reference are built. Users
      # create new Revisions by updating the Configuration's spec. The "latest created"
      # revision's name is available under status, as is the "latest ready" revision'
      # s name. See also: https://github.com/knative/serving/blob/master/docs/spec/
      # overview.md#configuration
      class Configuration
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of resource, in this case always "Configuration".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # ConfigurationSpec holds the desired state of the Configuration (from the
        # client).
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::ConfigurationSpec]
        attr_accessor :spec
      
        # ConfigurationStatus communicates the observed state of the Configuration (from
        # the controller).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::ConfigurationStatus]
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
      
      # ConfigurationSpec holds the desired state of the Configuration (from the
      # client).
      class ConfigurationSpec
        include Google::Apis::Core::Hashable
      
        # RevisionTemplateSpec describes the data a revision should have when created
        # from a template. Based on: https://github.com/kubernetes/api/blob/e771f807/
        # core/v1/types.go#L3179-L3190
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1::RevisionTemplate]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # ConfigurationStatus communicates the observed state of the Configuration (from
      # the controller).
      class ConfigurationStatus
        include Google::Apis::Core::Hashable
      
        # Conditions communicates information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # LatestCreatedRevisionName is the last revision that was created from this
        # Configuration. It might not be ready yet, for that use LatestReadyRevisionName.
        # Corresponds to the JSON property `latestCreatedRevisionName`
        # @return [String]
        attr_accessor :latest_created_revision_name
      
        # LatestReadyRevisionName holds the name of the latest Revision stamped out from
        # this Configuration that has had its "Ready" condition become "True".
        # Corresponds to the JSON property `latestReadyRevisionName`
        # @return [String]
        attr_accessor :latest_ready_revision_name
      
        # ObservedGeneration is the 'Generation' of the Configuration that was last
        # processed by the controller. The observed generation is updated even if the
        # controller failed to process the spec and create the Revision. Clients polling
        # for completed reconciliation should poll until observedGeneration = metadata.
        # generation, and the Ready condition's status is True or False.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @latest_created_revision_name = args[:latest_created_revision_name] if args.key?(:latest_created_revision_name)
          @latest_ready_revision_name = args[:latest_ready_revision_name] if args.key?(:latest_ready_revision_name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
        end
      end
      
      # A single application container. This specifies both the container to run, the
      # command to run in the container and the arguments to supply to it. Note that
      # additional arguments may be supplied by the system to the container at runtime.
      class Container
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: supported Cloud Run for Anthos: supported
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
      
        # 
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # (Optional) Cloud Run fully managed: supported Cloud Run for Anthos: supported
        # List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV1::EnvVar>]
        attr_accessor :env
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported List of sources to populate environment variables in the container.
        # The keys defined within a source must be a C_IDENTIFIER. All invalid keys will
        # be reported as an event when the container is starting. When a key exists in
        # multiple sources, the value associated with the last source will take
        # precedence. Values defined by an Env with a duplicate key will take precedence.
        # Cannot be updated.
        # Corresponds to the JSON property `envFrom`
        # @return [Array<Google::Apis::RunV1::EnvFromSource>]
        attr_accessor :env_from
      
        # Cloud Run fully managed: only supports containers from Google Container
        # Registry Cloud Run for Anthos: supported URL of the Container image. More info:
        # https://kubernetes.io/docs/concepts/containers/images
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Image pull policy. One of Always, Never, IfNotPresent. Defaults to
        # Always if :latest tag is specified, or IfNotPresent otherwise. More info:
        # https://kubernetes.io/docs/concepts/containers/images#updating-images
        # Corresponds to the JSON property `imagePullPolicy`
        # @return [String]
        attr_accessor :image_pull_policy
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Probe
        # describes a health check to be performed against a container to determine
        # whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `livenessProbe`
        # @return [Google::Apis::RunV1::Probe]
        attr_accessor :liveness_probe
      
        # (Optional) Name of the container specified as a DNS_LABEL.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) List of ports to expose from the container. Only a single port can
        # be specified. The specified ports must be listening on all interfaces (0.0.0.0)
        # within the container to be accessible. If omitted, a port number will be
        # chosen and passed to the container through the PORT environment variable for
        # the container to listen on.
        # Corresponds to the JSON property `ports`
        # @return [Array<Google::Apis::RunV1::ContainerPort>]
        attr_accessor :ports
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Probe
        # describes a health check to be performed against a container to determine
        # whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `readinessProbe`
        # @return [Google::Apis::RunV1::Probe]
        attr_accessor :readiness_probe
      
        # ResourceRequirements describes the compute resource requirements.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::RunV1::ResourceRequirements]
        attr_accessor :resources
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # SecurityContext holds security configuration that will be applied to a
        # container. Some fields are present in both SecurityContext and
        # PodSecurityContext. When both are set, the values in SecurityContext take
        # precedence.
        # Corresponds to the JSON property `securityContext`
        # @return [Google::Apis::RunV1::SecurityContext]
        attr_accessor :security_context
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Path at which the file to which the container's termination message
        # will be written is mounted into the container's filesystem. Message written is
        # intended to be brief final status, such as an assertion failure message. Will
        # be truncated by the node if greater than 4096 bytes. The total message length
        # across all containers will be limited to 12kb. Defaults to /dev/termination-
        # log.
        # Corresponds to the JSON property `terminationMessagePath`
        # @return [String]
        attr_accessor :termination_message_path
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Indicate how the termination message should be populated. File will
        # use the contents of terminationMessagePath to populate the container status
        # message on both success and failure. FallbackToLogsOnError will use the last
        # chunk of container log output if the termination message file is empty and the
        # container exited with an error. The log output is limited to 2048 bytes or 80
        # lines, whichever is smaller. Defaults to File. Cannot be updated.
        # Corresponds to the JSON property `terminationMessagePolicy`
        # @return [String]
        attr_accessor :termination_message_policy
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Pod volumes to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::RunV1::VolumeMount>]
        attr_accessor :volume_mounts
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Container's working directory. If not specified, the container
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
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported If specified, used to specify which protocol to use. Allowed values
        # are "http1" and "h2c".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Protocol for port. Must be "TCP". Defaults to "TCP".
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
      
      # Resource to hold the state and status of a user's domain mapping. NOTE: This
      # resource is currently in Beta.
      class DomainMapping
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "domains.cloudrun.com/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of resource, in this case "DomainMapping".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # The desired state of the Domain Mapping.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::DomainMappingSpec]
        attr_accessor :spec
      
        # The current state of the Domain Mapping.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::DomainMappingStatus]
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
      
      # The desired state of the Domain Mapping.
      class DomainMappingSpec
        include Google::Apis::Core::Hashable
      
        # The mode of the certificate.
        # Corresponds to the JSON property `certificateMode`
        # @return [String]
        attr_accessor :certificate_mode
      
        # If set, the mapping will override any mapping set before this spec was set. It
        # is recommended that the user leaves this empty to receive an error warning
        # about a potential conflict and only set it once the respective UI has given
        # such a warning.
        # Corresponds to the JSON property `forceOverride`
        # @return [Boolean]
        attr_accessor :force_override
        alias_method :force_override?, :force_override
      
        # The name of the Knative Route that this DomainMapping applies to. The route
        # must exist.
        # Corresponds to the JSON property `routeName`
        # @return [String]
        attr_accessor :route_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_mode = args[:certificate_mode] if args.key?(:certificate_mode)
          @force_override = args[:force_override] if args.key?(:force_override)
          @route_name = args[:route_name] if args.key?(:route_name)
        end
      end
      
      # The current state of the Domain Mapping.
      class DomainMappingStatus
        include Google::Apis::Core::Hashable
      
        # Array of observed DomainMappingConditions, indicating the current state of the
        # DomainMapping.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # The name of the route that the mapping currently points to.
        # Corresponds to the JSON property `mappedRouteName`
        # @return [String]
        attr_accessor :mapped_route_name
      
        # ObservedGeneration is the 'Generation' of the DomainMapping that was last
        # processed by the controller. Clients polling for completed reconciliation
        # should poll until observedGeneration = metadata.generation and the Ready
        # condition's status is True or False.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # The resource records required to configure this domain mapping. These records
        # must be added to the domain's DNS configuration in order to serve the
        # application via this domain mapping.
        # Corresponds to the JSON property `resourceRecords`
        # @return [Array<Google::Apis::RunV1::ResourceRecord>]
        attr_accessor :resource_records
      
        # Cloud Run fully managed: not supported Cloud Run on GKE: supported Holds the
        # URL that will serve the traffic of the DomainMapping. +optional
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @mapped_route_name = args[:mapped_route_name] if args.key?(:mapped_route_name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @resource_records = args[:resource_records] if args.key?(:resource_records)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # EnvFromSource represents the source of a set of ConfigMaps
      class EnvFromSource
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # ConfigMapEnvSource selects a ConfigMap to populate the environment variables
        # with. The contents of the target ConfigMap's Data field will represent the key-
        # value pairs as environment variables.
        # Corresponds to the JSON property `configMapRef`
        # @return [Google::Apis::RunV1::ConfigMapEnvSource]
        attr_accessor :config_map_ref
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported An optional identifier to prepend to each key in the ConfigMap. Must
        # be a C_IDENTIFIER.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # SecretEnvSource selects a Secret to populate the environment variables with.
        # The contents of the target Secret's Data field will represent the key-value
        # pairs as environment variables.
        # Corresponds to the JSON property `secretRef`
        # @return [Google::Apis::RunV1::SecretEnvSource]
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
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # EnvVarSource represents a source for the value of an EnvVar.
        # Corresponds to the JSON property `valueFrom`
        # @return [Google::Apis::RunV1::EnvVarSource]
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # EnvVarSource represents a source for the value of an EnvVar.
      class EnvVarSource
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Selects
        # a key from a ConfigMap.
        # Corresponds to the JSON property `configMapKeyRef`
        # @return [Google::Apis::RunV1::ConfigMapKeySelector]
        attr_accessor :config_map_key_ref
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # SecretKeySelector selects a key of a Secret.
        # Corresponds to the JSON property `secretKeyRef`
        # @return [Google::Apis::RunV1::SecretKeySelector]
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # ExecAction describes a "run in container" action.
      class ExecAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Command is the command line to execute inside the container, the
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
      
      # Condition defines a generic condition for a Resource
      class GoogleCloudRunV1Condition
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
      
        # Status of the condition, one of True, False, Unknown.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # type is used to communicate the status of the reconciliation process. See also:
        # https://github.com/knative/serving/blob/master/docs/spec/errors.md#error-
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
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @severity = args[:severity] if args.key?(:severity)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # HTTPGetAction describes an action based on HTTP Get requests.
      class HttpGetAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Host name to connect to, defaults to the pod IP. You probably want
        # to set "Host" in httpHeaders instead.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Custom headers to set in the request. HTTP allows repeated headers.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Array<Google::Apis::RunV1::HttpHeader>]
        attr_accessor :http_headers
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Path to access on the HTTP server.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Scheme to use for connecting to the host. Defaults to HTTP.
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # HTTPHeader describes a custom header to be used in HTTP probes
      class HttpHeader
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # header field name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # header field value
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Maps a
      # string key to a path within a volume.
      class KeyToPath
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The key
        # to project.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Mode bits to use on this file, must be a value between 0000 and 0777.
        # If not specified, the volume defaultMode will be used. This might be in
        # conflict with other options that affect the file mode, like fsGroup, and the
        # result can be other mode bits set.
        # Corresponds to the JSON property `mode`
        # @return [Fixnum]
        attr_accessor :mode
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # relative path of the file to map the key to. May not be an absolute path. May
        # not contain the path element '..'. May not start with the string '..'.
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
      
      # A list of Authorized Domains.
      class ListAuthorizedDomainsResponse
        include Google::Apis::Core::Hashable
      
        # The authorized domains belonging to the user.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::RunV1::AuthorizedDomain>]
        attr_accessor :domains
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # ListConfigurationsResponse is a list of Configuration resources.
      class ListConfigurationsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Configurations.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Configuration>]
        attr_accessor :items
      
        # The kind of this resource, in this case "ConfigurationList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
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
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListDomainMappingsResponse is a list of DomainMapping resources.
      class ListDomainMappingsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "domains.cloudrun.com/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of DomainMappings.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::DomainMapping>]
        attr_accessor :items
      
        # The kind of this resource, in this case "DomainMappingList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
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
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::RunV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # ListRevisionsResponse is a list of Revision resources.
      class ListRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Revisions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Revision>]
        attr_accessor :items
      
        # The kind of this resource, in this case "RevisionList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
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
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListRoutesResponse is a list of Route resources.
      class ListRoutesResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Routes.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Route>]
        attr_accessor :items
      
        # The kind of this resource, in this case always "RouteList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
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
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A list of Service resources.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Services.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Service>]
        attr_accessor :items
      
        # The kind of this resource, in this case "ServiceList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
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
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # LocalObjectReference contains enough information to let you locate the
      # referenced object inside the same namespace.
      class LocalObjectReference
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Name of the referent. More info: https://kubernetes.io/docs/concepts/
        # overview/working-with-objects/names/#names
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
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
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
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported The name of the cluster which the object belongs to. This is used to
        # distinguish resources with same name and namespace in different clusters. This
        # field is not set anywhere right now and apiserver is going to ignore it if set
        # in create or update request.
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
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Number of seconds allowed for this object to gracefully terminate
        # before it will be removed from the system. Only set when deletionTimestamp is
        # also set. May only be shortened. Read-only.
        # Corresponds to the JSON property `deletionGracePeriodSeconds`
        # @return [Fixnum]
        attr_accessor :deletion_grace_period_seconds
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported DeletionTimestamp is RFC 3339 date and time at which this resource
        # will be deleted. This field is set by the server when a graceful deletion is
        # requested by the user, and is not directly settable by a client. The resource
        # is expected to be deleted (no longer visible from resource lists, and not
        # reachable by name) after the time in this field, once the finalizers list is
        # empty. As long as the finalizers list contains items, deletion is blocked.
        # Once the deletionTimestamp is set, this value may not be unset or be set
        # further into the future, although it may be shortened or the resource may be
        # deleted prior to this time. For example, a user may request that a pod is
        # deleted in 30 seconds. The Kubelet will react by sending a graceful
        # termination signal to the containers in the pod. After that 30 seconds, the
        # Kubelet will send a hard termination signal (SIGKILL) to the container and
        # after cleanup, remove the pod from the API. In the presence of network
        # partitions, this object may still exist after this timestamp, until an
        # administrator or automated process can determine the resource is fully
        # terminated. If not set, graceful deletion of the object has not been requested.
        # Populated by the system when a graceful deletion is requested. Read-only.
        # More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#
        # metadata
        # Corresponds to the JSON property `deletionTimestamp`
        # @return [String]
        attr_accessor :deletion_timestamp
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Must be empty before the object is deleted from the registry. Each
        # entry is an identifier for the responsible component that will remove the
        # entry from the list. If the deletionTimestamp of the object is non-nil,
        # entries in this list can only be removed. +patchStrategy=merge
        # Corresponds to the JSON property `finalizers`
        # @return [Array<String>]
        attr_accessor :finalizers
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported GenerateName is an optional prefix, used by the server, to generate
        # a unique name ONLY IF the Name field has not been provided. If this field is
        # used, the name returned to the client will be different than the name passed.
        # This value will also be combined with a unique suffix. The provided value has
        # the same validation rules as the Name field, and may be truncated by the
        # length of the suffix required to make the value unique on the server. If this
        # field is specified and the generated name exists, the server will NOT return a
        # 409 - instead, it will either return 201 Created or 500 with Reason
        # ServerTimeout indicating a unique name could not be found in the time allotted,
        # and the client should retry (optionally after the time indicated in the Retry-
        # After header). Applied only if Name is not specified. More info: https://git.
        # k8s.io/community/contributors/devel/api-conventions.md#idempotency string
        # generateName = 2;
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
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported List of objects that own this object. If ALL objects in the list
        # have been deleted, this object will be garbage collected.
        # Corresponds to the JSON property `ownerReferences`
        # @return [Array<Google::Apis::RunV1::OwnerReference>]
        attr_accessor :owner_references
      
        # (Optional) An opaque value that represents the internal version of this object
        # that can be used by clients to determine when objects have changed. May be
        # used for optimistic concurrency, change detection, and the watch operation on
        # a resource or set of resources. Clients must treat these values as opaque and
        # passed unmodified back to the server. They may only be valid for a particular
        # resource or set of resources. Populated by the system. Read-only. Value must
        # be treated as opaque by clients. More info: https://git.k8s.io/community/
        # contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-
        # consistency
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
        # devel/api-conventions.md#types-kinds
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::RunV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::RunV1::Binding>]
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Probe
      # describes a health check to be performed against a container to determine
      # whether it is alive or ready to receive traffic.
      class Probe
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # ExecAction describes a "run in container" action.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::RunV1::ExecAction]
        attr_accessor :exec
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Minimum consecutive failures for the probe to be considered failed
        # after having succeeded. Defaults to 3. Minimum value is 1.
        # Corresponds to the JSON property `failureThreshold`
        # @return [Fixnum]
        attr_accessor :failure_threshold
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # HTTPGetAction describes an action based on HTTP Get requests.
        # Corresponds to the JSON property `httpGet`
        # @return [Google::Apis::RunV1::HttpGetAction]
        attr_accessor :http_get
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Number of seconds after the container has started before liveness
        # probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/
        # pods/pod-lifecycle#container-probes
        # Corresponds to the JSON property `initialDelaySeconds`
        # @return [Fixnum]
        attr_accessor :initial_delay_seconds
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported How often (in seconds) to perform the probe. Default to 10 seconds.
        # Minimum value is 1.
        # Corresponds to the JSON property `periodSeconds`
        # @return [Fixnum]
        attr_accessor :period_seconds
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Minimum consecutive successes for the probe to be considered
        # successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum
        # value is 1.
        # Corresponds to the JSON property `successThreshold`
        # @return [Fixnum]
        attr_accessor :success_threshold
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # TCPSocketAction describes an action based on opening a socket
        # Corresponds to the JSON property `tcpSocket`
        # @return [Google::Apis::RunV1::TcpSocketAction]
        attr_accessor :tcp_socket
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Number of seconds after which the probe times out. Defaults to 1
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
      
      # A DNS resource record.
      class ResourceRecord
        include Google::Apis::Core::Hashable
      
        # Relative name of the object affected by this record. Only applicable for `
        # CNAME` records. Example: 'www'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data for this record. Values vary by record type, as defined in RFC 1035 (
        # section 5) and RFC 1034 (section 3.6.1).
        # Corresponds to the JSON property `rrdata`
        # @return [String]
        attr_accessor :rrdata
      
        # Resource record type. Example: `AAAA`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @rrdata = args[:rrdata] if args.key?(:rrdata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # ResourceRequirements describes the compute resource requirements.
      class ResourceRequirements
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: Only memory and CPU are supported. Note:
        # The only supported values for CPU are '1', '2', and '4'. Setting 4 CPU
        # requires at least 2Gi of memory. Cloud Run for Anthos: supported Limits
        # describes the maximum amount of compute resources allowed. The values of the
        # map is string form of the 'quantity' k8s type: https://github.com/kubernetes/
        # kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/
        # quantity.go
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        # (Optional) Cloud Run fully managed: Only memory and CPU are supported. Note:
        # The only supported values for CPU are '1' and '2'. Cloud Run for Anthos:
        # supported Requests describes the minimum amount of compute resources required.
        # If Requests is omitted for a container, it defaults to Limits if that is
        # explicitly specified, otherwise to an implementation-defined value. The values
        # of the map is string form of the 'quantity' k8s type: https://github.com/
        # kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/
        # resource/quantity.go
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
      
      # Revision is an immutable snapshot of code and configuration. A revision
      # references a container image. Revisions are created by updates to a
      # Configuration. See also: https://github.com/knative/serving/blob/master/docs/
      # spec/overview.md#revision
      class Revision
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of this resource, in this case "Revision".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # RevisionSpec holds the desired state of the Revision (from the client).
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::RevisionSpec]
        attr_accessor :spec
      
        # RevisionStatus communicates the observed state of the Revision (from the
        # controller).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::RevisionStatus]
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
      
      # RevisionSpec holds the desired state of the Revision (from the client).
      class RevisionSpec
        include Google::Apis::Core::Hashable
      
        # (Optional) ContainerConcurrency specifies the maximum allowed in-flight (
        # concurrent) requests per container instance of the Revision. Cloud Run fully
        # managed: supported, defaults to 80 Cloud Run for Anthos: supported, defaults
        # to 0, which means concurrency to the application is not limited, and the
        # system decides the target concurrency for the autoscaler.
        # Corresponds to the JSON property `containerConcurrency`
        # @return [Fixnum]
        attr_accessor :container_concurrency
      
        # Containers holds the single container that defines the unit of execution for
        # this Revision. In the context of a Revision, we disallow a number of fields on
        # this Container, including: name and lifecycle. In Cloud Run, only a single
        # container may be provided. The runtime contract is documented here: https://
        # github.com/knative/serving/blob/master/docs/runtime-contract.md
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV1::Container>]
        attr_accessor :containers
      
        # Email address of the IAM service account associated with the revision of the
        # service. The service account represents the identity of the running revision,
        # and determines what permissions the revision has. If not provided, the
        # revision will use the project's default service account.
        # Corresponds to the JSON property `serviceAccountName`
        # @return [String]
        attr_accessor :service_account_name
      
        # TimeoutSeconds holds the max duration the instance is allowed for responding
        # to a request. Cloud Run fully managed: defaults to 300 seconds (5 minutes).
        # Maximum allowed value is 900 seconds (15 minutes). Cloud Run for Anthos:
        # defaults to 300 seconds (5 minutes). Maximum allowed value is configurable by
        # the cluster operator.
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        # 
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_concurrency = args[:container_concurrency] if args.key?(:container_concurrency)
          @containers = args[:containers] if args.key?(:containers)
          @service_account_name = args[:service_account_name] if args.key?(:service_account_name)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # RevisionStatus communicates the observed state of the Revision (from the
      # controller).
      class RevisionStatus
        include Google::Apis::Core::Hashable
      
        # Conditions communicates information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # As a Revision is being prepared, it will incrementally update conditions.
        # Revision-specific conditions include: * "ResourcesAvailable": True when
        # underlying resources have been provisioned. * "ContainerHealthy": True when
        # the Revision readiness check completes. * "Active": True when the Revision may
        # receive traffic.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # ImageDigest holds the resolved digest for the image specified within .Spec.
        # Container.Image. The digest is resolved during the creation of Revision. This
        # field holds the digest value regardless of whether a tag or digest was
        # originally specified in the Container object.
        # Corresponds to the JSON property `imageDigest`
        # @return [String]
        attr_accessor :image_digest
      
        # Specifies the generated logging url for this particular revision based on the
        # revision url template specified in the controller's config. +optional
        # Corresponds to the JSON property `logUrl`
        # @return [String]
        attr_accessor :log_url
      
        # ObservedGeneration is the 'Generation' of the Revision that was last processed
        # by the controller. Clients polling for completed reconciliation should poll
        # until observedGeneration = metadata.generation, and the Ready condition's
        # status is True or False.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Not currently used by Cloud Run.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @image_digest = args[:image_digest] if args.key?(:image_digest)
          @log_url = args[:log_url] if args.key?(:log_url)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # RevisionTemplateSpec describes the data a revision should have when created
      # from a template. Based on: https://github.com/kubernetes/api/blob/e771f807/
      # core/v1/types.go#L3179-L3190
      class RevisionTemplate
        include Google::Apis::Core::Hashable
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # RevisionSpec holds the desired state of the Revision (from the client).
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::RevisionSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Route is responsible for configuring ingress over a collection of Revisions.
      # Some of the Revisions a Route distributes traffic over may be specified by
      # referencing the Configuration responsible for creating them; in these cases
      # the Route is additionally responsible for monitoring the Configuration for "
      # latest ready" revision changes, and smoothly rolling out latest revisions. See
      # also: https://github.com/knative/serving/blob/master/docs/spec/overview.md#
      # route Cloud Run currently supports referencing a single Configuration to
      # automatically deploy the "latest ready" Revision from that Configuration.
      class Route
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of this resource, in this case always "Route".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # RouteSpec holds the desired state of the Route (from the client).
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::RouteSpec]
        attr_accessor :spec
      
        # RouteStatus communicates the observed state of the Route (from the controller).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::RouteStatus]
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
      
      # RouteSpec holds the desired state of the Route (from the client).
      class RouteSpec
        include Google::Apis::Core::Hashable
      
        # Traffic specifies how to distribute traffic over a collection of Knative
        # Revisions and Configurations. Cloud Run currently supports a single
        # configurationName.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV1::TrafficTarget>]
        attr_accessor :traffic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traffic = args[:traffic] if args.key?(:traffic)
        end
      end
      
      # RouteStatus communicates the observed state of the Route (from the controller).
      class RouteStatus
        include Google::Apis::Core::Hashable
      
        # Information for connecting over HTTP(s).
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::RunV1::Addressable]
        attr_accessor :address
      
        # Conditions communicates information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # ObservedGeneration is the 'Generation' of the Route that was last processed by
        # the controller. Clients polling for completed reconciliation should poll until
        # observedGeneration = metadata.generation and the Ready condition's status is
        # True or False. Note that providing a trafficTarget that only has a
        # configurationName will result in a Route that does not increment either its
        # metadata.generation or its observedGeneration, as new "latest ready" revisions
        # from the Configuration are processed without an update to the Route's spec.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Traffic holds the configured traffic distribution. These entries will always
        # contain RevisionName references. When ConfigurationName appears in the spec,
        # this will hold the LatestReadyRevisionName that we last observed.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV1::TrafficTarget>]
        attr_accessor :traffic
      
        # URL holds the url that will distribute traffic over the provided traffic
        # targets. It generally has the form: https://`route-hash`-`project-hash`-`
        # cluster-level-suffix`.a.run.app
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @conditions = args[:conditions] if args.key?(:conditions)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @traffic = args[:traffic] if args.key?(:traffic)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # SecretEnvSource selects a Secret to populate the environment variables with.
      # The contents of the target Secret's Data field will represent the key-value
      # pairs as environment variables.
      class SecretEnvSource
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # LocalObjectReference contains enough information to let you locate the
        # referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # Secret to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the Secret must be defined
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # SecretKeySelector selects a key of a Secret.
      class SecretKeySelector
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The key
        # of the secret to select from. Must be a valid secret key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
        # LocalObjectReference contains enough information to let you locate the
        # referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # name of the secret in the pod's namespace to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the Secret or its key must be defined
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
      # contents of the target Secret's Data field will be presented in a volume as
      # files using the keys in the Data field as the file names.
      class SecretVolumeSource
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Mode bits to use on created files by default. Must be a value
        # between 0000 and 0777. Defaults to 0644. Directories within the path are not
        # affected by this setting. This might be in conflict with other options that
        # affect the file mode, like fsGroup, and the result can be other mode bits set.
        # NOTE: This is an integer representation of the mode bits. So, the integer
        # value should look exactly as the chmod numeric notation, i.e. Unix chmod "777"
        # (a=rwx) should have the integer value 777.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported If unspecified, each key-value pair in the Data field of the
        # referenced Secret will be projected into the volume as a file whose name is
        # the key and content is the value. If specified, the listed keys will be
        # projected into the specified paths, and unlisted keys will not be present. If
        # a key is specified which is not present in the Secret, the volume setup will
        # error unless it is marked optional.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::KeyToPath>]
        attr_accessor :items
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Specify whether the Secret or its keys must be defined.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Name of
        # the secret in the container's namespace to use.
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # SecurityContext holds security configuration that will be applied to a
      # container. Some fields are present in both SecurityContext and
      # PodSecurityContext. When both are set, the values in SecurityContext take
      # precedence.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported The UID to run the entrypoint of the container process. Defaults to
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
      
      # Service acts as a top-level container that manages a set of Routes and
      # Configurations which implement a network service. Service exists to provide a
      # singular abstraction which can be access controlled, reasoned about, and which
      # encapsulates software lifecycle decisions such as rollout policy and team
      # resource ownership. Service acts only as an orchestrator of the underlying
      # Routes and Configurations (much as a kubernetes Deployment orchestrates
      # ReplicaSets). The Service's controller will track the statuses of its owned
      # Configuration and Route, reflecting their statuses and conditions as its own.
      # See also: https://github.com/knative/serving/blob/master/docs/spec/overview.md#
      # service
      class Service
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of resource, in this case "Service".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # ServiceSpec holds the desired state of the Route (from the client), which is
        # used to manipulate the underlying Route and Configuration(s).
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::ServiceSpec]
        attr_accessor :spec
      
        # The current state of the Service. Output only.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::ServiceStatus]
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
      
      # ServiceSpec holds the desired state of the Route (from the client), which is
      # used to manipulate the underlying Route and Configuration(s).
      class ServiceSpec
        include Google::Apis::Core::Hashable
      
        # RevisionTemplateSpec describes the data a revision should have when created
        # from a template. Based on: https://github.com/kubernetes/api/blob/e771f807/
        # core/v1/types.go#L3179-L3190
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1::RevisionTemplate]
        attr_accessor :template
      
        # Traffic specifies how to distribute traffic over a collection of Knative
        # Revisions and Configurations.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV1::TrafficTarget>]
        attr_accessor :traffic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @template = args[:template] if args.key?(:template)
          @traffic = args[:traffic] if args.key?(:traffic)
        end
      end
      
      # The current state of the Service. Output only.
      class ServiceStatus
        include Google::Apis::Core::Hashable
      
        # Information for connecting over HTTP(s).
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::RunV1::Addressable]
        attr_accessor :address
      
        # Conditions communicates information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # Service-specific conditions include: * "ConfigurationsReady": true when the
        # underlying Configuration is ready. * "RoutesReady": true when the underlying
        # Route is ready. * "Ready": true when both the underlying Route and
        # Configuration are ready.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # From ConfigurationStatus. LatestCreatedRevisionName is the last revision that
        # was created from this Service's Configuration. It might not be ready yet, for
        # that use LatestReadyRevisionName.
        # Corresponds to the JSON property `latestCreatedRevisionName`
        # @return [String]
        attr_accessor :latest_created_revision_name
      
        # From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest
        # Revision stamped out from this Service's Configuration that has had its "Ready"
        # condition become "True".
        # Corresponds to the JSON property `latestReadyRevisionName`
        # @return [String]
        attr_accessor :latest_ready_revision_name
      
        # ObservedGeneration is the 'Generation' of the Route that was last processed by
        # the controller. Clients polling for completed reconciliation should poll until
        # observedGeneration = metadata.generation and the Ready condition's status is
        # True or False.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # From RouteStatus. Traffic holds the configured traffic distribution. These
        # entries will always contain RevisionName references. When ConfigurationName
        # appears in the spec, this will hold the LatestReadyRevisionName that we last
        # observed.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV1::TrafficTarget>]
        attr_accessor :traffic
      
        # From RouteStatus. URL holds the url that will distribute traffic over the
        # provided traffic targets. It generally has the form https://`route-hash`-`
        # project-hash`-`cluster-level-suffix`.a.run.app
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @conditions = args[:conditions] if args.key?(:conditions)
          @latest_created_revision_name = args[:latest_created_revision_name] if args.key?(:latest_created_revision_name)
          @latest_ready_revision_name = args[:latest_ready_revision_name] if args.key?(:latest_ready_revision_name)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @traffic = args[:traffic] if args.key?(:traffic)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::RunV1::Policy]
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
      
      # Status is a return value for calls that don't return other objects
      class Status
        include Google::Apis::Core::Hashable
      
        # Suggested HTTP return code for this status, 0 if not set. +optional
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # StatusDetails is a set of additional properties that MAY be set by the server
        # to provide additional information about a response. The Reason field of a
        # Status object defines what attributes will be set. Clients must ignore fields
        # that do not match the defined type of each attribute, and should assume that
        # any attribute may be empty, invalid, or under defined.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::RunV1::StatusDetails]
        attr_accessor :details
      
        # A human-readable description of the status of this operation. +optional
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # ListMeta describes metadata that synthetic resources must have, including
        # lists and various status objects. A resource may have only one of `ObjectMeta,
        # ListMeta`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
        # A machine-readable description of why this operation is in the "Failure"
        # status. If this value is empty there is no information available. A Reason
        # clarifies an HTTP status code but does not override it. +optional
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Status of the operation. One of: "Success" or "Failure". More info: https://
        # git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status +
        # optional
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # StatusCause provides more information about an api.Status failure, including
      # cases when multiple errors are encountered.
      class StatusCause
        include Google::Apis::Core::Hashable
      
        # The field of the resource that has caused this error, as named by its JSON
        # serialization. May include dot and postfix notation for nested attributes.
        # Arrays are zero-indexed. Fields may appear more than once in an array of
        # causes due to fields having multiple errors. Optional. Examples: "name" - the
        # field "name" on the current resource "items[0].name" - the field "name" on the
        # first array entry in "items" +optional
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # A human-readable description of the cause of the error. This field may be
        # presented as-is to a reader. +optional
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A machine-readable description of the cause of the error. If this value is
        # empty there is no information available. +optional
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # StatusDetails is a set of additional properties that MAY be set by the server
      # to provide additional information about a response. The Reason field of a
      # Status object defines what attributes will be set. Clients must ignore fields
      # that do not match the defined type of each attribute, and should assume that
      # any attribute may be empty, invalid, or under defined.
      class StatusDetails
        include Google::Apis::Core::Hashable
      
        # The Causes array includes more details associated with the StatusReason
        # failure. Not all StatusReasons may provide detailed causes. +optional
        # Corresponds to the JSON property `causes`
        # @return [Array<Google::Apis::RunV1::StatusCause>]
        attr_accessor :causes
      
        # The group attribute of the resource associated with the status StatusReason. +
        # optional
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The kind attribute of the resource associated with the status StatusReason. On
        # some operations may differ from the requested resource Kind. More info: https:/
        # /git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds +
        # optional
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name attribute of the resource associated with the status StatusReason (
        # when there is a single name which can be described). +optional
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If specified, the time in seconds before the operation should be retried. Some
        # errors may indicate the client must take an alternate action - for those
        # errors this field may indicate how long to wait before taking the alternate
        # action. +optional
        # Corresponds to the JSON property `retryAfterSeconds`
        # @return [Fixnum]
        attr_accessor :retry_after_seconds
      
        # UID of the resource. (when there is a single resource which can be described).
        # More info: http://kubernetes.io/docs/user-guide/identifiers#uids +optional
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @causes = args[:causes] if args.key?(:causes)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @retry_after_seconds = args[:retry_after_seconds] if args.key?(:retry_after_seconds)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # TCPSocketAction describes an action based on opening a socket
      class TcpSocketAction
        include Google::Apis::Core::Hashable
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Optional: Host name to connect to, defaults to the pod IP.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Number
        # or name of the port to access on the container. Number must be in the range 1
        # to 65535. Name must be an IANA_SVC_NAME. This field is currently limited to
        # integer types only because of proto's inability to properly support the
        # IntOrString golang type.
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
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
      class TestIamPermissionsResponse
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
      
      # TrafficTarget holds a single entry of the routing table for a Route.
      class TrafficTarget
        include Google::Apis::Core::Hashable
      
        # ConfigurationName of a configuration to whose latest revision we will send
        # this portion of traffic. When the "status.latestReadyRevisionName" of the
        # referenced configuration changes, we will automatically migrate traffic from
        # the prior "latest ready" revision to the new one. This field is never set in
        # Route's status, only its spec. This is mutually exclusive with RevisionName.
        # Cloud Run currently supports a single ConfigurationName.
        # Corresponds to the JSON property `configurationName`
        # @return [String]
        attr_accessor :configuration_name
      
        # LatestRevision may be optionally provided to indicate that the latest ready
        # Revision of the Configuration should be used for this traffic target. When
        # provided LatestRevision must be true if RevisionName is empty; it must be
        # false when RevisionName is non-empty. +optional
        # Corresponds to the JSON property `latestRevision`
        # @return [Boolean]
        attr_accessor :latest_revision
        alias_method :latest_revision?, :latest_revision
      
        # Percent specifies percent of the traffic to this Revision or Configuration.
        # This defaults to zero if unspecified. Cloud Run currently requires 100 percent
        # for a single ConfigurationName TrafficTarget entry.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        # RevisionName of a specific revision to which to send this portion of traffic.
        # This is mutually exclusive with ConfigurationName. Providing RevisionName in
        # spec is not currently supported by Cloud Run.
        # Corresponds to the JSON property `revisionName`
        # @return [String]
        attr_accessor :revision_name
      
        # Tag is optionally used to expose a dedicated url for referencing this target
        # exclusively. +optional
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # Output only. URL displays the URL for accessing tagged traffic targets. URL is
        # displayed in status, and is disallowed on spec. URL must contain a scheme (e.g.
        # http://) and a hostname, but may not contain anything else (e.g. basic auth,
        # url path, etc. Not currently supported in Cloud Run.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration_name = args[:configuration_name] if args.key?(:configuration_name)
          @latest_revision = args[:latest_revision] if args.key?(:latest_revision)
          @percent = args[:percent] if args.key?(:percent)
          @revision_name = args[:revision_name] if args.key?(:revision_name)
          @tag = args[:tag] if args.key?(:tag)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Volume
      # represents a named volume in a container.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Adapts
        # a ConfigMap into a volume. The contents of the target ConfigMap's Data field
        # will be presented in a volume as files using the keys in the Data field as the
        # file names, unless the items element is populated with specific mappings of
        # keys to paths.
        # Corresponds to the JSON property `configMap`
        # @return [Google::Apis::RunV1::ConfigMapVolumeSource]
        attr_accessor :config_map
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Volume'
        # s name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported The
        # contents of the target Secret's Data field will be presented in a volume as
        # files using the keys in the Data field as the file names.
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::RunV1::SecretVolumeSource]
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
      
      # Cloud Run fully managed: not supported Cloud Run for Anthos: supported
      # VolumeMount describes a mounting of a Volume within a container.
      class VolumeMount
        include Google::Apis::Core::Hashable
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported Path
        # within the container at which the volume should be mounted. Must not contain ':
        # '.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Cloud Run fully managed: not supported Cloud Run for Anthos: supported This
        # must match the Name of a Volume.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Only true is accepted. Defaults to true.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # (Optional) Cloud Run fully managed: not supported Cloud Run for Anthos:
        # supported Path within the volume from which the container's volume should be
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
