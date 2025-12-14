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
    module SpannerV1
      
      # Message sent by the client to the adapter.
      class AdaptMessageRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Opaque request state passed by the client to the server.
        # Corresponds to the JSON property `attachments`
        # @return [Hash<String,String>]
        attr_accessor :attachments
      
        # Optional. Uninterpreted bytes from the underlying wire protocol.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Required. Identifier for the underlying wire protocol.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @payload = args[:payload] if args.key?(:payload)
          @protocol = args[:protocol] if args.key?(:protocol)
        end
      end
      
      # Message sent by the adapter to the client.
      class AdaptMessageResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether this is the last AdaptMessageResponse in the
        # stream. This field may be optionally set by the server. Clients should not
        # rely on this field being set in all cases.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Optional. Uninterpreted bytes from the underlying wire protocol.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Optional. Opaque state updates to be applied by the client.
        # Corresponds to the JSON property `stateUpdates`
        # @return [Hash<String,String>]
        attr_accessor :state_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last = args[:last] if args.key?(:last)
          @payload = args[:payload] if args.key?(:payload)
          @state_updates = args[:state_updates] if args.key?(:state_updates)
        end
      end
      
      # A session in the Cloud Spanner Adapter API.
      class AdapterSession
        include Google::Apis::Core::Hashable
      
        # Identifier. The name of the session. This is always system-assigned.
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
      
      # The request for AddSplitPoints.
      class AddSplitPointsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A user-supplied tag associated with the split points. For example, "
        # initial_data_load", "special_event_1". Defaults to "CloudAddSplitPointsAPI" if
        # not specified. The length of the tag must not exceed 50 characters, or else it
        # is trimmed. Only valid UTF8 characters are allowed.
        # Corresponds to the JSON property `initiator`
        # @return [String]
        attr_accessor :initiator
      
        # Required. The split points to add.
        # Corresponds to the JSON property `splitPoints`
        # @return [Array<Google::Apis::SpannerV1::SplitPoints>]
        attr_accessor :split_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initiator = args[:initiator] if args.key?(:initiator)
          @split_points = args[:split_points] if args.key?(:split_points)
        end
      end
      
      # The response for AddSplitPoints.
      class AddSplitPointsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # AsymmetricAutoscalingOption specifies the scaling of replicas identified by
      # the given selection.
      class AsymmetricAutoscalingOption
        include Google::Apis::Core::Hashable
      
        # Overrides the top-level autoscaling configuration for the replicas identified
        # by `replica_selection`. All fields in this message are optional. Any
        # unspecified fields will use the corresponding values from the top-level
        # autoscaling configuration.
        # Corresponds to the JSON property `overrides`
        # @return [Google::Apis::SpannerV1::AutoscalingConfigOverrides]
        attr_accessor :overrides
      
        # ReplicaSelection identifies replicas with common properties.
        # Corresponds to the JSON property `replicaSelection`
        # @return [Google::Apis::SpannerV1::InstanceReplicaSelection]
        attr_accessor :replica_selection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overrides = args[:overrides] if args.key?(:overrides)
          @replica_selection = args[:replica_selection] if args.key?(:replica_selection)
        end
      end
      
      # Autoscaling configuration for an instance.
      class AutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Optional asymmetric autoscaling options. Replicas matching the
        # replica selection criteria will be autoscaled independently from other
        # replicas. The autoscaler will scale the replicas based on the utilization of
        # replicas identified by the replica selection. Replica selections should not
        # overlap with each other. Other replicas (those do not match any replica
        # selection) will be autoscaled together and will have the same compute capacity
        # allocated to them.
        # Corresponds to the JSON property `asymmetricAutoscalingOptions`
        # @return [Array<Google::Apis::SpannerV1::AsymmetricAutoscalingOption>]
        attr_accessor :asymmetric_autoscaling_options
      
        # The autoscaling limits for the instance. Users can define the minimum and
        # maximum compute capacity allocated to the instance, and the autoscaler will
        # only scale within that range. Users can either use nodes or processing units
        # to specify the limits, but should use the same unit to set both the min_limit
        # and max_limit.
        # Corresponds to the JSON property `autoscalingLimits`
        # @return [Google::Apis::SpannerV1::AutoscalingLimits]
        attr_accessor :autoscaling_limits
      
        # The autoscaling targets for an instance.
        # Corresponds to the JSON property `autoscalingTargets`
        # @return [Google::Apis::SpannerV1::AutoscalingTargets]
        attr_accessor :autoscaling_targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asymmetric_autoscaling_options = args[:asymmetric_autoscaling_options] if args.key?(:asymmetric_autoscaling_options)
          @autoscaling_limits = args[:autoscaling_limits] if args.key?(:autoscaling_limits)
          @autoscaling_targets = args[:autoscaling_targets] if args.key?(:autoscaling_targets)
        end
      end
      
      # Overrides the top-level autoscaling configuration for the replicas identified
      # by `replica_selection`. All fields in this message are optional. Any
      # unspecified fields will use the corresponding values from the top-level
      # autoscaling configuration.
      class AutoscalingConfigOverrides
        include Google::Apis::Core::Hashable
      
        # The autoscaling limits for the instance. Users can define the minimum and
        # maximum compute capacity allocated to the instance, and the autoscaler will
        # only scale within that range. Users can either use nodes or processing units
        # to specify the limits, but should use the same unit to set both the min_limit
        # and max_limit.
        # Corresponds to the JSON property `autoscalingLimits`
        # @return [Google::Apis::SpannerV1::AutoscalingLimits]
        attr_accessor :autoscaling_limits
      
        # Optional. If specified, overrides the autoscaling target
        # high_priority_cpu_utilization_percent in the top-level autoscaling
        # configuration for the selected replicas.
        # Corresponds to the JSON property `autoscalingTargetHighPriorityCpuUtilizationPercent`
        # @return [Fixnum]
        attr_accessor :autoscaling_target_high_priority_cpu_utilization_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_limits = args[:autoscaling_limits] if args.key?(:autoscaling_limits)
          @autoscaling_target_high_priority_cpu_utilization_percent = args[:autoscaling_target_high_priority_cpu_utilization_percent] if args.key?(:autoscaling_target_high_priority_cpu_utilization_percent)
        end
      end
      
      # The autoscaling limits for the instance. Users can define the minimum and
      # maximum compute capacity allocated to the instance, and the autoscaler will
      # only scale within that range. Users can either use nodes or processing units
      # to specify the limits, but should use the same unit to set both the min_limit
      # and max_limit.
      class AutoscalingLimits
        include Google::Apis::Core::Hashable
      
        # Maximum number of nodes allocated to the instance. If set, this number should
        # be greater than or equal to min_nodes.
        # Corresponds to the JSON property `maxNodes`
        # @return [Fixnum]
        attr_accessor :max_nodes
      
        # Maximum number of processing units allocated to the instance. If set, this
        # number should be multiples of 1000 and be greater than or equal to
        # min_processing_units.
        # Corresponds to the JSON property `maxProcessingUnits`
        # @return [Fixnum]
        attr_accessor :max_processing_units
      
        # Minimum number of nodes allocated to the instance. If set, this number should
        # be greater than or equal to 1.
        # Corresponds to the JSON property `minNodes`
        # @return [Fixnum]
        attr_accessor :min_nodes
      
        # Minimum number of processing units allocated to the instance. If set, this
        # number should be multiples of 1000.
        # Corresponds to the JSON property `minProcessingUnits`
        # @return [Fixnum]
        attr_accessor :min_processing_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_nodes = args[:max_nodes] if args.key?(:max_nodes)
          @max_processing_units = args[:max_processing_units] if args.key?(:max_processing_units)
          @min_nodes = args[:min_nodes] if args.key?(:min_nodes)
          @min_processing_units = args[:min_processing_units] if args.key?(:min_processing_units)
        end
      end
      
      # The autoscaling targets for an instance.
      class AutoscalingTargets
        include Google::Apis::Core::Hashable
      
        # Required. The target high priority cpu utilization percentage that the
        # autoscaler should be trying to achieve for the instance. This number is on a
        # scale from 0 (no utilization) to 100 (full utilization). The valid range is [
        # 10, 90] inclusive.
        # Corresponds to the JSON property `highPriorityCpuUtilizationPercent`
        # @return [Fixnum]
        attr_accessor :high_priority_cpu_utilization_percent
      
        # Required. The target storage utilization percentage that the autoscaler should
        # be trying to achieve for the instance. This number is on a scale from 0 (no
        # utilization) to 100 (full utilization). The valid range is [10, 99] inclusive.
        # Corresponds to the JSON property `storageUtilizationPercent`
        # @return [Fixnum]
        attr_accessor :storage_utilization_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_priority_cpu_utilization_percent = args[:high_priority_cpu_utilization_percent] if args.key?(:high_priority_cpu_utilization_percent)
          @storage_utilization_percent = args[:storage_utilization_percent] if args.key?(:storage_utilization_percent)
        end
      end
      
      # A backup of a Cloud Spanner database.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. List of backup schedule URIs that are associated with creating
        # this backup. This is only applicable for scheduled backups, and is empty for
        # on-demand backups. To optimize for storage, whenever possible, multiple
        # schedules are collapsed together to create one backup. In such cases, this
        # field captures the list of all backup schedule URIs that are associated with
        # creating this backup. If collapsing is not done, then this field captures the
        # single backup schedule URI associated with creating this backup.
        # Corresponds to the JSON property `backupSchedules`
        # @return [Array<String>]
        attr_accessor :backup_schedules
      
        # Output only. The time the CreateBackup request is received. If the request
        # does not specify `version_time`, the `version_time` of the backup will be
        # equivalent to the `create_time`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required for the CreateBackup operation. Name of the database from which this
        # backup was created. This needs to be in the same instance as the backup.
        # Values are of the form `projects//instances//databases/`.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Output only. The database dialect information for the backup.
        # Corresponds to the JSON property `databaseDialect`
        # @return [String]
        attr_accessor :database_dialect
      
        # Encryption information for a Cloud Spanner database or backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::SpannerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Output only. The encryption information for the backup, whether it is
        # protected by one or more KMS keys. The information includes all Cloud KMS key
        # versions used to encrypt the backup. The `encryption_status` field inside of
        # each `EncryptionInfo` is not populated. At least one of the key versions must
        # be available for the backup to be restored. If a key version is revoked in the
        # middle of a restore, the restore behavior is undefined.
        # Corresponds to the JSON property `encryptionInformation`
        # @return [Array<Google::Apis::SpannerV1::EncryptionInfo>]
        attr_accessor :encryption_information
      
        # Output only. For a backup in an incremental backup chain, this is the storage
        # space needed to keep the data that has changed since the previous backup. For
        # all other backups, this is always the size of the backup. This value may
        # change if backups on the same chain get deleted or expired. This field can be
        # used to calculate the total storage space used by a set of backups. For
        # example, the total space used by all backups of a database can be computed by
        # summing up this field.
        # Corresponds to the JSON property `exclusiveSizeBytes`
        # @return [Fixnum]
        attr_accessor :exclusive_size_bytes
      
        # Required for the CreateBackup operation. The expiration time of the backup,
        # with microseconds granularity that must be at least 6 hours and at most 366
        # days from the time the CreateBackup request is processed. Once the `
        # expire_time` has passed, the backup is eligible to be automatically deleted by
        # Cloud Spanner to free the resources used by the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The number of bytes that will be freed by deleting this backup.
        # This value will be zero if, for example, this backup is part of an incremental
        # backup chain and younger backups in the chain require that we keep its data.
        # For backups not in an incremental backup chain, this is always the size of the
        # backup. This value may change if backups on the same chain get created,
        # deleted or expired.
        # Corresponds to the JSON property `freeableSizeBytes`
        # @return [Fixnum]
        attr_accessor :freeable_size_bytes
      
        # Output only. Populated only for backups in an incremental backup chain.
        # Backups share the same chain id if and only if they belong to the same
        # incremental backup chain. Use this field to determine which backups are part
        # of the same incremental backup chain. The ordering of backups in the chain can
        # be determined by ordering the backup `version_time`.
        # Corresponds to the JSON property `incrementalBackupChainId`
        # @return [String]
        attr_accessor :incremental_backup_chain_id
      
        # Output only. The instance partition storing the backup. This is the same as
        # the list of the instance partitions that the database recorded at the backup's
        # `version_time`.
        # Corresponds to the JSON property `instancePartitions`
        # @return [Array<Google::Apis::SpannerV1::BackupInstancePartition>]
        attr_accessor :instance_partitions
      
        # Output only. The max allowed expiration time of the backup, with microseconds
        # granularity. A backup's expiration time can be configured in multiple APIs:
        # CreateBackup, UpdateBackup, CopyBackup. When updating or copying an existing
        # backup, the expiration time specified must be less than `Backup.
        # max_expire_time`.
        # Corresponds to the JSON property `maxExpireTime`
        # @return [String]
        attr_accessor :max_expire_time
      
        # Output only for the CreateBackup operation. Required for the UpdateBackup
        # operation. A globally unique identifier for the backup which cannot be changed.
        # Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final
        # segment of the name must be between 2 and 60 characters in length. The backup
        # is stored in the location(s) specified in the instance configuration of the
        # instance containing the backup, identified by the prefix of the backup name of
        # the form `projects//instances/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Data deleted at a time older than this is guaranteed not to be
        # retained in order to support this backup. For a backup in an incremental
        # backup chain, this is the version time of the oldest backup that exists or
        # ever existed in the chain. For all other backups, this is the version time of
        # the backup. This field can be used to understand what data is being retained
        # by the backup system.
        # Corresponds to the JSON property `oldestVersionTime`
        # @return [String]
        attr_accessor :oldest_version_time
      
        # Output only. The names of the destination backups being created by copying
        # this source backup. The backup names are of the form `projects//instances//
        # backups/`. Referencing backups may exist in different instances. The existence
        # of any referencing backup prevents the backup from being deleted. When the
        # copy operation is done (either successfully completed or cancelled or the
        # destination backup is deleted), the reference to the backup is removed.
        # Corresponds to the JSON property `referencingBackups`
        # @return [Array<String>]
        attr_accessor :referencing_backups
      
        # Output only. The names of the restored databases that reference the backup.
        # The database names are of the form `projects//instances//databases/`.
        # Referencing databases may exist in different instances. The existence of any
        # referencing database prevents the backup from being deleted. When a restored
        # database from the backup enters the `READY` state, the reference to the backup
        # is removed.
        # Corresponds to the JSON property `referencingDatabases`
        # @return [Array<String>]
        attr_accessor :referencing_databases
      
        # Output only. Size of the backup in bytes. For a backup in an incremental
        # backup chain, this is the sum of the `exclusive_size_bytes` of itself and all
        # older backups in the chain.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The backup will contain an externally consistent copy of the database at the
        # timestamp specified by `version_time`. If `version_time` is not specified, the
        # system will set `version_time` to the `create_time` of the backup.
        # Corresponds to the JSON property `versionTime`
        # @return [String]
        attr_accessor :version_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_schedules = args[:backup_schedules] if args.key?(:backup_schedules)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database = args[:database] if args.key?(:database)
          @database_dialect = args[:database_dialect] if args.key?(:database_dialect)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @encryption_information = args[:encryption_information] if args.key?(:encryption_information)
          @exclusive_size_bytes = args[:exclusive_size_bytes] if args.key?(:exclusive_size_bytes)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @freeable_size_bytes = args[:freeable_size_bytes] if args.key?(:freeable_size_bytes)
          @incremental_backup_chain_id = args[:incremental_backup_chain_id] if args.key?(:incremental_backup_chain_id)
          @instance_partitions = args[:instance_partitions] if args.key?(:instance_partitions)
          @max_expire_time = args[:max_expire_time] if args.key?(:max_expire_time)
          @name = args[:name] if args.key?(:name)
          @oldest_version_time = args[:oldest_version_time] if args.key?(:oldest_version_time)
          @referencing_backups = args[:referencing_backups] if args.key?(:referencing_backups)
          @referencing_databases = args[:referencing_databases] if args.key?(:referencing_databases)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
          @version_time = args[:version_time] if args.key?(:version_time)
        end
      end
      
      # Information about a backup.
      class BackupInfo
        include Google::Apis::Core::Hashable
      
        # Name of the backup.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # The time the CreateBackup request was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Name of the database the backup was created from.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [String]
        attr_accessor :source_database
      
        # The backup contains an externally consistent copy of `source_database` at the
        # timestamp specified by `version_time`. If the CreateBackup request did not
        # specify `version_time`, the `version_time` of the backup is equivalent to the `
        # create_time`.
        # Corresponds to the JSON property `versionTime`
        # @return [String]
        attr_accessor :version_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @create_time = args[:create_time] if args.key?(:create_time)
          @source_database = args[:source_database] if args.key?(:source_database)
          @version_time = args[:version_time] if args.key?(:version_time)
        end
      end
      
      # Instance partition information for the backup.
      class BackupInstancePartition
        include Google::Apis::Core::Hashable
      
        # A unique identifier for the instance partition. Values are of the form `
        # projects//instances//instancePartitions/`
        # Corresponds to the JSON property `instancePartition`
        # @return [String]
        attr_accessor :instance_partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_partition = args[:instance_partition] if args.key?(:instance_partition)
        end
      end
      
      # BackupSchedule expresses the automated backup creation specification for a
      # Spanner database.
      class BackupSchedule
        include Google::Apis::Core::Hashable
      
        # Encryption configuration for the backup to create.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::CreateBackupEncryptionConfig]
        attr_accessor :encryption_config
      
        # The specification for full backups. A full backup stores the entire contents
        # of the database at a given version time.
        # Corresponds to the JSON property `fullBackupSpec`
        # @return [Google::Apis::SpannerV1::FullBackupSpec]
        attr_accessor :full_backup_spec
      
        # The specification for incremental backup chains. An incremental backup stores
        # the delta of changes between a previous backup and the database contents at a
        # given version time. An incremental backup chain consists of a full backup and
        # zero or more successive incremental backups. The first backup created for an
        # incremental backup chain is always a full backup.
        # Corresponds to the JSON property `incrementalBackupSpec`
        # @return [Google::Apis::SpannerV1::IncrementalBackupSpec]
        attr_accessor :incremental_backup_spec
      
        # Identifier. Output only for the CreateBackupSchedule operation. Required for
        # the UpdateBackupSchedule operation. A globally unique identifier for the
        # backup schedule which cannot be changed. Values are of the form `projects//
        # instances//databases//backupSchedules/a-z*[a-z0-9]` The final segment of the
        # name must be between 2 and 60 characters in length.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The retention duration of a backup that must be at least 6 hours and
        # at most 366 days. The backup is eligible to be automatically deleted once the
        # retention period has elapsed.
        # Corresponds to the JSON property `retentionDuration`
        # @return [String]
        attr_accessor :retention_duration
      
        # Defines specifications of the backup schedule.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::SpannerV1::BackupScheduleSpec]
        attr_accessor :spec
      
        # Output only. The timestamp at which the schedule was last updated. If the
        # schedule has never been updated, this field contains the timestamp when the
        # schedule was first created.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @full_backup_spec = args[:full_backup_spec] if args.key?(:full_backup_spec)
          @incremental_backup_spec = args[:incremental_backup_spec] if args.key?(:incremental_backup_spec)
          @name = args[:name] if args.key?(:name)
          @retention_duration = args[:retention_duration] if args.key?(:retention_duration)
          @spec = args[:spec] if args.key?(:spec)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines specifications of the backup schedule.
      class BackupScheduleSpec
        include Google::Apis::Core::Hashable
      
        # CrontabSpec can be used to specify the version time and frequency at which the
        # backup is created.
        # Corresponds to the JSON property `cronSpec`
        # @return [Google::Apis::SpannerV1::CrontabSpec]
        attr_accessor :cron_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_spec = args[:cron_spec] if args.key?(:cron_spec)
        end
      end
      
      # The request for BatchCreateSessions.
      class BatchCreateSessionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The number of sessions to be created in this batch call. At least
        # one session is created. The API can return fewer than the requested number of
        # sessions. If a specific number of sessions are desired, the client can make
        # additional calls to `BatchCreateSessions` (adjusting session_count as
        # necessary).
        # Corresponds to the JSON property `sessionCount`
        # @return [Fixnum]
        attr_accessor :session_count
      
        # A session in the Cloud Spanner API.
        # Corresponds to the JSON property `sessionTemplate`
        # @return [Google::Apis::SpannerV1::Session]
        attr_accessor :session_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_count = args[:session_count] if args.key?(:session_count)
          @session_template = args[:session_template] if args.key?(:session_template)
        end
      end
      
      # The response for BatchCreateSessions.
      class BatchCreateSessionsResponse
        include Google::Apis::Core::Hashable
      
        # The freshly created sessions.
        # Corresponds to the JSON property `session`
        # @return [Array<Google::Apis::SpannerV1::Session>]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # The request for BatchWrite.
      class BatchWriteRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If you don't set the `exclude_txn_from_change_streams` option or if
        # it's set to `false`, then any change streams monitoring columns modified by
        # transactions will capture the updates made within that transaction.
        # Corresponds to the JSON property `excludeTxnFromChangeStreams`
        # @return [Boolean]
        attr_accessor :exclude_txn_from_change_streams
        alias_method :exclude_txn_from_change_streams?, :exclude_txn_from_change_streams
      
        # Required. The groups of mutations to be applied.
        # Corresponds to the JSON property `mutationGroups`
        # @return [Array<Google::Apis::SpannerV1::MutationGroup>]
        attr_accessor :mutation_groups
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_txn_from_change_streams = args[:exclude_txn_from_change_streams] if args.key?(:exclude_txn_from_change_streams)
          @mutation_groups = args[:mutation_groups] if args.key?(:mutation_groups)
          @request_options = args[:request_options] if args.key?(:request_options)
        end
      end
      
      # The result of applying a batch of mutations.
      class BatchWriteResponse
        include Google::Apis::Core::Hashable
      
        # The commit timestamp of the transaction that applied this batch. Present if `
        # status` is `OK`, absent otherwise.
        # Corresponds to the JSON property `commitTimestamp`
        # @return [String]
        attr_accessor :commit_timestamp
      
        # The mutation groups applied in this batch. The values index into the `
        # mutation_groups` field in the corresponding `BatchWriteRequest`.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Fixnum>]
        attr_accessor :indexes
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_timestamp = args[:commit_timestamp] if args.key?(:commit_timestamp)
          @indexes = args[:indexes] if args.key?(:indexes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The request for BeginTransaction.
      class BeginTransactionRequest
        include Google::Apis::Core::Hashable
      
        # A modification to one or more Cloud Spanner rows. Mutations can be applied to
        # a Cloud Spanner database by sending them in a Commit call.
        # Corresponds to the JSON property `mutationKey`
        # @return [Google::Apis::SpannerV1::Mutation]
        attr_accessor :mutation_key
      
        # Options to use for transactions.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :options
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutation_key = args[:mutation_key] if args.key?(:mutation_key)
          @options = args[:options] if args.key?(:options)
          @request_options = args[:request_options] if args.key?(:request_options)
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
        # @return [Google::Apis::SpannerV1::Expr]
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
      
      # Metadata type for the long-running operation returned by ChangeQuorum.
      class ChangeQuorumMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for ChangeQuorum.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::SpannerV1::ChangeQuorumRequest]
        attr_accessor :request
      
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
          @request = args[:request] if args.key?(:request)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for ChangeQuorum.
      class ChangeQuorumRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The etag is the hash of the `QuorumInfo`. The `ChangeQuorum`
        # operation is only performed if the etag matches that of the `QuorumInfo` in
        # the current database resource. Otherwise the API returns an `ABORTED` error.
        # The etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous change quorum requests that could create a race condition.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. Name of the database in which to apply `ChangeQuorum`. Values are of
        # the form `projects//instances//databases/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about the database quorum type. This only applies to dual-region
        # instance configs.
        # Corresponds to the JSON property `quorumType`
        # @return [Google::Apis::SpannerV1::QuorumType]
        attr_accessor :quorum_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @quorum_type = args[:quorum_type] if args.key?(:quorum_type)
        end
      end
      
      # Spanner Change Streams enable customers to capture and stream out changes to
      # their Spanner databases in real-time. A change stream can be created with
      # option partition_mode='IMMUTABLE_KEY_RANGE' or partition_mode='
      # MUTABLE_KEY_RANGE'. This message is only used in Change Streams created with
      # the option partition_mode='MUTABLE_KEY_RANGE'. Spanner automatically creates a
      # special Table-Valued Function (TVF) along with each Change Streams. The
      # function provides access to the change stream's records. The function is named
      # READ_ (where is the name of the change stream), and it returns a table with
      # only one column called ChangeRecord.
      class ChangeStreamRecord
        include Google::Apis::Core::Hashable
      
        # A data change record contains a set of changes to a table with the same
        # modification type (insert, update, or delete) committed at the same commit
        # timestamp in one change stream partition for the same transaction. Multiple
        # data change records can be returned for the same transaction across multiple
        # change stream partitions.
        # Corresponds to the JSON property `dataChangeRecord`
        # @return [Google::Apis::SpannerV1::DataChangeRecord]
        attr_accessor :data_change_record
      
        # A heartbeat record is returned as a progress indicator, when there are no data
        # changes or any other partition record types in the change stream partition.
        # Corresponds to the JSON property `heartbeatRecord`
        # @return [Google::Apis::SpannerV1::HeartbeatRecord]
        attr_accessor :heartbeat_record
      
        # A partition end record serves as a notification that the client should stop
        # reading the partition. No further records are expected to be retrieved on it.
        # Corresponds to the JSON property `partitionEndRecord`
        # @return [Google::Apis::SpannerV1::PartitionEndRecord]
        attr_accessor :partition_end_record
      
        # A partition event record describes key range changes for a change stream
        # partition. The changes to a row defined by its primary key can be captured in
        # one change stream partition for a specific time range, and then be captured in
        # a different change stream partition for a different time range. This movement
        # of key ranges across change stream partitions is a reflection of activities,
        # such as Spanner's dynamic splitting and load balancing, etc. Processing this
        # event is needed if users want to guarantee processing of the changes for any
        # key in timestamp order. If time ordered processing of changes for a primary
        # key is not needed, this event can be ignored. To guarantee time ordered
        # processing for each primary key, if the event describes move-ins, the reader
        # of this partition needs to wait until the readers of the source partitions
        # have processed all records with timestamps <= this PartitionEventRecord.
        # commit_timestamp, before advancing beyond this PartitionEventRecord. If the
        # event describes move-outs, the reader can notify the readers of the
        # destination partitions that they can continue processing.
        # Corresponds to the JSON property `partitionEventRecord`
        # @return [Google::Apis::SpannerV1::PartitionEventRecord]
        attr_accessor :partition_event_record
      
        # A partition start record serves as a notification that the client should
        # schedule the partitions to be queried. PartitionStartRecord returns
        # information about one or more partitions.
        # Corresponds to the JSON property `partitionStartRecord`
        # @return [Google::Apis::SpannerV1::PartitionStartRecord]
        attr_accessor :partition_start_record
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_change_record = args[:data_change_record] if args.key?(:data_change_record)
          @heartbeat_record = args[:heartbeat_record] if args.key?(:heartbeat_record)
          @partition_end_record = args[:partition_end_record] if args.key?(:partition_end_record)
          @partition_event_record = args[:partition_event_record] if args.key?(:partition_event_record)
          @partition_start_record = args[:partition_start_record] if args.key?(:partition_start_record)
        end
      end
      
      # Metadata associated with a parent-child relationship appearing in a PlanNode.
      class ChildLink
        include Google::Apis::Core::Hashable
      
        # The node to which the link points.
        # Corresponds to the JSON property `childIndex`
        # @return [Fixnum]
        attr_accessor :child_index
      
        # The type of the link. For example, in Hash Joins this could be used to
        # distinguish between the build child and the probe child, or in the case of the
        # child being an output variable, to represent the tag associated with the
        # output variable.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Only present if the child node is SCALAR and corresponds to an output variable
        # of the parent node. The field carries the name of the output variable. For
        # example, a `TableScan` operator that reads rows from a table will have child
        # links to the `SCALAR` nodes representing the output variables created for each
        # column that is read by the operator. The corresponding `variable` fields will
        # be set to the variable names assigned to the columns.
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_index = args[:child_index] if args.key?(:child_index)
          @type = args[:type] if args.key?(:type)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # Container for various pieces of client-owned context attached to a request.
      class ClientContext
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for a column.
      class ColumnMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates whether the column is a primary key column.
        # Corresponds to the JSON property `isPrimaryKey`
        # @return [Boolean]
        attr_accessor :is_primary_key
        alias_method :is_primary_key?, :is_primary_key
      
        # Name of the column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Ordinal position of the column based on the original table definition in the
        # schema starting with a value of 1.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::SpannerV1::Type]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_primary_key = args[:is_primary_key] if args.key?(:is_primary_key)
          @name = args[:name] if args.key?(:name)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The request for Commit.
      class CommitRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The amount of latency this request is configured to incur in order
        # to improve throughput. If this field isn't set, Spanner assumes requests are
        # relatively latency sensitive and automatically determines an appropriate delay
        # time. You can specify a commit delay value between 0 and 500 ms.
        # Corresponds to the JSON property `maxCommitDelay`
        # @return [String]
        attr_accessor :max_commit_delay
      
        # The mutations to be executed when this transaction commits. All mutations are
        # applied atomically, in the order they appear in this list.
        # Corresponds to the JSON property `mutations`
        # @return [Array<Google::Apis::SpannerV1::Mutation>]
        attr_accessor :mutations
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If `true`, then statistics related to the transaction is included in the
        # CommitResponse. Default value is `false`.
        # Corresponds to the JSON property `returnCommitStats`
        # @return [Boolean]
        attr_accessor :return_commit_stats
        alias_method :return_commit_stats?, :return_commit_stats
      
        # Options to use for transactions.
        # Corresponds to the JSON property `singleUseTransaction`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :single_use_transaction
      
        # Commit a previously-started transaction.
        # Corresponds to the JSON property `transactionId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_commit_delay = args[:max_commit_delay] if args.key?(:max_commit_delay)
          @mutations = args[:mutations] if args.key?(:mutations)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @request_options = args[:request_options] if args.key?(:request_options)
          @return_commit_stats = args[:return_commit_stats] if args.key?(:return_commit_stats)
          @single_use_transaction = args[:single_use_transaction] if args.key?(:single_use_transaction)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # The response for Commit.
      class CommitResponse
        include Google::Apis::Core::Hashable
      
        # Additional statistics about a commit.
        # Corresponds to the JSON property `commitStats`
        # @return [Google::Apis::SpannerV1::CommitStats]
        attr_accessor :commit_stats
      
        # The Cloud Spanner timestamp at which the transaction committed.
        # Corresponds to the JSON property `commitTimestamp`
        # @return [String]
        attr_accessor :commit_timestamp
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # If `TransactionOptions.isolation_level` is set to `IsolationLevel.
        # REPEATABLE_READ`, then the snapshot timestamp is the timestamp at which all
        # reads in the transaction ran. This timestamp is never returned.
        # Corresponds to the JSON property `snapshotTimestamp`
        # @return [String]
        attr_accessor :snapshot_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_stats = args[:commit_stats] if args.key?(:commit_stats)
          @commit_timestamp = args[:commit_timestamp] if args.key?(:commit_timestamp)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @snapshot_timestamp = args[:snapshot_timestamp] if args.key?(:snapshot_timestamp)
        end
      end
      
      # Additional statistics about a commit.
      class CommitStats
        include Google::Apis::Core::Hashable
      
        # The total number of mutations for the transaction. Knowing the `mutation_count`
        # value can help you maximize the number of mutations in a transaction and
        # minimize the number of API round trips. You can also monitor this value to
        # prevent transactions from exceeding the system [limit](https://cloud.google.
        # com/spanner/quotas#limits_for_creating_reading_updating_and_deleting_data). If
        # the number of mutations exceeds the limit, the server returns [
        # INVALID_ARGUMENT](https://cloud.google.com/spanner/docs/reference/rest/v1/Code#
        # ENUM_VALUES.INVALID_ARGUMENT).
        # Corresponds to the JSON property `mutationCount`
        # @return [Fixnum]
        attr_accessor :mutation_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutation_count = args[:mutation_count] if args.key?(:mutation_count)
        end
      end
      
      # A message representing context for a KeyRangeInfo, including a label, value,
      # unit, and severity.
      class ContextValue
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :label
      
        # The severity of this context.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The unit of the context value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The value for the context.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @severity = args[:severity] if args.key?(:severity)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Encryption configuration for the copied backup.
      class CopyBackupEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encryption type of the backup.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Optional. This field is maintained for backwards compatibility. For new
        # callers, we recommend using `kms_key_names` to specify the KMS key. Only use `
        # kms_key_name` if the location of the KMS key matches the database instance's
        # configuration (location) exactly. For example, if the KMS location is in `us-
        # central1` or `nam3`, then the database instance must also be in `us-central1`
        # or `nam3`. The Cloud KMS key that is used to encrypt and decrypt the restored
        # database. Set this field only when encryption_type is `
        # CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//
        # keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. Specifies the KMS configuration for the one or more keys used to
        # protect the backup. Values are of the form `projects//locations//keyRings//
        # cryptoKeys/`. KMS keys specified can be in any order. The keys referenced by `
        # kms_key_names` must fully cover all regions of the backup's instance
        # configuration. Some examples: * For regional (single-region) instance
        # configurations, specify a regional location KMS key. * For multi-region
        # instance configurations of type `GOOGLE_MANAGED`, either specify a multi-
        # region location KMS key or multiple regional location KMS keys that cover all
        # regions in the instance configuration. * For an instance configuration of type
        # `USER_MANAGED`, specify only regional location KMS keys to cover each region
        # in the instance configuration. Multi-region location KMS keys aren't supported
        # for `USER_MANAGED` type instance configurations.
        # Corresponds to the JSON property `kmsKeyNames`
        # @return [Array<String>]
        attr_accessor :kms_key_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_names = args[:kms_key_names] if args.key?(:kms_key_names)
        end
      end
      
      # Metadata type for the operation returned by CopyBackup.
      class CopyBackupMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which cancellation of CopyBackup operation was received.
        # Operations.CancelOperation starts asynchronous cancellation on a long-running
        # operation. The server makes a best effort to cancel the operation, but success
        # is not guaranteed. Clients can use Operations.GetOperation or other methods to
        # check whether the cancellation succeeded or whether the operation completed
        # despite cancellation. On successful cancellation, the operation is not deleted;
        # instead, it becomes an operation with an Operation.error value with a google.
        # rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The name of the backup being created through the copy operation. Values are of
        # the form `projects//instances//backups/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        # The name of the source backup that is being copied. Values are of the form `
        # projects//instances//backups/`.
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
        end
      end
      
      # The request for CopyBackup.
      class CopyBackupRequest
        include Google::Apis::Core::Hashable
      
        # Required. The id of the backup copy. The `backup_id` appended to `parent`
        # forms the full backup_uri of the form `projects//instances//backups/`.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Encryption configuration for the copied backup.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::CopyBackupEncryptionConfig]
        attr_accessor :encryption_config
      
        # Required. The expiration time of the backup in microsecond granularity. The
        # expiration time must be at least 6 hours and at most 366 days from the `
        # create_time` of the source backup. Once the `expire_time` has passed, the
        # backup is eligible to be automatically deleted by Cloud Spanner to free the
        # resources used by the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Required. The source backup to be copied. The source backup needs to be in
        # READY state for it to be copied. Once CopyBackup is in progress, the source
        # backup cannot be deleted or cleaned up on expiration until CopyBackup is
        # finished. Values are of the form: `projects//instances//backups/`.
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
        end
      end
      
      # Encryption configuration for the backup to create.
      class CreateBackupEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encryption type of the backup.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Optional. This field is maintained for backwards compatibility. For new
        # callers, we recommend using `kms_key_names` to specify the KMS key. Only use `
        # kms_key_name` if the location of the KMS key matches the database instance's
        # configuration (location) exactly. For example, if the KMS location is in `us-
        # central1` or `nam3`, then the database instance must also be in `us-central1`
        # or `nam3`. The Cloud KMS key that is used to encrypt and decrypt the restored
        # database. Set this field only when encryption_type is `
        # CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//
        # keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. Specifies the KMS configuration for the one or more keys used to
        # protect the backup. Values are of the form `projects//locations//keyRings//
        # cryptoKeys/`. The keys referenced by `kms_key_names` must fully cover all
        # regions of the backup's instance configuration. Some examples: * For regional (
        # single-region) instance configurations, specify a regional location KMS key. *
        # For multi-region instance configurations of type `GOOGLE_MANAGED`, either
        # specify a multi-region location KMS key or multiple regional location KMS keys
        # that cover all regions in the instance configuration. * For an instance
        # configuration of type `USER_MANAGED`, specify only regional location KMS keys
        # to cover each region in the instance configuration. Multi-region location KMS
        # keys aren't supported for `USER_MANAGED` type instance configurations.
        # Corresponds to the JSON property `kmsKeyNames`
        # @return [Array<String>]
        attr_accessor :kms_key_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_names = args[:kms_key_names] if args.key?(:kms_key_names)
        end
      end
      
      # Metadata type for the operation returned by CreateBackup.
      class CreateBackupMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which cancellation of this operation was received. Operations.
        # CancelOperation starts asynchronous cancellation on a long-running operation.
        # The server makes a best effort to cancel the operation, but success is not
        # guaranteed. Clients can use Operations.GetOperation or other methods to check
        # whether the cancellation succeeded or whether the operation completed despite
        # cancellation. On successful cancellation, the operation is not deleted;
        # instead, it becomes an operation with an Operation.error value with a google.
        # rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The name of the database the backup is created from.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The name of the backup being created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @database = args[:database] if args.key?(:database)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # Metadata type for the operation returned by CreateDatabase.
      class CreateDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # The database being created.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
        end
      end
      
      # The request for CreateDatabase.
      class CreateDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. A `CREATE DATABASE` statement, which specifies the ID of the new
        # database. The database ID must conform to the regular expression `a-z*[a-z0-9]`
        # and be between 2 and 30 characters in length. If the database ID is a
        # reserved word or if it contains a hyphen, the database ID must be enclosed in
        # backticks (`` ` ``).
        # Corresponds to the JSON property `createStatement`
        # @return [String]
        attr_accessor :create_statement
      
        # Optional. The dialect of the Cloud Spanner Database.
        # Corresponds to the JSON property `databaseDialect`
        # @return [String]
        attr_accessor :database_dialect
      
        # Encryption configuration for a Cloud Spanner database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Optional. A list of DDL statements to run inside the newly created database.
        # Statements can create tables, indexes, etc. These statements execute
        # atomically with the creation of the database: if there is an error in any
        # statement, the database is not created.
        # Corresponds to the JSON property `extraStatements`
        # @return [Array<String>]
        attr_accessor :extra_statements
      
        # Optional. Proto descriptors used by `CREATE/ALTER PROTO BUNDLE` statements in '
        # extra_statements'. Contains a protobuf-serialized [`google.protobuf.
        # FileDescriptorSet`](https://github.com/protocolbuffers/protobuf/blob/main/src/
        # google/protobuf/descriptor.proto) descriptor set. To generate it, [install](
        # https://grpc.io/docs/protoc-installation/) and run `protoc` with --
        # include_imports and --descriptor_set_out. For example, to generate for moon/
        # shot/app.proto, run ``` $protoc --proto_path=/app_path --proto_path=/lib_path \
        # --include_imports \ --descriptor_set_out=descriptors.data \ moon/shot/app.
        # proto ``` For more details, see protobuffer [self description](https://
        # developers.google.com/protocol-buffers/docs/techniques#self-description).
        # Corresponds to the JSON property `protoDescriptors`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :proto_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_statement = args[:create_statement] if args.key?(:create_statement)
          @database_dialect = args[:database_dialect] if args.key?(:database_dialect)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @extra_statements = args[:extra_statements] if args.key?(:extra_statements)
          @proto_descriptors = args[:proto_descriptors] if args.key?(:proto_descriptors)
        end
      end
      
      # Metadata type for the operation returned by CreateInstanceConfig.
      class CreateInstanceConfigMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # A possible configuration for a Cloud Spanner instance. Configurations define
        # the geographic placement of nodes and their replication.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::SpannerV1::InstanceConfig]
        attr_accessor :instance_config
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # instance operations.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::InstanceOperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # The request for CreateInstanceConfig.
      class CreateInstanceConfigRequest
        include Google::Apis::Core::Hashable
      
        # A possible configuration for a Cloud Spanner instance. Configurations define
        # the geographic placement of nodes and their replication.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::SpannerV1::InstanceConfig]
        attr_accessor :instance_config
      
        # Required. The ID of the instance configuration to create. Valid identifiers
        # are of the form `custom-[-a-z0-9]*[a-z0-9]` and must be between 2 and 64
        # characters in length. The `custom-` prefix is required to avoid name conflicts
        # with Google-managed configurations.
        # Corresponds to the JSON property `instanceConfigId`
        # @return [String]
        attr_accessor :instance_config_id
      
        # An option to validate, but not actually execute, a request, and provide the
        # same response.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @instance_config_id = args[:instance_config_id] if args.key?(:instance_config_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Metadata type for the operation returned by CreateInstance.
      class CreateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The expected fulfillment period of this create operation.
        # Corresponds to the JSON property `expectedFulfillmentPeriod`
        # @return [String]
        attr_accessor :expected_fulfillment_period
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # The time at which the CreateInstance request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @expected_fulfillment_period = args[:expected_fulfillment_period] if args.key?(:expected_fulfillment_period)
          @instance = args[:instance] if args.key?(:instance)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata type for the operation returned by CreateInstancePartition.
      class CreateInstancePartitionMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An isolated set of Cloud Spanner resources that databases can define
        # placements on.
        # Corresponds to the JSON property `instancePartition`
        # @return [Google::Apis::SpannerV1::InstancePartition]
        attr_accessor :instance_partition
      
        # The time at which the CreateInstancePartition request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @instance_partition = args[:instance_partition] if args.key?(:instance_partition)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for CreateInstancePartition.
      class CreateInstancePartitionRequest
        include Google::Apis::Core::Hashable
      
        # An isolated set of Cloud Spanner resources that databases can define
        # placements on.
        # Corresponds to the JSON property `instancePartition`
        # @return [Google::Apis::SpannerV1::InstancePartition]
        attr_accessor :instance_partition
      
        # Required. The ID of the instance partition to create. Valid identifiers are of
        # the form `a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
        # Corresponds to the JSON property `instancePartitionId`
        # @return [String]
        attr_accessor :instance_partition_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_partition = args[:instance_partition] if args.key?(:instance_partition)
          @instance_partition_id = args[:instance_partition_id] if args.key?(:instance_partition_id)
        end
      end
      
      # The request for CreateInstance.
      class CreateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # Required. The ID of the instance to create. Valid identifiers are of the form `
        # a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
        end
      end
      
      # The request for CreateSession.
      class CreateSessionRequest
        include Google::Apis::Core::Hashable
      
        # A session in the Cloud Spanner API.
        # Corresponds to the JSON property `session`
        # @return [Google::Apis::SpannerV1::Session]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # CrontabSpec can be used to specify the version time and frequency at which the
      # backup is created.
      class CrontabSpec
        include Google::Apis::Core::Hashable
      
        # Output only. Scheduled backups contain an externally consistent copy of the
        # database at the version time specified in `schedule_spec.cron_spec`. However,
        # Spanner might not initiate the creation of the scheduled backups at that
        # version time. Spanner initiates the creation of scheduled backups within the
        # time window bounded by the version_time specified in `schedule_spec.cron_spec`
        # and version_time + `creation_window`.
        # Corresponds to the JSON property `creationWindow`
        # @return [String]
        attr_accessor :creation_window
      
        # Required. Textual representation of the crontab. User can customize the backup
        # frequency and the backup version time using the cron expression. The version
        # time must be in UTC timezone. The backup will contain an externally consistent
        # copy of the database at the version time. Full backups must be scheduled a
        # minimum of 12 hours apart and incremental backups must be scheduled a minimum
        # of 4 hours apart. Examples of valid cron specifications: * `0 2/12 * * *` :
        # every 12 hours at (2, 14) hours past midnight in UTC. * `0 2,14 * * *` : every
        # 12 hours at (2, 14) hours past midnight in UTC. * `0 */4 * * *` : (incremental
        # backups only) every 4 hours at (0, 4, 8, 12, 16, 20) hours past midnight in
        # UTC. * `0 2 * * *` : once a day at 2 past midnight in UTC. * `0 2 * * 0` :
        # once a week every Sunday at 2 past midnight in UTC. * `0 2 8 * *` : once a
        # month on 8th day at 2 past midnight in UTC.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. The time zone of the times in `CrontabSpec.text`. Currently, only
        # UTC is supported.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_window = args[:creation_window] if args.key?(:creation_window)
          @text = args[:text] if args.key?(:text)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # A data change record contains a set of changes to a table with the same
      # modification type (insert, update, or delete) committed at the same commit
      # timestamp in one change stream partition for the same transaction. Multiple
      # data change records can be returned for the same transaction across multiple
      # change stream partitions.
      class DataChangeRecord
        include Google::Apis::Core::Hashable
      
        # Provides metadata describing the columns associated with the mods listed below.
        # Corresponds to the JSON property `columnMetadata`
        # @return [Array<Google::Apis::SpannerV1::ColumnMetadata>]
        attr_accessor :column_metadata
      
        # Indicates the timestamp in which the change was committed. DataChangeRecord.
        # commit_timestamps, PartitionStartRecord.start_timestamps, PartitionEventRecord.
        # commit_timestamps, and PartitionEndRecord.end_timestamps can have the same
        # value in the same partition.
        # Corresponds to the JSON property `commitTimestamp`
        # @return [String]
        attr_accessor :commit_timestamp
      
        # Indicates whether this is the last record for a transaction in the current
        # partition. Clients can use this field to determine when all records for a
        # transaction in the current partition have been received.
        # Corresponds to the JSON property `isLastRecordInTransactionInPartition`
        # @return [Boolean]
        attr_accessor :is_last_record_in_transaction_in_partition
        alias_method :is_last_record_in_transaction_in_partition?, :is_last_record_in_transaction_in_partition
      
        # Indicates whether the transaction is a system transaction. System transactions
        # include those issued by time-to-live (TTL), column backfill, etc.
        # Corresponds to the JSON property `isSystemTransaction`
        # @return [Boolean]
        attr_accessor :is_system_transaction
        alias_method :is_system_transaction?, :is_system_transaction
      
        # Describes the type of change.
        # Corresponds to the JSON property `modType`
        # @return [String]
        attr_accessor :mod_type
      
        # Describes the changes that were made.
        # Corresponds to the JSON property `mods`
        # @return [Array<Google::Apis::SpannerV1::Mod>]
        attr_accessor :mods
      
        # Indicates the number of partitions that return data change records for this
        # transaction. This value can be helpful in assembling all records associated
        # with a particular transaction.
        # Corresponds to the JSON property `numberOfPartitionsInTransaction`
        # @return [Fixnum]
        attr_accessor :number_of_partitions_in_transaction
      
        # Indicates the number of data change records that are part of this transaction
        # across all change stream partitions. This value can be used to assemble all
        # the records associated with a particular transaction.
        # Corresponds to the JSON property `numberOfRecordsInTransaction`
        # @return [Fixnum]
        attr_accessor :number_of_records_in_transaction
      
        # Record sequence numbers are unique and monotonically increasing (but not
        # necessarily contiguous) for a specific timestamp across record types in the
        # same partition. To guarantee ordered processing, the reader should process
        # records (of potentially different types) in record_sequence order for a
        # specific timestamp in the same partition. The record sequence number ordering
        # across partitions is only meaningful in the context of a specific transaction.
        # Record sequence numbers are unique across partitions for a specific
        # transaction. Sort the DataChangeRecords for the same server_transaction_id by
        # record_sequence to reconstruct the ordering of the changes within the
        # transaction.
        # Corresponds to the JSON property `recordSequence`
        # @return [String]
        attr_accessor :record_sequence
      
        # Provides a globally unique string that represents the transaction in which the
        # change was committed. Multiple transactions can have the same commit timestamp,
        # but each transaction has a unique server_transaction_id.
        # Corresponds to the JSON property `serverTransactionId`
        # @return [String]
        attr_accessor :server_transaction_id
      
        # Name of the table affected by the change.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # Indicates the transaction tag associated with this transaction.
        # Corresponds to the JSON property `transactionTag`
        # @return [String]
        attr_accessor :transaction_tag
      
        # Describes the value capture type that was specified in the change stream
        # configuration when this change was captured.
        # Corresponds to the JSON property `valueCaptureType`
        # @return [String]
        attr_accessor :value_capture_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_metadata = args[:column_metadata] if args.key?(:column_metadata)
          @commit_timestamp = args[:commit_timestamp] if args.key?(:commit_timestamp)
          @is_last_record_in_transaction_in_partition = args[:is_last_record_in_transaction_in_partition] if args.key?(:is_last_record_in_transaction_in_partition)
          @is_system_transaction = args[:is_system_transaction] if args.key?(:is_system_transaction)
          @mod_type = args[:mod_type] if args.key?(:mod_type)
          @mods = args[:mods] if args.key?(:mods)
          @number_of_partitions_in_transaction = args[:number_of_partitions_in_transaction] if args.key?(:number_of_partitions_in_transaction)
          @number_of_records_in_transaction = args[:number_of_records_in_transaction] if args.key?(:number_of_records_in_transaction)
          @record_sequence = args[:record_sequence] if args.key?(:record_sequence)
          @server_transaction_id = args[:server_transaction_id] if args.key?(:server_transaction_id)
          @table = args[:table] if args.key?(:table)
          @transaction_tag = args[:transaction_tag] if args.key?(:transaction_tag)
          @value_capture_type = args[:value_capture_type] if args.key?(:value_capture_type)
        end
      end
      
      # A Cloud Spanner database.
      class Database
        include Google::Apis::Core::Hashable
      
        # Output only. If exists, the time at which the database creation started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The dialect of the Cloud Spanner Database.
        # Corresponds to the JSON property `databaseDialect`
        # @return [String]
        attr_accessor :database_dialect
      
        # Output only. The read-write region which contains the database's leader
        # replicas. This is the same as the value of default_leader database option set
        # using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not
        # explicitly set, this is empty.
        # Corresponds to the JSON property `defaultLeader`
        # @return [String]
        attr_accessor :default_leader
      
        # Output only. Earliest timestamp at which older versions of the data can be
        # read. This value is continuously updated by Cloud Spanner and becomes stale
        # the moment it is queried. If you are using this value to recover data, make
        # sure to account for the time from the moment when the value is queried to the
        # moment when you initiate the recovery.
        # Corresponds to the JSON property `earliestVersionTime`
        # @return [String]
        attr_accessor :earliest_version_time
      
        # Optional. Whether drop protection is enabled for this database. Defaults to
        # false, if not set. For more details, please see how to [prevent accidental
        # database deletion](https://cloud.google.com/spanner/docs/prevent-database-
        # deletion).
        # Corresponds to the JSON property `enableDropProtection`
        # @return [Boolean]
        attr_accessor :enable_drop_protection
        alias_method :enable_drop_protection?, :enable_drop_protection
      
        # Encryption configuration for a Cloud Spanner database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. For databases that are using customer managed encryption, this
        # field contains the encryption information for the database, such as all Cloud
        # KMS key versions that are in use. The `encryption_status` field inside of each
        # `EncryptionInfo` is not populated. For databases that are using Google default
        # or other types of encryption, this field is empty. This field is propagated
        # lazily from the backend. There might be a delay from when a key version is
        # being used and when it appears in this field.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Array<Google::Apis::SpannerV1::EncryptionInfo>]
        attr_accessor :encryption_info
      
        # Required. The name of the database. Values are of the form `projects//
        # instances//databases/`, where `` is as specified in the `CREATE DATABASE`
        # statement. This name can be passed to other API methods to identify the
        # database.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about the dual-region quorum.
        # Corresponds to the JSON property `quorumInfo`
        # @return [Google::Apis::SpannerV1::QuorumInfo]
        attr_accessor :quorum_info
      
        # Output only. If true, the database is being updated. If false, there are no
        # ongoing update operations for the database.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Information about the database restore.
        # Corresponds to the JSON property `restoreInfo`
        # @return [Google::Apis::SpannerV1::RestoreInfo]
        attr_accessor :restore_info
      
        # Output only. The current database state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The period in which Cloud Spanner retains all versions of data
        # for the database. This is the same as the value of version_retention_period
        # database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
        # Corresponds to the JSON property `versionRetentionPeriod`
        # @return [String]
        attr_accessor :version_retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_dialect = args[:database_dialect] if args.key?(:database_dialect)
          @default_leader = args[:default_leader] if args.key?(:default_leader)
          @earliest_version_time = args[:earliest_version_time] if args.key?(:earliest_version_time)
          @enable_drop_protection = args[:enable_drop_protection] if args.key?(:enable_drop_protection)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @name = args[:name] if args.key?(:name)
          @quorum_info = args[:quorum_info] if args.key?(:quorum_info)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @restore_info = args[:restore_info] if args.key?(:restore_info)
          @state = args[:state] if args.key?(:state)
          @version_retention_period = args[:version_retention_period] if args.key?(:version_retention_period)
        end
      end
      
      # The configuration for each database in the target instance configuration.
      class DatabaseMoveConfig
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the database resource in the Instance. For
        # example, if the database uri is `projects/foo/instances/bar/databases/baz`,
        # then the id to supply here is baz.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Encryption configuration for a Cloud Spanner database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::InstanceEncryptionConfig]
        attr_accessor :encryption_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_id = args[:database_id] if args.key?(:database_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
        end
      end
      
      # A Cloud Spanner database role.
      class DatabaseRole
        include Google::Apis::Core::Hashable
      
        # Required. The name of the database role. Values are of the form `projects//
        # instances//databases//databaseRoles/` where `` is as specified in the `CREATE
        # ROLE` DDL statement.
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
      
      # Action information extracted from a DDL statement. This proto is used to
      # display the brief info of the DDL statement for the operation
      # UpdateDatabaseDdl.
      class DdlStatementActionInfo
        include Google::Apis::Core::Hashable
      
        # The action for the DDL statement, for example, CREATE, ALTER, DROP, GRANT, etc.
        # This field is a non-empty string.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The entity names being operated on the DDL statement. For example, 1. For
        # statement "CREATE TABLE t1(...)", `entity_names` = ["t1"]. 2. For statement "
        # GRANT ROLE r1, r2 ...", `entity_names` = ["r1", "r2"]. 3. For statement "
        # ANALYZE", `entity_names` = [].
        # Corresponds to the JSON property `entityNames`
        # @return [Array<String>]
        attr_accessor :entity_names
      
        # The entity type for the DDL statement, for example, TABLE, INDEX, VIEW, etc.
        # This field can be empty string for some DDL statement, for example, for
        # statement "ANALYZE", `entity_type` = "".
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @entity_names = args[:entity_names] if args.key?(:entity_names)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
        end
      end
      
      # Arguments to delete operations.
      class Delete
        include Google::Apis::Core::Hashable
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # Required. The table whose rows will be deleted.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_set = args[:key_set] if args.key?(:key_set)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # A message representing a derived metric.
      class DerivedMetric
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `denominator`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :denominator
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `numerator`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :numerator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @denominator = args[:denominator] if args.key?(:denominator)
          @numerator = args[:numerator] if args.key?(:numerator)
        end
      end
      
      # A message representing the key visualizer diagnostic messages.
      class DiagnosticMessage
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :metric
      
        # Whether this message is specific only for the current metric. By default
        # Diagnostics are shown for all metrics, regardless which metric is the
        # currently selected metric in the UI. However occasionally a metric will
        # generate so many messages that the resulting visual clutter becomes
        # overwhelming. In this case setting this to true, will show the diagnostic
        # messages for that metric only if it is the currently selected metric.
        # Corresponds to the JSON property `metricSpecific`
        # @return [Boolean]
        attr_accessor :metric_specific
        alias_method :metric_specific?, :metric_specific
      
        # The severity of the diagnostic message.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `shortMessage`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :short_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info = args[:info] if args.key?(:info)
          @metric = args[:metric] if args.key?(:metric)
          @metric_specific = args[:metric_specific] if args.key?(:metric_specific)
          @severity = args[:severity] if args.key?(:severity)
          @short_message = args[:short_message] if args.key?(:short_message)
        end
      end
      
      # The `DirectedReadOptions` can be used to indicate which replicas or regions
      # should be used for non-transactional reads or queries. `DirectedReadOptions`
      # can only be specified for a read-only transaction, otherwise the API returns
      # an `INVALID_ARGUMENT` error.
      class DirectedReadOptions
        include Google::Apis::Core::Hashable
      
        # An ExcludeReplicas contains a repeated set of ReplicaSelection that should be
        # excluded from serving requests.
        # Corresponds to the JSON property `excludeReplicas`
        # @return [Google::Apis::SpannerV1::ExcludeReplicas]
        attr_accessor :exclude_replicas
      
        # An `IncludeReplicas` contains a repeated set of `ReplicaSelection` which
        # indicates the order in which replicas should be considered.
        # Corresponds to the JSON property `includeReplicas`
        # @return [Google::Apis::SpannerV1::IncludeReplicas]
        attr_accessor :include_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_replicas = args[:exclude_replicas] if args.key?(:exclude_replicas)
          @include_replicas = args[:include_replicas] if args.key?(:include_replicas)
        end
      end
      
      # Message type for a dual-region quorum. Currently this type has no options.
      class DualRegionQuorum
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Encryption configuration for a Cloud Spanner database.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud KMS key to be used for encrypting and decrypting the database.
        # Values are of the form `projects//locations//keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Specifies the KMS configuration for one or more keys used to encrypt the
        # database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
        # The keys referenced by `kms_key_names` must fully cover all regions of the
        # database's instance configuration. Some examples: * For regional (single-
        # region) instance configurations, specify a regional location KMS key. * For
        # multi-region instance configurations of type `GOOGLE_MANAGED`, either specify
        # a multi-region location KMS key or multiple regional location KMS keys that
        # cover all regions in the instance configuration. * For an instance
        # configuration of type `USER_MANAGED`, specify only regional location KMS keys
        # to cover each region in the instance configuration. Multi-region location KMS
        # keys aren't supported for `USER_MANAGED` type instance configurations.
        # Corresponds to the JSON property `kmsKeyNames`
        # @return [Array<String>]
        attr_accessor :kms_key_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_names = args[:kms_key_names] if args.key?(:kms_key_names)
        end
      end
      
      # Encryption information for a Cloud Spanner database or backup.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `encryptionStatus`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :encryption_status
      
        # Output only. The type of encryption.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. A Cloud KMS key version that is being used to protect the
        # database or backup.
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
      
      # An ExcludeReplicas contains a repeated set of ReplicaSelection that should be
      # excluded from serving requests.
      class ExcludeReplicas
        include Google::Apis::Core::Hashable
      
        # The directed read replica selector.
        # Corresponds to the JSON property `replicaSelections`
        # @return [Array<Google::Apis::SpannerV1::ReplicaSelection>]
        attr_accessor :replica_selections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replica_selections = args[:replica_selections] if args.key?(:replica_selections)
        end
      end
      
      # The request for ExecuteBatchDml.
      class ExecuteBatchDmlRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to `true`, this request marks the end of the transaction.
        # After these statements execute, you must commit or abort the transaction.
        # Attempts to execute any other requests against this transaction (including
        # reads and queries) are rejected. Setting this option might cause some error
        # reporting to be deferred until commit time (for example, validation of unique
        # constraints). Given this, successful execution of statements shouldn't be
        # assumed until a subsequent `Commit` call completes successfully.
        # Corresponds to the JSON property `lastStatements`
        # @return [Boolean]
        attr_accessor :last_statements
        alias_method :last_statements?, :last_statements
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # Required. A per-transaction sequence number used to identify this request.
        # This field makes each request idempotent such that if the request is received
        # multiple times, at most one succeeds. The sequence number must be
        # monotonically increasing within the transaction. If a request arrives for the
        # first time with an out-of-order sequence number, the transaction might be
        # aborted. Replays of previously handled requests yield the same response as the
        # first execution.
        # Corresponds to the JSON property `seqno`
        # @return [Fixnum]
        attr_accessor :seqno
      
        # Required. The list of statements to execute in this batch. Statements are
        # executed serially, such that the effects of statement `i` are visible to
        # statement `i+1`. Each statement must be a DML statement. Execution stops at
        # the first failed statement; the remaining statements are not executed. Callers
        # must provide at least one statement.
        # Corresponds to the JSON property `statements`
        # @return [Array<Google::Apis::SpannerV1::Statement>]
        attr_accessor :statements
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_statements = args[:last_statements] if args.key?(:last_statements)
          @request_options = args[:request_options] if args.key?(:request_options)
          @seqno = args[:seqno] if args.key?(:seqno)
          @statements = args[:statements] if args.key?(:statements)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for ExecuteBatchDml. Contains a list of ResultSet messages, one
      # for each DML statement that has successfully executed, in the same order as
      # the statements in the request. If a statement fails, the status in the
      # response body identifies the cause of the failure. To check for DML statements
      # that failed, use the following approach: 1. Check the status in the response
      # message. The google.rpc.Code enum value `OK` indicates that all statements
      # were executed successfully. 2. If the status was not `OK`, check the number of
      # result sets in the response. If the response contains `N` ResultSet messages,
      # then statement `N+1` in the request failed. Example 1: * Request: 5 DML
      # statements, all executed successfully. * Response: 5 ResultSet messages, with
      # the status `OK`. Example 2: * Request: 5 DML statements. The third statement
      # has a syntax error. * Response: 2 ResultSet messages, and a syntax error (`
      # INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that the
      # third statement failed, and the fourth and fifth statements were not executed.
      class ExecuteBatchDmlResponse
        include Google::Apis::Core::Hashable
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # One ResultSet for each statement in the request that ran successfully, in the
        # same order as the statements in the request. Each ResultSet does not contain
        # any rows. The ResultSetStats in each ResultSet contain the number of rows
        # modified by the statement. Only the first ResultSet in the response contains
        # valid ResultSetMetadata.
        # Corresponds to the JSON property `resultSets`
        # @return [Array<Google::Apis::SpannerV1::ResultSet>]
        attr_accessor :result_sets
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @result_sets = args[:result_sets] if args.key?(:result_sets)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The request for ExecuteSql and ExecuteStreamingSql.
      class ExecuteSqlRequest
        include Google::Apis::Core::Hashable
      
        # If this is for a partitioned query and this field is set to `true`, the
        # request is executed with Spanner Data Boost independent compute resources. If
        # the field is set to `true` but the request doesn't set `partition_token`, the
        # API returns an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `dataBoostEnabled`
        # @return [Boolean]
        attr_accessor :data_boost_enabled
        alias_method :data_boost_enabled?, :data_boost_enabled
      
        # The `DirectedReadOptions` can be used to indicate which replicas or regions
        # should be used for non-transactional reads or queries. `DirectedReadOptions`
        # can only be specified for a read-only transaction, otherwise the API returns
        # an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `directedReadOptions`
        # @return [Google::Apis::SpannerV1::DirectedReadOptions]
        attr_accessor :directed_read_options
      
        # Optional. If set to `true`, this statement marks the end of the transaction.
        # After this statement executes, you must commit or abort the transaction.
        # Attempts to execute any other requests against this transaction (including
        # reads and queries) are rejected. For DML statements, setting this option might
        # cause some error reporting to be deferred until commit time (for example,
        # validation of unique constraints). Given this, successful execution of a DML
        # statement shouldn't be assumed until a subsequent `Commit` call completes
        # successfully.
        # Corresponds to the JSON property `lastStatement`
        # @return [Boolean]
        attr_accessor :last_statement
        alias_method :last_statement?, :last_statement
      
        # It isn't always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, you can use `
        # param_types` to specify the exact SQL type for some or all of the SQL
        # statement parameters. See the definition of Type for more information about
        # SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the SQL string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names must conform to the naming
        # requirements of identifiers as specified at https://cloud.google.com/spanner/
        # docs/lexical#identifiers. Parameters can appear anywhere that a literal value
        # is expected. The same parameter name can be used more than once, for example: `
        # "WHERE id > @msg_id AND id < @msg_id + 100"` It's an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # If present, results are restricted to the specified partition previously
        # created using `PartitionQuery`. There must be an exact match for the values of
        # fields common to this message and the `PartitionQueryRequest` message used to
        # create this `partition_token`.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        # Used to control the amount of debugging information returned in ResultSetStats.
        # If partition_token is set, query_mode can only be set to QueryMode.NORMAL.
        # Corresponds to the JSON property `queryMode`
        # @return [String]
        attr_accessor :query_mode
      
        # Query optimizer configuration.
        # Corresponds to the JSON property `queryOptions`
        # @return [Google::Apis::SpannerV1::QueryOptions]
        attr_accessor :query_options
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If this request is resuming a previously interrupted SQL statement execution, `
        # resume_token` should be copied from the last PartialResultSet yielded before
        # the interruption. Doing this enables the new SQL statement execution to resume
        # where the last one left off. The rest of the request parameters must exactly
        # match the request that yielded this token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # A per-transaction sequence number used to identify this request. This field
        # makes each request idempotent such that if the request is received multiple
        # times, at most one succeeds. The sequence number must be monotonically
        # increasing within the transaction. If a request arrives for the first time
        # with an out-of-order sequence number, the transaction can be aborted. Replays
        # of previously handled requests yield the same response as the first execution.
        # Required for DML statements. Ignored for queries.
        # Corresponds to the JSON property `seqno`
        # @return [Fixnum]
        attr_accessor :seqno
      
        # Required. The SQL string.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_boost_enabled = args[:data_boost_enabled] if args.key?(:data_boost_enabled)
          @directed_read_options = args[:directed_read_options] if args.key?(:directed_read_options)
          @last_statement = args[:last_statement] if args.key?(:last_statement)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @query_mode = args[:query_mode] if args.key?(:query_mode)
          @query_options = args[:query_options] if args.key?(:query_options)
          @request_options = args[:request_options] if args.key?(:request_options)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @seqno = args[:seqno] if args.key?(:seqno)
          @sql = args[:sql] if args.key?(:sql)
          @transaction = args[:transaction] if args.key?(:transaction)
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
      
      # Message representing a single field of a struct.
      class Field
        include Google::Apis::Core::Hashable
      
        # The name of the field. For reads, this is the column name. For SQL queries, it
        # is the column alias (e.g., `"Word"` in the query `"SELECT 'hello' AS Word"`),
        # or the column name (e.g., `"ColName"` in the query `"SELECT ColName FROM Table"
        # `). Some columns might have an empty name (e.g., `"SELECT UPPER(ColName)"`).
        # Note that a query result can contain multiple fields with the same name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::SpannerV1::Type]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Free instance specific metadata that is kept even after an instance has been
      # upgraded for tracking purposes.
      class FreeInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # Specifies the expiration behavior of a free instance. The default of
        # ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or
        # after creation, and before expiration.
        # Corresponds to the JSON property `expireBehavior`
        # @return [String]
        attr_accessor :expire_behavior
      
        # Output only. Timestamp after which the instance will either be upgraded or
        # scheduled for deletion after a grace period. ExpireBehavior is used to choose
        # between upgrading or scheduling the free instance for deletion. This timestamp
        # is set during the creation of a free instance.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. If present, the timestamp at which the free instance was upgraded
        # to a provisioned instance.
        # Corresponds to the JSON property `upgradeTime`
        # @return [String]
        attr_accessor :upgrade_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_behavior = args[:expire_behavior] if args.key?(:expire_behavior)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @upgrade_time = args[:upgrade_time] if args.key?(:upgrade_time)
        end
      end
      
      # The specification for full backups. A full backup stores the entire contents
      # of the database at a given version time.
      class FullBackupSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response for GetDatabaseDdl.
      class GetDatabaseDdlResponse
        include Google::Apis::Core::Hashable
      
        # Proto descriptors stored in the database. Contains a protobuf-serialized [
        # google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/
        # blob/main/src/google/protobuf/descriptor.proto). For more details, see
        # protobuffer [self description](https://developers.google.com/protocol-buffers/
        # docs/techniques#self-description).
        # Corresponds to the JSON property `protoDescriptors`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :proto_descriptors
      
        # A list of formatted DDL statements defining the schema of the database
        # specified in the request.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proto_descriptors = args[:proto_descriptors] if args.key?(:proto_descriptors)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SpannerV1::GetPolicyOptions]
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
      
      # A heartbeat record is returned as a progress indicator, when there are no data
      # changes or any other partition record types in the change stream partition.
      class HeartbeatRecord
        include Google::Apis::Core::Hashable
      
        # Indicates the timestamp at which the query has returned all the records in the
        # change stream partition with timestamp <= heartbeat timestamp. The heartbeat
        # timestamp will not be the same as the timestamps of other record types in the
        # same partition.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # An `IncludeReplicas` contains a repeated set of `ReplicaSelection` which
      # indicates the order in which replicas should be considered.
      class IncludeReplicas
        include Google::Apis::Core::Hashable
      
        # If `true`, Spanner doesn't route requests to a replica outside the <`
        # include_replicas` list when all of the specified replicas are unavailable or
        # unhealthy. Default value is `false`.
        # Corresponds to the JSON property `autoFailoverDisabled`
        # @return [Boolean]
        attr_accessor :auto_failover_disabled
        alias_method :auto_failover_disabled?, :auto_failover_disabled
      
        # The directed read replica selector.
        # Corresponds to the JSON property `replicaSelections`
        # @return [Array<Google::Apis::SpannerV1::ReplicaSelection>]
        attr_accessor :replica_selections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_failover_disabled = args[:auto_failover_disabled] if args.key?(:auto_failover_disabled)
          @replica_selections = args[:replica_selections] if args.key?(:replica_selections)
        end
      end
      
      # The specification for incremental backup chains. An incremental backup stores
      # the delta of changes between a previous backup and the database contents at a
      # given version time. An incremental backup chain consists of a full backup and
      # zero or more successive incremental backups. The first backup created for an
      # incremental backup chain is always a full backup.
      class IncrementalBackupSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Recommendation to add new indexes to run queries more efficiently.
      class IndexAdvice
        include Google::Apis::Core::Hashable
      
        # Optional. DDL statements to add new indexes that will improve the query.
        # Corresponds to the JSON property `ddl`
        # @return [Array<String>]
        attr_accessor :ddl
      
        # Optional. Estimated latency improvement factor. For example if the query
        # currently takes 500 ms to run and the estimated latency with new indexes is
        # 100 ms this field will be 5.
        # Corresponds to the JSON property `improvementFactor`
        # @return [Float]
        attr_accessor :improvement_factor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ddl = args[:ddl] if args.key?(:ddl)
          @improvement_factor = args[:improvement_factor] if args.key?(:improvement_factor)
        end
      end
      
      # A message representing a (sparse) collection of hot keys for specific key
      # buckets.
      class IndexedHotKey
        include Google::Apis::Core::Hashable
      
        # A (sparse) mapping from key bucket index to the index of the specific hot row
        # key for that key bucket. The index of the hot row key can be translated to the
        # actual row key via the ScanData.VisualizationData.indexed_keys repeated field.
        # Corresponds to the JSON property `sparseHotKeys`
        # @return [Hash<String,Fixnum>]
        attr_accessor :sparse_hot_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sparse_hot_keys = args[:sparse_hot_keys] if args.key?(:sparse_hot_keys)
        end
      end
      
      # A message representing a (sparse) collection of KeyRangeInfos for specific key
      # buckets.
      class IndexedKeyRangeInfos
        include Google::Apis::Core::Hashable
      
        # A (sparse) mapping from key bucket index to the KeyRangeInfos for that key
        # bucket.
        # Corresponds to the JSON property `keyRangeInfos`
        # @return [Hash<String,Google::Apis::SpannerV1::KeyRangeInfos>]
        attr_accessor :key_range_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_range_infos = args[:key_range_infos] if args.key?(:key_range_infos)
        end
      end
      
      # An isolated set of Cloud Spanner resources on which databases can be hosted.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Autoscaling configuration for an instance.
        # Corresponds to the JSON property `autoscalingConfig`
        # @return [Google::Apis::SpannerV1::AutoscalingConfig]
        attr_accessor :autoscaling_config
      
        # Required. The name of the instance's configuration. Values are of the form `
        # projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Output only. The time at which the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Controls the default backup schedule behavior for new databases
        # within the instance. By default, a backup schedule is created automatically
        # when a new database is created in a new instance. Note that the `AUTOMATIC`
        # value isn't permitted for free instances, as backups and backup schedules aren'
        # t supported for free instances. In the `GetInstance` or `ListInstances`
        # response, if the value of `default_backup_schedule_type` isn't set, or set to `
        # NONE`, Spanner doesn't create a default backup schedule for new databases in
        # the instance.
        # Corresponds to the JSON property `defaultBackupScheduleType`
        # @return [String]
        attr_accessor :default_backup_schedule_type
      
        # Required. The descriptive name for this instance as it appears in UIs. Must be
        # unique per project and between 4 and 30 characters in length.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The `Edition` of the current instance.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Deprecated. This field is not populated.
        # Corresponds to the JSON property `endpointUris`
        # @return [Array<String>]
        attr_accessor :endpoint_uris
      
        # Free instance specific metadata that is kept even after an instance has been
        # upgraded for tracking purposes.
        # Corresponds to the JSON property `freeInstanceMetadata`
        # @return [Google::Apis::SpannerV1::FreeInstanceMetadata]
        attr_accessor :free_instance_metadata
      
        # The `InstanceType` of the current instance.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Cloud Labels are a flexible and lightweight mechanism for organizing cloud
        # resources into groups that reflect a customer's organizational needs and
        # deployment strategies. Cloud Labels can be used to filter collections of
        # resources. They can be used to control how resource metrics are aggregated.
        # And they can be used as arguments to policy management rules (e.g. route,
        # firewall, load balancing, etc.). * Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `a-z`0,
        # 62``. * Label values must be between 0 and 63 characters long and must conform
        # to the regular expression `[a-z0-9_-]`0,63``. * No more than 64 labels can be
        # associated with a given resource. See https://goo.gl/xmQnxf for more
        # information on and examples of labels. If you plan to use labels in your own
        # code, please note that additional characters may be allowed in the future. And
        # so you are advised to use an internal label representation, such as JSON,
        # which doesn't rely upon specific characters being disallowed. For example,
        # representing labels as the string: name + "_" + value would prove problematic
        # if we were to allow "_" in a future release.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. A unique identifier for the instance, which cannot be changed after
        # the instance is created. Values are of the form `projects//instances/a-z*[a-z0-
        # 9]`. The final segment of the name must be between 2 and 64 characters in
        # length.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of nodes allocated to this instance. At most, one of either `
        # node_count` or `processing_units` should be present in the message. Users can
        # set the `node_count` field to specify the target number of nodes allocated to
        # the instance. If autoscaling is enabled, `node_count` is treated as an `
        # OUTPUT_ONLY` field and reflects the current number of nodes allocated to the
        # instance. This might be zero in API responses for instances that are not yet
        # in the `READY` state. If the instance has varying node count across replicas (
        # achieved by setting `asymmetric_autoscaling_options` in the autoscaling
        # configuration), the `node_count` set here is the maximum node count across all
        # replicas. For more information, see [Compute capacity, nodes, and processing
        # units](https://cloud.google.com/spanner/docs/compute-capacity).
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The number of processing units allocated to this instance. At most, one of
        # either `processing_units` or `node_count` should be present in the message.
        # Users can set the `processing_units` field to specify the target number of
        # processing units allocated to the instance. If autoscaling is enabled, `
        # processing_units` is treated as an `OUTPUT_ONLY` field and reflects the
        # current number of processing units allocated to the instance. This might be
        # zero in API responses for instances that are not yet in the `READY` state. If
        # the instance has varying processing units per replica (achieved by setting `
        # asymmetric_autoscaling_options` in the autoscaling configuration), the `
        # processing_units` set here is the maximum processing units across all replicas.
        # For more information, see [Compute capacity, nodes and processing units](
        # https://cloud.google.com/spanner/docs/compute-capacity).
        # Corresponds to the JSON property `processingUnits`
        # @return [Fixnum]
        attr_accessor :processing_units
      
        # Output only. Lists the compute capacity per ReplicaSelection. A replica
        # selection identifies a set of replicas with common properties. Replicas
        # identified by a ReplicaSelection are scaled with the same compute capacity.
        # Corresponds to the JSON property `replicaComputeCapacity`
        # @return [Array<Google::Apis::SpannerV1::ReplicaComputeCapacity>]
        attr_accessor :replica_compute_capacity
      
        # Output only. The current instance state. For CreateInstance, the state must be
        # either omitted or set to `CREATING`. For UpdateInstance, the state must be
        # either omitted or set to `READY`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the instance was most recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_config = args[:autoscaling_config] if args.key?(:autoscaling_config)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_backup_schedule_type = args[:default_backup_schedule_type] if args.key?(:default_backup_schedule_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @edition = args[:edition] if args.key?(:edition)
          @endpoint_uris = args[:endpoint_uris] if args.key?(:endpoint_uris)
          @free_instance_metadata = args[:free_instance_metadata] if args.key?(:free_instance_metadata)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @node_count = args[:node_count] if args.key?(:node_count)
          @processing_units = args[:processing_units] if args.key?(:processing_units)
          @replica_compute_capacity = args[:replica_compute_capacity] if args.key?(:replica_compute_capacity)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A possible configuration for a Cloud Spanner instance. Configurations define
      # the geographic placement of nodes and their replication.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # Base configuration name, e.g. projects//instanceConfigs/nam3, based on which
        # this configuration is created. Only set for user-managed configurations. `
        # base_config` must refer to a configuration of type `GOOGLE_MANAGED` in the
        # same project as this configuration.
        # Corresponds to the JSON property `baseConfig`
        # @return [String]
        attr_accessor :base_config
      
        # Output only. Whether this instance configuration is a Google-managed or user-
        # managed configuration.
        # Corresponds to the JSON property `configType`
        # @return [String]
        attr_accessor :config_type
      
        # The name of this instance configuration as it appears in UIs.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a instance configuration from overwriting each other.
        # It is strongly suggested that systems make use of the etag in the read-modify-
        # write cycle to perform instance configuration updates in order to avoid race
        # conditions: An etag is returned in the response which contains instance
        # configurations, and systems are expected to put that etag in the request to
        # update instance configuration to ensure that their change is applied to the
        # same version of the instance configuration. If no etag is provided in the call
        # to update the instance configuration, then the existing instance configuration
        # is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Describes whether free instances are available to be created in
        # this instance configuration.
        # Corresponds to the JSON property `freeInstanceAvailability`
        # @return [String]
        attr_accessor :free_instance_availability
      
        # Cloud Labels are a flexible and lightweight mechanism for organizing cloud
        # resources into groups that reflect a customer's organizational needs and
        # deployment strategies. Cloud Labels can be used to filter collections of
        # resources. They can be used to control how resource metrics are aggregated.
        # And they can be used as arguments to policy management rules (e.g. route,
        # firewall, load balancing, etc.). * Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `a-z`0,
        # 62``. * Label values must be between 0 and 63 characters long and must conform
        # to the regular expression `[a-z0-9_-]`0,63``. * No more than 64 labels can be
        # associated with a given resource. See https://goo.gl/xmQnxf for more
        # information on and examples of labels. If you plan to use labels in your own
        # code, please note that additional characters may be allowed in the future.
        # Therefore, you are advised to use an internal label representation, such as
        # JSON, which doesn't rely upon specific characters being disallowed. For
        # example, representing labels as the string: name + "_" + value would prove
        # problematic if we were to allow "_" in a future release.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Allowed values of the "default_leader" schema option for databases in
        # instances that use this instance configuration.
        # Corresponds to the JSON property `leaderOptions`
        # @return [Array<String>]
        attr_accessor :leader_options
      
        # A unique identifier for the instance configuration. Values are of the form `
        # projects//instanceConfigs/a-z*`. User instance configuration must start with `
        # custom-`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The available optional replicas to choose from for user-managed
        # configurations. Populated for Google-managed configurations.
        # Corresponds to the JSON property `optionalReplicas`
        # @return [Array<Google::Apis::SpannerV1::ReplicaInfo>]
        attr_accessor :optional_replicas
      
        # Output only. The `QuorumType` of the instance configuration.
        # Corresponds to the JSON property `quorumType`
        # @return [String]
        attr_accessor :quorum_type
      
        # Output only. If true, the instance configuration is being created or updated.
        # If false, there are no ongoing operations for the instance configuration.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # The geographic placement of nodes in this instance configuration and their
        # replication properties. To create user-managed configurations, input `replicas`
        # must include all replicas in `replicas` of the `base_config` and include one
        # or more replicas in the `optional_replicas` of the `base_config`.
        # Corresponds to the JSON property `replicas`
        # @return [Array<Google::Apis::SpannerV1::ReplicaInfo>]
        attr_accessor :replicas
      
        # Output only. The current instance configuration state. Applicable only for `
        # USER_MANAGED` configurations.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The storage limit in bytes per processing unit.
        # Corresponds to the JSON property `storageLimitPerProcessingUnit`
        # @return [Fixnum]
        attr_accessor :storage_limit_per_processing_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_config = args[:base_config] if args.key?(:base_config)
          @config_type = args[:config_type] if args.key?(:config_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @free_instance_availability = args[:free_instance_availability] if args.key?(:free_instance_availability)
          @labels = args[:labels] if args.key?(:labels)
          @leader_options = args[:leader_options] if args.key?(:leader_options)
          @name = args[:name] if args.key?(:name)
          @optional_replicas = args[:optional_replicas] if args.key?(:optional_replicas)
          @quorum_type = args[:quorum_type] if args.key?(:quorum_type)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @replicas = args[:replicas] if args.key?(:replicas)
          @state = args[:state] if args.key?(:state)
          @storage_limit_per_processing_unit = args[:storage_limit_per_processing_unit] if args.key?(:storage_limit_per_processing_unit)
        end
      end
      
      # Encryption configuration for a Cloud Spanner database.
      class InstanceEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. This field is maintained for backwards compatibility. For new
        # callers, we recommend using `kms_key_names` to specify the KMS key. Only use `
        # kms_key_name` if the location of the KMS key matches the database instance's
        # configuration (location) exactly. For example, if the KMS location is in `us-
        # central1` or `nam3`, then the database instance must also be in `us-central1`
        # or `nam3`. The Cloud KMS key that is used to encrypt and decrypt the restored
        # database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. Specifies the KMS configuration for one or more keys used to encrypt
        # the database. Values are of the form `projects//locations//keyRings//
        # cryptoKeys/`. The keys referenced by `kms_key_names` must fully cover all
        # regions of the database's instance configuration. Some examples: * For
        # regional (single-region) instance configurations, specify a regional location
        # KMS key. * For multi-region instance configurations of type `GOOGLE_MANAGED`,
        # either specify a multi-region location KMS key or multiple regional location
        # KMS keys that cover all regions in the instance configuration. * For an
        # instance configuration of type `USER_MANAGED`, specify only regional location
        # KMS keys to cover each region in the instance configuration. Multi-region
        # location KMS keys aren't supported for `USER_MANAGED` type instance
        # configurations.
        # Corresponds to the JSON property `kmsKeyNames`
        # @return [Array<String>]
        attr_accessor :kms_key_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_names = args[:kms_key_names] if args.key?(:kms_key_names)
        end
      end
      
      # Encapsulates progress related information for a Cloud Spanner long running
      # instance operations.
      class InstanceOperationProgress
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
      
      # An isolated set of Cloud Spanner resources that databases can define
      # placements on.
      class InstancePartition
        include Google::Apis::Core::Hashable
      
        # Autoscaling configuration for an instance.
        # Corresponds to the JSON property `autoscalingConfig`
        # @return [Google::Apis::SpannerV1::AutoscalingConfig]
        attr_accessor :autoscaling_config
      
        # Required. The name of the instance partition's configuration. Values are of
        # the form `projects//instanceConfigs/`. See also InstanceConfig and
        # ListInstanceConfigs.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Output only. The time at which the instance partition was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The descriptive name for this instance partition as it appears in
        # UIs. Must be unique per project and between 4 and 30 characters in length.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Used for optimistic concurrency control as a way to help prevent simultaneous
        # updates of a instance partition from overwriting each other. It is strongly
        # suggested that systems make use of the etag in the read-modify-write cycle to
        # perform instance partition updates in order to avoid race conditions: An etag
        # is returned in the response which contains instance partitions, and systems
        # are expected to put that etag in the request to update instance partitions to
        # ensure that their change will be applied to the same version of the instance
        # partition. If no etag is provided in the call to update instance partition,
        # then the existing instance partition is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. A unique identifier for the instance partition. Values are of the
        # form `projects//instances//instancePartitions/a-z*[a-z0-9]`. The final segment
        # of the name must be between 2 and 64 characters in length. An instance
        # partition's name cannot be changed after the instance partition is created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of nodes allocated to this instance partition. Users can set the `
        # node_count` field to specify the target number of nodes allocated to the
        # instance partition. This may be zero in API responses for instance partitions
        # that are not yet in state `READY`.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The number of processing units allocated to this instance partition. Users can
        # set the `processing_units` field to specify the target number of processing
        # units allocated to the instance partition. This might be zero in API responses
        # for instance partitions that are not yet in the `READY` state.
        # Corresponds to the JSON property `processingUnits`
        # @return [Fixnum]
        attr_accessor :processing_units
      
        # Output only. Deprecated: This field is not populated. Output only. The names
        # of the backups that reference this instance partition. Referencing backups
        # should share the parent instance. The existence of any referencing backup
        # prevents the instance partition from being deleted.
        # Corresponds to the JSON property `referencingBackups`
        # @return [Array<String>]
        attr_accessor :referencing_backups
      
        # Output only. The names of the databases that reference this instance partition.
        # Referencing databases should share the parent instance. The existence of any
        # referencing database prevents the instance partition from being deleted.
        # Corresponds to the JSON property `referencingDatabases`
        # @return [Array<String>]
        attr_accessor :referencing_databases
      
        # Output only. The current instance partition state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the instance partition was most recently
        # updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_config = args[:autoscaling_config] if args.key?(:autoscaling_config)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @node_count = args[:node_count] if args.key?(:node_count)
          @processing_units = args[:processing_units] if args.key?(:processing_units)
          @referencing_backups = args[:referencing_backups] if args.key?(:referencing_backups)
          @referencing_databases = args[:referencing_databases] if args.key?(:referencing_databases)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ReplicaSelection identifies replicas with common properties.
      class InstanceReplicaSelection
        include Google::Apis::Core::Hashable
      
        # Required. Name of the location of the replicas (for example, "us-central1").
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # A split key.
      class Key
        include Google::Apis::Core::Hashable
      
        # Required. The column values making up the split key.
        # Corresponds to the JSON property `keyParts`
        # @return [Array<Object>]
        attr_accessor :key_parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_parts = args[:key_parts] if args.key?(:key_parts)
        end
      end
      
      # KeyRange represents a range of rows in a table or index. A range has a start
      # key and an end key. These keys can be open or closed, indicating if the range
      # includes rows with that key. Keys are represented by lists, where the ith
      # value in the list corresponds to the ith component of the table or index
      # primary key. Individual values are encoded as described here. For example,
      # consider the following table definition: CREATE TABLE UserEvents ( UserName
      # STRING(MAX), EventDate STRING(10) ) PRIMARY KEY(UserName, EventDate); The
      # following keys name rows in this table: "Bob", "2014-09-23" Since the `
      # UserEvents` table's `PRIMARY KEY` clause names two columns, each `UserEvents`
      # key has two elements; the first is the `UserName`, and the second is the `
      # EventDate`. Key ranges with multiple components are interpreted
      # lexicographically by component using the table or index key's declared sort
      # order. For example, the following range returns all events for user `"Bob"`
      # that occurred in the year 2015: "start_closed": ["Bob", "2015-01-01"] "
      # end_closed": ["Bob", "2015-12-31"] Start and end keys can omit trailing key
      # components. This affects the inclusion and exclusion of rows that exactly
      # match the provided key components: if the key is closed, then rows that
      # exactly match the provided components are included; if the key is open, then
      # rows that exactly match are not included. For example, the following range
      # includes all events for `"Bob"` that occurred during and after the year 2000: "
      # start_closed": ["Bob", "2000-01-01"] "end_closed": ["Bob"] The next example
      # retrieves all events for `"Bob"`: "start_closed": ["Bob"] "end_closed": ["Bob"]
      # To retrieve events before the year 2000: "start_closed": ["Bob"] "end_open": [
      # "Bob", "2000-01-01"] The following range includes all rows in the table: "
      # start_closed": [] "end_closed": [] This range returns all users whose `
      # UserName` begins with any character from A to C: "start_closed": ["A"] "
      # end_open": ["D"] This range returns all users whose `UserName` begins with B: "
      # start_closed": ["B"] "end_open": ["C"] Key ranges honor column sort order. For
      # example, suppose a table is defined as follows: CREATE TABLE
      # DescendingSortedTable ` Key INT64, ... ) PRIMARY KEY(Key DESC); The following
      # range retrieves all rows with key values between 1 and 100 inclusive: "
      # start_closed": ["100"] "end_closed": ["1"] Note that 100 is passed as the
      # start, and 1 is passed as the end, because `Key` is a descending column in the
      # schema.
      class KeyRange
        include Google::Apis::Core::Hashable
      
        # If the end is closed, then the range includes all rows whose first `len(
        # end_closed)` key columns exactly match `end_closed`.
        # Corresponds to the JSON property `endClosed`
        # @return [Array<Object>]
        attr_accessor :end_closed
      
        # If the end is open, then the range excludes rows whose first `len(end_open)`
        # key columns exactly match `end_open`.
        # Corresponds to the JSON property `endOpen`
        # @return [Array<Object>]
        attr_accessor :end_open
      
        # If the start is closed, then the range includes all rows whose first `len(
        # start_closed)` key columns exactly match `start_closed`.
        # Corresponds to the JSON property `startClosed`
        # @return [Array<Object>]
        attr_accessor :start_closed
      
        # If the start is open, then the range excludes rows whose first `len(start_open)
        # ` key columns exactly match `start_open`.
        # Corresponds to the JSON property `startOpen`
        # @return [Array<Object>]
        attr_accessor :start_open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_closed = args[:end_closed] if args.key?(:end_closed)
          @end_open = args[:end_open] if args.key?(:end_open)
          @start_closed = args[:start_closed] if args.key?(:start_closed)
          @start_open = args[:start_open] if args.key?(:start_open)
        end
      end
      
      # A message representing information for a key range (possibly one key).
      class KeyRangeInfo
        include Google::Apis::Core::Hashable
      
        # The list of context values for this key range.
        # Corresponds to the JSON property `contextValues`
        # @return [Array<Google::Apis::SpannerV1::ContextValue>]
        attr_accessor :context_values
      
        # The index of the end key in indexed_keys.
        # Corresponds to the JSON property `endKeyIndex`
        # @return [Fixnum]
        attr_accessor :end_key_index
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # The number of keys this range covers.
        # Corresponds to the JSON property `keysCount`
        # @return [Fixnum]
        attr_accessor :keys_count
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :metric
      
        # The index of the start key in indexed_keys.
        # Corresponds to the JSON property `startKeyIndex`
        # @return [Fixnum]
        attr_accessor :start_key_index
      
        # The time offset. This is the time since the start of the time interval.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `unit`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :unit
      
        # The value of the metric.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_values = args[:context_values] if args.key?(:context_values)
          @end_key_index = args[:end_key_index] if args.key?(:end_key_index)
          @info = args[:info] if args.key?(:info)
          @keys_count = args[:keys_count] if args.key?(:keys_count)
          @metric = args[:metric] if args.key?(:metric)
          @start_key_index = args[:start_key_index] if args.key?(:start_key_index)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A message representing a list of specific information for multiple key ranges.
      class KeyRangeInfos
        include Google::Apis::Core::Hashable
      
        # The list individual KeyRangeInfos.
        # Corresponds to the JSON property `infos`
        # @return [Array<Google::Apis::SpannerV1::KeyRangeInfo>]
        attr_accessor :infos
      
        # The total size of the list of all KeyRangeInfos. This may be larger than the
        # number of repeated messages above. If that is the case, this number may be
        # used to determine how many are not being shown.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @infos = args[:infos] if args.key?(:infos)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
      # keys are expected to be in the same table or index. The keys need not be
      # sorted in any particular way. If the same key is specified multiple times in
      # the set (for example if two ranges, two keys, or a key and a range overlap),
      # Cloud Spanner behaves as if the key were only specified once.
      class KeySet
        include Google::Apis::Core::Hashable
      
        # For convenience `all` can be set to `true` to indicate that this `KeySet`
        # matches all keys in the table or index. Note that any keys specified in `keys`
        # or `ranges` are only yielded once.
        # Corresponds to the JSON property `all`
        # @return [Boolean]
        attr_accessor :all
        alias_method :all?, :all
      
        # A list of specific keys. Entries in `keys` should have exactly as many
        # elements as there are columns in the primary or index key with which this `
        # KeySet` is used. Individual key values are encoded as described here.
        # Corresponds to the JSON property `keys`
        # @return [Array<Array<Object>>]
        attr_accessor :keys
      
        # A list of key ranges. See KeyRange for more information about key range
        # specifications.
        # Corresponds to the JSON property `ranges`
        # @return [Array<Google::Apis::SpannerV1::KeyRange>]
        attr_accessor :ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @keys = args[:keys] if args.key?(:keys)
          @ranges = args[:ranges] if args.key?(:ranges)
        end
      end
      
      # The response for ListBackupOperations.
      class ListBackupOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListBackupOperations call to
        # fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching backup long-running operations. Each operation's name
        # will be prefixed by the backup's name. The operation's metadata field type `
        # metadata.type_url` describes the type of the metadata. Operations returned
        # include those that are pending or have completed/failed/canceled within the
        # last 7 days. Operations returned are ordered by `operation.metadata.value.
        # progress.start_time` in descending order starting from the most recently
        # started operation.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
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
      
      # The response for ListBackupSchedules.
      class ListBackupSchedulesResponse
        include Google::Apis::Core::Hashable
      
        # The list of backup schedules for a database.
        # Corresponds to the JSON property `backupSchedules`
        # @return [Array<Google::Apis::SpannerV1::BackupSchedule>]
        attr_accessor :backup_schedules
      
        # `next_page_token` can be sent in a subsequent ListBackupSchedules call to
        # fetch more of the schedules.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_schedules = args[:backup_schedules] if args.key?(:backup_schedules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListBackups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching backups. Backups returned are ordered by `create_time` in
        # descending order, starting from the most recent `create_time`.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::SpannerV1::Backup>]
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
      
      # The response for ListDatabaseOperations.
      class ListDatabaseOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListDatabaseOperations call to
        # fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching database long-running operations. Each operation's name
        # will be prefixed by the database's name. The operation's metadata field type `
        # metadata.type_url` describes the type of the metadata.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
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
      
      # The response for ListDatabaseRoles.
      class ListDatabaseRolesResponse
        include Google::Apis::Core::Hashable
      
        # Database roles that matched the request.
        # Corresponds to the JSON property `databaseRoles`
        # @return [Array<Google::Apis::SpannerV1::DatabaseRole>]
        attr_accessor :database_roles
      
        # `next_page_token` can be sent in a subsequent ListDatabaseRoles call to fetch
        # more of the matching roles.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_roles = args[:database_roles] if args.key?(:database_roles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListDatabases.
      class ListDatabasesResponse
        include Google::Apis::Core::Hashable
      
        # Databases that matched the request.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::SpannerV1::Database>]
        attr_accessor :databases
      
        # `next_page_token` can be sent in a subsequent ListDatabases call to fetch more
        # of the matching databases.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListInstanceConfigOperations.
      class ListInstanceConfigOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListInstanceConfigOperations
        # call to fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching instance configuration long-running operations. Each
        # operation's name will be prefixed by the name of the instance configuration.
        # The operation's metadata field type `metadata.type_url` describes the type of
        # the metadata.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
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
      
      # The response for ListInstanceConfigs.
      class ListInstanceConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested instance configurations.
        # Corresponds to the JSON property `instanceConfigs`
        # @return [Array<Google::Apis::SpannerV1::InstanceConfig>]
        attr_accessor :instance_configs
      
        # `next_page_token` can be sent in a subsequent ListInstanceConfigs call to
        # fetch more of the matching instance configurations.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_configs = args[:instance_configs] if args.key?(:instance_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListInstancePartitionOperations.
      class ListInstancePartitionOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListInstancePartitionOperations
        # call to fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching instance partition long-running operations. Each
        # operation's name will be prefixed by the instance partition's name. The
        # operation's metadata field type `metadata.type_url` describes the type of the
        # metadata.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
        attr_accessor :operations
      
        # The list of unreachable instance partitions. It includes the names of instance
        # partitions whose operation metadata could not be retrieved within
        # instance_partition_deadline.
        # Corresponds to the JSON property `unreachableInstancePartitions`
        # @return [Array<String>]
        attr_accessor :unreachable_instance_partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable_instance_partitions = args[:unreachable_instance_partitions] if args.key?(:unreachable_instance_partitions)
        end
      end
      
      # The response for ListInstancePartitions.
      class ListInstancePartitionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested instancePartitions.
        # Corresponds to the JSON property `instancePartitions`
        # @return [Array<Google::Apis::SpannerV1::InstancePartition>]
        attr_accessor :instance_partitions
      
        # `next_page_token` can be sent in a subsequent ListInstancePartitions call to
        # fetch more of the matching instance partitions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of unreachable instances or instance partitions. It includes the
        # names of instances or instance partitions whose metadata could not be
        # retrieved within instance_partition_deadline.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_partitions = args[:instance_partitions] if args.key?(:instance_partitions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response for ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::SpannerV1::Instance>]
        attr_accessor :instances
      
        # `next_page_token` can be sent in a subsequent ListInstances call to fetch more
        # of the matching instances.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of unreachable instances. It includes the names of instances whose
        # metadata could not be retrieved within instance_deadline.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::SpannerV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections e.g.
        # when attempting to list all resources across all supported locations.
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
      
      # Response method from the ListScans method.
      class ListScansResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Available scans based on the list query parameters.
        # Corresponds to the JSON property `scans`
        # @return [Array<Google::Apis::SpannerV1::Scan>]
        attr_accessor :scans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scans = args[:scans] if args.key?(:scans)
        end
      end
      
      # The response for ListSessions.
      class ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListSessions call to fetch more
        # of the matching sessions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of requested sessions.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::SpannerV1::Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # A message representing a user-facing string whose value may need to be
      # translated before being displayed.
      class LocalizedString
        include Google::Apis::Core::Hashable
      
        # A map of arguments used when creating the localized message. Keys represent
        # parameter names which may be used by the localized version when substituting
        # dynamic values.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,String>]
        attr_accessor :args
      
        # The canonical English version of this message. If no token is provided or the
        # front-end has no message associated with the token, this text will be
        # displayed as-is.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The token identifying the message, e.g. 'METRIC_READ_CPU'. This should be
        # unique within the service.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @message = args[:message] if args.key?(:message)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # A message representing the actual monitoring data, values for each key bucket
      # over time, of a metric.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The aggregation function used to aggregate each key bucket
        # Corresponds to the JSON property `aggregation`
        # @return [String]
        attr_accessor :aggregation
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :category
      
        # A message representing a derived metric.
        # Corresponds to the JSON property `derived`
        # @return [Google::Apis::SpannerV1::DerivedMetric]
        attr_accessor :derived
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `displayLabel`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :display_label
      
        # Whether the metric has any non-zero data.
        # Corresponds to the JSON property `hasNonzeroData`
        # @return [Boolean]
        attr_accessor :has_nonzero_data
        alias_method :has_nonzero_data?, :has_nonzero_data
      
        # The value that is considered hot for the metric. On a per metric basis hotness
        # signals high utilization and something that might potentially be a cause for
        # concern by the end user. hot_value is used to calibrate and scale visual color
        # scales.
        # Corresponds to the JSON property `hotValue`
        # @return [Float]
        attr_accessor :hot_value
      
        # The (sparse) mapping from time index to an IndexedHotKey message, representing
        # those time intervals for which there are hot keys.
        # Corresponds to the JSON property `indexedHotKeys`
        # @return [Hash<String,Google::Apis::SpannerV1::IndexedHotKey>]
        attr_accessor :indexed_hot_keys
      
        # The (sparse) mapping from time interval index to an IndexedKeyRangeInfos
        # message, representing those time intervals for which there are informational
        # messages concerning key ranges.
        # Corresponds to the JSON property `indexedKeyRangeInfos`
        # @return [Hash<String,Google::Apis::SpannerV1::IndexedKeyRangeInfos>]
        attr_accessor :indexed_key_range_infos
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # A message representing a matrix of floats.
        # Corresponds to the JSON property `matrix`
        # @return [Google::Apis::SpannerV1::MetricMatrix]
        attr_accessor :matrix
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `unit`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :unit
      
        # Whether the metric is visible to the end user.
        # Corresponds to the JSON property `visible`
        # @return [Boolean]
        attr_accessor :visible
        alias_method :visible?, :visible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation = args[:aggregation] if args.key?(:aggregation)
          @category = args[:category] if args.key?(:category)
          @derived = args[:derived] if args.key?(:derived)
          @display_label = args[:display_label] if args.key?(:display_label)
          @has_nonzero_data = args[:has_nonzero_data] if args.key?(:has_nonzero_data)
          @hot_value = args[:hot_value] if args.key?(:hot_value)
          @indexed_hot_keys = args[:indexed_hot_keys] if args.key?(:indexed_hot_keys)
          @indexed_key_range_infos = args[:indexed_key_range_infos] if args.key?(:indexed_key_range_infos)
          @info = args[:info] if args.key?(:info)
          @matrix = args[:matrix] if args.key?(:matrix)
          @unit = args[:unit] if args.key?(:unit)
          @visible = args[:visible] if args.key?(:visible)
        end
      end
      
      # A message representing a matrix of floats.
      class MetricMatrix
        include Google::Apis::Core::Hashable
      
        # The rows of the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SpannerV1::MetricMatrixRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # A message representing a row of a matrix of floats.
      class MetricMatrixRow
        include Google::Apis::Core::Hashable
      
        # The columns of the row.
        # Corresponds to the JSON property `cols`
        # @return [Array<Float>]
        attr_accessor :cols
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
        end
      end
      
      # A mod describes all data changes in a watched table row.
      class Mod
        include Google::Apis::Core::Hashable
      
        # Returns the value of the primary key of the modified row.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::SpannerV1::ModValue>]
        attr_accessor :keys
      
        # Returns the new values after the change for the modified columns. Always empty
        # for DELETE.
        # Corresponds to the JSON property `newValues`
        # @return [Array<Google::Apis::SpannerV1::ModValue>]
        attr_accessor :new_values
      
        # Returns the old values before the change for the modified columns. Always
        # empty for INSERT, or if old values are not being captured specified by
        # value_capture_type.
        # Corresponds to the JSON property `oldValues`
        # @return [Array<Google::Apis::SpannerV1::ModValue>]
        attr_accessor :old_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @new_values = args[:new_values] if args.key?(:new_values)
          @old_values = args[:old_values] if args.key?(:old_values)
        end
      end
      
      # Returns the value and associated metadata for a particular field of the Mod.
      class ModValue
        include Google::Apis::Core::Hashable
      
        # Index within the repeated column_metadata field, to obtain the column metadata
        # for the column that was modified.
        # Corresponds to the JSON property `columnMetadataIndex`
        # @return [Fixnum]
        attr_accessor :column_metadata_index
      
        # The value of the column.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_metadata_index = args[:column_metadata_index] if args.key?(:column_metadata_index)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes move-in of the key ranges into the change stream partition
      # identified by partition_token. To maintain processing the changes for a
      # particular key in timestamp order, the query processing the change stream
      # partition identified by partition_token should not advance beyond the
      # partition event record commit timestamp until the queries processing the
      # source change stream partitions have processed all change stream records with
      # timestamps <= the partition event record commit timestamp.
      class MoveInEvent
        include Google::Apis::Core::Hashable
      
        # An unique partition identifier describing the source change stream partition
        # that recorded changes for the key range that is moving into this partition.
        # Corresponds to the JSON property `sourcePartitionToken`
        # @return [String]
        attr_accessor :source_partition_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_partition_token = args[:source_partition_token] if args.key?(:source_partition_token)
        end
      end
      
      # The request for MoveInstance.
      class MoveInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The target instance configuration where to move the instance. Values
        # are of the form `projects//instanceConfigs/`.
        # Corresponds to the JSON property `targetConfig`
        # @return [String]
        attr_accessor :target_config
      
        # Optional. The configuration for each database in the target instance
        # configuration.
        # Corresponds to the JSON property `targetDatabaseMoveConfigs`
        # @return [Array<Google::Apis::SpannerV1::DatabaseMoveConfig>]
        attr_accessor :target_database_move_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_config = args[:target_config] if args.key?(:target_config)
          @target_database_move_configs = args[:target_database_move_configs] if args.key?(:target_database_move_configs)
        end
      end
      
      # Describes move-out of the key ranges out of the change stream partition
      # identified by partition_token. To maintain processing the changes for a
      # particular key in timestamp order, the query processing the MoveOutEvent in
      # the partition identified by partition_token should inform the queries
      # processing the destination partitions that they can unblock and proceed
      # processing records past the commit_timestamp.
      class MoveOutEvent
        include Google::Apis::Core::Hashable
      
        # An unique partition identifier describing the destination change stream
        # partition that will record changes for the key range that is moving out of
        # this partition.
        # Corresponds to the JSON property `destinationPartitionToken`
        # @return [String]
        attr_accessor :destination_partition_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_partition_token = args[:destination_partition_token] if args.key?(:destination_partition_token)
        end
      end
      
      # When a read-write transaction is executed on a multiplexed session, this
      # precommit token is sent back to the client as a part of the Transaction
      # message in the BeginTransaction response and also as a part of the ResultSet
      # and PartialResultSet responses.
      class MultiplexedSessionPrecommitToken
        include Google::Apis::Core::Hashable
      
        # Opaque precommit token.
        # Corresponds to the JSON property `precommitToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :precommit_token
      
        # An incrementing seq number is generated on every precommit token that is
        # returned. Clients should remember the precommit token with the highest
        # sequence number from the current transaction attempt.
        # Corresponds to the JSON property `seqNum`
        # @return [Fixnum]
        attr_accessor :seq_num
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @seq_num = args[:seq_num] if args.key?(:seq_num)
        end
      end
      
      # A modification to one or more Cloud Spanner rows. Mutations can be applied to
      # a Cloud Spanner database by sending them in a Commit call.
      class Mutation
        include Google::Apis::Core::Hashable
      
        # Arguments to delete operations.
        # Corresponds to the JSON property `delete`
        # @return [Google::Apis::SpannerV1::Delete]
        attr_accessor :delete
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `insert`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :insert
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `insertOrUpdate`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :insert_or_update
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `replace`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :replace
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete = args[:delete] if args.key?(:delete)
          @insert = args[:insert] if args.key?(:insert)
          @insert_or_update = args[:insert_or_update] if args.key?(:insert_or_update)
          @replace = args[:replace] if args.key?(:replace)
          @update = args[:update] if args.key?(:update)
        end
      end
      
      # A group of mutations to be committed together. Related mutations should be
      # placed in a group. For example, two mutations inserting rows with the same
      # primary key prefix in both parent and child tables are related.
      class MutationGroup
        include Google::Apis::Core::Hashable
      
        # Required. The mutations in this group.
        # Corresponds to the JSON property `mutations`
        # @return [Array<Google::Apis::SpannerV1::Mutation>]
        attr_accessor :mutations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutations = args[:mutations] if args.key?(:mutations)
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
        # @return [Google::Apis::SpannerV1::Status]
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
      
      # Encapsulates progress related information for a Cloud Spanner long running
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
      # optimizations performed on a newly restored database. This long-running
      # operation is automatically created by the system after the successful
      # completion of a database restore, and cannot be cancelled.
      class OptimizeRestoredDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the restored database being optimized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
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
      
      # Partial results from a streaming read or SQL query. Streaming reads and SQL
      # queries better tolerate large result sets, large rows, and large values, but
      # are a little trickier to consume.
      class PartialResultSet
        include Google::Apis::Core::Hashable
      
        # If true, then the final value in values is chunked, and must be combined with
        # more values from subsequent `PartialResultSet`s to obtain a complete field
        # value.
        # Corresponds to the JSON property `chunkedValue`
        # @return [Boolean]
        attr_accessor :chunked_value
        alias_method :chunked_value?, :chunked_value
      
        # Optional. Indicates whether this is the last `PartialResultSet` in the stream.
        # The server might optionally set this field. Clients shouldn't rely on this
        # field being set in all cases.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Metadata about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SpannerV1::ResultSetMetadata]
        attr_accessor :metadata
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # Streaming calls might be interrupted for a variety of reasons, such as TCP
        # connection loss. If this occurs, the stream of results can be resumed by re-
        # sending the original request and including `resume_token`. Note that executing
        # any other transaction in the same session invalidates the token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # Additional statistics about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SpannerV1::ResultSetStats]
        attr_accessor :stats
      
        # A streamed result set consists of a stream of values, which might be split
        # into many `PartialResultSet` messages to accommodate large rows and/or large
        # values. Every N complete values defines a row, where N is equal to the number
        # of entries in metadata.row_type.fields. Most values are encoded based on type
        # as described here. It's possible that the last value in values is "chunked",
        # meaning that the rest of the value is sent in subsequent `PartialResultSet`(s).
        # This is denoted by the chunked_value field. Two or more chunked values can be
        # merged to form a complete value as follows: * `bool/number/null`: can't be
        # chunked * `string`: concatenate the strings * `list`: concatenate the lists.
        # If the last element in a list is a `string`, `list`, or `object`, merge it
        # with the first element in the next list by applying these rules recursively. *
        # `object`: concatenate the (field name, field value) pairs. If a field name is
        # duplicated, then apply these rules recursively to merge the field values. Some
        # examples of merging: Strings are concatenated. "foo", "bar" => "foobar" Lists
        # of non-strings are concatenated. [2, 3], [4] => [2, 3, 4] Lists are
        # concatenated, but the last and first elements are merged because they are
        # strings. ["a", "b"], ["c", "d"] => ["a", "bc", "d"] Lists are concatenated,
        # but the last and first elements are merged because they are lists. Recursively,
        # the last and first elements of the inner lists are merged because they are
        # strings. ["a", ["b", "c"]], [["d"], "e"] => ["a", ["b", "cd"], "e"] Non-
        # overlapping object fields are combined. `"a": "1"`, `"b": "2"` => `"a": "1", "
        # b": 2"` Overlapping object fields are merged. `"a": "1"`, `"a": "2"` => `"a": "
        # 12"` Examples of merging objects containing lists of strings. `"a": ["1"]`, `"
        # a": ["2"]` => `"a": ["12"]` For a more complete example, suppose a streaming
        # SQL query is yielding a result set whose rows contain a single string field.
        # The following `PartialResultSet`s might be yielded: ` "metadata": ` ... ` "
        # values": ["Hello", "W"] "chunked_value": true "resume_token": "Af65..." ` ` "
        # values": ["orl"] "chunked_value": true ` ` "values": ["d"] "resume_token": "
        # Zx1B..." ` This sequence of `PartialResultSet`s encodes two rows, one
        # containing the field value `"Hello"`, and a second containing the field value `
        # "World" = "W" + "orl" + "d"`. Not all `PartialResultSet`s contain a `
        # resume_token`. Execution can only be resumed from a previously yielded `
        # resume_token`. For the above sequence of `PartialResultSet`s, resuming the
        # query with `"resume_token": "Af65..."` yields results from the `
        # PartialResultSet` with value "orl".
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunked_value = args[:chunked_value] if args.key?(:chunked_value)
          @last = args[:last] if args.key?(:last)
          @metadata = args[:metadata] if args.key?(:metadata)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @stats = args[:stats] if args.key?(:stats)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Information returned for each partition returned in a PartitionResponse.
      class Partition
        include Google::Apis::Core::Hashable
      
        # This token can be passed to `Read`, `StreamingRead`, `ExecuteSql`, or `
        # ExecuteStreamingSql` requests to restrict the results to those identified by
        # this partition token.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
        end
      end
      
      # A partition end record serves as a notification that the client should stop
      # reading the partition. No further records are expected to be retrieved on it.
      class PartitionEndRecord
        include Google::Apis::Core::Hashable
      
        # End timestamp at which the change stream partition is terminated. All changes
        # generated by this partition will have timestamps <= end_timestamp.
        # DataChangeRecord.commit_timestamps, PartitionStartRecord.start_timestamps,
        # PartitionEventRecord.commit_timestamps, and PartitionEndRecord.end_timestamps
        # can have the same value in the same partition. PartitionEndRecord is the last
        # record returned for a partition.
        # Corresponds to the JSON property `endTimestamp`
        # @return [String]
        attr_accessor :end_timestamp
      
        # Unique partition identifier describing the terminated change stream partition.
        # partition_token is equal to the partition token of the change stream partition
        # currently queried to return this PartitionEndRecord.
        # Corresponds to the JSON property `partitionToken`
        # @return [String]
        attr_accessor :partition_token
      
        # Record sequence numbers are unique and monotonically increasing (but not
        # necessarily contiguous) for a specific timestamp across record types in the
        # same partition. To guarantee ordered processing, the reader should process
        # records (of potentially different types) in record_sequence order for a
        # specific timestamp in the same partition.
        # Corresponds to the JSON property `recordSequence`
        # @return [String]
        attr_accessor :record_sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @record_sequence = args[:record_sequence] if args.key?(:record_sequence)
        end
      end
      
      # A partition event record describes key range changes for a change stream
      # partition. The changes to a row defined by its primary key can be captured in
      # one change stream partition for a specific time range, and then be captured in
      # a different change stream partition for a different time range. This movement
      # of key ranges across change stream partitions is a reflection of activities,
      # such as Spanner's dynamic splitting and load balancing, etc. Processing this
      # event is needed if users want to guarantee processing of the changes for any
      # key in timestamp order. If time ordered processing of changes for a primary
      # key is not needed, this event can be ignored. To guarantee time ordered
      # processing for each primary key, if the event describes move-ins, the reader
      # of this partition needs to wait until the readers of the source partitions
      # have processed all records with timestamps <= this PartitionEventRecord.
      # commit_timestamp, before advancing beyond this PartitionEventRecord. If the
      # event describes move-outs, the reader can notify the readers of the
      # destination partitions that they can continue processing.
      class PartitionEventRecord
        include Google::Apis::Core::Hashable
      
        # Indicates the commit timestamp at which the key range change occurred.
        # DataChangeRecord.commit_timestamps, PartitionStartRecord.start_timestamps,
        # PartitionEventRecord.commit_timestamps, and PartitionEndRecord.end_timestamps
        # can have the same value in the same partition.
        # Corresponds to the JSON property `commitTimestamp`
        # @return [String]
        attr_accessor :commit_timestamp
      
        # Set when one or more key ranges are moved into the change stream partition
        # identified by partition_token. Example: Two key ranges are moved into
        # partition (P1) from partition (P2) and partition (P3) in a single transaction
        # at timestamp T. The PartitionEventRecord returned in P1 will reflect the move
        # as: PartitionEventRecord ` commit_timestamp: T partition_token: "P1"
        # move_in_events ` source_partition_token: "P2" ` move_in_events `
        # source_partition_token: "P3" ` ` The PartitionEventRecord returned in P2 will
        # reflect the move as: PartitionEventRecord ` commit_timestamp: T
        # partition_token: "P2" move_out_events ` destination_partition_token: "P1" ` `
        # The PartitionEventRecord returned in P3 will reflect the move as:
        # PartitionEventRecord ` commit_timestamp: T partition_token: "P3"
        # move_out_events ` destination_partition_token: "P1" ` `
        # Corresponds to the JSON property `moveInEvents`
        # @return [Array<Google::Apis::SpannerV1::MoveInEvent>]
        attr_accessor :move_in_events
      
        # Set when one or more key ranges are moved out of the change stream partition
        # identified by partition_token. Example: Two key ranges are moved out of
        # partition (P1) to partition (P2) and partition (P3) in a single transaction at
        # timestamp T. The PartitionEventRecord returned in P1 will reflect the move as:
        # PartitionEventRecord ` commit_timestamp: T partition_token: "P1"
        # move_out_events ` destination_partition_token: "P2" ` move_out_events `
        # destination_partition_token: "P3" ` ` The PartitionEventRecord returned in P2
        # will reflect the move as: PartitionEventRecord ` commit_timestamp: T
        # partition_token: "P2" move_in_events ` source_partition_token: "P1" ` ` The
        # PartitionEventRecord returned in P3 will reflect the move as:
        # PartitionEventRecord ` commit_timestamp: T partition_token: "P3"
        # move_in_events ` source_partition_token: "P1" ` `
        # Corresponds to the JSON property `moveOutEvents`
        # @return [Array<Google::Apis::SpannerV1::MoveOutEvent>]
        attr_accessor :move_out_events
      
        # Unique partition identifier describing the partition this event occurred on.
        # partition_token is equal to the partition token of the change stream partition
        # currently queried to return this PartitionEventRecord.
        # Corresponds to the JSON property `partitionToken`
        # @return [String]
        attr_accessor :partition_token
      
        # Record sequence numbers are unique and monotonically increasing (but not
        # necessarily contiguous) for a specific timestamp across record types in the
        # same partition. To guarantee ordered processing, the reader should process
        # records (of potentially different types) in record_sequence order for a
        # specific timestamp in the same partition.
        # Corresponds to the JSON property `recordSequence`
        # @return [String]
        attr_accessor :record_sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_timestamp = args[:commit_timestamp] if args.key?(:commit_timestamp)
          @move_in_events = args[:move_in_events] if args.key?(:move_in_events)
          @move_out_events = args[:move_out_events] if args.key?(:move_out_events)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @record_sequence = args[:record_sequence] if args.key?(:record_sequence)
        end
      end
      
      # Options for a `PartitionQueryRequest` and `PartitionReadRequest`.
      class PartitionOptions
        include Google::Apis::Core::Hashable
      
        # **Note:** This hint is currently ignored by `PartitionQuery` and `
        # PartitionRead` requests. The desired maximum number of partitions to return.
        # For example, this might be set to the number of workers available. The default
        # for this option is currently 10,000. The maximum value is currently 200,000.
        # This is only a hint. The actual number of partitions returned can be smaller
        # or larger than this maximum count request.
        # Corresponds to the JSON property `maxPartitions`
        # @return [Fixnum]
        attr_accessor :max_partitions
      
        # **Note:** This hint is currently ignored by `PartitionQuery` and `
        # PartitionRead` requests. The desired data size for each partition generated.
        # The default for this option is currently 1 GiB. This is only a hint. The
        # actual size of each partition can be smaller or larger than this size request.
        # Corresponds to the JSON property `partitionSizeBytes`
        # @return [Fixnum]
        attr_accessor :partition_size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_partitions = args[:max_partitions] if args.key?(:max_partitions)
          @partition_size_bytes = args[:partition_size_bytes] if args.key?(:partition_size_bytes)
        end
      end
      
      # The request for PartitionQuery
      class PartitionQueryRequest
        include Google::Apis::Core::Hashable
      
        # It isn't always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, `param_types` can be
        # used to specify the exact SQL type for some or all of the SQL query parameters.
        # See the definition of Type for more information about SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the SQL string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names can contain letters, numbers,
        # and underscores. Parameters can appear anywhere that a literal value is
        # expected. The same parameter name can be used more than once, for example: `"
        # WHERE id > @msg_id AND id < @msg_id + 100"` It's an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Options for a `PartitionQueryRequest` and `PartitionReadRequest`.
        # Corresponds to the JSON property `partitionOptions`
        # @return [Google::Apis::SpannerV1::PartitionOptions]
        attr_accessor :partition_options
      
        # Required. The query request to generate partitions for. The request fails if
        # the query isn't root partitionable. For a query to be root partitionable, it
        # needs to satisfy a few conditions. For example, if the query execution plan
        # contains a distributed union operator, then it must be the first operator in
        # the plan. For more information about other conditions, see [Read data in
        # parallel](https://cloud.google.com/spanner/docs/reads#read_data_in_parallel).
        # The query request must not contain DML commands, such as `INSERT`, `UPDATE`,
        # or `DELETE`. Use `ExecuteStreamingSql` with a `PartitionedDml` transaction for
        # large, partition-friendly DML operations.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @partition_options = args[:partition_options] if args.key?(:partition_options)
          @sql = args[:sql] if args.key?(:sql)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for PartitionRead
      class PartitionReadRequest
        include Google::Apis::Core::Hashable
      
        # The columns of table to be returned for each row matching this request.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # If non-empty, the name of an index on table. This index is used instead of the
        # table primary key when interpreting key_set and sorting result rows. See
        # key_set for further information.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # Options for a `PartitionQueryRequest` and `PartitionReadRequest`.
        # Corresponds to the JSON property `partitionOptions`
        # @return [Google::Apis::SpannerV1::PartitionOptions]
        attr_accessor :partition_options
      
        # Required. The name of the table in the database to be read.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @index = args[:index] if args.key?(:index)
          @key_set = args[:key_set] if args.key?(:key_set)
          @partition_options = args[:partition_options] if args.key?(:partition_options)
          @table = args[:table] if args.key?(:table)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for PartitionQuery or PartitionRead
      class PartitionResponse
        include Google::Apis::Core::Hashable
      
        # Partitions created by this request.
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::SpannerV1::Partition>]
        attr_accessor :partitions
      
        # A transaction.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::Transaction]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # A partition start record serves as a notification that the client should
      # schedule the partitions to be queried. PartitionStartRecord returns
      # information about one or more partitions.
      class PartitionStartRecord
        include Google::Apis::Core::Hashable
      
        # Unique partition identifiers to be used in queries.
        # Corresponds to the JSON property `partitionTokens`
        # @return [Array<String>]
        attr_accessor :partition_tokens
      
        # Record sequence numbers are unique and monotonically increasing (but not
        # necessarily contiguous) for a specific timestamp across record types in the
        # same partition. To guarantee ordered processing, the reader should process
        # records (of potentially different types) in record_sequence order for a
        # specific timestamp in the same partition.
        # Corresponds to the JSON property `recordSequence`
        # @return [String]
        attr_accessor :record_sequence
      
        # Start timestamp at which the partitions should be queried to return change
        # stream records with timestamps >= start_timestamp. DataChangeRecord.
        # commit_timestamps, PartitionStartRecord.start_timestamps, PartitionEventRecord.
        # commit_timestamps, and PartitionEndRecord.end_timestamps can have the same
        # value in the same partition.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_tokens = args[:partition_tokens] if args.key?(:partition_tokens)
          @record_sequence = args[:record_sequence] if args.key?(:record_sequence)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
        end
      end
      
      # Message type to initiate a Partitioned DML transaction.
      class PartitionedDml
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Node information for nodes appearing in a QueryPlan.plan_nodes.
      class PlanNode
        include Google::Apis::Core::Hashable
      
        # List of child node `index`es and their relationship to this parent.
        # Corresponds to the JSON property `childLinks`
        # @return [Array<Google::Apis::SpannerV1::ChildLink>]
        attr_accessor :child_links
      
        # The display name for the node.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The execution statistics associated with the node, contained in a group of key-
        # value pairs. Only present if the plan was returned as a result of a profile
        # query. For example, number of executions, number of rows/time per execution
        # etc.
        # Corresponds to the JSON property `executionStats`
        # @return [Hash<String,Object>]
        attr_accessor :execution_stats
      
        # The `PlanNode`'s index in node list.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Used to determine the type of node. May be needed for visualizing different
        # kinds of nodes differently. For example, If the node is a SCALAR node, it will
        # have a condensed representation which can be used to directly embed a
        # description of the node in its parent.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Attributes relevant to the node contained in a group of key-value pairs. For
        # example, a Parameter Reference node could have the following information in
        # its metadata: ` "parameter_reference": "param1", "parameter_type": "array" `
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Condensed representation of a node and its subtree. Only present for `SCALAR`
        # PlanNode(s).
        # Corresponds to the JSON property `shortRepresentation`
        # @return [Google::Apis::SpannerV1::ShortRepresentation]
        attr_accessor :short_representation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_links = args[:child_links] if args.key?(:child_links)
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_stats = args[:execution_stats] if args.key?(:execution_stats)
          @index = args[:index] if args.key?(:index)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @short_representation = args[:short_representation] if args.key?(:short_representation)
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SpannerV1::Binding>]
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
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A message representing a key prefix node in the key prefix hierarchy. for eg.
      # Bigtable keyspaces are lexicographically ordered mappings of keys to values.
      # Keys often have a shared prefix structure where users use the keys to organize
      # data. Eg ///employee In this case Keysight will possibly use one node for a
      # company and reuse it for all employees that fall under the company. Doing so
      # improves legibility in the UI.
      class PrefixNode
        include Google::Apis::Core::Hashable
      
        # Whether this corresponds to a data_source name.
        # Corresponds to the JSON property `dataSourceNode`
        # @return [Boolean]
        attr_accessor :data_source_node
        alias_method :data_source_node?, :data_source_node
      
        # The depth in the prefix hierarchy.
        # Corresponds to the JSON property `depth`
        # @return [Fixnum]
        attr_accessor :depth
      
        # The index of the end key bucket of the range that this node spans.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # The index of the start key bucket of the range that this node spans.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The string represented by the prefix node.
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_node = args[:data_source_node] if args.key?(:data_source_node)
          @depth = args[:depth] if args.key?(:depth)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @word = args[:word] if args.key?(:word)
        end
      end
      
      # Output of query advisor analysis.
      class QueryAdvisorResult
        include Google::Apis::Core::Hashable
      
        # Optional. Index Recommendation for a query. This is an optional field and the
        # recommendation will only be available when the recommendation guarantees
        # significant improvement in query performance.
        # Corresponds to the JSON property `indexAdvice`
        # @return [Array<Google::Apis::SpannerV1::IndexAdvice>]
        attr_accessor :index_advice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index_advice = args[:index_advice] if args.key?(:index_advice)
        end
      end
      
      # Query optimizer configuration.
      class QueryOptions
        include Google::Apis::Core::Hashable
      
        # An option to control the selection of optimizer statistics package. This
        # parameter allows individual queries to use a different query optimizer
        # statistics package. Specifying `latest` as a value instructs Cloud Spanner to
        # use the latest generated statistics package. If not specified, Cloud Spanner
        # uses the statistics package set at the database level options, or the latest
        # package if the database option isn't set. The statistics package requested by
        # the query has to be exempt from garbage collection. This can be achieved with
        # the following DDL statement: ```sql ALTER STATISTICS SET OPTIONS (allow_gc=
        # false) ``` The list of available statistics packages can be queried from `
        # INFORMATION_SCHEMA.SPANNER_STATISTICS`. Executing a SQL statement with an
        # invalid optimizer statistics package or with a statistics package that allows
        # garbage collection fails with an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `optimizerStatisticsPackage`
        # @return [String]
        attr_accessor :optimizer_statistics_package
      
        # An option to control the selection of optimizer version. This parameter allows
        # individual queries to pick different query optimizer versions. Specifying `
        # latest` as a value instructs Cloud Spanner to use the latest supported query
        # optimizer version. If not specified, Cloud Spanner uses the optimizer version
        # set at the database level options. Any other positive integer (from the list
        # of supported optimizer versions) overrides the default optimizer version for
        # query execution. The list of supported optimizer versions can be queried from `
        # SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS`. Executing a SQL statement with an
        # invalid optimizer version fails with an `INVALID_ARGUMENT` error. See https://
        # cloud.google.com/spanner/docs/query-optimizer/manage-query-optimizer for more
        # information on managing the query optimizer. The `optimizer_version` statement
        # hint has precedence over this setting.
        # Corresponds to the JSON property `optimizerVersion`
        # @return [String]
        attr_accessor :optimizer_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optimizer_statistics_package = args[:optimizer_statistics_package] if args.key?(:optimizer_statistics_package)
          @optimizer_version = args[:optimizer_version] if args.key?(:optimizer_version)
        end
      end
      
      # Contains an ordered list of nodes appearing in the query plan.
      class QueryPlan
        include Google::Apis::Core::Hashable
      
        # The nodes in the query plan. Plan nodes are returned in pre-order starting
        # with the plan root. Each PlanNode's `id` corresponds to its index in `
        # plan_nodes`.
        # Corresponds to the JSON property `planNodes`
        # @return [Array<Google::Apis::SpannerV1::PlanNode>]
        attr_accessor :plan_nodes
      
        # Output of query advisor analysis.
        # Corresponds to the JSON property `queryAdvice`
        # @return [Google::Apis::SpannerV1::QueryAdvisorResult]
        attr_accessor :query_advice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plan_nodes = args[:plan_nodes] if args.key?(:plan_nodes)
          @query_advice = args[:query_advice] if args.key?(:query_advice)
        end
      end
      
      # Information about the dual-region quorum.
      class QuorumInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The etag is used for optimistic concurrency control as a way to
        # help prevent simultaneous `ChangeQuorum` requests that might create a race
        # condition.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Whether this `ChangeQuorum` is Google or User initiated.
        # Corresponds to the JSON property `initiator`
        # @return [String]
        attr_accessor :initiator
      
        # Information about the database quorum type. This only applies to dual-region
        # instance configs.
        # Corresponds to the JSON property `quorumType`
        # @return [Google::Apis::SpannerV1::QuorumType]
        attr_accessor :quorum_type
      
        # Output only. The timestamp when the request was triggered.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @initiator = args[:initiator] if args.key?(:initiator)
          @quorum_type = args[:quorum_type] if args.key?(:quorum_type)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Information about the database quorum type. This only applies to dual-region
      # instance configs.
      class QuorumType
        include Google::Apis::Core::Hashable
      
        # Message type for a dual-region quorum. Currently this type has no options.
        # Corresponds to the JSON property `dualRegion`
        # @return [Google::Apis::SpannerV1::DualRegionQuorum]
        attr_accessor :dual_region
      
        # Message type for a single-region quorum.
        # Corresponds to the JSON property `singleRegion`
        # @return [Google::Apis::SpannerV1::SingleRegionQuorum]
        attr_accessor :single_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dual_region = args[:dual_region] if args.key?(:dual_region)
          @single_region = args[:single_region] if args.key?(:single_region)
        end
      end
      
      # Message type to initiate a read-only transaction.
      class ReadOnly
        include Google::Apis::Core::Hashable
      
        # Executes all reads at a timestamp that is `exact_staleness` old. The timestamp
        # is chosen soon after the read is started. Guarantees that all writes that have
        # committed more than the specified number of seconds ago are visible. Because
        # Cloud Spanner chooses the exact timestamp, this mode works even if the client'
        # s local clock is substantially skewed from Cloud Spanner commit timestamps.
        # Useful for reading at nearby replicas without the distributed timestamp
        # negotiation overhead of `max_staleness`.
        # Corresponds to the JSON property `exactStaleness`
        # @return [String]
        attr_accessor :exact_staleness
      
        # Read data at a timestamp >= `NOW - max_staleness` seconds. Guarantees that all
        # writes that have committed more than the specified number of seconds ago are
        # visible. Because Cloud Spanner chooses the exact timestamp, this mode works
        # even if the client's local clock is substantially skewed from Cloud Spanner
        # commit timestamps. Useful for reading the freshest data available at a nearby
        # replica, while bounding the possible staleness if the local replica has fallen
        # behind. Note that this option can only be used in single-use transactions.
        # Corresponds to the JSON property `maxStaleness`
        # @return [String]
        attr_accessor :max_staleness
      
        # Executes all reads at a timestamp >= `min_read_timestamp`. This is useful for
        # requesting fresher data than some previous read, or data that is fresh enough
        # to observe the effects of some previously committed transaction whose
        # timestamp is known. Note that this option can only be used in single-use
        # transactions. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to
        # nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `minReadTimestamp`
        # @return [String]
        attr_accessor :min_read_timestamp
      
        # Executes all reads at the given timestamp. Unlike other modes, reads at a
        # specific timestamp are repeatable; the same read at the same timestamp always
        # returns the same data. If the timestamp is in the future, the read is blocked
        # until the specified timestamp, modulo the read's deadline. Useful for large
        # scale consistent reads such as mapreduces, or for coordinating many reads
        # against a consistent snapshot of the data. A timestamp in RFC3339 UTC \"Zulu\"
        # format, accurate to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `readTimestamp`
        # @return [String]
        attr_accessor :read_timestamp
      
        # If true, the Cloud Spanner-selected read timestamp is included in the
        # Transaction message that describes the transaction.
        # Corresponds to the JSON property `returnReadTimestamp`
        # @return [Boolean]
        attr_accessor :return_read_timestamp
        alias_method :return_read_timestamp?, :return_read_timestamp
      
        # Read at a timestamp where all previously committed transactions are visible.
        # Corresponds to the JSON property `strong`
        # @return [Boolean]
        attr_accessor :strong
        alias_method :strong?, :strong
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_staleness = args[:exact_staleness] if args.key?(:exact_staleness)
          @max_staleness = args[:max_staleness] if args.key?(:max_staleness)
          @min_read_timestamp = args[:min_read_timestamp] if args.key?(:min_read_timestamp)
          @read_timestamp = args[:read_timestamp] if args.key?(:read_timestamp)
          @return_read_timestamp = args[:return_read_timestamp] if args.key?(:return_read_timestamp)
          @strong = args[:strong] if args.key?(:strong)
        end
      end
      
      # The request for Read and StreamingRead.
      class ReadRequest
        include Google::Apis::Core::Hashable
      
        # Required. The columns of table to be returned for each row matching this
        # request.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # If this is for a partitioned read and this field is set to `true`, the request
        # is executed with Spanner Data Boost independent compute resources. If the
        # field is set to `true` but the request doesn't set `partition_token`, the API
        # returns an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `dataBoostEnabled`
        # @return [Boolean]
        attr_accessor :data_boost_enabled
        alias_method :data_boost_enabled?, :data_boost_enabled
      
        # The `DirectedReadOptions` can be used to indicate which replicas or regions
        # should be used for non-transactional reads or queries. `DirectedReadOptions`
        # can only be specified for a read-only transaction, otherwise the API returns
        # an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `directedReadOptions`
        # @return [Google::Apis::SpannerV1::DirectedReadOptions]
        attr_accessor :directed_read_options
      
        # If non-empty, the name of an index on table. This index is used instead of the
        # table primary key when interpreting key_set and sorting result rows. See
        # key_set for further information.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # If greater than zero, only the first `limit` rows are yielded. If `limit` is
        # zero, the default is no limit. A limit can't be specified if `partition_token`
        # is set.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Optional. Lock Hint for the request, it can only be used with read-write
        # transactions.
        # Corresponds to the JSON property `lockHint`
        # @return [String]
        attr_accessor :lock_hint
      
        # Optional. Order for the returned rows. By default, Spanner returns result rows
        # in primary key order except for PartitionRead requests. For applications that
        # don't require rows to be returned in primary key (`ORDER_BY_PRIMARY_KEY`)
        # order, setting `ORDER_BY_NO_ORDER` option allows Spanner to optimize row
        # retrieval, resulting in lower latencies in certain cases (for example, bulk
        # point lookups).
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # If present, results are restricted to the specified partition previously
        # created using `PartitionRead`. There must be an exact match for the values of
        # fields common to this message and the PartitionReadRequest message used to
        # create this partition_token.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If this request is resuming a previously interrupted read, `resume_token`
        # should be copied from the last PartialResultSet yielded before the
        # interruption. Doing this enables the new read to resume where the last read
        # left off. The rest of the request parameters must exactly match the request
        # that yielded this token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # Required. The name of the table in the database to be read.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @data_boost_enabled = args[:data_boost_enabled] if args.key?(:data_boost_enabled)
          @directed_read_options = args[:directed_read_options] if args.key?(:directed_read_options)
          @index = args[:index] if args.key?(:index)
          @key_set = args[:key_set] if args.key?(:key_set)
          @limit = args[:limit] if args.key?(:limit)
          @lock_hint = args[:lock_hint] if args.key?(:lock_hint)
          @order_by = args[:order_by] if args.key?(:order_by)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @request_options = args[:request_options] if args.key?(:request_options)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @table = args[:table] if args.key?(:table)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Message type to initiate a read-write transaction. Currently this transaction
      # type has no options.
      class ReadWrite
        include Google::Apis::Core::Hashable
      
        # Optional. Clients should pass the transaction ID of the previous transaction
        # attempt that was aborted if this transaction is being executed on a
        # multiplexed session.
        # Corresponds to the JSON property `multiplexedSessionPreviousTransactionId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :multiplexed_session_previous_transaction_id
      
        # Read lock mode for the transaction.
        # Corresponds to the JSON property `readLockMode`
        # @return [String]
        attr_accessor :read_lock_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @multiplexed_session_previous_transaction_id = args[:multiplexed_session_previous_transaction_id] if args.key?(:multiplexed_session_previous_transaction_id)
          @read_lock_mode = args[:read_lock_mode] if args.key?(:read_lock_mode)
        end
      end
      
      # ReplicaComputeCapacity describes the amount of server resources that are
      # allocated to each replica identified by the replica selection.
      class ReplicaComputeCapacity
        include Google::Apis::Core::Hashable
      
        # The number of nodes allocated to each replica. This may be zero in API
        # responses for instances that are not yet in state `READY`.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The number of processing units allocated to each replica. This may be zero in
        # API responses for instances that are not yet in state `READY`.
        # Corresponds to the JSON property `processingUnits`
        # @return [Fixnum]
        attr_accessor :processing_units
      
        # ReplicaSelection identifies replicas with common properties.
        # Corresponds to the JSON property `replicaSelection`
        # @return [Google::Apis::SpannerV1::InstanceReplicaSelection]
        attr_accessor :replica_selection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_count = args[:node_count] if args.key?(:node_count)
          @processing_units = args[:processing_units] if args.key?(:processing_units)
          @replica_selection = args[:replica_selection] if args.key?(:replica_selection)
        end
      end
      
      # 
      class ReplicaInfo
        include Google::Apis::Core::Hashable
      
        # If true, this location is designated as the default leader location where
        # leader replicas are placed. See the [region types documentation](https://cloud.
        # google.com/spanner/docs/instances#region_types) for more details.
        # Corresponds to the JSON property `defaultLeaderLocation`
        # @return [Boolean]
        attr_accessor :default_leader_location
        alias_method :default_leader_location?, :default_leader_location
      
        # The location of the serving resources, e.g., "us-central1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The type of replica.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_leader_location = args[:default_leader_location] if args.key?(:default_leader_location)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The directed read replica selector. Callers must provide one or more of the
      # following fields for replica selection: * `location` - The location must be
      # one of the regions within the multi-region configuration of your database. * `
      # type` - The type of the replica. Some examples of using replica_selectors are:
      # * `location:us-east1` --> The "us-east1" replica(s) of any available type is
      # used to process the request. * `type:READ_ONLY` --> The "READ_ONLY" type
      # replica(s) in the nearest available location are used to process the request. *
      # `location:us-east1 type:READ_ONLY` --> The "READ_ONLY" type replica(s) in
      # location "us-east1" is used to process the request.
      class ReplicaSelection
        include Google::Apis::Core::Hashable
      
        # The location or region of the serving requests, for example, "us-east1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The type of replica.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Common request options for various APIs.
      class RequestOptions
        include Google::Apis::Core::Hashable
      
        # Container for various pieces of client-owned context attached to a request.
        # Corresponds to the JSON property `clientContext`
        # @return [Google::Apis::SpannerV1::ClientContext]
        attr_accessor :client_context
      
        # Priority for the request.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # A per-request tag which can be applied to queries or reads, used for
        # statistics collection. Both `request_tag` and `transaction_tag` can be
        # specified for a read or query that belongs to a transaction. This field is
        # ignored for requests where it's not applicable (for example, `CommitRequest`).
        # Legal characters for `request_tag` values are all printable characters (ASCII
        # 32 - 126) and the length of a request_tag is limited to 50 characters. Values
        # that exceed this limit are truncated. Any leading underscore (_) characters
        # are removed from the string.
        # Corresponds to the JSON property `requestTag`
        # @return [String]
        attr_accessor :request_tag
      
        # A tag used for statistics collection about this transaction. Both `request_tag`
        # and `transaction_tag` can be specified for a read or query that belongs to a
        # transaction. The value of transaction_tag should be the same for all requests
        # belonging to the same transaction. If this request doesn't belong to any
        # transaction, `transaction_tag` is ignored. Legal characters for `
        # transaction_tag` values are all printable characters (ASCII 32 - 126) and the
        # length of a `transaction_tag` is limited to 50 characters. Values that exceed
        # this limit are truncated. Any leading underscore (_) characters are removed
        # from the string.
        # Corresponds to the JSON property `transactionTag`
        # @return [String]
        attr_accessor :transaction_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_context = args[:client_context] if args.key?(:client_context)
          @priority = args[:priority] if args.key?(:priority)
          @request_tag = args[:request_tag] if args.key?(:request_tag)
          @transaction_tag = args[:transaction_tag] if args.key?(:transaction_tag)
        end
      end
      
      # Encryption configuration for the restored database.
      class RestoreDatabaseEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encryption type of the restored database.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Optional. This field is maintained for backwards compatibility. For new
        # callers, we recommend using `kms_key_names` to specify the KMS key. Only use `
        # kms_key_name` if the location of the KMS key matches the database instance's
        # configuration (location) exactly. For example, if the KMS location is in `us-
        # central1` or `nam3`, then the database instance must also be in `us-central1`
        # or `nam3`. The Cloud KMS key that is used to encrypt and decrypt the restored
        # database. Set this field only when encryption_type is `
        # CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//
        # keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. Specifies the KMS configuration for one or more keys used to encrypt
        # the database. Values have the form `projects//locations//keyRings//cryptoKeys/`
        # . The keys referenced by `kms_key_names` must fully cover all regions of the
        # database's instance configuration. Some examples: * For regional (single-
        # region) instance configurations, specify a regional location KMS key. * For
        # multi-region instance configurations of type `GOOGLE_MANAGED`, either specify
        # a multi-region location KMS key or multiple regional location KMS keys that
        # cover all regions in the instance configuration. * For an instance
        # configuration of type `USER_MANAGED`, specify only regional location KMS keys
        # to cover each region in the instance configuration. Multi-region location KMS
        # keys aren't supported for `USER_MANAGED` type instance configurations.
        # Corresponds to the JSON property `kmsKeyNames`
        # @return [Array<String>]
        attr_accessor :kms_key_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_names = args[:kms_key_names] if args.key?(:kms_key_names)
        end
      end
      
      # Metadata type for the long-running operation returned by RestoreDatabase.
      class RestoreDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::SpannerV1::BackupInfo]
        attr_accessor :backup_info
      
        # The time at which cancellation of this operation was received. Operations.
        # CancelOperation starts asynchronous cancellation on a long-running operation.
        # The server makes a best effort to cancel the operation, but success is not
        # guaranteed. Clients can use Operations.GetOperation or other methods to check
        # whether the cancellation succeeded or whether the operation completed despite
        # cancellation. On successful cancellation, the operation is not deleted;
        # instead, it becomes an operation with an Operation.error value with a google.
        # rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # Name of the database being created and restored to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If exists, the name of the long-running operation that will be used to track
        # the post-restore optimization process to optimize the performance of the
        # restored database, and remove the dependency on the restore source. The name
        # is of the form `projects//instances//databases//operations/` where the is the
        # name of database being created and restored to. The metadata type of the long-
        # running operation is OptimizeRestoredDatabaseMetadata. This long-running
        # operation will be automatically created by the system after the
        # RestoreDatabase long-running operation completes successfully. This operation
        # will not be created if the restore was not successful.
        # Corresponds to the JSON property `optimizeDatabaseOperationName`
        # @return [String]
        attr_accessor :optimize_database_operation_name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
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
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @name = args[:name] if args.key?(:name)
          @optimize_database_operation_name = args[:optimize_database_operation_name] if args.key?(:optimize_database_operation_name)
          @progress = args[:progress] if args.key?(:progress)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # The request for RestoreDatabase.
      class RestoreDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Name of the backup from which to restore. Values are of the form `projects//
        # instances//backups/`.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Required. The id of the database to create and restore to. This database must
        # not already exist. The `database_id` appended to `parent` forms the full
        # database name of the form `projects//instances//databases/`.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Encryption configuration for the restored database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::RestoreDatabaseEncryptionConfig]
        attr_accessor :encryption_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @database_id = args[:database_id] if args.key?(:database_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
        end
      end
      
      # Information about the database restore.
      class RestoreInfo
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::SpannerV1::BackupInfo]
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
      
      # Results from Read or ExecuteSql.
      class ResultSet
        include Google::Apis::Core::Hashable
      
        # Metadata about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SpannerV1::ResultSetMetadata]
        attr_accessor :metadata
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # Each element in `rows` is a row whose format is defined by metadata.row_type.
        # The ith element in each row matches the ith field in metadata.row_type.
        # Elements are encoded based on type as described here.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<Object>>]
        attr_accessor :rows
      
        # Additional statistics about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SpannerV1::ResultSetStats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @rows = args[:rows] if args.key?(:rows)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Metadata about a ResultSet or PartialResultSet.
      class ResultSetMetadata
        include Google::Apis::Core::Hashable
      
        # `StructType` defines the fields of a STRUCT type.
        # Corresponds to the JSON property `rowType`
        # @return [Google::Apis::SpannerV1::StructType]
        attr_accessor :row_type
      
        # A transaction.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::Transaction]
        attr_accessor :transaction
      
        # `StructType` defines the fields of a STRUCT type.
        # Corresponds to the JSON property `undeclaredParameters`
        # @return [Google::Apis::SpannerV1::StructType]
        attr_accessor :undeclared_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_type = args[:row_type] if args.key?(:row_type)
          @transaction = args[:transaction] if args.key?(:transaction)
          @undeclared_parameters = args[:undeclared_parameters] if args.key?(:undeclared_parameters)
        end
      end
      
      # Additional statistics about a ResultSet or PartialResultSet.
      class ResultSetStats
        include Google::Apis::Core::Hashable
      
        # Contains an ordered list of nodes appearing in the query plan.
        # Corresponds to the JSON property `queryPlan`
        # @return [Google::Apis::SpannerV1::QueryPlan]
        attr_accessor :query_plan
      
        # Aggregated statistics from the execution of the query. Only present when the
        # query is profiled. For example, a query could return the statistics as follows:
        # ` "rows_returned": "3", "elapsed_time": "1.22 secs", "cpu_time": "1.19 secs" `
        # Corresponds to the JSON property `queryStats`
        # @return [Hash<String,Object>]
        attr_accessor :query_stats
      
        # Standard DML returns an exact count of rows that were modified.
        # Corresponds to the JSON property `rowCountExact`
        # @return [Fixnum]
        attr_accessor :row_count_exact
      
        # Partitioned DML doesn't offer exactly-once semantics, so it returns a lower
        # bound of the rows modified.
        # Corresponds to the JSON property `rowCountLowerBound`
        # @return [Fixnum]
        attr_accessor :row_count_lower_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_plan = args[:query_plan] if args.key?(:query_plan)
          @query_stats = args[:query_stats] if args.key?(:query_stats)
          @row_count_exact = args[:row_count_exact] if args.key?(:row_count_exact)
          @row_count_lower_bound = args[:row_count_lower_bound] if args.key?(:row_count_lower_bound)
        end
      end
      
      # The request for Rollback.
      class RollbackRequest
        include Google::Apis::Core::Hashable
      
        # Required. The transaction to roll back.
        # Corresponds to the JSON property `transactionId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # Scan is a structure which describes Cloud Key Visualizer scan information.
      class Scan
        include Google::Apis::Core::Hashable
      
        # Additional information provided by the implementer.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Object>]
        attr_accessor :details
      
        # The upper bound for when the scan is defined.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The unique name of the scan, specific to the Database service implementing
        # this interface.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ScanData contains Cloud Key Visualizer scan data used by the caller to
        # construct a visualization.
        # Corresponds to the JSON property `scanData`
        # @return [Google::Apis::SpannerV1::ScanData]
        attr_accessor :scan_data
      
        # A range of time (inclusive) for when the scan is defined. The lower bound for
        # when the scan is defined.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @scan_data = args[:scan_data] if args.key?(:scan_data)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # ScanData contains Cloud Key Visualizer scan data used by the caller to
      # construct a visualization.
      class ScanData
        include Google::Apis::Core::Hashable
      
        # Cloud Key Visualizer scan data. The range of time this information covers is
        # captured via the above time range fields. Note, this field is not available to
        # the ListScans method.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::SpannerV1::VisualizationData]
        attr_accessor :data
      
        # The upper bound for when the contained data is defined.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A range of time (inclusive) for when the contained data is defined. The lower
        # bound for when the contained data is defined.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A session in the Cloud Spanner API.
      class Session
        include Google::Apis::Core::Hashable
      
        # Output only. The approximate timestamp when the session is last used. It's
        # typically earlier than the actual last use time.
        # Corresponds to the JSON property `approximateLastUseTime`
        # @return [String]
        attr_accessor :approximate_last_use_time
      
        # Output only. The timestamp when the session is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The database role which created this session.
        # Corresponds to the JSON property `creatorRole`
        # @return [String]
        attr_accessor :creator_role
      
        # The labels for the session. * Label keys must be between 1 and 63 characters
        # long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-
        # z0-9])?`. * Label values must be between 0 and 63 characters long and must
        # conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more
        # than 64 labels can be associated with a given session. See https://goo.gl/
        # xmQnxf for more information on and examples of labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. If `true`, specifies a multiplexed session. Use a multiplexed
        # session for multiple, concurrent operations including any combination of read-
        # only and read-write transactions. Use `sessions.create` to create multiplexed
        # sessions. Don't use BatchCreateSessions to create a multiplexed session. You
        # can't delete or list multiplexed sessions.
        # Corresponds to the JSON property `multiplexed`
        # @return [Boolean]
        attr_accessor :multiplexed
        alias_method :multiplexed?, :multiplexed
      
        # Output only. The name of the session. This is always system-assigned.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approximate_last_use_time = args[:approximate_last_use_time] if args.key?(:approximate_last_use_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_role = args[:creator_role] if args.key?(:creator_role)
          @labels = args[:labels] if args.key?(:labels)
          @multiplexed = args[:multiplexed] if args.key?(:multiplexed)
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::SpannerV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Condensed representation of a node and its subtree. Only present for `SCALAR`
      # PlanNode(s).
      class ShortRepresentation
        include Google::Apis::Core::Hashable
      
        # A string representation of the expression subtree rooted at this node.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A mapping of (subquery variable name) -> (subquery node id) for cases where
        # the `description` string of this node references a `SCALAR` subquery contained
        # in the expression subtree rooted at this node. The referenced `SCALAR`
        # subquery may not necessarily be a direct child of this node.
        # Corresponds to the JSON property `subqueries`
        # @return [Hash<String,Fixnum>]
        attr_accessor :subqueries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @subqueries = args[:subqueries] if args.key?(:subqueries)
        end
      end
      
      # Message type for a single-region quorum.
      class SingleRegionQuorum
        include Google::Apis::Core::Hashable
      
        # Required. The location of the serving region, for example, "us-central1". The
        # location must be one of the regions within the dual-region instance
        # configuration of your database. The list of valid locations is available using
        # the GetInstanceConfig API. This should only be used if you plan to change
        # quorum to the single-region quorum type.
        # Corresponds to the JSON property `servingLocation`
        # @return [String]
        attr_accessor :serving_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serving_location = args[:serving_location] if args.key?(:serving_location)
        end
      end
      
      # The split points of a table or an index.
      class SplitPoints
        include Google::Apis::Core::Hashable
      
        # Optional. The expiration timestamp of the split points. A timestamp in the
        # past means immediate expiration. The maximum value can be 30 days in the
        # future. Defaults to 10 days in the future if not specified.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The index to split. If specified, the `table` field must refer to the index's
        # base table.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # Required. The list of split keys. In essence, the split boundaries.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::SpannerV1::Key>]
        attr_accessor :keys
      
        # The table to split.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @index = args[:index] if args.key?(:index)
          @keys = args[:keys] if args.key?(:keys)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # A single DML statement.
      class Statement
        include Google::Apis::Core::Hashable
      
        # It isn't always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, `param_types` can be
        # used to specify the exact SQL type for some or all of the SQL statement
        # parameters. See the definition of Type for more information about SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the DML string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names can contain letters, numbers,
        # and underscores. Parameters can appear anywhere that a literal value is
        # expected. The same parameter name can be used more than once, for example: `"
        # WHERE id > @msg_id AND id < @msg_id + 100"` It's an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Required. The DML string.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @sql = args[:sql] if args.key?(:sql)
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
      
      # `StructType` defines the fields of a STRUCT type.
      class StructType
        include Google::Apis::Core::Hashable
      
        # The list of fields that make up this struct. Order is significant, because
        # values of this struct type are represented as lists, where the order of field
        # values matches the order of fields in the StructType. In turn, the order of
        # fields matches the order of columns in a read request, or the order of fields
        # in the `SELECT` clause of a query.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::SpannerV1::Field>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # REQUIRED: The set of permissions to check for 'resource'. Permissions with
        # wildcards (such as '*', 'spanner.*', 'spanner.instances.*') are not allowed.
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
      
      # A transaction.
      class Transaction
        include Google::Apis::Core::Hashable
      
        # `id` may be used to identify the transaction in subsequent Read, ExecuteSql,
        # Commit, or Rollback calls. Single-use read-only transactions do not have IDs,
        # because single-use transactions do not support multiple requests.
        # Corresponds to the JSON property `id`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :id
      
        # When a read-write transaction is executed on a multiplexed session, this
        # precommit token is sent back to the client as a part of the Transaction
        # message in the BeginTransaction response and also as a part of the ResultSet
        # and PartialResultSet responses.
        # Corresponds to the JSON property `precommitToken`
        # @return [Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken]
        attr_accessor :precommit_token
      
        # For snapshot read-only transactions, the read timestamp chosen for the
        # transaction. Not returned by default: see TransactionOptions.ReadOnly.
        # return_read_timestamp. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to
        # nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `readTimestamp`
        # @return [String]
        attr_accessor :read_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @precommit_token = args[:precommit_token] if args.key?(:precommit_token)
          @read_timestamp = args[:read_timestamp] if args.key?(:read_timestamp)
        end
      end
      
      # Options to use for transactions.
      class TransactionOptions
        include Google::Apis::Core::Hashable
      
        # When `exclude_txn_from_change_streams` is set to `true`, it prevents read or
        # write transactions from being tracked in change streams. * If the DDL option `
        # allow_txn_exclusion` is set to `true`, then the updates made within this
        # transaction aren't recorded in the change stream. * If you don't set the DDL
        # option `allow_txn_exclusion` or if it's set to `false`, then the updates made
        # within this transaction are recorded in the change stream. When `
        # exclude_txn_from_change_streams` is set to `false` or not set, modifications
        # from this transaction are recorded in all change streams that are tracking
        # columns modified by these transactions. The `exclude_txn_from_change_streams`
        # option can only be specified for read-write or partitioned DML transactions,
        # otherwise the API returns an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `excludeTxnFromChangeStreams`
        # @return [Boolean]
        attr_accessor :exclude_txn_from_change_streams
        alias_method :exclude_txn_from_change_streams?, :exclude_txn_from_change_streams
      
        # Isolation level for the transaction.
        # Corresponds to the JSON property `isolationLevel`
        # @return [String]
        attr_accessor :isolation_level
      
        # Message type to initiate a Partitioned DML transaction.
        # Corresponds to the JSON property `partitionedDml`
        # @return [Google::Apis::SpannerV1::PartitionedDml]
        attr_accessor :partitioned_dml
      
        # Message type to initiate a read-only transaction.
        # Corresponds to the JSON property `readOnly`
        # @return [Google::Apis::SpannerV1::ReadOnly]
        attr_accessor :read_only
      
        # Message type to initiate a read-write transaction. Currently this transaction
        # type has no options.
        # Corresponds to the JSON property `readWrite`
        # @return [Google::Apis::SpannerV1::ReadWrite]
        attr_accessor :read_write
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_txn_from_change_streams = args[:exclude_txn_from_change_streams] if args.key?(:exclude_txn_from_change_streams)
          @isolation_level = args[:isolation_level] if args.key?(:isolation_level)
          @partitioned_dml = args[:partitioned_dml] if args.key?(:partitioned_dml)
          @read_only = args[:read_only] if args.key?(:read_only)
          @read_write = args[:read_write] if args.key?(:read_write)
        end
      end
      
      # This message is used to select the transaction in which a Read or ExecuteSql
      # call runs. See TransactionOptions for more information about transactions.
      class TransactionSelector
        include Google::Apis::Core::Hashable
      
        # Options to use for transactions.
        # Corresponds to the JSON property `begin`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :begin
      
        # Execute the read or SQL query in a previously-started transaction.
        # Corresponds to the JSON property `id`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :id
      
        # Options to use for transactions.
        # Corresponds to the JSON property `singleUse`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :single_use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin = args[:begin] if args.key?(:begin)
          @id = args[:id] if args.key?(:id)
          @single_use = args[:single_use] if args.key?(:single_use)
        end
      end
      
      # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
      # table cell or returned from an SQL query.
      class Type
        include Google::Apis::Core::Hashable
      
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # Corresponds to the JSON property `arrayElementType`
        # @return [Google::Apis::SpannerV1::Type]
        attr_accessor :array_element_type
      
        # Required. The TypeCode for this type.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # If code == PROTO or code == ENUM, then `proto_type_fqn` is the fully qualified
        # name of the proto type representing the proto/enum definition.
        # Corresponds to the JSON property `protoTypeFqn`
        # @return [String]
        attr_accessor :proto_type_fqn
      
        # `StructType` defines the fields of a STRUCT type.
        # Corresponds to the JSON property `structType`
        # @return [Google::Apis::SpannerV1::StructType]
        attr_accessor :struct_type
      
        # The TypeAnnotationCode that disambiguates SQL type that Spanner will use to
        # represent values of this type during query processing. This is necessary for
        # some type codes because a single TypeCode can be mapped to different SQL types
        # depending on the SQL dialect. type_annotation typically is not needed to
        # process the content of a value (it doesn't affect serialization) and clients
        # can ignore it on the read path.
        # Corresponds to the JSON property `typeAnnotation`
        # @return [String]
        attr_accessor :type_annotation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_element_type = args[:array_element_type] if args.key?(:array_element_type)
          @code = args[:code] if args.key?(:code)
          @proto_type_fqn = args[:proto_type_fqn] if args.key?(:proto_type_fqn)
          @struct_type = args[:struct_type] if args.key?(:struct_type)
          @type_annotation = args[:type_annotation] if args.key?(:type_annotation)
        end
      end
      
      # Metadata type for the operation returned by UpdateDatabaseDdl.
      class UpdateDatabaseDdlMetadata
        include Google::Apis::Core::Hashable
      
        # The brief action info for the DDL statements. `actions[i]` is the brief info
        # for `statements[i]`.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::SpannerV1::DdlStatementActionInfo>]
        attr_accessor :actions
      
        # Reports the commit timestamps of all statements that have succeeded so far,
        # where `commit_timestamps[i]` is the commit timestamp for the statement `
        # statements[i]`.
        # Corresponds to the JSON property `commitTimestamps`
        # @return [Array<String>]
        attr_accessor :commit_timestamps
      
        # The database being modified.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The progress of the UpdateDatabaseDdl operations. All DDL statements will have
        # continuously updating progress, and `progress[i]` is the operation progress
        # for `statements[i]`. Also, `progress[i]` will have start time and end time
        # populated with commit timestamp of operation, as well as a progress of 100%
        # once the operation has completed.
        # Corresponds to the JSON property `progress`
        # @return [Array<Google::Apis::SpannerV1::OperationProgress>]
        attr_accessor :progress
      
        # For an update this list contains all the statements. For an individual
        # statement, this list contains only that statement.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        # Output only. When true, indicates that the operation is throttled, for example,
        # due to resource constraints. When resources become available the operation
        # will resume and this field will be false again.
        # Corresponds to the JSON property `throttled`
        # @return [Boolean]
        attr_accessor :throttled
        alias_method :throttled?, :throttled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @commit_timestamps = args[:commit_timestamps] if args.key?(:commit_timestamps)
          @database = args[:database] if args.key?(:database)
          @progress = args[:progress] if args.key?(:progress)
          @statements = args[:statements] if args.key?(:statements)
          @throttled = args[:throttled] if args.key?(:throttled)
        end
      end
      
      # Enqueues the given DDL statements to be applied, in order but not necessarily
      # all at once, to the database schema at some point (or points) in the future.
      # The server checks that the statements are executable (syntactically valid,
      # name tables that exist, etc.) before enqueueing them, but they may still fail
      # upon later execution (for example, if a statement from another batch of
      # statements is applied first and it conflicts in some way, or if there is some
      # data-related problem like a `NULL` value in a column to which `NOT NULL` would
      # be added). If a statement fails, all subsequent statements in the batch are
      # automatically cancelled. Each batch of statements is assigned a name which can
      # be used with the Operations API to monitor progress. See the operation_id
      # field for more details.
      class UpdateDatabaseDdlRequest
        include Google::Apis::Core::Hashable
      
        # If empty, the new update request is assigned an automatically-generated
        # operation ID. Otherwise, `operation_id` is used to construct the name of the
        # resulting Operation. Specifying an explicit operation ID simplifies
        # determining whether the statements were executed in the event that the
        # UpdateDatabaseDdl call is replayed, or the return value is otherwise lost: the
        # database and `operation_id` fields can be combined to form the `name` of the
        # resulting longrunning.Operation: `/operations/`. `operation_id` should be
        # unique within the database, and must be a valid identifier: `a-z*`. Note that
        # automatically-generated operation IDs always begin with an underscore. If the
        # named operation already exists, UpdateDatabaseDdl returns `ALREADY_EXISTS`.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements.
        # Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://
        # github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.
        # proto). To generate it, [install](https://grpc.io/docs/protoc-installation/)
        # and run `protoc` with --include_imports and --descriptor_set_out. For example,
        # to generate for moon/shot/app.proto, run ``` $protoc --proto_path=/app_path --
        # proto_path=/lib_path \ --include_imports \ --descriptor_set_out=descriptors.
        # data \ moon/shot/app.proto ``` For more details, see protobuffer [self
        # description](https://developers.google.com/protocol-buffers/docs/techniques#
        # self-description).
        # Corresponds to the JSON property `protoDescriptors`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :proto_descriptors
      
        # Required. DDL statements to be applied to the database.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @proto_descriptors = args[:proto_descriptors] if args.key?(:proto_descriptors)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Metadata type for the operation returned by UpdateDatabase.
      class UpdateDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is best-effort).
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        # The request for UpdateDatabase.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::SpannerV1::UpdateDatabaseRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @progress = args[:progress] if args.key?(:progress)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request for UpdateDatabase.
      class UpdateDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # A Cloud Spanner database.
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SpannerV1::Database]
        attr_accessor :database
      
        # Required. The list of fields to update. Currently, only `
        # enable_drop_protection` field can be updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Metadata type for the operation returned by UpdateInstanceConfig.
      class UpdateInstanceConfigMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # A possible configuration for a Cloud Spanner instance. Configurations define
        # the geographic placement of nodes and their replication.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::SpannerV1::InstanceConfig]
        attr_accessor :instance_config
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # instance operations.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::InstanceOperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # The request for UpdateInstanceConfig.
      class UpdateInstanceConfigRequest
        include Google::Apis::Core::Hashable
      
        # A possible configuration for a Cloud Spanner instance. Configurations define
        # the geographic placement of nodes and their replication.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::SpannerV1::InstanceConfig]
        attr_accessor :instance_config
      
        # Required. A mask specifying which fields in InstanceConfig should be updated.
        # The field mask must always be specified; this prevents any future fields in
        # InstanceConfig from being erased accidentally by clients that do not know
        # about them. Only display_name and labels can be updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # An option to validate, but not actually execute, a request, and provide the
        # same response.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Metadata type for the operation returned by UpdateInstance.
      class UpdateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The expected fulfillment period of this update operation.
        # Corresponds to the JSON property `expectedFulfillmentPeriod`
        # @return [String]
        attr_accessor :expected_fulfillment_period
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # The time at which UpdateInstance request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @expected_fulfillment_period = args[:expected_fulfillment_period] if args.key?(:expected_fulfillment_period)
          @instance = args[:instance] if args.key?(:instance)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata type for the operation returned by UpdateInstancePartition.
      class UpdateInstancePartitionMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An isolated set of Cloud Spanner resources that databases can define
        # placements on.
        # Corresponds to the JSON property `instancePartition`
        # @return [Google::Apis::SpannerV1::InstancePartition]
        attr_accessor :instance_partition
      
        # The time at which UpdateInstancePartition request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @instance_partition = args[:instance_partition] if args.key?(:instance_partition)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for UpdateInstancePartition.
      class UpdateInstancePartitionRequest
        include Google::Apis::Core::Hashable
      
        # Required. A mask specifying which fields in InstancePartition should be
        # updated. The field mask must always be specified; this prevents any future
        # fields in InstancePartition from being erased accidentally by clients that do
        # not know about them.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # An isolated set of Cloud Spanner resources that databases can define
        # placements on.
        # Corresponds to the JSON property `instancePartition`
        # @return [Google::Apis::SpannerV1::InstancePartition]
        attr_accessor :instance_partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @instance_partition = args[:instance_partition] if args.key?(:instance_partition)
        end
      end
      
      # The request for UpdateInstance.
      class UpdateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. A mask specifying which fields in Instance should be updated. The
        # field mask must always be specified; this prevents any future fields in
        # Instance from being erased accidentally by clients that do not know about them.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # 
      class VisualizationData
        include Google::Apis::Core::Hashable
      
        # The token signifying the end of a data_source.
        # Corresponds to the JSON property `dataSourceEndToken`
        # @return [String]
        attr_accessor :data_source_end_token
      
        # The token delimiting a datasource name from the rest of a key in a data_source.
        # Corresponds to the JSON property `dataSourceSeparatorToken`
        # @return [String]
        attr_accessor :data_source_separator_token
      
        # The list of messages (info, alerts, ...)
        # Corresponds to the JSON property `diagnosticMessages`
        # @return [Array<Google::Apis::SpannerV1::DiagnosticMessage>]
        attr_accessor :diagnostic_messages
      
        # We discretize the entire keyspace into buckets. Assuming each bucket has an
        # inclusive keyrange and covers keys from k(i) ... k(n). In this case k(n) would
        # be an end key for a given range. end_key_string is the collection of all such
        # end keys
        # Corresponds to the JSON property `endKeyStrings`
        # @return [Array<String>]
        attr_accessor :end_key_strings
      
        # Whether this scan contains PII.
        # Corresponds to the JSON property `hasPii`
        # @return [Boolean]
        attr_accessor :has_pii
        alias_method :has_pii?, :has_pii
      
        # Keys of key ranges that contribute significantly to a given metric Can be
        # thought of as heavy hitters.
        # Corresponds to the JSON property `indexedKeys`
        # @return [Array<String>]
        attr_accessor :indexed_keys
      
        # The token delimiting the key prefixes.
        # Corresponds to the JSON property `keySeparator`
        # @return [String]
        attr_accessor :key_separator
      
        # The unit for the key: e.g. 'key' or 'chunk'.
        # Corresponds to the JSON property `keyUnit`
        # @return [String]
        attr_accessor :key_unit
      
        # The list of data objects for each metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::SpannerV1::Metric>]
        attr_accessor :metrics
      
        # The list of extracted key prefix nodes used in the key prefix hierarchy.
        # Corresponds to the JSON property `prefixNodes`
        # @return [Array<Google::Apis::SpannerV1::PrefixNode>]
        attr_accessor :prefix_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_end_token = args[:data_source_end_token] if args.key?(:data_source_end_token)
          @data_source_separator_token = args[:data_source_separator_token] if args.key?(:data_source_separator_token)
          @diagnostic_messages = args[:diagnostic_messages] if args.key?(:diagnostic_messages)
          @end_key_strings = args[:end_key_strings] if args.key?(:end_key_strings)
          @has_pii = args[:has_pii] if args.key?(:has_pii)
          @indexed_keys = args[:indexed_keys] if args.key?(:indexed_keys)
          @key_separator = args[:key_separator] if args.key?(:key_separator)
          @key_unit = args[:key_unit] if args.key?(:key_unit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @prefix_nodes = args[:prefix_nodes] if args.key?(:prefix_nodes)
        end
      end
      
      # Arguments to insert, update, insert_or_update, and replace operations.
      class Write
        include Google::Apis::Core::Hashable
      
        # The names of the columns in table to be written. The list of columns must
        # contain enough columns to allow Cloud Spanner to derive values for all primary
        # key columns in the row(s) to be modified.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # Required. The table whose rows will be written.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # The values to be written. `values` can contain more than one list of values.
        # If it does, then multiple rows are written, one for each entry in `values`.
        # Each list in `values` must have exactly as many entries as there are entries
        # in columns above. Sending multiple lists is equivalent to sending multiple `
        # Mutation`s, each containing one `values` entry and repeating table and columns.
        # Individual values in each list are encoded as described here.
        # Corresponds to the JSON property `values`
        # @return [Array<Array<Object>>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @table = args[:table] if args.key?(:table)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
