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
    module BigtableadminV2
      
      # A configuration object describing how Cloud Bigtable should treat traffic from
      # a particular end user application.
      class AppProfile
        include Google::Apis::Core::Hashable
      
        # Data Boost is a serverless compute capability that lets you run high-
        # throughput read jobs and queries on your Bigtable data, without impacting the
        # performance of the clusters that handle your application traffic. Data Boost
        # supports read-only use cases with single-cluster routing.
        # Corresponds to the JSON property `dataBoostIsolationReadOnly`
        # @return [Google::Apis::BigtableadminV2::DataBoostIsolationReadOnly]
        attr_accessor :data_boost_isolation_read_only
      
        # Long form description of the use case for this AppProfile.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Strongly validated etag for optimistic concurrency control. Preserve the value
        # returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the
        # request if there has been a modification in the mean time. The `update_mask`
        # of the request need not include `etag` for this protection to apply. See [
        # Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://
        # tools.ietf.org/html/rfc7232#section-2.3) for more details.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Read/write requests are routed to the nearest cluster in the instance, and
        # will fail over to the nearest cluster that is available in the event of
        # transient errors or delays. Clusters in a region are considered equidistant.
        # Choosing this option sacrifices read-your-writes consistency to improve
        # availability.
        # Corresponds to the JSON property `multiClusterRoutingUseAny`
        # @return [Google::Apis::BigtableadminV2::MultiClusterRoutingUseAny]
        attr_accessor :multi_cluster_routing_use_any
      
        # The unique name of the app profile, up to 50 characters long. Values are of
        # the form `projects/`project`/instances/`instance`/appProfiles/_a-zA-Z0-9*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field has been deprecated in favor of `standard_isolation.priority`. If
        # you set this field, `standard_isolation.priority` will be set instead. The
        # priority of requests sent using this app profile.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Unconditionally routes all read/write requests to a specific cluster. This
        # option preserves read-your-writes consistency but does not improve
        # availability.
        # Corresponds to the JSON property `singleClusterRouting`
        # @return [Google::Apis::BigtableadminV2::SingleClusterRouting]
        attr_accessor :single_cluster_routing
      
        # Standard options for isolating this app profile's traffic from other use cases.
        # Corresponds to the JSON property `standardIsolation`
        # @return [Google::Apis::BigtableadminV2::StandardIsolation]
        attr_accessor :standard_isolation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_boost_isolation_read_only = args[:data_boost_isolation_read_only] if args.key?(:data_boost_isolation_read_only)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @multi_cluster_routing_use_any = args[:multi_cluster_routing_use_any] if args.key?(:multi_cluster_routing_use_any)
          @name = args[:name] if args.key?(:name)
          @priority = args[:priority] if args.key?(:priority)
          @single_cluster_routing = args[:single_cluster_routing] if args.key?(:single_cluster_routing)
          @standard_isolation = args[:standard_isolation] if args.key?(:standard_isolation)
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
        # @return [Array<Google::Apis::BigtableadminV2::AuditLogConfig>]
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
      
      # An Authorized View of a Cloud Bigtable Table.
      class AuthorizedView
        include Google::Apis::Core::Hashable
      
        # Set to true to make the AuthorizedView protected against deletion. The parent
        # Table and containing Instance cannot be deleted if an AuthorizedView has this
        # bit set.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # The etag for this AuthorizedView. If this is provided on update, it must match
        # the server's etag. The server returns ABORTED error on a mismatched etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The name of this AuthorizedView. Values are of the form `projects/`
        # project`/instances/`instance`/tables/`table`/authorizedViews/`authorized_view``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines a simple AuthorizedView that is a subset of the underlying Table.
        # Corresponds to the JSON property `subsetView`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewSubsetView]
        attr_accessor :subset_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @subset_view = args[:subset_view] if args.key?(:subset_view)
        end
      end
      
      # Defines an automated backup policy for a table
      class AutomatedBackupPolicy
        include Google::Apis::Core::Hashable
      
        # How frequently automated backups should occur. The only supported value at
        # this time is 24 hours. An undefined frequency is treated as 24 hours.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Required. How long the automated backups should be retained. Values must be at
        # least 3 days and at most 90 days.
        # Corresponds to the JSON property `retentionPeriod`
        # @return [String]
        attr_accessor :retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency = args[:frequency] if args.key?(:frequency)
          @retention_period = args[:retention_period] if args.key?(:retention_period)
        end
      end
      
      # Limits for the number of nodes a Cluster can autoscale up/down to.
      class AutoscalingLimits
        include Google::Apis::Core::Hashable
      
        # Required. Maximum number of nodes to scale up to.
        # Corresponds to the JSON property `maxServeNodes`
        # @return [Fixnum]
        attr_accessor :max_serve_nodes
      
        # Required. Minimum number of nodes to scale down to.
        # Corresponds to the JSON property `minServeNodes`
        # @return [Fixnum]
        attr_accessor :min_serve_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_serve_nodes = args[:max_serve_nodes] if args.key?(:max_serve_nodes)
          @min_serve_nodes = args[:min_serve_nodes] if args.key?(:min_serve_nodes)
        end
      end
      
      # The Autoscaling targets for a Cluster. These determine the recommended nodes.
      class AutoscalingTargets
        include Google::Apis::Core::Hashable
      
        # The cpu utilization that the Autoscaler should be trying to achieve. This
        # number is on a scale from 0 (no utilization) to 100 (total utilization), and
        # is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
        # Corresponds to the JSON property `cpuUtilizationPercent`
        # @return [Fixnum]
        attr_accessor :cpu_utilization_percent
      
        # The storage utilization that the Autoscaler should be trying to achieve. This
        # number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and
        # between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will
        # return INVALID_ARGUMENT error. If this value is set to 0, it will be treated
        # as if it were set to the default value: 2560 for SSD, 8192 for HDD.
        # Corresponds to the JSON property `storageUtilizationGibPerNode`
        # @return [Fixnum]
        attr_accessor :storage_utilization_gib_per_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_utilization_percent = args[:cpu_utilization_percent] if args.key?(:cpu_utilization_percent)
          @storage_utilization_gib_per_node = args[:storage_utilization_gib_per_node] if args.key?(:storage_utilization_gib_per_node)
        end
      end
      
      # A backup of a Cloud Bigtable table.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Indicates the backup type of the backup.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # Encryption information for a given resource. If this resource is protected
        # with customer managed encryption, the in-use Cloud Key Management Service (
        # Cloud KMS) key version is specified along with its status.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::BigtableadminV2::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Output only. `end_time` is the time that the backup was finished. The row data
        # in the backup will be no newer than this timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The expiration time of the backup. When creating a backup or
        # updating its `expire_time`, the value must be greater than the backup creation
        # time by: - At least 6 hours - At most 90 days Once the `expire_time` has
        # passed, Cloud Bigtable will delete the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The time at which the hot backup will be converted to a standard backup. Once
        # the `hot_to_standard_time` has passed, Cloud Bigtable will convert the hot
        # backup to a standard backup. This value must be greater than the backup
        # creation time by: - At least 24 hours This field only applies for hot backups.
        # When creating or updating a standard backup, attempting to set this field will
        # fail the request.
        # Corresponds to the JSON property `hotToStandardTime`
        # @return [String]
        attr_accessor :hot_to_standard_time
      
        # A globally unique identifier for the backup which cannot be changed. Values
        # are of the form `projects/`project`/instances/`instance`/clusters/`cluster`/
        # backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50
        # characters in length. The backup is stored in the cluster identified by the
        # prefix of the backup name of the form `projects/`project`/instances/`instance`/
        # clusters/`cluster``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Size of the backup in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. Name of the backup from which this backup was copied. If a backup
        # is not created by copying a backup, this field will be empty. Values are of
        # the form: projects//instances//clusters//backups/
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        # Required. Immutable. Name of the table from which this backup was created.
        # This needs to be in the same instance as the backup. Values are of the form `
        # projects/`project`/instances/`instance`/tables/`source_table``.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # Output only. `start_time` is the time that the backup was started (i.e.
        # approximately the time the CreateBackup request is received). The row data in
        # this backup will be no older than this timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @end_time = args[:end_time] if args.key?(:end_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @hot_to_standard_time = args[:hot_to_standard_time] if args.key?(:hot_to_standard_time)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about a backup.
      class BackupInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the backup.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Output only. This time that the backup was finished. Row data in the backup
        # will be no newer than this timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Name of the backup from which this backup was copied. If a backup
        # is not created by copying a backup, this field will be empty. Values are of
        # the form: projects//instances//clusters//backups/
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        # Output only. Name of the table the backup was created from.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # Output only. The time that the backup was started. Row data in the backup will
        # be no older than this timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @end_time = args[:end_time] if args.key?(:end_time)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
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
        # @return [Google::Apis::BigtableadminV2::Expr]
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
      
      # Change stream configuration.
      class ChangeStreamConfig
        include Google::Apis::Core::Hashable
      
        # How long the change stream should be retained. Change stream data older than
        # the retention period will not be returned when reading the change stream from
        # the table. Values must be at least 1 day and at most 7 days, and will be
        # truncated to microsecond granularity.
        # Corresponds to the JSON property `retentionPeriod`
        # @return [String]
        attr_accessor :retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retention_period = args[:retention_period] if args.key?(:retention_period)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.
      # CheckConsistency
      class CheckConsistencyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The token created using GenerateConsistencyToken for the Table.
        # Corresponds to the JSON property `consistencyToken`
        # @return [String]
        attr_accessor :consistency_token
      
        # Checks that all writes before the consistency token was generated in the same
        # cluster are readable by Databoost.
        # Corresponds to the JSON property `dataBoostReadLocalWrites`
        # @return [Google::Apis::BigtableadminV2::DataBoostReadLocalWrites]
        attr_accessor :data_boost_read_local_writes
      
        # Checks that all writes before the consistency token was generated are
        # replicated in every cluster and readable.
        # Corresponds to the JSON property `standardReadRemoteWrites`
        # @return [Google::Apis::BigtableadminV2::StandardReadRemoteWrites]
        attr_accessor :standard_read_remote_writes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consistency_token = args[:consistency_token] if args.key?(:consistency_token)
          @data_boost_read_local_writes = args[:data_boost_read_local_writes] if args.key?(:data_boost_read_local_writes)
          @standard_read_remote_writes = args[:standard_read_remote_writes] if args.key?(:standard_read_remote_writes)
        end
      end
      
      # Response message for google.bigtable.admin.v2.BigtableTableAdmin.
      # CheckConsistency
      class CheckConsistencyResponse
        include Google::Apis::Core::Hashable
      
        # True only if the token is consistent. A token is consistent if replication has
        # caught up with the restrictions specified in the request.
        # Corresponds to the JSON property `consistent`
        # @return [Boolean]
        attr_accessor :consistent
        alias_method :consistent?, :consistent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consistent = args[:consistent] if args.key?(:consistent)
        end
      end
      
      # A resizable group of nodes in a particular cloud location, capable of serving
      # all Tables in the parent Instance.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Configuration for a cluster.
        # Corresponds to the JSON property `clusterConfig`
        # @return [Google::Apis::BigtableadminV2::ClusterConfig]
        attr_accessor :cluster_config
      
        # Immutable. The type of storage used by this cluster to serve its parent
        # instance's tables, unless explicitly overridden.
        # Corresponds to the JSON property `defaultStorageType`
        # @return [String]
        attr_accessor :default_storage_type
      
        # Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::BigtableadminV2::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Immutable. The location where this cluster's nodes and storage reside. For
        # best performance, clients should be located as close as possible to this
        # cluster. Currently only zones are supported, so values should be of the form `
        # projects/`project`/locations/`zone``.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The unique name of the cluster. Values are of the form `projects/`project`/
        # instances/`instance`/clusters/a-z*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The node scaling factor of this cluster.
        # Corresponds to the JSON property `nodeScalingFactor`
        # @return [String]
        attr_accessor :node_scaling_factor
      
        # The number of nodes in the cluster. If no value is set, Cloud Bigtable
        # automatically allocates nodes based on your data footprint and optimized for
        # 50% storage utilization.
        # Corresponds to the JSON property `serveNodes`
        # @return [Fixnum]
        attr_accessor :serve_nodes
      
        # Output only. The current state of the cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_config = args[:cluster_config] if args.key?(:cluster_config)
          @default_storage_type = args[:default_storage_type] if args.key?(:default_storage_type)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @node_scaling_factor = args[:node_scaling_factor] if args.key?(:node_scaling_factor)
          @serve_nodes = args[:serve_nodes] if args.key?(:serve_nodes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Autoscaling config for a cluster.
      class ClusterAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Limits for the number of nodes a Cluster can autoscale up/down to.
        # Corresponds to the JSON property `autoscalingLimits`
        # @return [Google::Apis::BigtableadminV2::AutoscalingLimits]
        attr_accessor :autoscaling_limits
      
        # The Autoscaling targets for a Cluster. These determine the recommended nodes.
        # Corresponds to the JSON property `autoscalingTargets`
        # @return [Google::Apis::BigtableadminV2::AutoscalingTargets]
        attr_accessor :autoscaling_targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_limits = args[:autoscaling_limits] if args.key?(:autoscaling_limits)
          @autoscaling_targets = args[:autoscaling_targets] if args.key?(:autoscaling_targets)
        end
      end
      
      # Configuration for a cluster.
      class ClusterConfig
        include Google::Apis::Core::Hashable
      
        # Autoscaling config for a cluster.
        # Corresponds to the JSON property `clusterAutoscalingConfig`
        # @return [Google::Apis::BigtableadminV2::ClusterAutoscalingConfig]
        attr_accessor :cluster_autoscaling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_autoscaling_config = args[:cluster_autoscaling_config] if args.key?(:cluster_autoscaling_config)
        end
      end
      
      # The state of a table's data in a particular cluster.
      class ClusterState
        include Google::Apis::Core::Hashable
      
        # Output only. The encryption information for the table in this cluster. If the
        # encryption key protecting this resource is customer managed, then its version
        # can be rotated in Cloud Key Management Service (Cloud KMS). The primary
        # version of the key and its status will be reflected here when changes
        # propagate from Cloud KMS.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Array<Google::Apis::BigtableadminV2::EncryptionInfo>]
        attr_accessor :encryption_info
      
        # Output only. The state of replication for the table in this cluster.
        # Corresponds to the JSON property `replicationState`
        # @return [String]
        attr_accessor :replication_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @replication_state = args[:replication_state] if args.key?(:replication_state)
        end
      end
      
      # A set of columns within a table which share a common configuration.
      class ColumnFamily
        include Google::Apis::Core::Hashable
      
        # Rule for determining which cells to delete during garbage collection.
        # Corresponds to the JSON property `gcRule`
        # @return [Google::Apis::BigtableadminV2::GcRule]
        attr_accessor :gc_rule
      
        # Approximate statistics related to a single column family within a table. This
        # information may change rapidly, interpreting these values at a point in time
        # may already preset out-of-date information. Everything below is approximate,
        # unless otherwise specified.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::BigtableadminV2::ColumnFamilyStats]
        attr_accessor :stats
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `valueType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gc_rule = args[:gc_rule] if args.key?(:gc_rule)
          @stats = args[:stats] if args.key?(:stats)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Approximate statistics related to a single column family within a table. This
      # information may change rapidly, interpreting these values at a point in time
      # may already preset out-of-date information. Everything below is approximate,
      # unless otherwise specified.
      class ColumnFamilyStats
        include Google::Apis::Core::Hashable
      
        # How many cells are present per column qualifier in this column family,
        # averaged over all rows containing any column in the column family. e.g. For
        # column family "family" in a table with 3 rows: * A row with 3 cells in "family:
        # col" and 1 cell in "other:col" (3 cells / 1 column in "family") * A row with 1
        # cell in "family:col", 7 cells in "family:other_col", and 7 cells in "other:
        # data" (8 cells / 2 columns in "family") * A row with 3 cells in "other:col" (0
        # columns in "family", "family" not present) would report (3 + 8 + 0)/(1 + 2 + 0)
        # = 3.66 in this field.
        # Corresponds to the JSON property `averageCellsPerColumn`
        # @return [Float]
        attr_accessor :average_cells_per_column
      
        # How many column qualifiers are present in this column family, averaged over
        # all rows in the table. e.g. For column family "family" in a table with 3 rows:
        # * A row with cells in "family:col" and "other:col" (1 column in "family") * A
        # row with cells in "family:col", "family:other_col", and "other:data" (2
        # columns in "family") * A row with cells in "other:col" (0 columns in "family",
        # "family" not present) would report (1 + 2 + 0)/3 = 1.5 in this field.
        # Corresponds to the JSON property `averageColumnsPerRow`
        # @return [Float]
        attr_accessor :average_columns_per_row
      
        # How much space the data in the column family occupies. This is roughly how
        # many bytes would be needed to read the contents of the entire column family (e.
        # g. by streaming all contents out).
        # Corresponds to the JSON property `logicalDataBytes`
        # @return [Fixnum]
        attr_accessor :logical_data_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_cells_per_column = args[:average_cells_per_column] if args.key?(:average_cells_per_column)
          @average_columns_per_row = args[:average_columns_per_row] if args.key?(:average_columns_per_row)
          @logical_data_bytes = args[:logical_data_bytes] if args.key?(:logical_data_bytes)
        end
      end
      
      # Metadata type for the google.longrunning.Operation returned by CopyBackup.
      class CopyBackupMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the backup being created through the copy operation. Values are of
        # the form `projects//instances//clusters//backups/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Bigtable long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::BigtableadminV2::OperationProgress]
        attr_accessor :progress
      
        # Information about a backup.
        # Corresponds to the JSON property `sourceBackupInfo`
        # @return [Google::Apis::BigtableadminV2::BackupInfo]
        attr_accessor :source_backup_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
          @source_backup_info = args[:source_backup_info] if args.key?(:source_backup_info)
        end
      end
      
      # The request for CopyBackup.
      class CopyBackupRequest
        include Google::Apis::Core::Hashable
      
        # Required. The id of the new backup. The `backup_id` along with `parent` are
        # combined as `parent`/backups/`backup_id` to create the full backup name, of
        # the form: `projects/`project`/instances/`instance`/clusters/`cluster`/backups/`
        # backup_id``. This string must be between 1 and 50 characters in length and
        # match the regex _a-zA-Z0-9*.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Required. Required. The expiration time of the copied backup with microsecond
        # granularity that must be at least 6 hours and at most 30 days from the time
        # the request is received. Once the `expire_time` has passed, Cloud Bigtable
        # will delete the backup and free the resources used by the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Required. The source backup to be copied from. The source backup needs to be
        # in READY state for it to be copied. Copying a copied backup is not allowed.
        # Once CopyBackup is in progress, the source backup cannot be deleted or cleaned
        # up on expiration until CopyBackup is finished. Values are of the form: `
        # projects//instances//clusters//backups/`.
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
        end
      end
      
      # The metadata for the Operation returned by CreateAuthorizedView.
      class CreateAuthorizedViewMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The request for CreateAuthorizedView
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::CreateAuthorizedViewRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The request for CreateAuthorizedView
      class CreateAuthorizedViewRequest
        include Google::Apis::Core::Hashable
      
        # An Authorized View of a Cloud Bigtable Table.
        # Corresponds to the JSON property `authorizedView`
        # @return [Google::Apis::BigtableadminV2::AuthorizedView]
        attr_accessor :authorized_view
      
        # Required. The id of the AuthorizedView to create. This AuthorizedView must not
        # already exist. The `authorized_view_id` appended to `parent` forms the full
        # AuthorizedView name of the form `projects/`project`/instances/`instance`/
        # tables/`table`/authorizedView/`authorized_view``.
        # Corresponds to the JSON property `authorizedViewId`
        # @return [String]
        attr_accessor :authorized_view_id
      
        # Required. This is the name of the table the AuthorizedView belongs to. Values
        # are of the form `projects/`project`/instances/`instance`/tables/`table``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_view = args[:authorized_view] if args.key?(:authorized_view)
          @authorized_view_id = args[:authorized_view_id] if args.key?(:authorized_view_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Metadata type for the operation returned by CreateBackup.
      class CreateBackupMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation finished or was cancelled. DEPRECATED:
        # Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The name of the backup being created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # The name of the table the backup is created from.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # The time at which this operation started. DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The metadata for the Operation returned by CreateCluster.
      class CreateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateCluster.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::CreateClusterRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # Keys: the full `name` of each table that existed in the instance when
        # CreateCluster was first called, i.e. `projects//instances//tables/`. Any table
        # added to the instance by a later API call will be created in the new cluster
        # by that API call, not this one. Values: information on how much of a table's
        # data has been copied to the newly-created cluster so far.
        # Corresponds to the JSON property `tables`
        # @return [Hash<String,Google::Apis::BigtableadminV2::TableProgress>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateCluster.
      class CreateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::BigtableadminV2::Cluster]
        attr_accessor :cluster
      
        # Required. The ID to be used when referring to the new cluster within its
        # instance, e.g., just `mycluster` rather than `projects/myproject/instances/
        # myinstance/clusters/mycluster`.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The unique name of the instance in which to create the new cluster.
        # Values are of the form `projects/`project`/instances/`instance``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The metadata for the Operation returned by CreateInstance.
      class CreateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateInstance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::CreateInstanceRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateInstance.
      class CreateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The clusters to be created within the instance, mapped by desired
        # cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/
        # myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.
        # Corresponds to the JSON property `clusters`
        # @return [Hash<String,Google::Apis::BigtableadminV2::Cluster>]
        attr_accessor :clusters
      
        # A collection of Bigtable Tables and the resources that serve them. All tables
        # in an instance are served from all Clusters in the instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::BigtableadminV2::Instance]
        attr_accessor :instance
      
        # Required. The ID to be used when referring to the new instance within its
        # project, e.g., just `myinstance` rather than `projects/myproject/instances/
        # myinstance`.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Required. The unique name of the project in which to create the new instance.
        # Values are of the form `projects/`project``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @instance = args[:instance] if args.key?(:instance)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The metadata for the Operation returned by CreateLogicalView.
      class CreateLogicalViewMetadata
        include Google::Apis::Core::Hashable
      
        # DEPRECATED: Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateLogicalView.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::CreateLogicalViewRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateLogicalView.
      class CreateLogicalViewRequest
        include Google::Apis::Core::Hashable
      
        # A SQL logical view object that can be referenced in SQL queries.
        # Corresponds to the JSON property `logicalView`
        # @return [Google::Apis::BigtableadminV2::LogicalView]
        attr_accessor :logical_view
      
        # Required. The ID to use for the logical view, which will become the final
        # component of the logical view's resource name.
        # Corresponds to the JSON property `logicalViewId`
        # @return [String]
        attr_accessor :logical_view_id
      
        # Required. The parent instance where this logical view will be created. Format:
        # `projects/`project`/instances/`instance``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_view = args[:logical_view] if args.key?(:logical_view)
          @logical_view_id = args[:logical_view_id] if args.key?(:logical_view_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The metadata for the Operation returned by CreateMaterializedView.
      class CreateMaterializedViewMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation finished or was canceled. DEPRECATED:
        # Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateMaterializedView.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::CreateMaterializedViewRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # The time at which this operation started. DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateMaterializedView.
      class CreateMaterializedViewRequest
        include Google::Apis::Core::Hashable
      
        # A materialized view object that can be referenced in SQL queries.
        # Corresponds to the JSON property `materializedView`
        # @return [Google::Apis::BigtableadminV2::MaterializedView]
        attr_accessor :materialized_view
      
        # Required. The ID to use for the materialized view, which will become the final
        # component of the materialized view's resource name.
        # Corresponds to the JSON property `materializedViewId`
        # @return [String]
        attr_accessor :materialized_view_id
      
        # Required. The parent instance where this materialized view will be created.
        # Format: `projects/`project`/instances/`instance``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @materialized_view = args[:materialized_view] if args.key?(:materialized_view)
          @materialized_view_id = args[:materialized_view_id] if args.key?(:materialized_view_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The metadata for the Operation returned by CreateSchemaBundle.
      class CreateSchemaBundleMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The unique name identifying this schema bundle. Values are of the form `
        # projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        # schema_bundle``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
      class CreateTableRequest
        include Google::Apis::Core::Hashable
      
        # The optional list of row keys that will be used to initially split the table
        # into several tablets (tablets are similar to HBase regions). Given two split
        # keys, `s1` and `s2`, three tablets will be created, spanning the key ranges: `[
        # , s1), [s1, s2), [s2, )`. Example: * Row keys := `["a", "apple", "custom", "
        # customer_1", "customer_2",` `"other", "zz"]` * initial_split_keys := `["apple",
        # "customer_1", "customer_2", "other"]` * Key assignment: - Tablet 1 `[, apple)
        # => `"a"`.` - Tablet 2 `[apple, customer_1) => `"apple", "custom"`.` - Tablet 3
        # `[customer_1, customer_2) => `"customer_1"`.` - Tablet 4 `[customer_2, other) =
        # > `"customer_2"`.` - Tablet 5 `[other, ) => `"other", "zz"`.`
        # Corresponds to the JSON property `initialSplits`
        # @return [Array<Google::Apis::BigtableadminV2::Split>]
        attr_accessor :initial_splits
      
        # A collection of user data indexed by row, column, and timestamp. Each table is
        # served using the resources of its parent cluster.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::BigtableadminV2::Table]
        attr_accessor :table
      
        # Required. The name by which the new table should be referred to within the
        # parent instance, e.g., `foobar` rather than ``parent`/tables/foobar`. Maximum
        # 50 characters.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_splits = args[:initial_splits] if args.key?(:initial_splits)
          @table = args[:table] if args.key?(:table)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Data Boost is a serverless compute capability that lets you run high-
      # throughput read jobs and queries on your Bigtable data, without impacting the
      # performance of the clusters that handle your application traffic. Data Boost
      # supports read-only use cases with single-cluster routing.
      class DataBoostIsolationReadOnly
        include Google::Apis::Core::Hashable
      
        # The Compute Billing Owner for this Data Boost App Profile.
        # Corresponds to the JSON property `computeBillingOwner`
        # @return [String]
        attr_accessor :compute_billing_owner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_billing_owner = args[:compute_billing_owner] if args.key?(:compute_billing_owner)
        end
      end
      
      # Checks that all writes before the consistency token was generated in the same
      # cluster are readable by Databoost.
      class DataBoostReadLocalWrites
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
      class DropRowRangeRequest
        include Google::Apis::Core::Hashable
      
        # Delete all rows in the table. Setting this to false is a no-op.
        # Corresponds to the JSON property `deleteAllDataFromTable`
        # @return [Boolean]
        attr_accessor :delete_all_data_from_table
        alias_method :delete_all_data_from_table?, :delete_all_data_from_table
      
        # Delete all rows that start with this row key prefix. Prefix cannot be zero
        # length.
        # Corresponds to the JSON property `rowKeyPrefix`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :row_key_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_all_data_from_table = args[:delete_all_data_from_table] if args.key?(:delete_all_data_from_table)
          @row_key_prefix = args[:row_key_prefix] if args.key?(:row_key_prefix)
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
      
      # Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Describes the Cloud KMS encryption key that will be used to protect the
        # destination Bigtable cluster. The requirements for this key are: 1) The Cloud
        # Bigtable service account associated with the project that contains this
        # cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the
        # CMEK key. 2) Only regional keys can be used and the region of the CMEK key
        # must match the region of the cluster. Values are of the form `projects/`
        # project`/locations/`location`/keyRings/`keyring`/cryptoKeys/`key``
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Encryption information for a given resource. If this resource is protected
      # with customer managed encryption, the in-use Cloud Key Management Service (
      # Cloud KMS) key version is specified along with its status.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `encryptionStatus`
        # @return [Google::Apis::BigtableadminV2::Status]
        attr_accessor :encryption_status
      
        # Output only. The type of encryption used to protect this resource.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. The version of the Cloud KMS key specified in the parent cluster
        # that is in use for the data underlying this table.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
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
      
      # Rule for determining which cells to delete during garbage collection.
      class GcRule
        include Google::Apis::Core::Hashable
      
        # A GcRule which deletes cells matching all of the given rules.
        # Corresponds to the JSON property `intersection`
        # @return [Google::Apis::BigtableadminV2::Intersection]
        attr_accessor :intersection
      
        # Delete cells in a column older than the given age. Values must be at least one
        # millisecond, and will be truncated to microsecond granularity.
        # Corresponds to the JSON property `maxAge`
        # @return [String]
        attr_accessor :max_age
      
        # Delete all cells in a column except the most recent N.
        # Corresponds to the JSON property `maxNumVersions`
        # @return [Fixnum]
        attr_accessor :max_num_versions
      
        # A GcRule which deletes cells matching any of the given rules.
        # Corresponds to the JSON property `union`
        # @return [Google::Apis::BigtableadminV2::Union]
        attr_accessor :union
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intersection = args[:intersection] if args.key?(:intersection)
          @max_age = args[:max_age] if args.key?(:max_age)
          @max_num_versions = args[:max_num_versions] if args.key?(:max_num_versions)
          @union = args[:union] if args.key?(:union)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.
      # GenerateConsistencyToken
      class GenerateConsistencyTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for google.bigtable.admin.v2.BigtableTableAdmin.
      # GenerateConsistencyToken
      class GenerateConsistencyTokenResponse
        include Google::Apis::Core::Hashable
      
        # The generated consistency token.
        # Corresponds to the JSON property `consistencyToken`
        # @return [String]
        attr_accessor :consistency_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consistency_token = args[:consistency_token] if args.key?(:consistency_token)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::BigtableadminV2::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Subsets of a column family that are included in this AuthorizedView.
      class GoogleBigtableAdminV2AuthorizedViewFamilySubsets
        include Google::Apis::Core::Hashable
      
        # Prefixes for qualifiers to be included in the AuthorizedView. Every qualifier
        # starting with one of these prefixes is included in the AuthorizedView. To
        # provide access to all qualifiers, include the empty string as a prefix ("").
        # Corresponds to the JSON property `qualifierPrefixes`
        # @return [Array<String>]
        attr_accessor :qualifier_prefixes
      
        # Individual exact column qualifiers to be included in the AuthorizedView.
        # Corresponds to the JSON property `qualifiers`
        # @return [Array<String>]
        attr_accessor :qualifiers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qualifier_prefixes = args[:qualifier_prefixes] if args.key?(:qualifier_prefixes)
          @qualifiers = args[:qualifiers] if args.key?(:qualifiers)
        end
      end
      
      # Defines a simple AuthorizedView that is a subset of the underlying Table.
      class GoogleBigtableAdminV2AuthorizedViewSubsetView
        include Google::Apis::Core::Hashable
      
        # Map from column family name to the columns in this family to be included in
        # the AuthorizedView.
        # Corresponds to the JSON property `familySubsets`
        # @return [Hash<String,Google::Apis::BigtableadminV2::GoogleBigtableAdminV2AuthorizedViewFamilySubsets>]
        attr_accessor :family_subsets
      
        # Row prefixes to be included in the AuthorizedView. To provide access to all
        # rows, include the empty string as a prefix ("").
        # Corresponds to the JSON property `rowPrefixes`
        # @return [Array<String>]
        attr_accessor :row_prefixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_subsets = args[:family_subsets] if args.key?(:family_subsets)
          @row_prefixes = args[:row_prefixes] if args.key?(:row_prefixes)
        end
      end
      
      # The state of a materialized view's data in a particular cluster.
      class GoogleBigtableAdminV2MaterializedViewClusterState
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the materialized view in this cluster.
        # Corresponds to the JSON property `replicationState`
        # @return [String]
        attr_accessor :replication_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replication_state = args[:replication_state] if args.key?(:replication_state)
        end
      end
      
      # A value that combines incremental updates into a summarized value. Data is
      # never directly written or read using type `Aggregate`. Writes provide either
      # the `input_type` or `state_type`, and reads always return the `state_type` .
      class GoogleBigtableAdminV2TypeAggregate
        include Google::Apis::Core::Hashable
      
        # Computes an approximate unique count over the input values. When using raw
        # data as input, be careful to use a consistent encoding. Otherwise the same
        # value encoded differently could count more than once, or two distinct values
        # could count as identical. Input: Any, or omit for Raw State: TBD Special state
        # conversions: `Int64` (the unique count estimate)
        # Corresponds to the JSON property `hllppUniqueCount`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount]
        attr_accessor :hllpp_unique_count
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `inputType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :input_type
      
        # Computes the max of the input values. Allowed input: `Int64` State: same as
        # input
        # Corresponds to the JSON property `max`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMax]
        attr_accessor :max
      
        # Computes the min of the input values. Allowed input: `Int64` State: same as
        # input
        # Corresponds to the JSON property `min`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateMin]
        attr_accessor :min
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `stateType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :state_type
      
        # Computes the sum of the input values. Allowed input: `Int64` State: same as
        # input
        # Corresponds to the JSON property `sum`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregateSum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hllpp_unique_count = args[:hllpp_unique_count] if args.key?(:hllpp_unique_count)
          @input_type = args[:input_type] if args.key?(:input_type)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @state_type = args[:state_type] if args.key?(:state_type)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # Computes an approximate unique count over the input values. When using raw
      # data as input, be careful to use a consistent encoding. Otherwise the same
      # value encoded differently could count more than once, or two distinct values
      # could count as identical. Input: Any, or omit for Raw State: TBD Special state
      # conversions: `Int64` (the unique count estimate)
      class GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Computes the max of the input values. Allowed input: `Int64` State: same as
      # input
      class GoogleBigtableAdminV2TypeAggregateMax
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Computes the min of the input values. Allowed input: `Int64` State: same as
      # input
      class GoogleBigtableAdminV2TypeAggregateMin
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Computes the sum of the input values. Allowed input: `Int64` State: same as
      # input
      class GoogleBigtableAdminV2TypeAggregateSum
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An ordered list of elements of a given type. Values of type `Array` are stored
      # in `Value.array_value`.
      class GoogleBigtableAdminV2TypeArray
        include Google::Apis::Core::Hashable
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `elementType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :element_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @element_type = args[:element_type] if args.key?(:element_type)
        end
      end
      
      # bool Values of type `Bool` are stored in `Value.bool_value`.
      class GoogleBigtableAdminV2TypeBool
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Bytes Values of type `Bytes` are stored in `Value.bytes_value`.
      class GoogleBigtableAdminV2TypeBytes
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `encoding`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncoding]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Rules used to convert to or from lower level types.
      class GoogleBigtableAdminV2TypeBytesEncoding
        include Google::Apis::Core::Hashable
      
        # Leaves the value as-is. Sorted mode: all values are supported. Distinct mode:
        # all values are supported.
        # Corresponds to the JSON property `raw`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytesEncodingRaw]
        attr_accessor :raw
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw = args[:raw] if args.key?(:raw)
        end
      end
      
      # Leaves the value as-is. Sorted mode: all values are supported. Distinct mode:
      # all values are supported.
      class GoogleBigtableAdminV2TypeBytesEncodingRaw
        include Google::Apis::Core::Hashable
      
        # If set, allows NULL values to be encoded as the empty string "". The actual
        # empty string, or any value which only contains the null byte `0x00`, has one
        # more null byte appended.
        # Corresponds to the JSON property `escapeNulls`
        # @return [Boolean]
        attr_accessor :escape_nulls
        alias_method :escape_nulls?, :escape_nulls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @escape_nulls = args[:escape_nulls] if args.key?(:escape_nulls)
        end
      end
      
      # Date Values of type `Date` are stored in `Value.date_value`.
      class GoogleBigtableAdminV2TypeDate
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A protobuf enum type. Values of type `Enum` are stored in `Value.int_value`.
      class GoogleBigtableAdminV2TypeEnum
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the protobuf enum message, including package. In
        # the format of "foo.bar.EnumMessage".
        # Corresponds to the JSON property `enumName`
        # @return [String]
        attr_accessor :enum_name
      
        # The ID of the schema bundle that this enum is defined in.
        # Corresponds to the JSON property `schemaBundleId`
        # @return [String]
        attr_accessor :schema_bundle_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_name = args[:enum_name] if args.key?(:enum_name)
          @schema_bundle_id = args[:schema_bundle_id] if args.key?(:schema_bundle_id)
        end
      end
      
      # Float32 Values of type `Float32` are stored in `Value.float_value`.
      class GoogleBigtableAdminV2TypeFloat32
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Float64 Values of type `Float64` are stored in `Value.float_value`.
      class GoogleBigtableAdminV2TypeFloat64
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Int64 Values of type `Int64` are stored in `Value.int_value`.
      class GoogleBigtableAdminV2TypeInt64
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `encoding`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Rules used to convert to or from lower level types.
      class GoogleBigtableAdminV2TypeInt64Encoding
        include Google::Apis::Core::Hashable
      
        # Encodes the value as an 8-byte big-endian two's complement value. Sorted mode:
        # non-negative values are supported. Distinct mode: all values are supported.
        # Compatible with: - BigQuery `BINARY` encoding - HBase `Bytes.toBytes` - Java `
        # ByteBuffer.putLong()` with `ByteOrder.BIG_ENDIAN`
        # Corresponds to the JSON property `bigEndianBytes`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes]
        attr_accessor :big_endian_bytes
      
        # Encodes the value in a variable length binary format of up to 10 bytes. Values
        # that are closer to zero use fewer bytes. Sorted mode: all values are supported.
        # Distinct mode: all values are supported.
        # Corresponds to the JSON property `orderedCodeBytes`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes]
        attr_accessor :ordered_code_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_endian_bytes = args[:big_endian_bytes] if args.key?(:big_endian_bytes)
          @ordered_code_bytes = args[:ordered_code_bytes] if args.key?(:ordered_code_bytes)
        end
      end
      
      # Encodes the value as an 8-byte big-endian two's complement value. Sorted mode:
      # non-negative values are supported. Distinct mode: all values are supported.
      # Compatible with: - BigQuery `BINARY` encoding - HBase `Bytes.toBytes` - Java `
      # ByteBuffer.putLong()` with `ByteOrder.BIG_ENDIAN`
      class GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
        include Google::Apis::Core::Hashable
      
        # Bytes Values of type `Bytes` are stored in `Value.bytes_value`.
        # Corresponds to the JSON property `bytesType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes]
        attr_accessor :bytes_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_type = args[:bytes_type] if args.key?(:bytes_type)
        end
      end
      
      # Encodes the value in a variable length binary format of up to 10 bytes. Values
      # that are closer to zero use fewer bytes. Sorted mode: all values are supported.
      # Distinct mode: all values are supported.
      class GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A mapping of keys to values of a given type. Values of type `Map` are stored
      # in a `Value.array_value` where each entry is another `Value.array_value` with
      # two elements (the key and the value, in that order). Normally encoded Map
      # values won't have repeated keys, however, clients are expected to handle the
      # case in which they do. If the same key appears multiple times, the _last_
      # value takes precedence.
      class GoogleBigtableAdminV2TypeMap
        include Google::Apis::Core::Hashable
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `keyType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :key_type
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `valueType`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_type = args[:key_type] if args.key?(:key_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A protobuf message type. Values of type `Proto` are stored in `Value.
      # bytes_value`.
      class GoogleBigtableAdminV2TypeProto
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the protobuf message, including package. In the
        # format of "foo.bar.Message".
        # Corresponds to the JSON property `messageName`
        # @return [String]
        attr_accessor :message_name
      
        # The ID of the schema bundle that this proto is defined in.
        # Corresponds to the JSON property `schemaBundleId`
        # @return [String]
        attr_accessor :schema_bundle_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_name = args[:message_name] if args.key?(:message_name)
          @schema_bundle_id = args[:schema_bundle_id] if args.key?(:schema_bundle_id)
        end
      end
      
      # String Values of type `String` are stored in `Value.string_value`.
      class GoogleBigtableAdminV2TypeString
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `encoding`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncoding]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Rules used to convert to or from lower level types.
      class GoogleBigtableAdminV2TypeStringEncoding
        include Google::Apis::Core::Hashable
      
        # UTF-8 encoding. Sorted mode: - All values are supported. - Code point order is
        # preserved. Distinct mode: all values are supported. Compatible with: -
        # BigQuery `TEXT` encoding - HBase `Bytes.toBytes` - Java `String#getBytes(
        # StandardCharsets.UTF_8)`
        # Corresponds to the JSON property `utf8Bytes`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes]
        attr_accessor :utf8_bytes
      
        # Deprecated: prefer the equivalent `Utf8Bytes`.
        # Corresponds to the JSON property `utf8Raw`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStringEncodingUtf8Raw]
        attr_accessor :utf8_raw
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utf8_bytes = args[:utf8_bytes] if args.key?(:utf8_bytes)
          @utf8_raw = args[:utf8_raw] if args.key?(:utf8_raw)
        end
      end
      
      # UTF-8 encoding. Sorted mode: - All values are supported. - Code point order is
      # preserved. Distinct mode: all values are supported. Compatible with: -
      # BigQuery `TEXT` encoding - HBase `Bytes.toBytes` - Java `String#getBytes(
      # StandardCharsets.UTF_8)`
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
        include Google::Apis::Core::Hashable
      
        # Single-character escape sequence used to support NULL values. If set, allows
        # NULL values to be encoded as the empty string "". The actual empty string, or
        # any value where every character equals `null_escape_char`, has one more `
        # null_escape_char` appended. If `null_escape_char` is set and does not equal
        # the ASCII null character `0x00`, then the encoding will not support sorted
        # mode. .
        # Corresponds to the JSON property `nullEscapeChar`
        # @return [String]
        attr_accessor :null_escape_char
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @null_escape_char = args[:null_escape_char] if args.key?(:null_escape_char)
        end
      end
      
      # Deprecated: prefer the equivalent `Utf8Bytes`.
      class GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A structured data value, consisting of fields which map to dynamically typed
      # values. Values of type `Struct` are stored in `Value.array_value` where
      # entries are in the same order and number as `field_types`.
      class GoogleBigtableAdminV2TypeStruct
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `encoding`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncoding]
        attr_accessor :encoding
      
        # The names and types of the fields in this struct.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Rules used to convert to or from lower level types.
      class GoogleBigtableAdminV2TypeStructEncoding
        include Google::Apis::Core::Hashable
      
        # Fields are encoded independently and concatenated with a configurable `
        # delimiter` in between. A struct with no fields defined is encoded as a single `
        # delimiter`. Sorted mode: - Fields are encoded in sorted mode. - Encoded field
        # values must not contain any bytes <= `delimiter[0]` - Element-wise order is
        # preserved: `A < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc.
        # Strict prefixes sort first. - This encoding does not support `DESC` field
        # ordering. Distinct mode: - Fields are encoded in distinct mode. - Encoded
        # field values must not contain `delimiter[0]`.
        # Corresponds to the JSON property `delimitedBytes`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes]
        attr_accessor :delimited_bytes
      
        # Fields are encoded independently, then escaped and delimited by appling the
        # following rules in order: - While the last remaining field is `ASC` or `
        # UNSPECIFIED`, and encodes to the empty string "", remove it. - In each
        # remaining field, replace all null bytes `0x00` with the fixed byte pair ``0x00,
        # 0xFF``. - If any remaining field encodes to the empty string "", replace it
        # with the fixed byte pair ``0x00, 0x00``. - Append the fixed byte pair ``0x00,
        # 0x01`` to each remaining field, except for the last remaining field if it is `
        # ASC`. - Bitwise negate all `DESC` fields. - Concatenate the results, or emit
        # the fixed byte pair ``0x00, 0x00`` if there are no remaining fields to
        # concatenate. Examples: ``` - STRUCT() -> "\00\00" - STRUCT("") -> "\00\00" -
        # STRUCT("", "") -> "\00\00" - STRUCT("", "B") -> "\00\00" + "\00\01" + "B" -
        # STRUCT("A", "") -> "A" - STRUCT("", "B", "") -> "\00\00" + "\00\01" + "B" -
        # STRUCT("A", "", "C") -> "A" + "\00\01" + "\00\00" + "\00\01" + "C" ```
        # Examples for struct with `DESC` fields: ``` - STRUCT("" DESC) -> "\xFF\xFF" + "
        # \xFF\xFE" - STRUCT("" DESC, "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, ""
        # , "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, "A") -> "\xFF\xFF" + "\xFF\
        # xFE" + "A" - STRUCT("A", "" DESC, "") -> "A" + "\00\01" + "\xFF\xFF" + "\xFF\
        # xFE" - STRUCT("", "A" DESC) -> "\x00\x00" + "\x00\x01" + "\xBE" + "\xFF\xFE" ``
        # ` Since null bytes are always escaped, this encoding can cause size blowup for
        # encodings like `Int64.BigEndianBytes` that are likely to produce many such
        # bytes. Sorted mode: - Fields are encoded in sorted mode. - All values
        # supported by the field encodings are allowed. - Fields with unset or `
        # UNSPECIFIED` order are treated as `ASC`. - Element-wise order is preserved: `A
        # < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc. Strict
        # prefixes sort first. Distinct mode: - Fields are encoded in distinct mode. -
        # All values supported by the field encodings are allowed.
        # Corresponds to the JSON property `orderedCodeBytes`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes]
        attr_accessor :ordered_code_bytes
      
        # Uses the encoding of `fields[0].type` as-is. Only valid if `fields.size == 1`.
        # This encoding does not support `DESC` field ordering.
        # Corresponds to the JSON property `singleton`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStructEncodingSingleton]
        attr_accessor :singleton
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimited_bytes = args[:delimited_bytes] if args.key?(:delimited_bytes)
          @ordered_code_bytes = args[:ordered_code_bytes] if args.key?(:ordered_code_bytes)
          @singleton = args[:singleton] if args.key?(:singleton)
        end
      end
      
      # Fields are encoded independently and concatenated with a configurable `
      # delimiter` in between. A struct with no fields defined is encoded as a single `
      # delimiter`. Sorted mode: - Fields are encoded in sorted mode. - Encoded field
      # values must not contain any bytes <= `delimiter[0]` - Element-wise order is
      # preserved: `A < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc.
      # Strict prefixes sort first. - This encoding does not support `DESC` field
      # ordering. Distinct mode: - Fields are encoded in distinct mode. - Encoded
      # field values must not contain `delimiter[0]`.
      class GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes
        include Google::Apis::Core::Hashable
      
        # Byte sequence used to delimit concatenated fields. The delimiter must contain
        # at least 1 character and at most 50 characters.
        # Corresponds to the JSON property `delimiter`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :delimiter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
        end
      end
      
      # Fields are encoded independently, then escaped and delimited by appling the
      # following rules in order: - While the last remaining field is `ASC` or `
      # UNSPECIFIED`, and encodes to the empty string "", remove it. - In each
      # remaining field, replace all null bytes `0x00` with the fixed byte pair ``0x00,
      # 0xFF``. - If any remaining field encodes to the empty string "", replace it
      # with the fixed byte pair ``0x00, 0x00``. - Append the fixed byte pair ``0x00,
      # 0x01`` to each remaining field, except for the last remaining field if it is `
      # ASC`. - Bitwise negate all `DESC` fields. - Concatenate the results, or emit
      # the fixed byte pair ``0x00, 0x00`` if there are no remaining fields to
      # concatenate. Examples: ``` - STRUCT() -> "\00\00" - STRUCT("") -> "\00\00" -
      # STRUCT("", "") -> "\00\00" - STRUCT("", "B") -> "\00\00" + "\00\01" + "B" -
      # STRUCT("A", "") -> "A" - STRUCT("", "B", "") -> "\00\00" + "\00\01" + "B" -
      # STRUCT("A", "", "C") -> "A" + "\00\01" + "\00\00" + "\00\01" + "C" ```
      # Examples for struct with `DESC` fields: ``` - STRUCT("" DESC) -> "\xFF\xFF" + "
      # \xFF\xFE" - STRUCT("" DESC, "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, ""
      # , "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, "A") -> "\xFF\xFF" + "\xFF\
      # xFE" + "A" - STRUCT("A", "" DESC, "") -> "A" + "\00\01" + "\xFF\xFF" + "\xFF\
      # xFE" - STRUCT("", "A" DESC) -> "\x00\x00" + "\x00\x01" + "\xBE" + "\xFF\xFE" ``
      # ` Since null bytes are always escaped, this encoding can cause size blowup for
      # encodings like `Int64.BigEndianBytes` that are likely to produce many such
      # bytes. Sorted mode: - Fields are encoded in sorted mode. - All values
      # supported by the field encodings are allowed. - Fields with unset or `
      # UNSPECIFIED` order are treated as `ASC`. - Element-wise order is preserved: `A
      # < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc. Strict
      # prefixes sort first. Distinct mode: - Fields are encoded in distinct mode. -
      # All values supported by the field encodings are allowed.
      class GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Uses the encoding of `fields[0].type` as-is. Only valid if `fields.size == 1`.
      # This encoding does not support `DESC` field ordering.
      class GoogleBigtableAdminV2TypeStructEncodingSingleton
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A struct field and its type.
      class GoogleBigtableAdminV2TypeStructField
        include Google::Apis::Core::Hashable
      
        # The field name (optional). Fields without a `field_name` are considered
        # anonymous and cannot be referenced by name.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # `Type` represents the type of data that is written to, read from, or stored in
        # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features. For compatibility
        # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
        # which describes how to convert to or from the underlying data. Each encoding
        # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
        # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
        # sort order is important, for example when encoding keys. - Distinct: In this
        # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
        # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
        # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
        # value. The API clearly documents which mode is used wherever an encoding can
        # be configured. Each encoding also documents which values are supported in
        # which modes. For example, when encoding INT64 as a numeric STRING, negative
        # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
        # `, but `STRING("-00001") > STRING("00001")`.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::BigtableadminV2::Type]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Timestamp Values of type `Timestamp` are stored in `Value.timestamp_value`.
      class GoogleBigtableAdminV2TypeTimestamp
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `encoding`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestampEncoding]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Rules used to convert to or from lower level types.
      class GoogleBigtableAdminV2TypeTimestampEncoding
        include Google::Apis::Core::Hashable
      
        # Rules used to convert to or from lower level types.
        # Corresponds to the JSON property `unixMicrosInt64`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64Encoding]
        attr_accessor :unix_micros_int64
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unix_micros_int64 = args[:unix_micros_int64] if args.key?(:unix_micros_int64)
        end
      end
      
      # A tablet is a defined by a start and end key and is explained in https://cloud.
      # google.com/bigtable/docs/overview#architecture and https://cloud.google.com/
      # bigtable/docs/performance#optimization. A Hot tablet is a tablet that exhibits
      # high average cpu usage during the time interval from start time to end time.
      class HotTablet
        include Google::Apis::Core::Hashable
      
        # Tablet End Key (inclusive).
        # Corresponds to the JSON property `endKey`
        # @return [String]
        attr_accessor :end_key
      
        # Output only. The end time of the hot tablet.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The unique name of the hot tablet. Values are of the form `projects/`project`/
        # instances/`instance`/clusters/`cluster`/hotTablets/[a-zA-Z0-9_-]*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The average CPU usage spent by a node on this tablet over the
        # start_time to end_time time range. The percentage is the amount of CPU used by
        # the node to serve the tablet, from 0% (tablet was not interacted with) to 100%
        # (the node spent all cycles serving the hot tablet).
        # Corresponds to the JSON property `nodeCpuUsagePercent`
        # @return [Float]
        attr_accessor :node_cpu_usage_percent
      
        # Tablet Start Key (inclusive).
        # Corresponds to the JSON property `startKey`
        # @return [String]
        attr_accessor :start_key
      
        # Output only. The start time of the hot tablet.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Name of the table that contains the tablet. Values are of the form `projects/`
        # project`/instances/`instance`/tables/_a-zA-Z0-9*`.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_key = args[:end_key] if args.key?(:end_key)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @node_cpu_usage_percent = args[:node_cpu_usage_percent] if args.key?(:node_cpu_usage_percent)
          @start_key = args[:start_key] if args.key?(:start_key)
          @start_time = args[:start_time] if args.key?(:start_time)
          @table_name = args[:table_name] if args.key?(:table_name)
        end
      end
      
      # A collection of Bigtable Tables and the resources that serve them. All tables
      # in an instance are served from all Clusters in the instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. A commit timestamp representing when this Instance was created.
        # For instances created before this field was added (August 2021), this value is
        # `seconds: 0, nanos: 1`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The descriptive name for this instance as it appears in UIs. Can be
        # changed at any time, but should be kept globally unique to avoid confusion.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels are a flexible and lightweight mechanism for organizing cloud resources
        # into groups that reflect a customer's organizational needs and deployment
        # strategies. They can be used to filter resources and aggregate metrics. *
        # Label keys must be between 1 and 63 characters long and must conform to the
        # regular expression: `\p`Ll`\p`Lo``0,62``. * Label values must be between 0 and
        # 63 characters long and must conform to the regular expression: `[\p`Ll`\p`Lo`\
        # p`N`_-]`0,63``. * No more than 64 labels can be associated with a given
        # resource. * Keys and values must both be under 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The unique name of the instance. Values are of the form `projects/`project`/
        # instances/a-z+[a-z0-9]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The current state of the instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: - "123/environment": "production", - "123/costCenter": "
        # marketing" Tags and Labels (above) are both used to bind metadata to resources,
        # with different use-cases. See https://cloud.google.com/resource-manager/docs/
        # tags/tags-overview for an in-depth overview on the difference between tags and
        # labels.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # The type of the instance. Defaults to `PRODUCTION`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @tags = args[:tags] if args.key?(:tags)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A GcRule which deletes cells matching all of the given rules.
      class Intersection
        include Google::Apis::Core::Hashable
      
        # Only delete cells which would be deleted by every element of `rules`.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::BigtableadminV2::GcRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Response message for BigtableInstanceAdmin.ListAppProfiles.
      class ListAppProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested app profiles.
        # Corresponds to the JSON property `appProfiles`
        # @return [Array<Google::Apis::BigtableadminV2::AppProfile>]
        attr_accessor :app_profiles
      
        # Locations from which AppProfile information could not be retrieved, due to an
        # outage or some other transient condition. AppProfiles from these locations may
        # be missing from `app_profiles`. Values are of the form `projects//locations/`
        # Corresponds to the JSON property `failedLocations`
        # @return [Array<String>]
        attr_accessor :failed_locations
      
        # Set if not all app profiles could be returned in a single response. Pass this
        # value to `page_token` in another request to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_profiles = args[:app_profiles] if args.key?(:app_profiles)
          @failed_locations = args[:failed_locations] if args.key?(:failed_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for google.bigtable.admin.v2.BigtableTableAdmin.
      # ListAuthorizedViews
      class ListAuthorizedViewsResponse
        include Google::Apis::Core::Hashable
      
        # The AuthorizedViews present in the requested table.
        # Corresponds to the JSON property `authorizedViews`
        # @return [Array<Google::Apis::BigtableadminV2::AuthorizedView>]
        attr_accessor :authorized_views
      
        # Set if not all tables could be returned in a single response. Pass this value
        # to `page_token` in another request to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_views = args[:authorized_views] if args.key?(:authorized_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListBackups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching backups.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::BigtableadminV2::Backup>]
        attr_accessor :backups
      
        # `next_page_token` can be sent in a subsequent ListBackups call to fetch more
        # of the matching backups.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for BigtableInstanceAdmin.ListClusters.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested clusters.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::BigtableadminV2::Cluster>]
        attr_accessor :clusters
      
        # Locations from which Cluster information could not be retrieved, due to an
        # outage or some other transient condition. Clusters from these locations may be
        # missing from `clusters`, or may only have partial information returned. Values
        # are of the form `projects//locations/`
        # Corresponds to the JSON property `failedLocations`
        # @return [Array<String>]
        attr_accessor :failed_locations
      
        # DEPRECATED: This field is unused and ignored.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @failed_locations = args[:failed_locations] if args.key?(:failed_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for BigtableInstanceAdmin.ListHotTablets.
      class ListHotTabletsResponse
        include Google::Apis::Core::Hashable
      
        # List of hot tablets in the tables of the requested cluster that fall within
        # the requested time range. Hot tablets are ordered by node cpu usage percent.
        # If there are multiple hot tablets that correspond to the same tablet within a
        # 15-minute interval, only the hot tablet with the highest node cpu usage will
        # be included in the response.
        # Corresponds to the JSON property `hotTablets`
        # @return [Array<Google::Apis::BigtableadminV2::HotTablet>]
        attr_accessor :hot_tablets
      
        # Set if not all hot tablets could be returned in a single response. Pass this
        # value to `page_token` in another request to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hot_tablets = args[:hot_tablets] if args.key?(:hot_tablets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for BigtableInstanceAdmin.ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # Locations from which Instance information could not be retrieved, due to an
        # outage or some other transient condition. Instances whose Clusters are all in
        # one of the failed locations may be missing from `instances`, and Instances
        # with at least one Cluster in a failed location may only have partial
        # information returned. Values are of the form `projects//locations/`
        # Corresponds to the JSON property `failedLocations`
        # @return [Array<String>]
        attr_accessor :failed_locations
      
        # The list of requested instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BigtableadminV2::Instance>]
        attr_accessor :instances
      
        # DEPRECATED: This field is unused and ignored.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_locations = args[:failed_locations] if args.key?(:failed_locations)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BigtableadminV2::Location>]
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
      
      # Response message for BigtableInstanceAdmin.ListLogicalViews.
      class ListLogicalViewsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested logical views.
        # Corresponds to the JSON property `logicalViews`
        # @return [Array<Google::Apis::BigtableadminV2::LogicalView>]
        attr_accessor :logical_views
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_views = args[:logical_views] if args.key?(:logical_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for BigtableInstanceAdmin.ListMaterializedViews.
      class ListMaterializedViewsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested materialized views.
        # Corresponds to the JSON property `materializedViews`
        # @return [Array<Google::Apis::BigtableadminV2::MaterializedView>]
        attr_accessor :materialized_views
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @materialized_views = args[:materialized_views] if args.key?(:materialized_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::BigtableadminV2::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response for ListSchemaBundles.
      class ListSchemaBundlesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The schema bundles from the specified table.
        # Corresponds to the JSON property `schemaBundles`
        # @return [Array<Google::Apis::BigtableadminV2::SchemaBundle>]
        attr_accessor :schema_bundles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schema_bundles = args[:schema_bundles] if args.key?(:schema_bundles)
        end
      end
      
      # Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables
      class ListTablesResponse
        include Google::Apis::Core::Hashable
      
        # Set if not all tables could be returned in a single response. Pass this value
        # to `page_token` in another request to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The tables present in the requested instance.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::BigtableadminV2::Table>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tables = args[:tables] if args.key?(:tables)
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
      
      # A SQL logical view object that can be referenced in SQL queries.
      class LogicalView
        include Google::Apis::Core::Hashable
      
        # Optional. Set to true to make the LogicalView protected against deletion.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # Optional. The etag for this logical view. This may be sent on update requests
        # to ensure that the client has an up-to-date value before proceeding. The
        # server returns an ABORTED error on a mismatched etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The unique name of the logical view. Format: `projects/`project`/
        # instances/`instance`/logicalViews/`logical_view``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The logical view's select query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # A materialized view object that can be referenced in SQL queries.
      class MaterializedView
        include Google::Apis::Core::Hashable
      
        # Output only. Map from cluster ID to per-cluster materialized view state. If it
        # could not be determined whether or not the materialized view has data in a
        # particular cluster (for example, if its zone is unavailable), then there will
        # be an entry for the cluster with `STATE_NOT_KNOWN` state. Views: `
        # REPLICATION_VIEW`, `FULL`.
        # Corresponds to the JSON property `clusterStates`
        # @return [Hash<String,Google::Apis::BigtableadminV2::GoogleBigtableAdminV2MaterializedViewClusterState>]
        attr_accessor :cluster_states
      
        # Set to true to make the MaterializedView protected against deletion. Views: `
        # SCHEMA_VIEW`, `REPLICATION_VIEW`, `FULL`.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # Optional. The etag for this materialized view. This may be sent on update
        # requests to ensure that the client has an up-to-date value before proceeding.
        # The server returns an ABORTED error on a mismatched etag. Views: `SCHEMA_VIEW`,
        # `REPLICATION_VIEW`, `FULL`.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The unique name of the materialized view. Format: `projects/`
        # project`/instances/`instance`/materializedViews/`materialized_view`` Views: `
        # SCHEMA_VIEW`, `REPLICATION_VIEW`, `FULL`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The materialized view's select query. Views: `SCHEMA_VIEW`
        # , `FULL`.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_states = args[:cluster_states] if args.key?(:cluster_states)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # A create, update, or delete of a particular column family.
      class Modification
        include Google::Apis::Core::Hashable
      
        # A set of columns within a table which share a common configuration.
        # Corresponds to the JSON property `create`
        # @return [Google::Apis::BigtableadminV2::ColumnFamily]
        attr_accessor :create
      
        # Drop (delete) the column family with the given ID, or fail if no such family
        # exists.
        # Corresponds to the JSON property `drop`
        # @return [Boolean]
        attr_accessor :drop
        alias_method :drop?, :drop
      
        # The ID of the column family to be modified.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A set of columns within a table which share a common configuration.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::BigtableadminV2::ColumnFamily]
        attr_accessor :update
      
        # Optional. A mask specifying which fields (e.g. `gc_rule`) in the `update` mod
        # should be updated, ignored for other modification types. If unset or empty, we
        # treat it as updating `gc_rule` to be backward compatible.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create = args[:create] if args.key?(:create)
          @drop = args[:drop] if args.key?(:drop)
          @id = args[:id] if args.key?(:id)
          @update = args[:update] if args.key?(:update)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.
      # ModifyColumnFamilies
      class ModifyColumnFamiliesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If true, ignore safety checks when modifying the column families.
        # Corresponds to the JSON property `ignoreWarnings`
        # @return [Boolean]
        attr_accessor :ignore_warnings
        alias_method :ignore_warnings?, :ignore_warnings
      
        # Required. Modifications to be atomically applied to the specified table's
        # families. Entries are applied in order, meaning that earlier modifications can
        # be masked by later ones (in the case of repeated updates to the same family,
        # for example).
        # Corresponds to the JSON property `modifications`
        # @return [Array<Google::Apis::BigtableadminV2::Modification>]
        attr_accessor :modifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_warnings = args[:ignore_warnings] if args.key?(:ignore_warnings)
          @modifications = args[:modifications] if args.key?(:modifications)
        end
      end
      
      # Read/write requests are routed to the nearest cluster in the instance, and
      # will fail over to the nearest cluster that is available in the event of
      # transient errors or delays. Clusters in a region are considered equidistant.
      # Choosing this option sacrifices read-your-writes consistency to improve
      # availability.
      class MultiClusterRoutingUseAny
        include Google::Apis::Core::Hashable
      
        # The set of clusters to route to. The order is ignored; clusters will be tried
        # in order of distance. If left empty, all clusters are eligible.
        # Corresponds to the JSON property `clusterIds`
        # @return [Array<String>]
        attr_accessor :cluster_ids
      
        # If enabled, Bigtable will route the request based on the row key of the
        # request, rather than randomly. Instead, each row key will be assigned to a
        # cluster, and will stick to that cluster. If clusters are added or removed,
        # then this may affect which row keys stick to which clusters. To avoid this,
        # users can use a cluster group to specify which clusters are to be used. In
        # this case, new clusters that are not a part of the cluster group will not be
        # routed to, and routing will be unaffected by the new cluster. Moreover,
        # clusters specified in the cluster group cannot be deleted unless removed from
        # the cluster group.
        # Corresponds to the JSON property `rowAffinity`
        # @return [Google::Apis::BigtableadminV2::RowAffinity]
        attr_accessor :row_affinity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_ids = args[:cluster_ids] if args.key?(:cluster_ids)
          @row_affinity = args[:row_affinity] if args.key?(:row_affinity)
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
        # @return [Google::Apis::BigtableadminV2::Status]
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
      
      # Encapsulates progress related information for a Cloud Bigtable long running
      # operation.
      class OperationProgress
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Percent completion of the operation. Values are between 0 and 100 inclusive.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata type for the long-running operation used to track the progress of
      # optimizations performed on a newly restored table. This long-running operation
      # is automatically created by the system after the successful completion of a
      # table restore, and cannot be cancelled.
      class OptimizeRestoredTableMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the restored table being optimized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Bigtable long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::BigtableadminV2::OperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # The metadata for the Operation returned by PartialUpdateCluster.
      class PartialUpdateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.PartialUpdateCluster.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::PartialUpdateClusterRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.PartialUpdateCluster.
      class PartialUpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::BigtableadminV2::Cluster]
        attr_accessor :cluster
      
        # Required. The subset of Cluster fields which should be replaced.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for BigtableInstanceAdmin.PartialUpdateInstance.
      class PartialUpdateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # A collection of Bigtable Tables and the resources that serve them. All tables
        # in an instance are served from all Clusters in the instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::BigtableadminV2::Instance]
        attr_accessor :instance
      
        # Required. The subset of Instance fields which should be replaced. Must be
        # explicitly set.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
        # @return [Array<Google::Apis::BigtableadminV2::AuditConfig>]
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
        # @return [Array<Google::Apis::BigtableadminV2::Binding>]
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
      
      # Represents a protobuf schema.
      class ProtoSchema
        include Google::Apis::Core::Hashable
      
        # Required. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](
        # https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/
        # descriptor.proto), which could include multiple proto files. To generate it, [
        # install](https://grpc.io/docs/protoc-installation/) and run `protoc` with `--
        # include_imports` and `--descriptor_set_out`. For example, to generate for moon/
        # shot/app.proto, run ``` $protoc --proto_path=/app_path --proto_path=/lib_path \
        # --include_imports \ --descriptor_set_out=descriptors.pb \ moon/shot/app.proto
        # ``` For more details, see protobuffer [self description](https://developers.
        # google.com/protocol-buffers/docs/techniques#self-description).
        # Corresponds to the JSON property `protoDescriptors`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :proto_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proto_descriptors = args[:proto_descriptors] if args.key?(:proto_descriptors)
        end
      end
      
      # Information about a table restore.
      class RestoreInfo
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::BigtableadminV2::BackupInfo]
        attr_accessor :backup_info
      
        # The type of the restore source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_info = args[:backup_info] if args.key?(:backup_info)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Metadata type for the long-running operation returned by RestoreTable.
      class RestoreTableMetadata
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::BigtableadminV2::BackupInfo]
        attr_accessor :backup_info
      
        # Name of the table being created and restored to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If exists, the name of the long-running operation that will be used to track
        # the post-restore optimization process to optimize the performance of the
        # restored table. The metadata type of the long-running operation is
        # OptimizeRestoredTableMetadata. The response type is Empty. This long-running
        # operation may be automatically created by the system if applicable after the
        # RestoreTable long-running operation completes successfully. This operation may
        # not be created if the table is already optimized or the restore was not
        # successful.
        # Corresponds to the JSON property `optimizeTableOperationName`
        # @return [String]
        attr_accessor :optimize_table_operation_name
      
        # Encapsulates progress related information for a Cloud Bigtable long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::BigtableadminV2::OperationProgress]
        attr_accessor :progress
      
        # The type of the restore source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_info = args[:backup_info] if args.key?(:backup_info)
          @name = args[:name] if args.key?(:name)
          @optimize_table_operation_name = args[:optimize_table_operation_name] if args.key?(:optimize_table_operation_name)
          @progress = args[:progress] if args.key?(:progress)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # The request for RestoreTable.
      class RestoreTableRequest
        include Google::Apis::Core::Hashable
      
        # Name of the backup from which to restore. Values are of the form `projects//
        # instances//clusters//backups/`.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Required. The id of the table to create and restore to. This table must not
        # already exist. The `table_id` appended to `parent` forms the full table name
        # of the form `projects//instances//tables/`.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # If enabled, Bigtable will route the request based on the row key of the
      # request, rather than randomly. Instead, each row key will be assigned to a
      # cluster, and will stick to that cluster. If clusters are added or removed,
      # then this may affect which row keys stick to which clusters. To avoid this,
      # users can use a cluster group to specify which clusters are to be used. In
      # this case, new clusters that are not a part of the cluster group will not be
      # routed to, and routing will be unaffected by the new cluster. Moreover,
      # clusters specified in the cluster group cannot be deleted unless removed from
      # the cluster group.
      class RowAffinity
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A named collection of related schemas.
      class SchemaBundle
        include Google::Apis::Core::Hashable
      
        # Optional. The etag for this schema bundle. This may be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # The server returns an ABORTED error on a mismatched etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The unique name identifying this schema bundle. Values are of the
        # form `projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        # schema_bundle``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a protobuf schema.
        # Corresponds to the JSON property `protoSchema`
        # @return [Google::Apis::BigtableadminV2::ProtoSchema]
        attr_accessor :proto_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @proto_schema = args[:proto_schema] if args.key?(:proto_schema)
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
        # @return [Google::Apis::BigtableadminV2::Policy]
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
      
      # Unconditionally routes all read/write requests to a specific cluster. This
      # option preserves read-your-writes consistency but does not improve
      # availability.
      class SingleClusterRouting
        include Google::Apis::Core::Hashable
      
        # Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are
        # allowed by this app profile. It is unsafe to send these requests to the same
        # table/row/column in multiple clusters.
        # Corresponds to the JSON property `allowTransactionalWrites`
        # @return [Boolean]
        attr_accessor :allow_transactional_writes
        alias_method :allow_transactional_writes?, :allow_transactional_writes
      
        # The cluster to which read/write requests should be routed.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_transactional_writes = args[:allow_transactional_writes] if args.key?(:allow_transactional_writes)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
        end
      end
      
      # An initial split point for a newly created table.
      class Split
        include Google::Apis::Core::Hashable
      
        # Row key to use as an initial tablet boundary.
        # Corresponds to the JSON property `key`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Standard options for isolating this app profile's traffic from other use cases.
      class StandardIsolation
        include Google::Apis::Core::Hashable
      
        # The priority of requests sent using this app profile.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Checks that all writes before the consistency token was generated are
      # replicated in every cluster and readable.
      class StandardReadRemoteWrites
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
      
      # A collection of user data indexed by row, column, and timestamp. Each table is
      # served using the resources of its parent cluster.
      class Table
        include Google::Apis::Core::Hashable
      
        # Defines an automated backup policy for a table
        # Corresponds to the JSON property `automatedBackupPolicy`
        # @return [Google::Apis::BigtableadminV2::AutomatedBackupPolicy]
        attr_accessor :automated_backup_policy
      
        # Change stream configuration.
        # Corresponds to the JSON property `changeStreamConfig`
        # @return [Google::Apis::BigtableadminV2::ChangeStreamConfig]
        attr_accessor :change_stream_config
      
        # Output only. Map from cluster ID to per-cluster table state. If it could not
        # be determined whether or not the table has data in a particular cluster (for
        # example, if its zone is unavailable), then there will be an entry for the
        # cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `
        # ENCRYPTION_VIEW`, `FULL`
        # Corresponds to the JSON property `clusterStates`
        # @return [Hash<String,Google::Apis::BigtableadminV2::ClusterState>]
        attr_accessor :cluster_states
      
        # The column families configured for this table, mapped by column family ID.
        # Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
        # Corresponds to the JSON property `columnFamilies`
        # @return [Hash<String,Google::Apis::BigtableadminV2::ColumnFamily>]
        attr_accessor :column_families
      
        # Set to true to make the table protected against data loss. i.e. deleting the
        # following resources through Admin APIs are prohibited: * The table. * The
        # column families in the table. * The instance containing the table. Note one
        # can still delete the data stored in the table through Data APIs.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in
        # this table. Timestamps not matching the granularity will be rejected. If
        # unspecified at creation time, the value will be set to `MILLIS`. Views: `
        # SCHEMA_VIEW`, `FULL`.
        # Corresponds to the JSON property `granularity`
        # @return [String]
        attr_accessor :granularity
      
        # The unique name of the table. Values are of the form `projects/`project`/
        # instances/`instance`/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `
        # REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about a table restore.
        # Corresponds to the JSON property `restoreInfo`
        # @return [Google::Apis::BigtableadminV2::RestoreInfo]
        attr_accessor :restore_info
      
        # A structured data value, consisting of fields which map to dynamically typed
        # values. Values of type `Struct` are stored in `Value.array_value` where
        # entries are in the same order and number as `field_types`.
        # Corresponds to the JSON property `rowKeySchema`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct]
        attr_accessor :row_key_schema
      
        # Approximate statistics related to a table. These statistics are calculated
        # infrequently, while simultaneously, data in the table can change rapidly. Thus
        # the values reported here (e.g. row count) are very likely out-of date, even
        # the instant they are received in this API. Thus, only treat these values as
        # approximate. IMPORTANT: Everything below is approximate, unless otherwise
        # specified.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::BigtableadminV2::TableStats]
        attr_accessor :stats
      
        # Config for tiered storage. A valid config must have a valid TieredStorageRule.
        # Otherwise the whole TieredStorageConfig must be unset. By default all data is
        # stored in the SSD tier (only SSD instances can configure tiered storage).
        # Corresponds to the JSON property `tieredStorageConfig`
        # @return [Google::Apis::BigtableadminV2::TieredStorageConfig]
        attr_accessor :tiered_storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_backup_policy = args[:automated_backup_policy] if args.key?(:automated_backup_policy)
          @change_stream_config = args[:change_stream_config] if args.key?(:change_stream_config)
          @cluster_states = args[:cluster_states] if args.key?(:cluster_states)
          @column_families = args[:column_families] if args.key?(:column_families)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @granularity = args[:granularity] if args.key?(:granularity)
          @name = args[:name] if args.key?(:name)
          @restore_info = args[:restore_info] if args.key?(:restore_info)
          @row_key_schema = args[:row_key_schema] if args.key?(:row_key_schema)
          @stats = args[:stats] if args.key?(:stats)
          @tiered_storage_config = args[:tiered_storage_config] if args.key?(:tiered_storage_config)
        end
      end
      
      # Progress info for copying a table's data to the new cluster.
      class TableProgress
        include Google::Apis::Core::Hashable
      
        # Estimate of the number of bytes copied so far for this table. This will
        # eventually reach 'estimated_size_bytes' unless the table copy is CANCELLED.
        # Corresponds to the JSON property `estimatedCopiedBytes`
        # @return [Fixnum]
        attr_accessor :estimated_copied_bytes
      
        # Estimate of the size of the table to be copied.
        # Corresponds to the JSON property `estimatedSizeBytes`
        # @return [Fixnum]
        attr_accessor :estimated_size_bytes
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_copied_bytes = args[:estimated_copied_bytes] if args.key?(:estimated_copied_bytes)
          @estimated_size_bytes = args[:estimated_size_bytes] if args.key?(:estimated_size_bytes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Approximate statistics related to a table. These statistics are calculated
      # infrequently, while simultaneously, data in the table can change rapidly. Thus
      # the values reported here (e.g. row count) are very likely out-of date, even
      # the instant they are received in this API. Thus, only treat these values as
      # approximate. IMPORTANT: Everything below is approximate, unless otherwise
      # specified.
      class TableStats
        include Google::Apis::Core::Hashable
      
        # How many cells are present per column (column family, column qualifier)
        # combinations, averaged over all columns in all rows in the table. e.g. A table
        # with 2 rows: * A row with 3 cells in "family:col" and 1 cell in "other:col" (4
        # cells / 2 columns) * A row with 1 cell in "family:col", 7 cells in "family:
        # other_col", and 7 cells in "other:data" (15 cells / 3 columns) would report (4
        # + 15)/(2 + 3) = 3.8 in this field.
        # Corresponds to the JSON property `averageCellsPerColumn`
        # @return [Float]
        attr_accessor :average_cells_per_column
      
        # How many (column family, column qualifier) combinations are present per row in
        # the table, averaged over all rows in the table. e.g. A table with 2 rows: * A
        # row with cells in "family:col" and "other:col" (2 distinct columns) * A row
        # with cells in "family:col", "family:other_col", and "other:data" (3 distinct
        # columns) would report (2 + 3)/2 = 2.5 in this field.
        # Corresponds to the JSON property `averageColumnsPerRow`
        # @return [Float]
        attr_accessor :average_columns_per_row
      
        # This is roughly how many bytes would be needed to read the entire table (e.g.
        # by streaming all contents out).
        # Corresponds to the JSON property `logicalDataBytes`
        # @return [Fixnum]
        attr_accessor :logical_data_bytes
      
        # How many rows are in the table.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_cells_per_column = args[:average_cells_per_column] if args.key?(:average_cells_per_column)
          @average_columns_per_row = args[:average_columns_per_row] if args.key?(:average_columns_per_row)
          @logical_data_bytes = args[:logical_data_bytes] if args.key?(:logical_data_bytes)
          @row_count = args[:row_count] if args.key?(:row_count)
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
      
      # Config for tiered storage. A valid config must have a valid TieredStorageRule.
      # Otherwise the whole TieredStorageConfig must be unset. By default all data is
      # stored in the SSD tier (only SSD instances can configure tiered storage).
      class TieredStorageConfig
        include Google::Apis::Core::Hashable
      
        # Rule to specify what data is stored in a storage tier.
        # Corresponds to the JSON property `infrequentAccess`
        # @return [Google::Apis::BigtableadminV2::TieredStorageRule]
        attr_accessor :infrequent_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @infrequent_access = args[:infrequent_access] if args.key?(:infrequent_access)
        end
      end
      
      # Rule to specify what data is stored in a storage tier.
      class TieredStorageRule
        include Google::Apis::Core::Hashable
      
        # Include cells older than the given age. For the infrequent access tier, this
        # value must be at least 30 days.
        # Corresponds to the JSON property `includeIfOlderThan`
        # @return [String]
        attr_accessor :include_if_older_than
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_if_older_than = args[:include_if_older_than] if args.key?(:include_if_older_than)
        end
      end
      
      # `Type` represents the type of data that is written to, read from, or stored in
      # Bigtable. It is heavily based on the GoogleSQL standard to help maintain
      # familiarity and consistency across products and features. For compatibility
      # with Bigtable's existing untyped APIs, each `Type` includes an `Encoding`
      # which describes how to convert to or from the underlying data. Each encoding
      # can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees
      # that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere
      # sort order is important, for example when encoding keys. - Distinct: In this
      # mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`.
      # However, the converse is not guaranteed. For example, both ``'foo': '1', 'bar':
      # '2'`` and ``'bar': '2', 'foo': '1'`` are valid encodings of the same JSON
      # value. The API clearly documents which mode is used wherever an encoding can
      # be configured. Each encoding also documents which values are supported in
      # which modes. For example, when encoding INT64 as a numeric STRING, negative
      # numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)
      # `, but `STRING("-00001") > STRING("00001")`.
      class Type
        include Google::Apis::Core::Hashable
      
        # A value that combines incremental updates into a summarized value. Data is
        # never directly written or read using type `Aggregate`. Writes provide either
        # the `input_type` or `state_type`, and reads always return the `state_type` .
        # Corresponds to the JSON property `aggregateType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeAggregate]
        attr_accessor :aggregate_type
      
        # An ordered list of elements of a given type. Values of type `Array` are stored
        # in `Value.array_value`.
        # Corresponds to the JSON property `arrayType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeArray]
        attr_accessor :array_type
      
        # bool Values of type `Bool` are stored in `Value.bool_value`.
        # Corresponds to the JSON property `boolType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBool]
        attr_accessor :bool_type
      
        # Bytes Values of type `Bytes` are stored in `Value.bytes_value`.
        # Corresponds to the JSON property `bytesType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeBytes]
        attr_accessor :bytes_type
      
        # Date Values of type `Date` are stored in `Value.date_value`.
        # Corresponds to the JSON property `dateType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeDate]
        attr_accessor :date_type
      
        # A protobuf enum type. Values of type `Enum` are stored in `Value.int_value`.
        # Corresponds to the JSON property `enumType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeEnum]
        attr_accessor :enum_type
      
        # Float32 Values of type `Float32` are stored in `Value.float_value`.
        # Corresponds to the JSON property `float32Type`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat32]
        attr_accessor :float32_type
      
        # Float64 Values of type `Float64` are stored in `Value.float_value`.
        # Corresponds to the JSON property `float64Type`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeFloat64]
        attr_accessor :float64_type
      
        # Int64 Values of type `Int64` are stored in `Value.int_value`.
        # Corresponds to the JSON property `int64Type`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeInt64]
        attr_accessor :int64_type
      
        # A mapping of keys to values of a given type. Values of type `Map` are stored
        # in a `Value.array_value` where each entry is another `Value.array_value` with
        # two elements (the key and the value, in that order). Normally encoded Map
        # values won't have repeated keys, however, clients are expected to handle the
        # case in which they do. If the same key appears multiple times, the _last_
        # value takes precedence.
        # Corresponds to the JSON property `mapType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeMap]
        attr_accessor :map_type
      
        # A protobuf message type. Values of type `Proto` are stored in `Value.
        # bytes_value`.
        # Corresponds to the JSON property `protoType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeProto]
        attr_accessor :proto_type
      
        # String Values of type `String` are stored in `Value.string_value`.
        # Corresponds to the JSON property `stringType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeString]
        attr_accessor :string_type
      
        # A structured data value, consisting of fields which map to dynamically typed
        # values. Values of type `Struct` are stored in `Value.array_value` where
        # entries are in the same order and number as `field_types`.
        # Corresponds to the JSON property `structType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeStruct]
        attr_accessor :struct_type
      
        # Timestamp Values of type `Timestamp` are stored in `Value.timestamp_value`.
        # Corresponds to the JSON property `timestampType`
        # @return [Google::Apis::BigtableadminV2::GoogleBigtableAdminV2TypeTimestamp]
        attr_accessor :timestamp_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_type = args[:aggregate_type] if args.key?(:aggregate_type)
          @array_type = args[:array_type] if args.key?(:array_type)
          @bool_type = args[:bool_type] if args.key?(:bool_type)
          @bytes_type = args[:bytes_type] if args.key?(:bytes_type)
          @date_type = args[:date_type] if args.key?(:date_type)
          @enum_type = args[:enum_type] if args.key?(:enum_type)
          @float32_type = args[:float32_type] if args.key?(:float32_type)
          @float64_type = args[:float64_type] if args.key?(:float64_type)
          @int64_type = args[:int64_type] if args.key?(:int64_type)
          @map_type = args[:map_type] if args.key?(:map_type)
          @proto_type = args[:proto_type] if args.key?(:proto_type)
          @string_type = args[:string_type] if args.key?(:string_type)
          @struct_type = args[:struct_type] if args.key?(:struct_type)
          @timestamp_type = args[:timestamp_type] if args.key?(:timestamp_type)
        end
      end
      
      # Metadata type for the operation returned by google.bigtable.admin.v2.
      # BigtableTableAdmin.UndeleteTable.
      class UndeleteTableMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation finished or was cancelled. DEPRECATED:
        # Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The name of the table being restored.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # The time at which this operation started. DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable
      class UndeleteTableRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A GcRule which deletes cells matching any of the given rules.
      class Union
        include Google::Apis::Core::Hashable
      
        # Delete cells which would be deleted by any element of `rules`.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::BigtableadminV2::GcRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # The metadata for the Operation returned by UpdateAppProfile.
      class UpdateAppProfileMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the google.longrunning.Operation returned by UpdateAuthorizedView.
      class UpdateAuthorizedViewMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The request for UpdateAuthorizedView.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::UpdateAuthorizedViewRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The request for UpdateAuthorizedView.
      class UpdateAuthorizedViewRequest
        include Google::Apis::Core::Hashable
      
        # An Authorized View of a Cloud Bigtable Table.
        # Corresponds to the JSON property `authorizedView`
        # @return [Google::Apis::BigtableadminV2::AuthorizedView]
        attr_accessor :authorized_view
      
        # Optional. If true, ignore the safety checks when updating the AuthorizedView.
        # Corresponds to the JSON property `ignoreWarnings`
        # @return [Boolean]
        attr_accessor :ignore_warnings
        alias_method :ignore_warnings?, :ignore_warnings
      
        # Optional. The list of fields to update. A mask specifying which fields in the
        # AuthorizedView resource should be updated. This mask is relative to the
        # AuthorizedView resource, not to the request message. A field will be
        # overwritten if it is in the mask. If empty, all fields set in the request will
        # be overwritten. A special value `*` means to overwrite all fields (including
        # fields not set in the request).
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_view = args[:authorized_view] if args.key?(:authorized_view)
          @ignore_warnings = args[:ignore_warnings] if args.key?(:ignore_warnings)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The metadata for the Operation returned by UpdateCluster.
      class UpdateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::Cluster]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The metadata for the Operation returned by UpdateInstance.
      class UpdateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.PartialUpdateInstance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::PartialUpdateInstanceRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The metadata for the Operation returned by UpdateLogicalView.
      class UpdateLogicalViewMetadata
        include Google::Apis::Core::Hashable
      
        # DEPRECATED: Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.UpdateLogicalView.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV2::UpdateLogicalViewRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.UpdateLogicalView.
      class UpdateLogicalViewRequest
        include Google::Apis::Core::Hashable
      
        # A SQL logical view object that can be referenced in SQL queries.
        # Corresponds to the JSON property `logicalView`
        # @return [Google::Apis::BigtableadminV2::LogicalView]
        attr_accessor :logical_view
      
        # Optional. The list of fields to update.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_view = args[:logical_view] if args.key?(:logical_view)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The metadata for the Operation returned by UpdateSchemaBundle.
      class UpdateSchemaBundleMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The unique name identifying this schema bundle. Values are of the form `
        # projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        # schema_bundle``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Metadata type for the operation returned by UpdateTable.
      class UpdateTableMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation finished or was canceled. DEPRECATED:
        # Use finish_time instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The name of the table being updated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # The time at which this operation started. DEPRECATED: Use request_time instead.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
    end
  end
end
