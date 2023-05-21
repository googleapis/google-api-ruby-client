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
    module WorkstationsV1beta
      
      # An accelerator card attached to the instance.
      class Accelerator
        include Google::Apis::Core::Hashable
      
        # Number of accelerator cards exposed to the instance.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of accelerator resource to attach to the instance, for example, "nvidia-
        # tesla-p100".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @type = args[:type] if args.key?(:type)
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
        # @return [Array<Google::Apis::WorkstationsV1beta::AuditLogConfig>]
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
        # @return [Google::Apis::WorkstationsV1beta::Expr]
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
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Docker container.
      class Container
        include Google::Apis::Core::Hashable
      
        # Arguments passed to the entrypoint.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # If set, overrides the default ENTRYPOINT specified by the image.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # Environment variables passed to the container's entrypoint.
        # Corresponds to the JSON property `env`
        # @return [Hash<String,String>]
        attr_accessor :env
      
        # Docker image defining the container. This image must be accessible by the
        # service account specified in the workstation configuration.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # If set, overrides the USER specified in the image with the given uid.
        # Corresponds to the JSON property `runAsUser`
        # @return [Fixnum]
        attr_accessor :run_as_user
      
        # If set, overrides the default DIR specified by the image.
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
          @run_as_user = args[:run_as_user] if args.key?(:run_as_user)
          @working_dir = args[:working_dir] if args.key?(:working_dir)
        end
      end
      
      # A customer-managed encryption key for the Compute Engine resources of this
      # workstation configuration.
      class CustomerEncryptionKey
        include Google::Apis::Core::Hashable
      
        # Immutable. The name of the Google Cloud KMS encryption key. For example, `
        # projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME`.
        # The key must be in the same region as the workstation configuration.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Immutable. The service account to use with the specified KMS key. We recommend
        # that you use a separate service account and follow KMS best practices. For
        # more information, see [Separation of duties](https://cloud.google.com/kms/docs/
        # separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`]
        # (https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#
        # --member).
        # Corresponds to the JSON property `kmsKeyServiceAccount`
        # @return [String]
        attr_accessor :kms_key_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @kms_key_service_account = args[:kms_key_service_account] if args.key?(:kms_key_service_account)
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
      
      # A set of Compute Engine Confidential VM instance options.
      class GceConfidentialInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Whether the instance has confidential compute enabled.
        # Corresponds to the JSON property `enableConfidentialCompute`
        # @return [Boolean]
        attr_accessor :enable_confidential_compute
        alias_method :enable_confidential_compute?, :enable_confidential_compute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_confidential_compute = args[:enable_confidential_compute] if args.key?(:enable_confidential_compute)
        end
      end
      
      # A runtime using a Compute Engine instance.
      class GceInstance
        include Google::Apis::Core::Hashable
      
        # A list of the type and count of accelerator cards attached to the instance.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::WorkstationsV1beta::Accelerator>]
        attr_accessor :accelerators
      
        # Size of the boot disk in GB. Defaults to 50.
        # Corresponds to the JSON property `bootDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :boot_disk_size_gb
      
        # A set of Compute Engine Confidential VM instance options.
        # Corresponds to the JSON property `confidentialInstanceConfig`
        # @return [Google::Apis::WorkstationsV1beta::GceConfidentialInstanceConfig]
        attr_accessor :confidential_instance_config
      
        # Whether instances have no public IP address.
        # Corresponds to the JSON property `disablePublicIpAddresses`
        # @return [Boolean]
        attr_accessor :disable_public_ip_addresses
        alias_method :disable_public_ip_addresses?, :disable_public_ip_addresses
      
        # The name of a Compute Engine machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Number of instances to pool for faster workstation startup.
        # Corresponds to the JSON property `poolSize`
        # @return [Fixnum]
        attr_accessor :pool_size
      
        # Output only. Number of instances currently available in the pool for faster
        # workstation startup.
        # Corresponds to the JSON property `pooledInstances`
        # @return [Fixnum]
        attr_accessor :pooled_instances
      
        # Email address of the service account used on VM instances used to support this
        # configuration. If not set, VMs run with a Google-managed service account. This
        # service account must have permission to pull the specified container image;
        # otherwise, the image must be publicly accessible.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # A set of Compute Engine Shielded instance options.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::WorkstationsV1beta::GceShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Network tags to add to the Compute Engine machines backing the Workstations.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @boot_disk_size_gb = args[:boot_disk_size_gb] if args.key?(:boot_disk_size_gb)
          @confidential_instance_config = args[:confidential_instance_config] if args.key?(:confidential_instance_config)
          @disable_public_ip_addresses = args[:disable_public_ip_addresses] if args.key?(:disable_public_ip_addresses)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @pool_size = args[:pool_size] if args.key?(:pool_size)
          @pooled_instances = args[:pooled_instances] if args.key?(:pooled_instances)
          @service_account = args[:service_account] if args.key?(:service_account)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # A PersistentDirectory backed by a Compute Engine regional persistent disk.
      class GceRegionalPersistentDisk
        include Google::Apis::Core::Hashable
      
        # Type of the disk to use. Defaults to pd-standard.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Type of file system that the disk should be formatted with. The workstation
        # image must support this file system type. Must be empty if source_snapshot is
        # set. Defaults to ext4.
        # Corresponds to the JSON property `fsType`
        # @return [String]
        attr_accessor :fs_type
      
        # What should happen to the disk after the workstation is deleted. Defaults to
        # DELETE.
        # Corresponds to the JSON property `reclaimPolicy`
        # @return [String]
        attr_accessor :reclaim_policy
      
        # Size of the disk in GB. Must be empty if source_snapshot is set. Defaults to
        # 200.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Name of the snapshot to use as the source for the disk. If set, size_gb and
        # fs_type must be empty.
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @fs_type = args[:fs_type] if args.key?(:fs_type)
          @reclaim_policy = args[:reclaim_policy] if args.key?(:reclaim_policy)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
        end
      end
      
      # A set of Compute Engine Shielded instance options.
      class GceShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Whether the instance has integrity monitoring enabled.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Whether the instance has Secure Boot enabled.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        # Whether the instance has the vTPM enabled.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_secure_boot = args[:enable_secure_boot] if args.key?(:enable_secure_boot)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
        end
      end
      
      # Request message for GenerateAccessToken.
      class GenerateAccessTokenRequest
        include Google::Apis::Core::Hashable
      
        # Desired expiration time of the access token. This value must be at most 24
        # hours in the future. If a value is not specified, the token's expiration time
        # will be set to a default value of 1 hour in the future.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Desired lifetime duration of the access token. This value must be at most 24
        # hours. If a value is not specified, the token's lifetime will be set to a
        # default value of 1 hour.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Response message for GenerateAccessToken.
      class GenerateAccessTokenResponse
        include Google::Apis::Core::Hashable
      
        # The generated bearer access token. To use this token, include it in an
        # Authorization header of an HTTP request sent to the associated workstation's
        # hostname—for example, `Authorization: Bearer `.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # Time at which the generated token will expire.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
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
      
      # Runtime host for a workstation.
      class Host
        include Google::Apis::Core::Hashable
      
        # A runtime using a Compute Engine instance.
        # Corresponds to the JSON property `gceInstance`
        # @return [Google::Apis::WorkstationsV1beta::GceInstance]
        attr_accessor :gce_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gce_instance = args[:gce_instance] if args.key?(:gce_instance)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::WorkstationsV1beta::Operation>]
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
      
      # Response message for ListUsableWorkstationConfigs.
      class ListUsableWorkstationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The requested configs.
        # Corresponds to the JSON property `workstationConfigs`
        # @return [Array<Google::Apis::WorkstationsV1beta::WorkstationConfig>]
        attr_accessor :workstation_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workstation_configs = args[:workstation_configs] if args.key?(:workstation_configs)
        end
      end
      
      # Response message for ListUsableWorkstations.
      class ListUsableWorkstationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The requested workstations.
        # Corresponds to the JSON property `workstations`
        # @return [Array<Google::Apis::WorkstationsV1beta::Workstation>]
        attr_accessor :workstations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workstations = args[:workstations] if args.key?(:workstations)
        end
      end
      
      # Response message for ListWorkstationClusters.
      class ListWorkstationClustersResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The requested workstation clusters.
        # Corresponds to the JSON property `workstationClusters`
        # @return [Array<Google::Apis::WorkstationsV1beta::WorkstationCluster>]
        attr_accessor :workstation_clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workstation_clusters = args[:workstation_clusters] if args.key?(:workstation_clusters)
        end
      end
      
      # Response message for ListWorkstationConfigs.
      class ListWorkstationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The requested configs.
        # Corresponds to the JSON property `workstationConfigs`
        # @return [Array<Google::Apis::WorkstationsV1beta::WorkstationConfig>]
        attr_accessor :workstation_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workstation_configs = args[:workstation_configs] if args.key?(:workstation_configs)
        end
      end
      
      # Response message for ListWorkstations.
      class ListWorkstationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The requested workstations.
        # Corresponds to the JSON property `workstations`
        # @return [Array<Google::Apis::WorkstationsV1beta::Workstation>]
        attr_accessor :workstations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workstations = args[:workstations] if args.key?(:workstations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::WorkstationsV1beta::Status]
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
      
      # Metadata for long-running operations.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Time that the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time that the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # A directory to persist across workstation sessions.
      class PersistentDirectory
        include Google::Apis::Core::Hashable
      
        # A PersistentDirectory backed by a Compute Engine regional persistent disk.
        # Corresponds to the JSON property `gcePd`
        # @return [Google::Apis::WorkstationsV1beta::GceRegionalPersistentDisk]
        attr_accessor :gce_pd
      
        # Location of this directory in the running workstation.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gce_pd = args[:gce_pd] if args.key?(:gce_pd)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
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
        # @return [Array<Google::Apis::WorkstationsV1beta::AuditConfig>]
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
        # @return [Array<Google::Apis::WorkstationsV1beta::Binding>]
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
      
      # Configuration options for private clusters.
      class PrivateClusterConfig
        include Google::Apis::Core::Hashable
      
        # Additional projects that are allowed to attach to the workstation cluster's
        # service attachment. By default, the workstation cluster's project and the VPC
        # host project (if different) are allowed.
        # Corresponds to the JSON property `allowedProjects`
        # @return [Array<String>]
        attr_accessor :allowed_projects
      
        # Output only. Hostname for the workstation cluster. This field will be
        # populated only when private endpoint is enabled. To access workstations in the
        # cluster, create a new DNS zone mapping this domain name to an internal IP
        # address and a forwarding rule mapping that address to the service attachment.
        # Corresponds to the JSON property `clusterHostname`
        # @return [String]
        attr_accessor :cluster_hostname
      
        # Immutable. Whether Workstations endpoint is private.
        # Corresponds to the JSON property `enablePrivateEndpoint`
        # @return [Boolean]
        attr_accessor :enable_private_endpoint
        alias_method :enable_private_endpoint?, :enable_private_endpoint
      
        # Output only. Service attachment URI for the workstation cluster. The service
        # attachemnt is created when private endpoint is enabled. To access workstations
        # in the cluster, configure access to the managed service using [Private Service
        # Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-
        # services).
        # Corresponds to the JSON property `serviceAttachmentUri`
        # @return [String]
        attr_accessor :service_attachment_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_projects = args[:allowed_projects] if args.key?(:allowed_projects)
          @cluster_hostname = args[:cluster_hostname] if args.key?(:cluster_hostname)
          @enable_private_endpoint = args[:enable_private_endpoint] if args.key?(:enable_private_endpoint)
          @service_attachment_uri = args[:service_attachment_uri] if args.key?(:service_attachment_uri)
        end
      end
      
      # A readiness check to be performed on a workstation.
      class ReadinessCheck
        include Google::Apis::Core::Hashable
      
        # Path to which the request should be sent.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Port to which the request should be sent.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @port = args[:port] if args.key?(:port)
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
        # @return [Google::Apis::WorkstationsV1beta::Policy]
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
      
      # Request message for StartWorkstation.
      class StartWorkstationRequest
        include Google::Apis::Core::Hashable
      
        # If set, the request will be rejected if the latest version of the workstation
        # on the server does not have this ETag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # If set, validate the request and preview the review, but do not actually apply
        # it.
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # Request message for StopWorkstation.
      class StopWorkstationRequest
        include Google::Apis::Core::Hashable
      
        # If set, the request will be rejected if the latest version of the workstation
        # on the server does not have this ETag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # If set, validate the request and preview the review, but do not actually apply
        # it.
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
      
      # A single instance of a developer workstation with its own persistent storage.
      class Workstation
        include Google::Apis::Core::Hashable
      
        # Client-specified annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Time when this resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when this resource was soft-deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Human-readable name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Environment variables passed to the workstation container's entrypoint.
        # Corresponds to the JSON property `env`
        # @return [Hash<String,String>]
        attr_accessor :env
      
        # Checksum computed by the server. May be sent on update and delete requests to
        # make sure that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Host to which clients can send HTTPS traffic that will be
        # received by the workstation. Authorized traffic will be received to the
        # workstation as HTTP on port 80. To send traffic to a different port, clients
        # may prefix the host with the destination port in the format ``port`-`host``.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Client-specified labels that are applied to the resource and that are also
        # propagated to the underlying Compute Engine resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Full name of this resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicates whether this resource is currently being updated to
        # match its intended state.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Current state of the workstation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A system-assigned unique identified for this resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time when this resource was most recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @env = args[:env] if args.key?(:env)
          @etag = args[:etag] if args.key?(:etag)
          @host = args[:host] if args.key?(:host)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A grouping of workstation configurations and the associated workstations in
      # that region.
      class WorkstationCluster
        include Google::Apis::Core::Hashable
      
        # Client-specified annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Status conditions describing the current resource state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::WorkstationsV1beta::Status>]
        attr_accessor :conditions
      
        # Output only. The private IP address of the control plane for this cluster.
        # Workstation VMs need access to this IP address to work with the service, so
        # make sure that your firewall rules allow egress from the workstation VMs to
        # this address.
        # Corresponds to the JSON property `controlPlaneIp`
        # @return [String]
        attr_accessor :control_plane_ip
      
        # Output only. Time when this resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Whether this resource is in degraded mode, in which case it may
        # require user action to restore full functionality. Details can be found in the
        # `conditions` field.
        # Corresponds to the JSON property `degraded`
        # @return [Boolean]
        attr_accessor :degraded
        alias_method :degraded?, :degraded
      
        # Output only. Time when this resource was soft-deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Human-readable name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Checksum computed by the server. May be sent on update and delete requests to
        # make sure that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Client-specified labels that are applied to the resource and that are also
        # propagated to the underlying Compute Engine resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Full name of this resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Name of the Compute Engine network in which instances associated
        # with this cluster will be created.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Configuration options for private clusters.
        # Corresponds to the JSON property `privateClusterConfig`
        # @return [Google::Apis::WorkstationsV1beta::PrivateClusterConfig]
        attr_accessor :private_cluster_config
      
        # Output only. Indicates whether this resource is currently being updated to
        # match its intended state.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Immutable. Name of the Compute Engine subnetwork in which instances associated
        # with this cluster will be created. Must be part of the subnetwork specified
        # for this cluster.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Output only. A system-assigned unique identified for this resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time when this resource was most recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @conditions = args[:conditions] if args.key?(:conditions)
          @control_plane_ip = args[:control_plane_ip] if args.key?(:control_plane_ip)
          @create_time = args[:create_time] if args.key?(:create_time)
          @degraded = args[:degraded] if args.key?(:degraded)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @private_cluster_config = args[:private_cluster_config] if args.key?(:private_cluster_config)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A set of configuration options describing how a workstation will be run.
      # Workstation configurations are intended to be shared across multiple
      # workstations.
      class WorkstationConfig
        include Google::Apis::Core::Hashable
      
        # Client-specified annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Status conditions describing the current resource state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::WorkstationsV1beta::Status>]
        attr_accessor :conditions
      
        # A Docker container.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::WorkstationsV1beta::Container]
        attr_accessor :container
      
        # Output only. Time when this resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Whether this resource is in degraded mode, in which case it may
        # require user action to restore full functionality. Details can be found in the
        # `conditions` field.
        # Corresponds to the JSON property `degraded`
        # @return [Boolean]
        attr_accessor :degraded
        alias_method :degraded?, :degraded
      
        # Output only. Time when this resource was soft-deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Human-readable name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether to enable linux auditd logging on the workstation. When enabled, a
        # service account must also be specified that has logging.buckets.write
        # permission on the project. Operating system audit logging is distinct from [
        # Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
        # Corresponds to the JSON property `enableAuditAgent`
        # @return [Boolean]
        attr_accessor :enable_audit_agent
        alias_method :enable_audit_agent?, :enable_audit_agent
      
        # A customer-managed encryption key for the Compute Engine resources of this
        # workstation configuration.
        # Corresponds to the JSON property `encryptionKey`
        # @return [Google::Apis::WorkstationsV1beta::CustomerEncryptionKey]
        attr_accessor :encryption_key
      
        # Checksum computed by the server. May be sent on update and delete requests to
        # make sure that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Runtime host for a workstation.
        # Corresponds to the JSON property `host`
        # @return [Google::Apis::WorkstationsV1beta::Host]
        attr_accessor :host
      
        # How long to wait before automatically stopping an instance that hasn't
        # received any user traffic. A value of 0 indicates that this instance should
        # never time out due to idleness. Defaults to 20 minutes.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # Client-specified labels that are applied to the resource and that are also
        # propagated to the underlying Compute Engine resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Full name of this resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Directories to persist across workstation sessions.
        # Corresponds to the JSON property `persistentDirectories`
        # @return [Array<Google::Apis::WorkstationsV1beta::PersistentDirectory>]
        attr_accessor :persistent_directories
      
        # Readiness checks to perform when starting a workstation using this workstation
        # configuration. Mark a workstation as running only after all specified
        # readiness checks return 200 status codes.
        # Corresponds to the JSON property `readinessChecks`
        # @return [Array<Google::Apis::WorkstationsV1beta::ReadinessCheck>]
        attr_accessor :readiness_checks
      
        # Output only. Indicates whether this resource is currently being updated to
        # match its intended state.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # How long to wait before automatically stopping a workstation after it started.
        # A value of 0 indicates that workstations using this configuration should never
        # time out. Must be greater than 0 and less than 24 hours if encryption_key is
        # set. Defaults to 12 hours.
        # Corresponds to the JSON property `runningTimeout`
        # @return [String]
        attr_accessor :running_timeout
      
        # Output only. A system-assigned unique identified for this resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time when this resource was most recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @conditions = args[:conditions] if args.key?(:conditions)
          @container = args[:container] if args.key?(:container)
          @create_time = args[:create_time] if args.key?(:create_time)
          @degraded = args[:degraded] if args.key?(:degraded)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_audit_agent = args[:enable_audit_agent] if args.key?(:enable_audit_agent)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @etag = args[:etag] if args.key?(:etag)
          @host = args[:host] if args.key?(:host)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @persistent_directories = args[:persistent_directories] if args.key?(:persistent_directories)
          @readiness_checks = args[:readiness_checks] if args.key?(:readiness_checks)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @running_timeout = args[:running_timeout] if args.key?(:running_timeout)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
