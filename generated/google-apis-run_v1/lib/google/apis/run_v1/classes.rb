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
      # domain, verify ownership via [Search Console](https://search.google.com/search-
      # console/welcome).
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
      
      # Storage volume source using the Container Storage Interface.
      class CsiVolumeSource
        include Google::Apis::Core::Hashable
      
        # name of the CSI driver for the requested storage system. Cloud Run supports
        # the following drivers: * gcsfuse.run.googleapis.com : Mount a Cloud Storage
        # Bucket as a volume.
        # Corresponds to the JSON property `driver`
        # @return [String]
        attr_accessor :driver
      
        # If true, mount the volume as read only. Defaults to false.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # stores driver specific attributes. For Google Cloud Storage volumes, the
        # following attributes are supported: * bucketName: the name of the Cloud
        # Storage bucket to mount. The Cloud Run Service identity must have access to
        # this bucket.
        # Corresponds to the JSON property `volumeAttributes`
        # @return [Hash<String,String>]
        attr_accessor :volume_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @driver = args[:driver] if args.key?(:driver)
          @read_only = args[:read_only] if args.key?(:read_only)
          @volume_attributes = args[:volume_attributes] if args.key?(:volume_attributes)
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
      # s name.
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
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
        # from a template.
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
        # assumed.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :
        # latest tag is specified, or IfNotPresent otherwise.
        # Corresponds to the JSON property `imagePullPolicy`
        # @return [String]
        attr_accessor :image_pull_policy
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `livenessProbe`
        # @return [Google::Apis::RunV1::Probe]
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
      
      # Per container override specification.
      class ContainerOverride
        include Google::Apis::Core::Hashable
      
        # Arguments to the entrypoint. The specified arguments replace and override any
        # existing entrypoint arguments. Must be empty if `clear_args` is set to true.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. Set to True to clear all existing arguments.
        # Corresponds to the JSON property `clearArgs`
        # @return [Boolean]
        attr_accessor :clear_args
        alias_method :clear_args?, :clear_args
      
        # List of environment variables to set in the container. All specified
        # environment variables are merged with existing environment variables. When the
        # specified environment variables exist, these values override any existing
        # values.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::RunV1::EnvVar>]
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
      class ContainerPort
        include Google::Apis::Core::Hashable
      
        # Port number the container listens on. If present, this must be a valid port
        # number, 0 < x < 65536. If not present, it will default to port 8080. For more
        # information, see https://cloud.google.com/run/docs/container-contract#port
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
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when
      # the sandbox is taken down, the data is destroyed with it (it does not persist
      # across sandbox runs).
      class EmptyDirVolumeSource
        include Google::Apis::Core::Hashable
      
        # The medium on which the data is stored. The default is "" which means to use
        # the node's default medium. Must be an empty string (default) or Memory. More
        # info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
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
      
        # Required. Name of the environment variable.
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
        # and may reject unrecognized values.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
        # task signals the success of the execution. Defaults to 1.
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
      # when created from a job.
      class ExecutionTemplateSpec
        include Google::Apis::Core::Hashable
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
      
        # Service is the name of the service to place in the gRPC HealthCheckRequest. If
        # this is not specified, the default behavior is defined by gRPC.
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
      
        # type is used to communicate the status of the reconciliation process. Types
        # common to all resources include: * "Ready" or "Completed": True when the
        # Resource is ready.
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1MavenArtifact>]
        attr_accessor :maven_artifacts
      
        # A list of npm packages to be uploaded to Artifact Registry upon successful
        # completion of all build steps. Npm packages in the specified paths will be
        # uploaded to the specified Artifact Registry repository using the builder
        # service account's credentials. If any packages fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `npmPackages`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1NpmPackage>]
        attr_accessor :npm_packages
      
        # Files in the workspace to upload to Cloud Storage upon successful completion
        # of all build steps.
        # Corresponds to the JSON property `objects`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ArtifactObjects]
        attr_accessor :objects
      
        # A list of Python packages to be uploaded to Artifact Registry upon successful
        # completion of all build steps. The build service account credentials will be
        # used to perform the upload. If any objects fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PythonPackage>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildApproval]
        attr_accessor :approval
      
        # Artifacts produced by a build that should be uploaded upon successful
        # completion of all build steps.
        # Corresponds to the JSON property `artifacts`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Artifacts]
        attr_accessor :artifacts
      
        # Secrets and secret environment variables.
        # Corresponds to the JSON property `availableSecrets`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secrets]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FailureInfo]
        attr_accessor :failure_info
      
        # Output only. Time at which execution of the build was finished. The difference
        # between finish_time and start_time is the duration of the build's execution.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # GitConfig is a configuration for git operations.
        # Corresponds to the JSON property `gitConfig`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitConfig]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildOptions]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Results]
        attr_accessor :results
      
        # Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is
        # the recommended technique for managing sensitive data with Cloud Build. Use `
        # available_secrets` to configure builds to access secrets from Secret Manager.
        # For instructions, see: https://cloud.google.com/cloud-build/docs/securing-
        # builds/use-secrets
        # Corresponds to the JSON property `secrets`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secret>]
        attr_accessor :secrets
      
        # IAM service account whose credentials will be used at build runtime. Must be
        # of the format `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``. ACCOUNT can
        # be email address or uniqueId of the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Location of the source in a supported storage service.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Source]
        attr_accessor :source
      
        # Provenance of the source. Ways to find the original source, or verify that
        # some source was used for this build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SourceProvenance]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildStep>]
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
        # @return [Hash<String,Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan>]
        attr_accessor :timing
      
        # Output only. Non-fatal problems encountered during the execution of the build.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Warning>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalConfig]
        attr_accessor :config
      
        # ApprovalResult describes the decision and associated metadata of a manual
        # approval of a build.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalResult]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Build]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PoolOption]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
        attr_accessor :timing
      
        # List of volumes to mount into the build step. Each volume is created as an
        # empty volume prior to execution of the build step. Upon completion of the
        # build, volumes and their contents are discarded. Using a named volume in only
        # one step is not valid as it is indicative of a build request with an incorrect
        # configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Hash>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1HttpConfig]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GcsLocation]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuiltImage>]
        attr_accessor :images
      
        # Maven artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `mavenArtifacts`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact>]
        attr_accessor :maven_artifacts
      
        # Npm packages uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `npmPackages`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedNpmPackage>]
        attr_accessor :npm_packages
      
        # Number of non-container artifacts uploaded to Cloud Storage. Only populated
        # when artifacts are uploaded to Cloud Storage.
        # Corresponds to the JSON property `numArtifacts`
        # @return [Fixnum]
        attr_accessor :num_artifacts
      
        # Python artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedPythonPackage>]
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
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1InlineSecret>]
        attr_accessor :inline
      
        # Secrets in Secret Manager and associated secret environment variable.
        # Corresponds to the JSON property `secretManager`
        # @return [Array<Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SecretManagerSecret>]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository]
        attr_accessor :connected_repository
      
        # This config defines the location of a source through Developer Connect.
        # Corresponds to the JSON property `developerConnectConfig`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1DeveloperConnectConfig]
        attr_accessor :developer_connect_config
      
        # Location of the source in any accessible Git repository.
        # Corresponds to the JSON property `gitSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource]
        attr_accessor :git_source
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `repoSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource]
        attr_accessor :repo_source
      
        # Location of the source in an archive file in Cloud Storage.
        # Corresponds to the JSON property `storageSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource]
        attr_accessor :storage_source
      
        # Location of the source manifest in Cloud Storage. This feature is in Preview;
        # see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/
        # tree/master/gcs-fetcher).
        # Corresponds to the JSON property `storageSourceManifest`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest]
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
        # @return [Hash<String,Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes>]
        attr_accessor :file_hashes
      
        # Location of the source in a 2nd-gen Google Cloud Build repository resource.
        # Corresponds to the JSON property `resolvedConnectedRepository`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository]
        attr_accessor :resolved_connected_repository
      
        # Location of the source in any accessible Git repository.
        # Corresponds to the JSON property `resolvedGitSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource]
        attr_accessor :resolved_git_source
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `resolvedRepoSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource]
        attr_accessor :resolved_repo_source
      
        # Location of the source in an archive file in Cloud Storage.
        # Corresponds to the JSON property `resolvedStorageSource`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource]
        attr_accessor :resolved_storage_source
      
        # Location of the source manifest in Cloud Storage. This feature is in Preview;
        # see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/
        # tree/master/gcs-fetcher).
        # Corresponds to the JSON property `resolvedStorageSourceManifest`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan]
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
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::RunV1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::RunV1::GoogleRpcStatus]
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
      
        # Port number to access on the container. Number must be in the range 1 to 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
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
          @port = args[:port] if args.key?(:port)
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
        # and may reject unrecognized values.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
      
        # A unique string used as a suffix for creating a new execution. The Job will
        # become ready when the execution is successfully completed. The sum of job name
        # and token length must be fewer than 63 characters.
        # Corresponds to the JSON property `runExecutionToken`
        # @return [String]
        attr_accessor :run_execution_token
      
        # A unique string used as a suffix for creating a new execution. The Job will
        # become ready when the execution is successfully started. The sum of job name
        # and token length must be fewer than 63 characters.
        # Corresponds to the JSON property `startExecutionToken`
        # @return [String]
        attr_accessor :start_execution_token
      
        # ExecutionTemplateSpec describes the metadata and spec an Execution should have
        # when created from a job.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::RunV1::ExecutionTemplateSpec]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_execution_token = args[:run_execution_token] if args.key?(:run_execution_token)
          @start_execution_token = args[:start_execution_token] if args.key?(:start_execution_token)
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
        # is passed back to the server, it must be left unmodified.
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
      
        # Name of the referent.
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
      
      # A resource that represents a Google Cloud location.
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
      
      # Represents a persistent volume that will be mounted using NFS. This volume
      # will be shared between all instances of the resource and data will not be
      # deleted when the instance is shut down.
      class NfsVolumeSource
        include Google::Apis::Core::Hashable
      
        # Path that is exported by the NFS server.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # If true, mount the NFS volume as read only. Defaults to false.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Hostname or IP address of the NFS server.
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
      
      # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
      # must have, which includes all objects users must create.
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
        # container-dependencies`: Revision . * `run.googleapis.com/cpu-throttling`:
        # Revision. * `run.googleapis.com/custom-audiences`: Service. * `run.googleapis.
        # com/default-url-disabled`: Service. * `run.googleapis.com/description`:
        # Service. * `run.googleapis.com/encryption-key-shutdown-hours`: Revision * `run.
        # googleapis.com/encryption-key`: Revision, Execution. * `run.googleapis.com/
        # execution-environment`: Revision, Execution. * `run.googleapis.com/gc-traffic-
        # tags`: Service. * `run.googleapis.com/ingress`: Service. * `run.googleapis.com/
        # launch-stage`: Service, Job. * `run.googleapis.com/minScale`: Service (ALPHA) *
        # `run.googleapis.com/network-interfaces`: Revision, Execution. * `run.
        # googleapis.com/post-key-revocation-action-type`: Revision. * `run.googleapis.
        # com/secrets`: Revision, Execution. * `run.googleapis.com/secure-session-agent`:
        # Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `run.googleapis.
        # com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-access-connector`:
        # Revision, Execution. * `run.googleapis.com/vpc-access-egress`: Revision,
        # Execution.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Not supported by Cloud Run
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # UTC timestamp representing the server time when this object was created.
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
        # routes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The name of the resource. Name is required when creating top-level
        # resources (Service, Job), must be unique within a Cloud Run project/region,
        # and cannot be changed once created.
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
        # detection.
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # URL representing this object.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Unique, system-generated identifier for this resource.
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
      
      # RunJob Overrides that contains Execution fields to be overridden on the go.
      class Overrides
        include Google::Apis::Core::Hashable
      
        # Per container override specification.
        # Corresponds to the JSON property `containerOverrides`
        # @return [Array<Google::Apis::RunV1::ContainerOverride>]
        attr_accessor :container_overrides
      
        # The desired number of tasks the execution should run. Will replace existing
        # task_count value.
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # Duration in seconds the task may be active before the system will actively try
        # to mark it failed and kill associated containers. Will replace existing
        # timeout_seconds value.
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_overrides = args[:container_overrides] if args.key?(:container_overrides)
          @task_count = args[:task_count] if args.key?(:task_count)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
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
        # liveness probe is 3600. Maximum value for startup probe is 240.
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
        # Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds;
        # if period_seconds is not set, must be less or equal than 10.
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
      
        # Limits describes the maximum amount of compute resources allowed. Only 'cpu'
        # and 'memory' keys are supported. * For supported 'cpu' values, go to https://
        # cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and
        # syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
        # Corresponds to the JSON property `limits`
        # @return [Hash<String,String>]
        attr_accessor :limits
      
        # Requests describes the minimum amount of compute resources required. Only `cpu`
        # and `memory` are supported. If Requests is omitted for a container, it
        # defaults to Limits if that is explicitly specified, otherwise to an
        # implementation-defined value. * For supported 'cpu' values, go to https://
        # cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and
        # syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
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
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
      
        # Required. Containers holds the single container that defines the unit of
        # execution for this Revision. In the context of a Revision, we disallow a
        # number of fields on this Container, including: name and lifecycle. In Cloud
        # Run, only a single container may be provided.
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
      
        # Optional. The Node Selector configuration. Map of selector key to a value
        # which matches a node.
        # Corresponds to the JSON property `nodeSelector`
        # @return [Hash<String,String>]
        attr_accessor :node_selector
      
        # Runtime. Leave unset for default.
        # Corresponds to the JSON property `runtimeClassName`
        # @return [String]
        attr_accessor :runtime_class_name
      
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
          @node_selector = args[:node_selector] if args.key?(:node_selector)
          @runtime_class_name = args[:runtime_class_name] if args.key?(:runtime_class_name)
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
      
        # Output only. The configured number of instances running this revision. For
        # Cloud Run, this only includes instances provisioned using the minScale
        # annotation. It does not include instances created by autoscaling.
        # Corresponds to the JSON property `desiredReplicas`
        # @return [Fixnum]
        attr_accessor :desired_replicas
      
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
          @desired_replicas = args[:desired_replicas] if args.key?(:desired_replicas)
          @image_digest = args[:image_digest] if args.key?(:image_digest)
          @log_url = args[:log_url] if args.key?(:log_url)
          @observed_generation = args[:observed_generation] if args.key?(:observed_generation)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # RevisionTemplateSpec describes the data a revision should have when created
      # from a template.
      class RevisionTemplate
        include Google::Apis::Core::Hashable
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
      # latest ready" revision changes, and smoothly rolling out latest revisions.
      # Cloud Run currently supports referencing a single Configuration to
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
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
        # targets. It generally has the form: `https://`route-hash`-`project-hash`-`
        # cluster-level-suffix`.a.run.app`
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
      
        # RunJob Overrides that contains Execution fields to be overridden on the go.
        # Corresponds to the JSON property `overrides`
        # @return [Google::Apis::RunV1::Overrides]
        attr_accessor :overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overrides = args[:overrides] if args.key?(:overrides)
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
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
        # from a template.
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
      
        # Returns the generation last seen by the system. Clients polling for completed
        # reconciliation should poll until observedGeneration = metadata.generation and
        # the Ready condition's status is True or False.
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
        # generally has the form `https://`route-hash`-`project-hash`-`cluster-level-
        # suffix`.a.run.app`
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
      
        # Status of the operation. One of: "Success" or "Failure".
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
        # some operations may differ from the requested resource Kind.
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
        # and may reject unrecognized values.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. Kind is a string value representing the REST resource this object
        # represents. Servers may infer this from the endpoint the client submits
        # requests to. Cannot be updated. In CamelCase.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
        # must have, which includes all objects users must create.
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
        # fields on this Container.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::RunV1::Container>]
        attr_accessor :containers
      
        # Optional. Number of retries allowed per task, before marking this job failed.
        # Defaults to 3.
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
        # Defaults to 600 seconds.
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        # Optional. List of volumes that can be mounted by containers belonging to the
        # task.
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
      
        # Storage volume source using the Container Storage Interface.
        # Corresponds to the JSON property `csi`
        # @return [Google::Apis::RunV1::CsiVolumeSource]
        attr_accessor :csi
      
        # In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when
        # the sandbox is taken down, the data is destroyed with it (it does not persist
        # across sandbox runs).
        # Corresponds to the JSON property `emptyDir`
        # @return [Google::Apis::RunV1::EmptyDirVolumeSource]
        attr_accessor :empty_dir
      
        # Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a persistent volume that will be mounted using NFS. This volume
        # will be shared between all instances of the resource and data will not be
        # deleted when the instance is shut down.
        # Corresponds to the JSON property `nfs`
        # @return [Google::Apis::RunV1::NfsVolumeSource]
        attr_accessor :nfs
      
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
          @csi = args[:csi] if args.key?(:csi)
          @empty_dir = args[:empty_dir] if args.key?(:empty_dir)
          @name = args[:name] if args.key?(:name)
          @nfs = args[:nfs] if args.key?(:nfs)
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
      
        # Sets the mount to be read-only or read-write. Not used by Cloud Run.
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
