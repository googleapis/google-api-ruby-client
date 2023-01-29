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
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
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
      
      # Associates `members`, or principals, with a `role`.
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
        # . * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
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
        # domain:`domain``: The G Suite domain (primary) that represents all the users
        # of that domain. For example, `google.com` or `example.com`.
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
      
      # Request message for cancelling an execution.
      class CancelExecutionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate
      # the environment variables with. The contents of the target ConfigMap's Data
      # field will represent the key-value pairs as environment variables.
      class ConfigMapEnvSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run. LocalObjectReference contains enough information
        # to let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The ConfigMap to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specify whether the ConfigMap must be defined.
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
      
      # Not supported by Cloud Run.
      class ConfigMapKeySelector
        include Google::Apis::Core::Hashable
      
        # Required. Not supported by Cloud Run.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Not supported by Cloud Run. LocalObjectReference contains enough information
        # to let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # Required. Not supported by Cloud Run.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Not supported by Cloud Run.
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
      
      # Not supported by Cloud Run. Adapts a ConfigMap into a volume. The contents of
      # the target ConfigMap's Data field will be presented in a volume as files using
      # the keys in the Data field as the file names, unless the items element is
      # populated with specific mappings of keys to paths.
      class ConfigMapVolumeSource
        include Google::Apis::Core::Hashable
      
        # (Optional) Integer representation of mode bits to use on created files by
        # default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will
        # default to 0644. Directories within the path are not affected by this setting.
        # Notes * Internally, a umask of 0222 will be applied to any non-zero value. *
        # This is an integer representation of the mode bits. So, the octal integer
        # value should look exactly as the chmod numeric notation with a leading zero.
        # Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10).
        # For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (
        # u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in
        # conflict with other options that affect the file mode, like fsGroup, and the
        # result can be other mode bits set.
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
        # @return [Array<Google::Apis::RunV1::KeyToPath>]
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
      
      # Configuration represents the "floating HEAD" of a linear history of Revisions,
      # and optionally how the containers those revisions reference are built. Users
      # create new Revisions by updating the Configuration's spec. The "latest created"
      # revision's name is available under status, as is the "latest ready" revision'
      # s name. See also: https://github.com/knative/specs/blob/main/specs/serving/
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
      
        # Conditions communicate information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # LatestCreatedRevisionName is the last revision that was created from this
        # Configuration. It might not be ready yet, so for the latest ready revision,
        # use LatestReadyRevisionName.
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
      
        # Arguments to the entrypoint. The docker image's CMD is used if this is not
        # provided. Variable references are not supported in Cloud Run.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT
        # is used if this is not provided. Variable references are not supported in
        # Cloud Run.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # List of environment variables to set in the container. EnvVar with duplicate
        # names are generally allowed; if referencing a secret, the name must be unique
        # for the container. For non-secret EnvVar names, the Container will only get
        # the last-declared one.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV1::EnvVar>]
        attr_accessor :env
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `envFrom`
        # @return [Array<Google::Apis::RunV1::EnvFromSource>]
        attr_accessor :env_from
      
        # Required. Name of the container image in Dockerhub, Google Artifact Registry,
        # or Google Container Registry. If the host is not provided, Dockerhub is
        # assumed. More info: https://kubernetes.io/docs/concepts/containers/images
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :
        # latest tag is specified, or IfNotPresent otherwise. More info: https://
        # kubernetes.io/docs/concepts/containers/images#updating-images
        # Corresponds to the JSON property `imagePullPolicy`
        # @return [String]
        attr_accessor :image_pull_policy
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `livenessProbe`
        # @return [Google::Apis::RunV1::Probe]
        attr_accessor :liveness_probe
      
        # Name of the container specified as a DNS_LABEL (RFC 1123). More info: https://
        # kubernetes.io/docs/concepts/overview/working-with-objects/names/#dns-label-
        # names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of ports to expose from the container. Only a single port can be
        # specified. The specified ports must be listening on all interfaces (0.0.0.0)
        # within the container to be accessible. If omitted, a port number will be
        # chosen and passed to the container through the PORT environment variable for
        # the container to listen on.
        # Corresponds to the JSON property `ports`
        # @return [Array<Google::Apis::RunV1::ContainerPort>]
        attr_accessor :ports
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `readinessProbe`
        # @return [Google::Apis::RunV1::Probe]
        attr_accessor :readiness_probe
      
        # ResourceRequirements describes the compute resource requirements.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::RunV1::ResourceRequirements]
        attr_accessor :resources
      
        # Not supported by Cloud Run. SecurityContext holds security configuration that
        # will be applied to a container. Some fields are present in both
        # SecurityContext and PodSecurityContext. When both are set, the values in
        # SecurityContext take precedence.
        # Corresponds to the JSON property `securityContext`
        # @return [Google::Apis::RunV1::SecurityContext]
        attr_accessor :security_context
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `startupProbe`
        # @return [Google::Apis::RunV1::Probe]
        attr_accessor :startup_probe
      
        # Path at which the file to which the container's termination message will be
        # written is mounted into the container's filesystem. Message written is
        # intended to be brief final status, such as an assertion failure message. Will
        # be truncated by the node if greater than 4096 bytes. The total message length
        # across all containers will be limited to 12kb. Defaults to /dev/termination-
        # log.
        # Corresponds to the JSON property `terminationMessagePath`
        # @return [String]
        attr_accessor :termination_message_path
      
        # Indicate how the termination message should be populated. File will use the
        # contents of terminationMessagePath to populate the container status message on
        # both success and failure. FallbackToLogsOnError will use the last chunk of
        # container log output if the termination message file is empty and the
        # container exited with an error. The log output is limited to 2048 bytes or 80
        # lines, whichever is smaller. Defaults to File. Cannot be updated.
        # Corresponds to the JSON property `terminationMessagePolicy`
        # @return [String]
        attr_accessor :termination_message_policy
      
        # Volume to mount into the container's filesystem. Only supports
        # SecretVolumeSources. Pod volumes to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::RunV1::VolumeMount>]
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
      
        # Port number the container listens on. This must be a valid port number, 0 < x <
        # 65536.
        # Corresponds to the JSON property `containerPort`
        # @return [Fixnum]
        attr_accessor :container_port
      
        # If specified, used to specify which protocol to use. Allowed values are "http1"
        # and "h2c".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Protocol for port. Must be "TCP". Defaults to "TCP".
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
      
        # Optional. Not supported by Cloud Run.
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
      
      # Not supported by Cloud Run. EnvFromSource represents the source of a set of
      # ConfigMaps
      class EnvFromSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate
        # the environment variables with. The contents of the target ConfigMap's Data
        # field will represent the key-value pairs as environment variables.
        # Corresponds to the JSON property `configMapRef`
        # @return [Google::Apis::RunV1::ConfigMapEnvSource]
        attr_accessor :config_map_ref
      
        # An optional identifier to prepend to each key in the ConfigMap. Must be a
        # C_IDENTIFIER.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the
        # environment variables with. The contents of the target Secret's Data field
        # will represent the key-value pairs as environment variables.
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
      
        # Required. Name of the environment variable. Must be a C_IDENTIFIER.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value of the environment variable. Defaults to "". Variable references are not
        # supported in Cloud Run.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
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
      
      # EnvVarSource represents a source for the value of an EnvVar.
      class EnvVarSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `configMapKeyRef`
        # @return [Google::Apis::RunV1::ConfigMapKeySelector]
        attr_accessor :config_map_key_ref
      
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
      
      # Not supported by Cloud Run. ExecAction describes a "run in container" action.
      class ExecAction
        include Google::Apis::Core::Hashable
      
        # Command is the command line to execute inside the container, the working
        # directory for the command is root ('/') in the container's filesystem. The
        # command is simply exec'd, it is not run inside a shell, so traditional shell
        # instructions ('|', etc) won't work. To use a shell, you need to explicitly
        # call out to that shell. Exit status of 0 is treated as live/healthy and non-
        # zero is unhealthy.
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
      
      # Execution represents the configuration of a single execution. An execution is
      # an immutable resource that references a container image which is run to
      # completion.
      class Execution
        include Google::Apis::Core::Hashable
      
        # Optional. APIVersion defines the versioned schema of this representation of an
        # object. Servers should convert recognized schemas to the latest internal value,
        # and may reject unrecognized values. More info: https://git.k8s.io/community/
        # contributors/devel/sig-architecture/api-conventions.md#resources
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/
        # community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # ExecutionSpec describes how the execution will look.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::ExecutionSpec]
        attr_accessor :spec
      
        # ExecutionStatus represents the current state of an Execution.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::ExecutionStatus]
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
      
      # Reference to an Execution. Use /Executions.GetExecution with the given name to
      # get full execution including the latest status.
      class ExecutionReference
        include Google::Apis::Core::Hashable
      
        # Optional. Completion timestamp of the execution.
        # Corresponds to the JSON property `completionTimestamp`
        # @return [String]
        attr_accessor :completion_timestamp
      
        # Optional. Creation timestamp of the execution.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Optional. Name of the execution.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_timestamp = args[:completion_timestamp] if args.key?(:completion_timestamp)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # ExecutionSpec describes how the execution will look.
      class ExecutionSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the maximum desired number of tasks the execution should
        # run at given time. Must be <= task_count. When the job is run, if this field
        # is 0 or unset, the maximum possible value will be used for that execution. The
        # actual number of tasks running in steady state will be less than this number
        # when there are fewer tasks waiting to be completed, i.e. when the work left to
        # do is less than max parallelism.
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # Optional. Specifies the desired number of tasks the execution should run.
        # Setting to 1 means that parallelism is limited to 1 and the success of that
        # task signals the success of the execution.
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # TaskTemplateSpec describes the data a task should have when created from a
        # template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1::TaskTemplateSpec]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @task_count = args[:task_count] if args.key?(:task_count)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # ExecutionStatus represents the current state of an Execution.
      class ExecutionStatus
        include Google::Apis::Core::Hashable
      
        # Optional. The number of tasks which reached phase Cancelled.
        # Corresponds to the JSON property `cancelledCount`
        # @return [Fixnum]
        attr_accessor :cancelled_count
      
        # Optional. Represents the time that the execution was completed. It is not
        # guaranteed to be set in happens-before order across separate operations. It is
        # represented in RFC3339 form and is in UTC. +optional
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Optional. Conditions communicate information about ongoing/complete
        # reconciliation processes that bring the "spec" inline with the observed state
        # of the world. Execution-specific conditions include: * `ResourcesAvailable`: `
        # True` when underlying resources have been provisioned. * `Started`: `True`
        # when the execution has started to execute. * `Completed`: `True` when the
        # execution has succeeded. `False` when the execution has failed.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # Optional. The number of tasks which reached phase Failed.
        # Corresponds to the JSON property `failedCount`
        # @return [Fixnum]
        attr_accessor :failed_count
      
        # Optional. URI where logs for this execution can be found in Cloud Console.
        # Corresponds to the JSON property `logUri`
        # @return [String]
        attr_accessor :log_uri
      
        # Optional. The 'generation' of the execution that was last processed by the
        # controller.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Optional. The number of tasks which have retried at least once.
        # Corresponds to the JSON property `retriedCount`
        # @return [Fixnum]
        attr_accessor :retried_count
      
        # Optional. The number of actively running tasks.
        # Corresponds to the JSON property `runningCount`
        # @return [Fixnum]
        attr_accessor :running_count
      
        # Optional. Represents the time that the execution started to run. It is not
        # guaranteed to be set in happens-before order across separate operations. It is
        # represented in RFC3339 form and is in UTC.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional. The number of tasks which reached phase Succeeded.
        # Corresponds to the JSON property `succeededCount`
        # @return [Fixnum]
        attr_accessor :succeeded_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancelled_count = args[:cancelled_count] if args.key?(:cancelled_count)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @failed_count = args[:failed_count] if args.key?(:failed_count)
          @log_uri = args[:log_uri] if args.key?(:log_uri)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @retried_count = args[:retried_count] if args.key?(:retried_count)
          @running_count = args[:running_count] if args.key?(:running_count)
          @start_time = args[:start_time] if args.key?(:start_time)
          @succeeded_count = args[:succeeded_count] if args.key?(:succeeded_count)
        end
      end
      
      # ExecutionTemplateSpec describes the metadata and spec an Execution should have
      # when created from a job. Based on: https://github.com/kubernetes/api/blob/
      # e771f807/core/v1/types.go#L3179-L3190
      class ExecutionTemplateSpec
        include Google::Apis::Core::Hashable
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # ExecutionSpec describes how the execution will look.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::ExecutionSpec]
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
      
      # GRPCAction describes an action involving a GRPC port.
      class GrpcAction
        include Google::Apis::Core::Hashable
      
        # Port number of the gRPC service. Number must be in the range 1 to 65535.
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
      
      # Conditions show the status of reconciliation progress on a given resource.
      # Most resource use a top-level condition type "Ready" or "Completed" to show
      # overall status with other conditions to checkpoint each stage of
      # reconciliation. Note that if metadata.Generation does not equal status.
      # ObservedGeneration, the conditions shown may not be relevant for the current
      # spec.
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
      
        # Optional. One-word CamelCase reason for the condition's last transition. These
        # are intended to be stable, unique values which the client may use to trigger
        # error handling logic, whereas messages which may be changed later by the
        # server.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Optional. How to interpret this condition. One of Error, Warning, or Info.
        # Conditions of severity Info do not contribute to resource readiness.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Status of the condition, one of True, False, Unknown.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # type is used to communicate the status of the reconciliation process. See also:
        # https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-
        # conditions-and-reporting Types common to all resources include: * "Ready" or "
        # Completed": True when the Resource is ready.
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
      
      # HTTPGetAction describes an action based on HTTP Get requests.
      class HttpGetAction
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Custom headers to set in the request. HTTP allows repeated headers.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Array<Google::Apis::RunV1::HttpHeader>]
        attr_accessor :http_headers
      
        # Path to access on the HTTP server.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Not supported by Cloud Run.
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
      
      # HTTPHeader describes a custom header to be used in HTTP probes
      class HttpHeader
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
      # image which is run to completion.
      class Job
        include Google::Apis::Core::Hashable
      
        # Optional. APIVersion defines the versioned schema of this representation of an
        # object. Servers should convert recognized schemas to the latest internal value,
        # and may reject unrecognized values. More info: https://git.k8s.io/community/
        # contributors/devel/sig-architecture/api-conventions.md#resources
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/
        # community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # JobSpec describes how the job will look.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::JobSpec]
        attr_accessor :spec
      
        # JobStatus represents the current state of a Job.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::JobStatus]
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
      
      # JobSpec describes how the job will look.
      class JobSpec
        include Google::Apis::Core::Hashable
      
        # ExecutionTemplateSpec describes the metadata and spec an Execution should have
        # when created from a job. Based on: https://github.com/kubernetes/api/blob/
        # e771f807/core/v1/types.go#L3179-L3190
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1::ExecutionTemplateSpec]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # JobStatus represents the current state of a Job.
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # Conditions communicate information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # Job-specific conditions include: * `Ready`: `True` when the job is ready to be
        # executed.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # Number of executions created for this job.
        # Corresponds to the JSON property `executionCount`
        # @return [Fixnum]
        attr_accessor :execution_count
      
        # Reference to an Execution. Use /Executions.GetExecution with the given name to
        # get full execution including the latest status.
        # Corresponds to the JSON property `latestCreatedExecution`
        # @return [Google::Apis::RunV1::ExecutionReference]
        attr_accessor :latest_created_execution
      
        # The 'generation' of the job that was last processed by the controller.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @execution_count = args[:execution_count] if args.key?(:execution_count)
          @latest_created_execution = args[:latest_created_execution] if args.key?(:latest_created_execution)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
        end
      end
      
      # Maps a string key to a path within a volume.
      class KeyToPath
        include Google::Apis::Core::Hashable
      
        # The Cloud Secret Manager secret version. Can be 'latest' for the latest value,
        # or an integer or a secret alias for a specific version. The key to project.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # (Optional) Mode bits to use on this file, must be a value between 01 and 0777 (
        # octal). If 0 or not set, the Volume's default mode will be used. Notes *
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
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
      # ListExecutionsResponse is a list of Executions resources.
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "run.googleapis.com/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Executions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Execution>]
        attr_accessor :items
      
        # The kind of this resource, in this case "ExecutionsList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
      # ListJobsResponse is a list of Jobs resources.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "run.googleapis.com/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Jobs.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Job>]
        attr_accessor :items
      
        # The kind of this resource, in this case "JobsList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
      # Metadata for synthetic resources like List. In Cloud Run, all List Resources
      # Responses will have a ListMeta instead of ObjectMeta.
      class ListMeta
        include Google::Apis::Core::Hashable
      
        # Continuation token is a value emitted when the count of items is larger than
        # the user/system limit. To retrieve the next page of items, pass the value of `
        # continue` as the next request's `page_token`.
        # Corresponds to the JSON property `continue`
        # @return [String]
        attr_accessor :continue
      
        # Opaque string that identifies the server's internal version of this object. It
        # can be used by clients to determine when objects have changed. If the message
        # is passed back to the server, it must be left unmodified. https://git.k8s.io/
        # community/contributors/devel/api-conventions.md#concurrency-control-and-
        # consistency
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # URL representing this object.
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
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
        # The API version for this call; returns "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Services.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Service>]
        attr_accessor :items
      
        # The kind of this resource; returns "ServiceList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
        # For calls against the global endpoint, returns the list of Cloud locations
        # that could not be reached. For regional calls, this field is not used.
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
      
      # ListTasksResponse is a list of Tasks resources.
      class ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # The API version for this call such as "run.googleapis.com/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # List of Tasks.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::Task>]
        attr_accessor :items
      
        # The kind of this resource, in this case "TasksList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
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
      
      # Not supported by Cloud Run. LocalObjectReference contains enough information
      # to let you locate the referenced object inside the same namespace.
      class LocalObjectReference
        include Google::Apis::Core::Hashable
      
        # Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/
        # working-with-objects/names/#names
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
      
        # Unstructured key value map stored with a resource that may be set by external
        # tools to store and retrieve arbitrary metadata. They are not queryable and
        # should be preserved when modifying objects. In Cloud Run, annotations with '
        # run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the
        # accepted annotations will be different depending on the resource type. * `
        # autoscaling.knative.dev/maxScale`: Revision. * `autoscaling.knative.dev/
        # minScale`: Revision. * `run.googleapis.com/binary-authorization-breakglass`:
        # Service, Job, * `run.googleapis.com/binary-authorization`: Service, Job,
        # Execution. * `run.googleapis.com/client-name`: All resources. * `run.
        # googleapis.com/cloudsql-instances`: Revision, Execution. * `run.googleapis.com/
        # cpu-throttling`: Revision. * `run.googleapis.com/custom-audiences`: Service. *
        # `run.googleapis.com/description`: Service. * `run.googleapis.com/encryption-
        # key-shutdown-hours`: Revision * `run.googleapis.com/encryption-key`: Revision,
        # Execution. * `run.googleapis.com/execution-environment`: Revision, Execution. *
        # `run.googleapis.com/gc-traffic-tags`: Service. * `run.googleapis.com/ingress`:
        # Service. * `run.googleapis.com/network-interfaces`: Revision, Execution. * `
        # run.googleapis.com/post-key-revocation-action-type`: Revision. * `run.
        # googleapis.com/secrets`: Revision, Execution. * `run.googleapis.com/secure-
        # session-agent`: Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `
        # run.googleapis.com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-
        # access-connector`: Revision, Execution. * `run.googleapis.com/vpc-access-
        # egress`: Revision, Execution. Execution. More info: https://kubernetes.io/docs/
        # user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # UTC timestamp representing the server time when this object was created. More
        # info: https://git.k8s.io/community/contributors/devel/api-conventions.md#
        # metadata
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `deletionGracePeriodSeconds`
        # @return [Fixnum]
        attr_accessor :deletion_grace_period_seconds
      
        # The read-only soft deletion timestamp for this resource. In Cloud Run, users
        # are not able to set this field. Instead, they must call the corresponding
        # Delete API.
        # Corresponds to the JSON property `deletionTimestamp`
        # @return [String]
        attr_accessor :deletion_timestamp
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `finalizers`
        # @return [Array<String>]
        attr_accessor :finalizers
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `generateName`
        # @return [String]
        attr_accessor :generate_name
      
        # A system-provided sequence number representing a specific generation of the
        # desired state.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Map of string keys and values that can be used to organize and categorize (
        # scope and select) objects. May match selectors of replication controllers and
        # routes. More info: https://kubernetes.io/docs/user-guide/labels
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The name of the resource. In Cloud Run, name is required when
        # creating top-level resources (Service, Job), must be unique within a Cloud Run
        # project/region, and cannot be changed once created. More info: https://
        # kubernetes.io/docs/user-guide/identifiers#names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Defines the space within each name must be unique within a Cloud Run
        # region. In Cloud Run, it must be project ID or number.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `ownerReferences`
        # @return [Array<Google::Apis::RunV1::OwnerReference>]
        attr_accessor :owner_references
      
        # Opaque, system-generated value that represents the internal version of this
        # object that can be used by clients to determine when objects have changed. May
        # be used for optimistic concurrency, change detection, and the watch operation
        # on a resource or set of resources. Clients must treat these values as opaque
        # and passed unmodified back to the server or omit the value to disable conflict-
        # detection. More info: https://git.k8s.io/community/contributors/devel/sig-
        # architecture/api-conventions.md#concurrency-control-and-consistency
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # URL representing this object.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Unique, system-generated identifier for this resource. More info: https://
        # kubernetes.io/docs/user-guide/identifiers#uids
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
      
      # This is not supported or used by Cloud Run.
      class OwnerReference
        include Google::Apis::Core::Hashable
      
        # This is not supported or used by Cloud Run.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # This is not supported or used by Cloud Run.
        # Corresponds to the JSON property `blockOwnerDeletion`
        # @return [Boolean]
        attr_accessor :block_owner_deletion
        alias_method :block_owner_deletion?, :block_owner_deletion
      
        # This is not supported or used by Cloud Run.
        # Corresponds to the JSON property `controller`
        # @return [Boolean]
        attr_accessor :controller
        alias_method :controller?, :controller
      
        # This is not supported or used by Cloud Run.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is not supported or used by Cloud Run.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This is not supported or used by Cloud Run.
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::RunV1::AuditConfig>]
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
      
      # Probe describes a health check to be performed against a container to
      # determine whether it is alive or ready to receive traffic.
      class Probe
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run. ExecAction describes a "run in container" action.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::RunV1::ExecAction]
        attr_accessor :exec
      
        # Minimum consecutive failures for the probe to be considered failed after
        # having succeeded. Defaults to 3. Minimum value is 1.
        # Corresponds to the JSON property `failureThreshold`
        # @return [Fixnum]
        attr_accessor :failure_threshold
      
        # GRPCAction describes an action involving a GRPC port.
        # Corresponds to the JSON property `grpc`
        # @return [Google::Apis::RunV1::GrpcAction]
        attr_accessor :grpc
      
        # HTTPGetAction describes an action based on HTTP Get requests.
        # Corresponds to the JSON property `httpGet`
        # @return [Google::Apis::RunV1::HttpGetAction]
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
      
        # Minimum consecutive successes for the probe to be considered successful after
        # having failed. Must be 1 if set.
        # Corresponds to the JSON property `successThreshold`
        # @return [Fixnum]
        attr_accessor :success_threshold
      
        # TCPSocketAction describes an action based on opening a socket
        # Corresponds to the JSON property `tcpSocket`
        # @return [Google::Apis::RunV1::TcpSocketAction]
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
          @exec = args[:exec] if args.key?(:exec)
          @failure_threshold = args[:failure_threshold] if args.key?(:failure_threshold)
          @grpc = args[:grpc] if args.key?(:grpc)
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
      
        # Only memory and CPU are supported. Limits describes the maximum amount of
        # compute resources allowed. The values of the map is string form of the '
        # quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/
        # staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        # Only memory and CPU are supported. Requests describes the minimum amount of
        # compute resources required. If Requests is omitted for a container, it
        # defaults to Limits if that is explicitly specified, otherwise to an
        # implementation-defined value. The values of the map is string form of the '
        # quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/
        # staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
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
      # Configuration. See also: https://github.com/knative/specs/blob/main/specs/
      # serving/overview.md#revision
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
      
        # ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
        # requests per container instance of the Revision. If not specified, defaults to
        # 80.
        # Corresponds to the JSON property `containerConcurrency`
        # @return [Fixnum]
        attr_accessor :container_concurrency
      
        # Containers holds the single container that defines the unit of execution for
        # this Revision. In the context of a Revision, we disallow a number of fields on
        # this Container, including: name and lifecycle. In Cloud Run, only a single
        # container may be provided. The runtime contract is documented here: https://
        # github.com/knative/specs/blob/main/specs/serving/runtime-contract.md
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV1::Container>]
        attr_accessor :containers
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `enableServiceLinks`
        # @return [Boolean]
        attr_accessor :enable_service_links
        alias_method :enable_service_links?, :enable_service_links
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `imagePullSecrets`
        # @return [Array<Google::Apis::RunV1::LocalObjectReference>]
        attr_accessor :image_pull_secrets
      
        # Email address of the IAM service account associated with the revision of the
        # service. The service account represents the identity of the running revision,
        # and determines what permissions the revision has. If not provided, the
        # revision will use the project's default service account.
        # Corresponds to the JSON property `serviceAccountName`
        # @return [String]
        attr_accessor :service_account_name
      
        # TimeoutSeconds holds the max duration the instance is allowed for responding
        # to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed
        # value is 3600 seconds (1 hour).
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
          @enable_service_links = args[:enable_service_links] if args.key?(:enable_service_links)
          @image_pull_secrets = args[:image_pull_secrets] if args.key?(:image_pull_secrets)
          @service_account_name = args[:service_account_name] if args.key?(:service_account_name)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # RevisionStatus communicates the observed state of the Revision (from the
      # controller).
      class RevisionStatus
        include Google::Apis::Core::Hashable
      
        # Conditions communicate information about ongoing/complete reconciliation
        # processes that bring the "spec" inline with the observed state of the world.
        # As a Revision is being prepared, it will incrementally update conditions.
        # Revision-specific conditions include: * `ResourcesAvailable`: `True` when
        # underlying resources have been provisioned. * `ContainerHealthy`: `True` when
        # the Revision readiness check completes. * `Active`: `True` when the Revision
        # may receive traffic.
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
      
        # Optional. Specifies the generated logging url for this particular revision
        # based on the revision url template specified in the controller's config.
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
      # also: https://github.com/knative/specs/blob/main/specs/serving/overview.md#
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
        # True or False. Note that providing a TrafficTarget that has latest_revision=
        # True will result in a Route that does not increment either its metadata.
        # generation or its observedGeneration, as new "latest ready" revisions from the
        # Configuration are processed without an update to the Route's spec.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Traffic holds the configured traffic distribution. These entries will always
        # contain RevisionName references. When ConfigurationName appears in the spec,
        # this will hold the LatestReadyRevisionName that was last observed.
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
      
      # Request message for creating a new execution of a job.
      class RunJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the
      # environment variables with. The contents of the target Secret's Data field
      # will represent the key-value pairs as environment variables.
      class SecretEnvSource
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run. LocalObjectReference contains enough information
        # to let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
        attr_accessor :local_object_reference
      
        # The Secret to select from.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specify whether the Secret must be defined
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
      
        # Required. A Cloud Secret Manager secret version. Must be 'latest' for the
        # latest version, an integer for a specific version, or a version alias. The key
        # of the secret to select from. Must be a valid secret key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Not supported by Cloud Run. LocalObjectReference contains enough information
        # to let you locate the referenced object inside the same namespace.
        # Corresponds to the JSON property `localObjectReference`
        # @return [Google::Apis::RunV1::LocalObjectReference]
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
      
        # Specify whether the Secret or its key must be defined.
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
      
      # A volume representing a secret stored in Google Secret Manager. The secret's
      # value will be presented as the content of a file whose name is defined in the
      # item path. If no items are defined, the name of the file is the secret_name.
      # The contents of the target Secret's Data field will be presented in a volume
      # as files using the keys in the Data field as the file names.
      class SecretVolumeSource
        include Google::Apis::Core::Hashable
      
        # Integer representation of mode bits to use on created files by default. Must
        # be a value between 01 and 0777 (octal). If 0 or not set, it will default to
        # 0444. Directories within the path are not affected by this setting. Notes *
        # Internally, a umask of 0222 will be applied to any non-zero value. * This is
        # an integer representation of the mode bits. So, the octal integer value should
        # look exactly as the chmod numeric notation with a leading zero. Some examples:
        # for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=
        # rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx),
        # set to 0755 (octal) or 493 (base-10). * This might be in conflict with other
        # options that affect the file mode, like fsGroup, and the result can be other
        # mode bits set.
        # Corresponds to the JSON property `defaultMode`
        # @return [Fixnum]
        attr_accessor :default_mode
      
        # A list of secret versions to mount in the volume. If no items are specified,
        # the volume will expose a file with the same name as the secret name. The
        # contents of the file will be the data in the latest version of the secret. If
        # items are specified, the key will be used as the version to fetch from Cloud
        # Secret Manager and the path will be the name of the file exposed in the volume.
        # When items are defined, they must specify both a key and a path.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RunV1::KeyToPath>]
        attr_accessor :items
      
        # Not supported by Cloud Run.
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
      
      # Not supported by Cloud Run. SecurityContext holds security configuration that
      # will be applied to a container. Some fields are present in both
      # SecurityContext and PodSecurityContext. When both are set, the values in
      # SecurityContext take precedence.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # The UID to run the entrypoint of the container process. Defaults to user
        # specified in image metadata if unspecified. May also be set in
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
      # See also: https://github.com/knative/serving/blob/main/docs/spec/overview.md#
      # service
      class Service
        include Google::Apis::Core::Hashable
      
        # The API version for this call. It must be "serving.knative.dev/v1".
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The kind of resource. It must be "Service".
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
      
        # Specifies how to distribute traffic over a collection of Knative Revisions and
        # Configurations to the Service's main URL.
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
      
        # Conditions communicate information about ongoing/complete reconciliation
        # processes that bring the `spec` inline with the observed state of the world.
        # Service-specific conditions include: * `ConfigurationsReady`: `True` when the
        # underlying Configuration is ready. * `RoutesReady`: `True` when the underlying
        # Route is ready. * `Ready`: `True` when all underlying resources are ready.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # Name of the last revision that was created from this Service's Configuration.
        # It might not be ready yet, for that use LatestReadyRevisionName.
        # Corresponds to the JSON property `latestCreatedRevisionName`
        # @return [String]
        attr_accessor :latest_created_revision_name
      
        # Name of the latest Revision from this Service's Configuration that has had its
        # `Ready` condition become `True`.
        # Corresponds to the JSON property `latestReadyRevisionName`
        # @return [String]
        attr_accessor :latest_ready_revision_name
      
        # Returns the generation last fully processed by the system. This will only
        # match metadata.generation when reconciliation is complete. Clients polling for
        # completed reconciliation should poll until observedGeneration = metadata.
        # generation and the Ready condition's status is True or False.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Holds the configured traffic distribution. These entries will always contain
        # RevisionName references. When ConfigurationName appears in the spec, this will
        # hold the LatestReadyRevisionName that we last observed.
        # Corresponds to the JSON property `traffic`
        # @return [Array<Google::Apis::RunV1::TrafficTarget>]
        attr_accessor :traffic
      
        # URL that will distribute traffic over the provided traffic targets. It
        # generally has the form https://`route-hash`-`project-hash`-`cluster-level-
        # suffix`.a.run.app
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
      
      # Status is a return value for calls that don't return other objects.
      class Status
        include Google::Apis::Core::Hashable
      
        # Suggested HTTP return code for this status, 0 if not set.
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
      
        # A human-readable description of the status of this operation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Metadata for synthetic resources like List. In Cloud Run, all List Resources
        # Responses will have a ListMeta instead of ObjectMeta.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ListMeta]
        attr_accessor :metadata
      
        # A machine-readable description of why this operation is in the "Failure"
        # status. If this value is empty there is no information available. A Reason
        # clarifies an HTTP status code but does not override it.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Status of the operation. One of: "Success" or "Failure". More info: https://
        # git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#
        # spec-and-status
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
        # causes due to fields having multiple errors. Examples: "name" - the field "
        # name" on the current resource "items[0].name" - the field "name" on the first
        # array entry in "items"
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # A human-readable description of the cause of the error. This field may be
        # presented as-is to a reader.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A machine-readable description of the cause of the error. If this value is
        # empty there is no information available.
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
        # failure. Not all StatusReasons may provide detailed causes.
        # Corresponds to the JSON property `causes`
        # @return [Array<Google::Apis::RunV1::StatusCause>]
        attr_accessor :causes
      
        # The group attribute of the resource associated with the status StatusReason.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The kind attribute of the resource associated with the status StatusReason. On
        # some operations may differ from the requested resource Kind. More info: https:/
        # /git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#
        # types-kinds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name attribute of the resource associated with the status StatusReason (
        # when there is a single name which can be described).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If specified, the time in seconds before the operation should be retried. Some
        # errors may indicate the client must take an alternate action - for those
        # errors this field may indicate how long to wait before taking the alternate
        # action.
        # Corresponds to the JSON property `retryAfterSeconds`
        # @return [Fixnum]
        attr_accessor :retry_after_seconds
      
        # UID of the resource. (when there is a single resource which can be described).
        # More info: https://kubernetes.io/docs/user-guide/identifiers#uids
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
      
      # TCPSocketAction describes an action based on opening a socket
      class TcpSocketAction
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Port number to access on the container. Number must be in the range 1 to 65535.
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
      
      # Task represents a single run of a container to completion.
      class Task
        include Google::Apis::Core::Hashable
      
        # Optional. APIVersion defines the versioned schema of this representation of an
        # object. Servers should convert recognized schemas to the latest internal value,
        # and may reject unrecognized values. More info: https://git.k8s.io/community/
        # contributors/devel/sig-architecture/api-conventions.md#resources
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/
        # community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted
        # resources must have, which includes all objects users must create.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::RunV1::ObjectMeta]
        attr_accessor :metadata
      
        # TaskSpec is a description of a task.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::TaskSpec]
        attr_accessor :spec
      
        # TaskStatus represents the status of a task.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RunV1::TaskStatus]
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
      
      # Result of a task attempt.
      class TaskAttemptResult
        include Google::Apis::Core::Hashable
      
        # Optional. The exit code of this attempt. This may be unset if the container
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
        # @return [Google::Apis::RunV1::GoogleRpcStatus]
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
      
      # TaskSpec is a description of a task.
      class TaskSpec
        include Google::Apis::Core::Hashable
      
        # Optional. List of containers belonging to the task. We disallow a number of
        # fields on this Container. Only a single container may be provided.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV1::Container>]
        attr_accessor :containers
      
        # Optional. Number of retries allowed per task, before marking this job failed.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Optional. Email address of the IAM service account associated with the task of
        # a job execution. The service account represents the identity of the running
        # task, and determines what permissions the task has. If not provided, the task
        # will use the project's default service account.
        # Corresponds to the JSON property `serviceAccountName`
        # @return [String]
        attr_accessor :service_account_name
      
        # Optional. Duration in seconds the task may be active before the system will
        # actively try to mark it failed and kill associated containers. This applies
        # per attempt of a task, meaning each retry can run for the full timeout.
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        # Optional. List of volumes that can be mounted by containers belonging to the
        # task. More info: https://kubernetes.io/docs/concepts/storage/volumes
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @max_retries = args[:max_retries] if args.key?(:max_retries)
          @service_account_name = args[:service_account_name] if args.key?(:service_account_name)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # TaskStatus represents the status of a task.
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Optional. Represents time when the task was completed. It is not guaranteed to
        # be set in happens-before order across separate operations. It is represented
        # in RFC3339 form and is in UTC.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Optional. Conditions communicate information about ongoing/complete
        # reconciliation processes that bring the "spec" inline with the observed state
        # of the world. Task-specific conditions include: * `Started`: `True` when the
        # task has started to execute. * `Completed`: `True` when the task has succeeded.
        # `False` when the task has failed.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::RunV1::GoogleCloudRunV1Condition>]
        attr_accessor :conditions
      
        # Required. Index of the task, unique per execution, and beginning at 0.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Result of a task attempt.
        # Corresponds to the JSON property `lastAttemptResult`
        # @return [Google::Apis::RunV1::TaskAttemptResult]
        attr_accessor :last_attempt_result
      
        # Optional. URI where logs for this task can be found in Cloud Console.
        # Corresponds to the JSON property `logUri`
        # @return [String]
        attr_accessor :log_uri
      
        # Optional. The 'generation' of the task that was last processed by the
        # controller.
        # Corresponds to the JSON property `observedGeneration`
        # @return [Fixnum]
        attr_accessor :observed_generation
      
        # Optional. The number of times this task was retried. Instances are retried
        # when they fail up to the maxRetries limit.
        # Corresponds to the JSON property `retried`
        # @return [Fixnum]
        attr_accessor :retried
      
        # Optional. Represents time when the task started to run. It is not guaranteed
        # to be set in happens-before order across separate operations. It is
        # represented in RFC3339 form and is in UTC.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @index = args[:index] if args.key?(:index)
          @last_attempt_result = args[:last_attempt_result] if args.key?(:last_attempt_result)
          @log_uri = args[:log_uri] if args.key?(:log_uri)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @retried = args[:retried] if args.key?(:retried)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # TaskTemplateSpec describes the data a task should have when created from a
      # template.
      class TaskTemplateSpec
        include Google::Apis::Core::Hashable
      
        # TaskSpec is a description of a task.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::RunV1::TaskSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
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
      
        # [Deprecated] Not supported in Cloud Run. It must be empty.
        # Corresponds to the JSON property `configurationName`
        # @return [String]
        attr_accessor :configuration_name
      
        # Uses the "status.latestReadyRevisionName" of the Service to determine the
        # traffic target. When it changes, traffic will automatically migrate from the
        # prior "latest ready" revision to the new one. This field must be false if
        # RevisionName is set. This field defaults to true otherwise. If the field is
        # set to true on Status, this means that the Revision was resolved from the
        # Service's latest ready revision.
        # Corresponds to the JSON property `latestRevision`
        # @return [Boolean]
        attr_accessor :latest_revision
        alias_method :latest_revision?, :latest_revision
      
        # Percent specifies percent of the traffic to this Revision or Configuration.
        # This defaults to zero if unspecified.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        # Points this traffic target to a specific Revision. This field is mutually
        # exclusive with latest_revision.
        # Corresponds to the JSON property `revisionName`
        # @return [String]
        attr_accessor :revision_name
      
        # Tag is used to expose a dedicated url for referencing this target exclusively.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # Output only. URL displays the URL for accessing tagged traffic targets. URL is
        # displayed in status, and is disallowed on spec. URL must contain a scheme (e.g.
        # https://) and a hostname, but may not contain anything else (e.g. basic auth,
        # url path, etc.)
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
      
      # Volume represents a named volume in a container.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Not supported by Cloud Run. Adapts a ConfigMap into a volume. The contents of
        # the target ConfigMap's Data field will be presented in a volume as files using
        # the keys in the Data field as the file names, unless the items element is
        # populated with specific mappings of keys to paths.
        # Corresponds to the JSON property `configMap`
        # @return [Google::Apis::RunV1::ConfigMapVolumeSource]
        attr_accessor :config_map
      
        # Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A volume representing a secret stored in Google Secret Manager. The secret's
        # value will be presented as the content of a file whose name is defined in the
        # item path. If no items are defined, the name of the file is the secret_name.
        # The contents of the target Secret's Data field will be presented in a volume
        # as files using the keys in the Data field as the file names.
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
      
      # VolumeMount describes a mounting of a Volume within a container.
      class VolumeMount
        include Google::Apis::Core::Hashable
      
        # Required. Path within the container at which the volume should be mounted.
        # Must not contain ':'.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Required. The name of the volume. There must be a corresponding Volume with
        # the same name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Only true is accepted for Secret Volumes. Defaults to true for Secrets Volumes.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Path within the volume from which the container's volume should be mounted.
        # Defaults to "" (volume's root).
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
