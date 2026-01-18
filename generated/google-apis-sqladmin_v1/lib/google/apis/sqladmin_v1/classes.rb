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
    module SqladminV1
      
      # An entry for an Access Control list.
      class AclEntry
        include Google::Apis::Core::Hashable
      
        # The time when this access control entry expires in [RFC 3339](https://tools.
        # ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # This is always `sql#aclEntry`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. A label to identify this entry.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The allowlisted value for the access control list.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Acquire SSRS lease context.
      class AcquireSsrsLeaseContext
        include Google::Apis::Core::Hashable
      
        # Lease duration needed for SSRS setup.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The report database to be used for SSRS setup.
        # Corresponds to the JSON property `reportDatabase`
        # @return [String]
        attr_accessor :report_database
      
        # The username to be used as the service login to connect to the report database
        # for SSRS setup.
        # Corresponds to the JSON property `serviceLogin`
        # @return [String]
        attr_accessor :service_login
      
        # The username to be used as the setup login to connect to the database server
        # for SSRS setup.
        # Corresponds to the JSON property `setupLogin`
        # @return [String]
        attr_accessor :setup_login
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @report_database = args[:report_database] if args.key?(:report_database)
          @service_login = args[:service_login] if args.key?(:service_login)
          @setup_login = args[:setup_login] if args.key?(:setup_login)
        end
      end
      
      # Specifies options for controlling advanced machine features.
      class AdvancedMachineFeatures
        include Google::Apis::Core::Hashable
      
        # The number of threads per physical core.
        # Corresponds to the JSON property `threadsPerCore`
        # @return [Fixnum]
        attr_accessor :threads_per_core
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threads_per_core = args[:threads_per_core] if args.key?(:threads_per_core)
        end
      end
      
      # An Admin API warning message.
      class ApiWarning
        include Google::Apis::Core::Hashable
      
        # Code to uniquely identify the warning type.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The warning message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The region name for REGION_UNREACHABLE warning.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # An available database version. It can be a major or a minor version.
      class AvailableDatabaseVersion
        include Google::Apis::Core::Hashable
      
        # The database version's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The version's major version name.
        # Corresponds to the JSON property `majorVersion`
        # @return [String]
        attr_accessor :major_version
      
        # The database version name. For MySQL 8.0, this string provides the database
        # major and minor version.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @major_version = args[:major_version] if args.key?(:major_version)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A backup resource.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `backupInterval`
        # @return [Google::Apis::SqladminV1::Interval]
        attr_accessor :backup_interval
      
        # Output only. Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
        # Corresponds to the JSON property `backupKind`
        # @return [String]
        attr_accessor :backup_kind
      
        # Output only. The mapping to backup run resource used for IAM validations.
        # Corresponds to the JSON property `backupRun`
        # @return [String]
        attr_accessor :backup_run
      
        # Output only. The database version of the instance of at the time this backup
        # was made.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # The description of this backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Database instance operation error.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SqladminV1::OperationError]
        attr_accessor :error
      
        # Backup expiration time. A UTC timestamp of when this backup expired.
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # The name of the source database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Optional. Output only. Timestamp in UTC of when the instance associated with
        # this backup is deleted.
        # Corresponds to the JSON property `instanceDeletionTime`
        # @return [String]
        attr_accessor :instance_deletion_time
      
        # A Cloud SQL instance resource.
        # Corresponds to the JSON property `instanceSettings`
        # @return [Google::Apis::SqladminV1::DatabaseInstance]
        attr_accessor :instance_settings
      
        # Output only. This is always `sql#backup`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. This output contains the encryption configuration for a backup
        # and the resource name of the KMS key for disk encryption.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Output only. This output contains the encryption status for a backup and the
        # version of the KMS key that's used to encrypt the Cloud SQL instance.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        # The storage location of the backups. The location can be multi-regional.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The maximum chargeable bytes for the backup.
        # Corresponds to the JSON property `maxChargeableBytes`
        # @return [Fixnum]
        attr_accessor :max_chargeable_bytes
      
        # Output only. The resource name of the backup. Format: projects/`project`/
        # backups/`backup`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. This status indicates whether the backup satisfies PZI. The
        # status is reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. This status indicates whether the backup satisfies PZS. The
        # status is reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The status of this backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. This output contains a backup time zone. If a Cloud SQL for SQL
        # Server instance has a different time zone from the backup's time zone, then
        # the restore to the instance doesn't happen.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Input only. The time-to-live (TTL) interval for this resource (in days). For
        # example: ttlDays:7, means 7 days from the current time. The expiration time
        # can't exceed 365 days from the time that the backup is created.
        # Corresponds to the JSON property `ttlDays`
        # @return [Fixnum]
        attr_accessor :ttl_days
      
        # Output only. The type of this backup. The type can be "AUTOMATED", "ON_DEMAND"
        # or “FINAL”.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_interval = args[:backup_interval] if args.key?(:backup_interval)
          @backup_kind = args[:backup_kind] if args.key?(:backup_kind)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @database_version = args[:database_version] if args.key?(:database_version)
          @description = args[:description] if args.key?(:description)
          @error = args[:error] if args.key?(:error)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @instance = args[:instance] if args.key?(:instance)
          @instance_deletion_time = args[:instance_deletion_time] if args.key?(:instance_deletion_time)
          @instance_settings = args[:instance_settings] if args.key?(:instance_settings)
          @kind = args[:kind] if args.key?(:kind)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
          @location = args[:location] if args.key?(:location)
          @max_chargeable_bytes = args[:max_chargeable_bytes] if args.key?(:max_chargeable_bytes)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @self_link = args[:self_link] if args.key?(:self_link)
          @state = args[:state] if args.key?(:state)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @ttl_days = args[:ttl_days] if args.key?(:ttl_days)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Database instance backup configuration.
      class BackupConfiguration
        include Google::Apis::Core::Hashable
      
        # We currently only support backup retention by specifying the number of backups
        # we will retain.
        # Corresponds to the JSON property `backupRetentionSettings`
        # @return [Google::Apis::SqladminV1::BackupRetentionSettings]
        attr_accessor :backup_retention_settings
      
        # Output only. Backup tier that manages the backups for the instance.
        # Corresponds to the JSON property `backupTier`
        # @return [String]
        attr_accessor :backup_tier
      
        # (MySQL only) Whether binary log is enabled. If backup configuration is
        # disabled, binarylog must be disabled as well.
        # Corresponds to the JSON property `binaryLogEnabled`
        # @return [Boolean]
        attr_accessor :binary_log_enabled
        alias_method :binary_log_enabled?, :binary_log_enabled
      
        # Whether this configuration is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # This is always `sql#backupConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Location of the backup
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Whether point in time recovery is enabled.
        # Corresponds to the JSON property `pointInTimeRecoveryEnabled`
        # @return [Boolean]
        attr_accessor :point_in_time_recovery_enabled
        alias_method :point_in_time_recovery_enabled?, :point_in_time_recovery_enabled
      
        # Reserved for future use.
        # Corresponds to the JSON property `replicationLogArchivingEnabled`
        # @return [Boolean]
        attr_accessor :replication_log_archiving_enabled
        alias_method :replication_log_archiving_enabled?, :replication_log_archiving_enabled
      
        # Start time for the daily backup configuration in UTC timezone in the 24 hour
        # format - `HH:MM`.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The number of days of transaction logs we retain for point in time restore,
        # from 1-7.
        # Corresponds to the JSON property `transactionLogRetentionDays`
        # @return [Fixnum]
        attr_accessor :transaction_log_retention_days
      
        # Output only. This value contains the storage location of transactional logs
        # used to perform point-in-time recovery (PITR) for the database.
        # Corresponds to the JSON property `transactionalLogStorageState`
        # @return [String]
        attr_accessor :transactional_log_storage_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_retention_settings = args[:backup_retention_settings] if args.key?(:backup_retention_settings)
          @backup_tier = args[:backup_tier] if args.key?(:backup_tier)
          @binary_log_enabled = args[:binary_log_enabled] if args.key?(:binary_log_enabled)
          @enabled = args[:enabled] if args.key?(:enabled)
          @kind = args[:kind] if args.key?(:kind)
          @location = args[:location] if args.key?(:location)
          @point_in_time_recovery_enabled = args[:point_in_time_recovery_enabled] if args.key?(:point_in_time_recovery_enabled)
          @replication_log_archiving_enabled = args[:replication_log_archiving_enabled] if args.key?(:replication_log_archiving_enabled)
          @start_time = args[:start_time] if args.key?(:start_time)
          @transaction_log_retention_days = args[:transaction_log_retention_days] if args.key?(:transaction_log_retention_days)
          @transactional_log_storage_state = args[:transactional_log_storage_state] if args.key?(:transactional_log_storage_state)
        end
      end
      
      # Backup context.
      class BackupContext
        include Google::Apis::Core::Hashable
      
        # The identifier of the backup.
        # Corresponds to the JSON property `backupId`
        # @return [Fixnum]
        attr_accessor :backup_id
      
        # This is always `sql#backupContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the backup. Format: projects/`project`/backups/`backup`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Backup Reencryption Config
      class BackupReencryptionConfig
        include Google::Apis::Core::Hashable
      
        # Backup re-encryption limit
        # Corresponds to the JSON property `backupLimit`
        # @return [Fixnum]
        attr_accessor :backup_limit
      
        # Type of backups users want to re-encrypt.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_limit = args[:backup_limit] if args.key?(:backup_limit)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
        end
      end
      
      # We currently only support backup retention by specifying the number of backups
      # we will retain.
      class BackupRetentionSettings
        include Google::Apis::Core::Hashable
      
        # Depending on the value of retention_unit, this is used to determine if a
        # backup needs to be deleted. If retention_unit is 'COUNT', we will retain this
        # many backups.
        # Corresponds to the JSON property `retainedBackups`
        # @return [Fixnum]
        attr_accessor :retained_backups
      
        # The unit that 'retained_backups' represents.
        # Corresponds to the JSON property `retentionUnit`
        # @return [String]
        attr_accessor :retention_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retained_backups = args[:retained_backups] if args.key?(:retained_backups)
          @retention_unit = args[:retention_unit] if args.key?(:retention_unit)
        end
      end
      
      # A BackupRun resource.
      class BackupRun
        include Google::Apis::Core::Hashable
      
        # Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
        # Corresponds to the JSON property `backupKind`
        # @return [String]
        attr_accessor :backup_kind
      
        # Output only. The instance database version at the time this backup was made.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # The description of this run, only applicable to on-demand backups.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Disk encryption configuration for an instance.
        # Corresponds to the JSON property `diskEncryptionConfiguration`
        # @return [Google::Apis::SqladminV1::DiskEncryptionConfiguration]
        attr_accessor :disk_encryption_configuration
      
        # Disk encryption status for an instance.
        # Corresponds to the JSON property `diskEncryptionStatus`
        # @return [Google::Apis::SqladminV1::DiskEncryptionStatus]
        attr_accessor :disk_encryption_status
      
        # The time the backup operation completed in UTC timezone in [RFC 3339](https://
        # tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.
        # org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `enqueuedTime`
        # @return [String]
        attr_accessor :enqueued_time
      
        # Database instance operation error.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SqladminV1::OperationError]
        attr_accessor :error
      
        # The identifier for this backup run. Unique only for a specific Cloud SQL
        # instance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always `sql#backupRun`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Location of the backups.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The maximum chargeable bytes for the backup.
        # Corresponds to the JSON property `maxChargeableBytes`
        # @return [Fixnum]
        attr_accessor :max_chargeable_bytes
      
        # The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The time the backup operation actually started in UTC timezone in [RFC 3339](
        # https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.
        # 094Z`.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of this run.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Backup time zone to prevent restores to an instance with a different time zone.
        # Now relevant only for SQL Server.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL".
        # This field defaults to "ON_DEMAND" and is ignored, when specified for insert
        # requests.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The start time of the backup window during which this the backup was attempted
        # in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-
        # 11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `windowStartTime`
        # @return [String]
        attr_accessor :window_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_kind = args[:backup_kind] if args.key?(:backup_kind)
          @database_version = args[:database_version] if args.key?(:database_version)
          @description = args[:description] if args.key?(:description)
          @disk_encryption_configuration = args[:disk_encryption_configuration] if args.key?(:disk_encryption_configuration)
          @disk_encryption_status = args[:disk_encryption_status] if args.key?(:disk_encryption_status)
          @end_time = args[:end_time] if args.key?(:end_time)
          @enqueued_time = args[:enqueued_time] if args.key?(:enqueued_time)
          @error = args[:error] if args.key?(:error)
          @id = args[:id] if args.key?(:id)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @location = args[:location] if args.key?(:location)
          @max_chargeable_bytes = args[:max_chargeable_bytes] if args.key?(:max_chargeable_bytes)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @type = args[:type] if args.key?(:type)
          @window_start_time = args[:window_start_time] if args.key?(:window_start_time)
        end
      end
      
      # Backup run list results.
      class BackupRunsListResponse
        include Google::Apis::Core::Hashable
      
        # A list of backup runs in reverse chronological order of the enqueued time.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::BackupRun>]
        attr_accessor :items
      
        # This is always `sql#backupRunsList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Binary log coordinates.
      class BinLogCoordinates
        include Google::Apis::Core::Hashable
      
        # Name of the binary log file for a Cloud SQL instance.
        # Corresponds to the JSON property `binLogFileName`
        # @return [String]
        attr_accessor :bin_log_file_name
      
        # Position (offset) within the binary log file.
        # Corresponds to the JSON property `binLogPosition`
        # @return [Fixnum]
        attr_accessor :bin_log_position
      
        # This is always `sql#binLogCoordinates`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bin_log_file_name = args[:bin_log_file_name] if args.key?(:bin_log_file_name)
          @bin_log_position = args[:bin_log_position] if args.key?(:bin_log_position)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database instance clone context.
      class CloneContext
        include Google::Apis::Core::Hashable
      
        # The name of the allocated ip range for the private ip Cloud SQL instance. For
        # example: "google-managed-services-default". If set, the cloned instance ip
        # will be created in the allocated range. The range name must comply with [RFC
        # 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-
        # 63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?.
        # Reserved for future use.
        # Corresponds to the JSON property `allocatedIpRange`
        # @return [String]
        attr_accessor :allocated_ip_range
      
        # Binary log coordinates.
        # Corresponds to the JSON property `binLogCoordinates`
        # @return [Google::Apis::SqladminV1::BinLogCoordinates]
        attr_accessor :bin_log_coordinates
      
        # (SQL Server only) Clone only the specified databases from the source instance.
        # Clone all databases if empty.
        # Corresponds to the JSON property `databaseNames`
        # @return [Array<String>]
        attr_accessor :database_names
      
        # Required. Name of the Cloud SQL instance to be created as a clone.
        # Corresponds to the JSON property `destinationInstanceName`
        # @return [String]
        attr_accessor :destination_instance_name
      
        # This is always `sql#cloneContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Reserved for future use.
        # Corresponds to the JSON property `pitrTimestampMs`
        # @return [Fixnum]
        attr_accessor :pitr_timestamp_ms
      
        # Timestamp, if specified, identifies the time to which the source instance is
        # cloned.
        # Corresponds to the JSON property `pointInTime`
        # @return [String]
        attr_accessor :point_in_time
      
        # Optional. Copy clone and point-in-time recovery clone of a regional instance
        # in the specified zones. If not specified, clone to the same secondary zone as
        # the source instance. This value cannot be the same as the preferred_zone field.
        # This field applies to all DB types.
        # Corresponds to the JSON property `preferredSecondaryZone`
        # @return [String]
        attr_accessor :preferred_secondary_zone
      
        # Optional. Copy clone and point-in-time recovery clone of an instance to the
        # specified zone. If no zone is specified, clone to the same primary zone as the
        # source instance. This field applies to all DB types.
        # Corresponds to the JSON property `preferredZone`
        # @return [String]
        attr_accessor :preferred_zone
      
        # The timestamp used to identify the time when the source instance is deleted.
        # If this instance is deleted, then you must set the timestamp.
        # Corresponds to the JSON property `sourceInstanceDeletionTime`
        # @return [String]
        attr_accessor :source_instance_deletion_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_ip_range = args[:allocated_ip_range] if args.key?(:allocated_ip_range)
          @bin_log_coordinates = args[:bin_log_coordinates] if args.key?(:bin_log_coordinates)
          @database_names = args[:database_names] if args.key?(:database_names)
          @destination_instance_name = args[:destination_instance_name] if args.key?(:destination_instance_name)
          @kind = args[:kind] if args.key?(:kind)
          @pitr_timestamp_ms = args[:pitr_timestamp_ms] if args.key?(:pitr_timestamp_ms)
          @point_in_time = args[:point_in_time] if args.key?(:point_in_time)
          @preferred_secondary_zone = args[:preferred_secondary_zone] if args.key?(:preferred_secondary_zone)
          @preferred_zone = args[:preferred_zone] if args.key?(:preferred_zone)
          @source_instance_deletion_time = args[:source_instance_deletion_time] if args.key?(:source_instance_deletion_time)
        end
      end
      
      # Contains the name and datatype of a column.
      class Column
        include Google::Apis::Core::Hashable
      
        # Name of the column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Datatype of the column.
        # Corresponds to the JSON property `type`
        # @return [String]
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
      
      # Details of a single read pool node of a read pool.
      class ConnectPoolNodeConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The DNS name of the read pool node.
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # Output only. The list of DNS names used by this read pool node.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<Google::Apis::SqladminV1::DnsNameMapping>]
        attr_accessor :dns_names
      
        # Output only. Mappings containing IP addresses that can be used to connect to
        # the read pool node.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # Output only. The name of the read pool node. Doesn't include the project ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Connect settings retrieval response.
      class ConnectSettings
        include Google::Apis::Core::Hashable
      
        # `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that
        # is not managed by Google. This property is read-only; use the `tier` property
        # in the `settings` object to determine the database type.
        # Corresponds to the JSON property `backendType`
        # @return [String]
        attr_accessor :backend_type
      
        # Custom subject alternative names for the server certificate.
        # Corresponds to the JSON property `customSubjectAlternativeNames`
        # @return [Array<String>]
        attr_accessor :custom_subject_alternative_names
      
        # The database engine type and version. The `databaseVersion` field cannot be
        # changed after instance creation. MySQL instances: `MYSQL_8_0`, `MYSQL_5_7` (
        # default), or `MYSQL_5_6`. PostgreSQL instances: `POSTGRES_9_6`, `POSTGRES_10`,
        # `POSTGRES_11`, `POSTGRES_12` (default), `POSTGRES_13`, or `POSTGRES_14`. SQL
        # Server instances: `SQLSERVER_2017_STANDARD` (default), `
        # SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`, `
        # SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`
        # , or `SQLSERVER_2019_WEB`.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # The dns name of the instance.
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # Output only. The list of DNS names used by this instance.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<Google::Apis::SqladminV1::DnsNameMapping>]
        attr_accessor :dns_names
      
        # The assigned IP addresses for the instance.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # This is always `sql#connectSettings`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. Output only. mdx_protocol_support controls how the client uses
        # metadata exchange when connecting to the instance. The values in the list
        # representing parts of the MDX protocol that are supported by this instance.
        # When the list is empty, the instance does not support MDX, so the client must
        # not send an MDX request. The default is empty.
        # Corresponds to the JSON property `mdxProtocolSupport`
        # @return [Array<String>]
        attr_accessor :mdx_protocol_support
      
        # The number of read pool nodes in a read pool.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Output only. Entries containing information about each read pool node of the
        # read pool.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SqladminV1::ConnectPoolNodeConfig>]
        attr_accessor :nodes
      
        # Whether PSC connectivity is enabled for this instance.
        # Corresponds to the JSON property `pscEnabled`
        # @return [Boolean]
        attr_accessor :psc_enabled
        alias_method :psc_enabled?, :psc_enabled
      
        # The cloud region for the instance. For example, `us-central1`, `europe-west1`.
        # The region cannot be changed after instance creation.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :server_ca_cert
      
        # Specify what type of CA is used for the server certificate.
        # Corresponds to the JSON property `serverCaMode`
        # @return [String]
        attr_accessor :server_ca_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_type = args[:backend_type] if args.key?(:backend_type)
          @custom_subject_alternative_names = args[:custom_subject_alternative_names] if args.key?(:custom_subject_alternative_names)
          @database_version = args[:database_version] if args.key?(:database_version)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @kind = args[:kind] if args.key?(:kind)
          @mdx_protocol_support = args[:mdx_protocol_support] if args.key?(:mdx_protocol_support)
          @node_count = args[:node_count] if args.key?(:node_count)
          @nodes = args[:nodes] if args.key?(:nodes)
          @psc_enabled = args[:psc_enabled] if args.key?(:psc_enabled)
          @region = args[:region] if args.key?(:region)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
          @server_ca_mode = args[:server_ca_mode] if args.key?(:server_ca_mode)
        end
      end
      
      # The managed connection pooling configuration.
      class ConnectionPoolConfig
        include Google::Apis::Core::Hashable
      
        # Whether managed connection pooling is enabled.
        # Corresponds to the JSON property `connectionPoolingEnabled`
        # @return [Boolean]
        attr_accessor :connection_pooling_enabled
        alias_method :connection_pooling_enabled?, :connection_pooling_enabled
      
        # Optional. List of connection pool configuration flags.
        # Corresponds to the JSON property `flags`
        # @return [Array<Google::Apis::SqladminV1::ConnectionPoolFlags>]
        attr_accessor :flags
      
        # Output only. Number of connection poolers.
        # Corresponds to the JSON property `poolerCount`
        # @return [Fixnum]
        attr_accessor :pooler_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_pooling_enabled = args[:connection_pooling_enabled] if args.key?(:connection_pooling_enabled)
          @flags = args[:flags] if args.key?(:flags)
          @pooler_count = args[:pooler_count] if args.key?(:pooler_count)
        end
      end
      
      # Connection pool flags for Cloud SQL instances managed connection pool
      # configuration.
      class ConnectionPoolFlags
        include Google::Apis::Core::Hashable
      
        # Required. The name of the flag.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The value of the flag. Boolean flags are set to `on` for true and `
        # off` for false. This field must be omitted if the flag doesn't take a value.
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
      
      # Data cache configurations.
      class DataCacheConfig
        include Google::Apis::Core::Hashable
      
        # Whether data cache is enabled for the instance.
        # Corresponds to the JSON property `dataCacheEnabled`
        # @return [Boolean]
        attr_accessor :data_cache_enabled
        alias_method :data_cache_enabled?, :data_cache_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_cache_enabled = args[:data_cache_enabled] if args.key?(:data_cache_enabled)
        end
      end
      
      # Represents a SQL database on the Cloud SQL instance.
      class Database
        include Google::Apis::Core::Hashable
      
        # The Cloud SQL charset value.
        # Corresponds to the JSON property `charset`
        # @return [String]
        attr_accessor :charset
      
        # The Cloud SQL collation value.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # This field is deprecated and will be removed from a future version of the API.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The name of the Cloud SQL instance. This does not include the project ID.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always `sql#database`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the database in the Cloud SQL instance. This does not include the
        # project ID or instance name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The project ID of the project containing the Cloud SQL database. The Google
        # apps domain is prefixed if applicable.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Represents a Sql Server database on the Cloud SQL instance.
        # Corresponds to the JSON property `sqlserverDatabaseDetails`
        # @return [Google::Apis::SqladminV1::SqlServerDatabaseDetails]
        attr_accessor :sqlserver_database_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charset = args[:charset] if args.key?(:charset)
          @collation = args[:collation] if args.key?(:collation)
          @etag = args[:etag] if args.key?(:etag)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @self_link = args[:self_link] if args.key?(:self_link)
          @sqlserver_database_details = args[:sqlserver_database_details] if args.key?(:sqlserver_database_details)
        end
      end
      
      # Database flags for Cloud SQL instances.
      class DatabaseFlags
        include Google::Apis::Core::Hashable
      
        # The name of the flag. These flags are passed at instance startup, so include
        # both server options and system variables. Flags are specified with underscores,
        # not hyphens. For more information, see [Configuring Database Flags](https://
        # cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the flag. Boolean flags are set to `on` for true and `off` for
        # false. This field must be omitted if the flag doesn't take a value.
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
      
      # A Cloud SQL instance resource.
      class DatabaseInstance
        include Google::Apis::Core::Hashable
      
        # Output only. List all maintenance versions applicable on the instance
        # Corresponds to the JSON property `availableMaintenanceVersions`
        # @return [Array<String>]
        attr_accessor :available_maintenance_versions
      
        # The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A
        # database server that is not managed by Google. This property is read-only; use
        # the `tier` property in the `settings` object to determine the database type.
        # Corresponds to the JSON property `backendType`
        # @return [String]
        attr_accessor :backend_type
      
        # Connection name of the Cloud SQL instance used in connection strings.
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # Output only. The time when the instance was created in [RFC 3339](https://
        # tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The current disk usage of the instance in bytes. This property has been
        # deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used" metric
        # in Cloud Monitoring API instead. Please see [this announcement](https://groups.
        # google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ) for
        # details.
        # Corresponds to the JSON property `currentDiskSize`
        # @return [Fixnum]
        attr_accessor :current_disk_size
      
        # Output only. Stores the current database version running on the instance
        # including minor version such as `MYSQL_8_0_18`.
        # Corresponds to the JSON property `databaseInstalledVersion`
        # @return [String]
        attr_accessor :database_installed_version
      
        # The database engine type and version. The `databaseVersion` field cannot be
        # changed after instance creation.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Disk encryption configuration for an instance.
        # Corresponds to the JSON property `diskEncryptionConfiguration`
        # @return [Google::Apis::SqladminV1::DiskEncryptionConfiguration]
        attr_accessor :disk_encryption_configuration
      
        # Disk encryption status for an instance.
        # Corresponds to the JSON property `diskEncryptionStatus`
        # @return [Google::Apis::SqladminV1::DiskEncryptionStatus]
        attr_accessor :disk_encryption_status
      
        # Output only. The dns name of the instance.
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # Output only. The list of DNS names used by this instance.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<Google::Apis::SqladminV1::DnsNameMapping>]
        attr_accessor :dns_names
      
        # This field is deprecated and will be removed from a future version of the API.
        # Use the `settings.settingsVersion` field instead.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The name and status of the failover replica.
        # Corresponds to the JSON property `failoverReplica`
        # @return [Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica]
        attr_accessor :failover_replica
      
        # The Compute Engine zone that the instance is currently serving from. This
        # value could be different from the zone that was specified when the instance
        # was created if the instance has failed over to its secondary zone. WARNING:
        # Changing this might restart the instance.
        # Corresponds to the JSON property `gceZone`
        # @return [String]
        attr_accessor :gce_zone
      
        # Gemini instance configuration.
        # Corresponds to the JSON property `geminiConfig`
        # @return [Google::Apis::SqladminV1::GeminiInstanceConfig]
        attr_accessor :gemini_config
      
        # Input only. Determines whether an in-place major version upgrade of replicas
        # happens when an in-place major version upgrade of a primary instance is
        # initiated.
        # Corresponds to the JSON property `includeReplicasForMajorVersionUpgrade`
        # @return [Boolean]
        attr_accessor :include_replicas_for_major_version_upgrade
        alias_method :include_replicas_for_major_version_upgrade?, :include_replicas_for_major_version_upgrade
      
        # The instance type.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # The assigned IP addresses for the instance.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # The IPv6 address assigned to the instance. (Deprecated) This property was
        # applicable only to First Generation instances.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # This is always `sql#instance`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current software version on the instance.
        # Corresponds to the JSON property `maintenanceVersion`
        # @return [String]
        attr_accessor :maintenance_version
      
        # The name of the instance which will act as primary in the replication setup.
        # Corresponds to the JSON property `masterInstanceName`
        # @return [String]
        attr_accessor :master_instance_name
      
        # The maximum disk size of the instance in bytes.
        # Corresponds to the JSON property `maxDiskSize`
        # @return [Fixnum]
        attr_accessor :max_disk_size
      
        # Name of the Cloud SQL instance. This does not include the project ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of read pool nodes in a read pool.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Output only. Entries containing information about each read pool node of the
        # read pool.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SqladminV1::PoolNodeConfig>]
        attr_accessor :nodes
      
        # On-premises instance configuration.
        # Corresponds to the JSON property `onPremisesConfiguration`
        # @return [Google::Apis::SqladminV1::OnPremisesConfiguration]
        attr_accessor :on_premises_configuration
      
        # This message wraps up the information written by out-of-disk detection job.
        # Corresponds to the JSON property `outOfDiskReport`
        # @return [Google::Apis::SqladminV1::SqlOutOfDiskReport]
        attr_accessor :out_of_disk_report
      
        # Output only. DEPRECATED: please use write_endpoint instead.
        # Corresponds to the JSON property `primaryDnsName`
        # @return [String]
        attr_accessor :primary_dns_name
      
        # The project ID of the project containing the Cloud SQL instance. The Google
        # apps domain is prefixed if applicable.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Output only. The link to service attachment of PSC instance.
        # Corresponds to the JSON property `pscServiceAttachmentLink`
        # @return [String]
        attr_accessor :psc_service_attachment_link
      
        # The geographical region of the Cloud SQL instance. It can be one of the [
        # regions](https://cloud.google.com/sql/docs/mysql/locations#location-r) where
        # Cloud SQL operates: For example, `asia-east1`, `europe-west1`, and `us-
        # central1`. The default value is `us-central1`.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Read-replica configuration for connecting to the primary instance.
        # Corresponds to the JSON property `replicaConfiguration`
        # @return [Google::Apis::SqladminV1::ReplicaConfiguration]
        attr_accessor :replica_configuration
      
        # The replicas of the instance.
        # Corresponds to the JSON property `replicaNames`
        # @return [Array<String>]
        attr_accessor :replica_names
      
        # A primary instance and disaster recovery (DR) replica pair. A DR replica is a
        # cross-region replica that you designate for failover in the event that the
        # primary instance experiences regional failure. Applicable to MySQL and
        # PostgreSQL.
        # Corresponds to the JSON property `replicationCluster`
        # @return [Google::Apis::SqladminV1::ReplicationCluster]
        attr_accessor :replication_cluster
      
        # Initial root password. Use only on creation. You must set root passwords
        # before you can connect to PostgreSQL instances.
        # Corresponds to the JSON property `rootPassword`
        # @return [String]
        attr_accessor :root_password
      
        # Output only. This status indicates whether the instance satisfies PZI. The
        # status is reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # This status indicates whether the instance satisfies PZS. The status is
        # reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Any scheduled maintenance for this instance.
        # Corresponds to the JSON property `scheduledMaintenance`
        # @return [Google::Apis::SqladminV1::SqlScheduledMaintenance]
        attr_accessor :scheduled_maintenance
      
        # The Compute Engine zone that the failover instance is currently serving from
        # for a regional instance. This value could be different from the zone that was
        # specified when the instance was created if the instance has failed over to its
        # secondary/failover zone.
        # Corresponds to the JSON property `secondaryGceZone`
        # @return [String]
        attr_accessor :secondary_gce_zone
      
        # The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :server_ca_cert
      
        # The service account email address assigned to the instance.\This property is
        # read-only.
        # Corresponds to the JSON property `serviceAccountEmailAddress`
        # @return [String]
        attr_accessor :service_account_email_address
      
        # Database instance settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::SqladminV1::Settings]
        attr_accessor :settings
      
        # 
        # Corresponds to the JSON property `sqlNetworkArchitecture`
        # @return [String]
        attr_accessor :sql_network_architecture
      
        # The current serving state of the Cloud SQL instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # If the instance state is SUSPENDED, the reason for the suspension.
        # Corresponds to the JSON property `suspensionReason`
        # @return [Array<String>]
        attr_accessor :suspension_reason
      
        # Input only. Whether Cloud SQL is enabled to switch storing point-in-time
        # recovery log files from a data disk to Cloud Storage.
        # Corresponds to the JSON property `switchTransactionLogsToCloudStorageEnabled`
        # @return [Boolean]
        attr_accessor :switch_transaction_logs_to_cloud_storage_enabled
        alias_method :switch_transaction_logs_to_cloud_storage_enabled?, :switch_transaction_logs_to_cloud_storage_enabled
      
        # Optional. Input only. Immutable. Tag keys and tag values that are bound to
        # this instance. You must represent each item in the map as: `"" : ""`. For
        # example, a single resource can have the following tags: ``` "123/environment":
        # "production", "123/costCenter": "marketing", ``` For more information on tag
        # creation and management, see https://cloud.google.com/resource-manager/docs/
        # tags/tags-overview.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Output only. All database versions that are available for upgrade.
        # Corresponds to the JSON property `upgradableDatabaseVersions`
        # @return [Array<Google::Apis::SqladminV1::AvailableDatabaseVersion>]
        attr_accessor :upgradable_database_versions
      
        # Output only. The dns name of the primary instance in a replication group.
        # Corresponds to the JSON property `writeEndpoint`
        # @return [String]
        attr_accessor :write_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_maintenance_versions = args[:available_maintenance_versions] if args.key?(:available_maintenance_versions)
          @backend_type = args[:backend_type] if args.key?(:backend_type)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @current_disk_size = args[:current_disk_size] if args.key?(:current_disk_size)
          @database_installed_version = args[:database_installed_version] if args.key?(:database_installed_version)
          @database_version = args[:database_version] if args.key?(:database_version)
          @disk_encryption_configuration = args[:disk_encryption_configuration] if args.key?(:disk_encryption_configuration)
          @disk_encryption_status = args[:disk_encryption_status] if args.key?(:disk_encryption_status)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @etag = args[:etag] if args.key?(:etag)
          @failover_replica = args[:failover_replica] if args.key?(:failover_replica)
          @gce_zone = args[:gce_zone] if args.key?(:gce_zone)
          @gemini_config = args[:gemini_config] if args.key?(:gemini_config)
          @include_replicas_for_major_version_upgrade = args[:include_replicas_for_major_version_upgrade] if args.key?(:include_replicas_for_major_version_upgrade)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @kind = args[:kind] if args.key?(:kind)
          @maintenance_version = args[:maintenance_version] if args.key?(:maintenance_version)
          @master_instance_name = args[:master_instance_name] if args.key?(:master_instance_name)
          @max_disk_size = args[:max_disk_size] if args.key?(:max_disk_size)
          @name = args[:name] if args.key?(:name)
          @node_count = args[:node_count] if args.key?(:node_count)
          @nodes = args[:nodes] if args.key?(:nodes)
          @on_premises_configuration = args[:on_premises_configuration] if args.key?(:on_premises_configuration)
          @out_of_disk_report = args[:out_of_disk_report] if args.key?(:out_of_disk_report)
          @primary_dns_name = args[:primary_dns_name] if args.key?(:primary_dns_name)
          @project = args[:project] if args.key?(:project)
          @psc_service_attachment_link = args[:psc_service_attachment_link] if args.key?(:psc_service_attachment_link)
          @region = args[:region] if args.key?(:region)
          @replica_configuration = args[:replica_configuration] if args.key?(:replica_configuration)
          @replica_names = args[:replica_names] if args.key?(:replica_names)
          @replication_cluster = args[:replication_cluster] if args.key?(:replication_cluster)
          @root_password = args[:root_password] if args.key?(:root_password)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @scheduled_maintenance = args[:scheduled_maintenance] if args.key?(:scheduled_maintenance)
          @secondary_gce_zone = args[:secondary_gce_zone] if args.key?(:secondary_gce_zone)
          @self_link = args[:self_link] if args.key?(:self_link)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
          @service_account_email_address = args[:service_account_email_address] if args.key?(:service_account_email_address)
          @settings = args[:settings] if args.key?(:settings)
          @sql_network_architecture = args[:sql_network_architecture] if args.key?(:sql_network_architecture)
          @state = args[:state] if args.key?(:state)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @switch_transaction_logs_to_cloud_storage_enabled = args[:switch_transaction_logs_to_cloud_storage_enabled] if args.key?(:switch_transaction_logs_to_cloud_storage_enabled)
          @tags = args[:tags] if args.key?(:tags)
          @upgradable_database_versions = args[:upgradable_database_versions] if args.key?(:upgradable_database_versions)
          @write_endpoint = args[:write_endpoint] if args.key?(:write_endpoint)
        end
        
        # The name and status of the failover replica.
        class FailoverReplica
          include Google::Apis::Core::Hashable
        
          # The availability status of the failover replica. A false status indicates that
          # the failover replica is out of sync. The primary instance can only failover to
          # the failover replica when the status is true.
          # Corresponds to the JSON property `available`
          # @return [Boolean]
          attr_accessor :available
          alias_method :available?, :available
        
          # The name of the failover replica. If specified at instance creation, a
          # failover replica is created for the instance. The name doesn't include the
          # project ID.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @available = args[:available] if args.key?(:available)
            @name = args[:name] if args.key?(:name)
          end
        end
      end
      
      # Database list response.
      class DatabasesListResponse
        include Google::Apis::Core::Hashable
      
        # List of database resources in the instance.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::Database>]
        attr_accessor :items
      
        # This is always `sql#databasesList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # This context is used to demote an existing standalone instance to be a Cloud
      # SQL read replica for an external database server.
      class DemoteContext
        include Google::Apis::Core::Hashable
      
        # This is always `sql#demoteContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required. The name of the instance which acts as the on-premises primary
        # instance in the replication setup.
        # Corresponds to the JSON property `sourceRepresentativeInstanceName`
        # @return [String]
        attr_accessor :source_representative_instance_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @source_representative_instance_name = args[:source_representative_instance_name] if args.key?(:source_representative_instance_name)
        end
      end
      
      # Read-replica configuration for connecting to the on-premises primary instance.
      class DemoteMasterConfiguration
        include Google::Apis::Core::Hashable
      
        # This is always `sql#demoteMasterConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Read-replica configuration specific to MySQL databases.
        # Corresponds to the JSON property `mysqlReplicaConfiguration`
        # @return [Google::Apis::SqladminV1::DemoteMasterMySqlReplicaConfiguration]
        attr_accessor :mysql_replica_configuration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @mysql_replica_configuration = args[:mysql_replica_configuration] if args.key?(:mysql_replica_configuration)
        end
      end
      
      # Database instance demote primary instance context.
      class DemoteMasterContext
        include Google::Apis::Core::Hashable
      
        # This is always `sql#demoteMasterContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance which will act as on-premises primary instance in the
        # replication setup.
        # Corresponds to the JSON property `masterInstanceName`
        # @return [String]
        attr_accessor :master_instance_name
      
        # Read-replica configuration for connecting to the on-premises primary instance.
        # Corresponds to the JSON property `replicaConfiguration`
        # @return [Google::Apis::SqladminV1::DemoteMasterConfiguration]
        attr_accessor :replica_configuration
      
        # Flag to skip replication setup on the instance.
        # Corresponds to the JSON property `skipReplicationSetup`
        # @return [Boolean]
        attr_accessor :skip_replication_setup
        alias_method :skip_replication_setup?, :skip_replication_setup
      
        # Verify the GTID consistency for demote operation. Default value: `True`.
        # Setting this flag to `false` enables you to bypass the GTID consistency check
        # between on-premises primary instance and Cloud SQL instance during the
        # demotion operation but also exposes you to the risk of future replication
        # failures. Change the value only if you know the reason for the GTID divergence
        # and are confident that doing so will not cause any replication issues.
        # Corresponds to the JSON property `verifyGtidConsistency`
        # @return [Boolean]
        attr_accessor :verify_gtid_consistency
        alias_method :verify_gtid_consistency?, :verify_gtid_consistency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @master_instance_name = args[:master_instance_name] if args.key?(:master_instance_name)
          @replica_configuration = args[:replica_configuration] if args.key?(:replica_configuration)
          @skip_replication_setup = args[:skip_replication_setup] if args.key?(:skip_replication_setup)
          @verify_gtid_consistency = args[:verify_gtid_consistency] if args.key?(:verify_gtid_consistency)
        end
      end
      
      # Read-replica configuration specific to MySQL databases.
      class DemoteMasterMySqlReplicaConfiguration
        include Google::Apis::Core::Hashable
      
        # PEM representation of the trusted CA's x509 certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # PEM representation of the replica's x509 certificate.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # PEM representation of the replica's private key. The corresponding public key
        # is encoded in the client's certificate. The format of the replica's private
        # key can be either PKCS #1 or PKCS #8.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # This is always `sql#demoteMasterMysqlReplicaConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The password for the replication connection.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The username for the replication connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
          @kind = args[:kind] if args.key?(:kind)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Deny maintenance Periods. This specifies a date range during when all CSA
      # rollout will be denied.
      class DenyMaintenancePeriod
        include Google::Apis::Core::Hashable
      
        # "deny maintenance period" end date. If the year of the end date is empty, the
        # year of the start date also must be empty. In this case, it means the no
        # maintenance interval recurs every year. The date is in format yyyy-mm-dd i.e.,
        # 2020-11-01, or mm-dd, i.e., 11-01
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # "deny maintenance period" start date. If the year of the start date is empty,
        # the year of the end date also must be empty. In this case, it means the deny
        # maintenance period recurs every year. The date is in format yyyy-mm-dd i.e.,
        # 2020-11-01, or mm-dd, i.e., 11-01
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # Time in UTC when the "deny maintenance period" starts on start_date and ends
        # on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Disk encryption configuration for an instance.
      class DiskEncryptionConfiguration
        include Google::Apis::Core::Hashable
      
        # This is always `sql#diskEncryptionConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Resource name of KMS key for disk encryption
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Disk encryption status for an instance.
      class DiskEncryptionStatus
        include Google::Apis::Core::Hashable
      
        # This is always `sql#diskEncryptionStatus`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # KMS key version used to encrypt the Cloud SQL instance resource
        # Corresponds to the JSON property `kmsKeyVersionName`
        # @return [String]
        attr_accessor :kms_key_version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @kms_key_version_name = args[:kms_key_version_name] if args.key?(:kms_key_version_name)
        end
      end
      
      # DNS metadata.
      class DnsNameMapping
        include Google::Apis::Core::Hashable
      
        # Output only. The connection type of the DNS name.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Output only. The scope that the DNS name applies to.
        # Corresponds to the JSON property `dnsScope`
        # @return [String]
        attr_accessor :dns_scope
      
        # Output only. The DNS name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The manager for this DNS record.
        # Corresponds to the JSON property `recordManager`
        # @return [String]
        attr_accessor :record_manager
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @dns_scope = args[:dns_scope] if args.key?(:dns_scope)
          @name = args[:name] if args.key?(:name)
          @record_manager = args[:record_manager] if args.key?(:record_manager)
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
      
      # The request payload used to execute SQL statements.
      class ExecuteSqlPayload
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the name of the application that is making the request.
        # This field is used for telemetry. Only alphanumeric characters, dashes, and
        # underscores are allowed. The maximum length is 32 characters.
        # Corresponds to the JSON property `application`
        # @return [String]
        attr_accessor :application
      
        # Optional. When set to true, the API caller identity associated with the
        # request is used for database authentication. The API caller must be an IAM
        # user in the database.
        # Corresponds to the JSON property `autoIamAuthn`
        # @return [Boolean]
        attr_accessor :auto_iam_authn
        alias_method :auto_iam_authn?, :auto_iam_authn
      
        # Optional. Name of the database on which the statement will be executed.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Optional. Controls how the API should respond when the SQL execution result is
        # incomplete due to the size limit or another error. The default mode is to
        # throw an error.
        # Corresponds to the JSON property `partialResultMode`
        # @return [String]
        attr_accessor :partial_result_mode
      
        # Optional. The maximum number of rows returned per SQL statement.
        # Corresponds to the JSON property `rowLimit`
        # @return [Fixnum]
        attr_accessor :row_limit
      
        # Required. SQL statements to run on the database. It can be a single statement
        # or a sequence of statements separated by semicolons.
        # Corresponds to the JSON property `sqlStatement`
        # @return [String]
        attr_accessor :sql_statement
      
        # Optional. The name of an existing database user to connect to the database.
        # When `auto_iam_authn` is set to true, this field is ignored and the API caller'
        # s IAM user is used.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @auto_iam_authn = args[:auto_iam_authn] if args.key?(:auto_iam_authn)
          @database = args[:database] if args.key?(:database)
          @partial_result_mode = args[:partial_result_mode] if args.key?(:partial_result_mode)
          @row_limit = args[:row_limit] if args.key?(:row_limit)
          @sql_statement = args[:sql_statement] if args.key?(:sql_statement)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Database instance export context.
      class ExportContext
        include Google::Apis::Core::Hashable
      
        # Options for exporting BAK files (SQL Server-only)
        # Corresponds to the JSON property `bakExportOptions`
        # @return [Google::Apis::SqladminV1::ExportContext::BakExportOptions]
        attr_accessor :bak_export_options
      
        # Options for exporting data as CSV. `MySQL` and `PostgreSQL` instances only.
        # Corresponds to the JSON property `csvExportOptions`
        # @return [Google::Apis::SqladminV1::ExportContext::CsvExportOptions]
        attr_accessor :csv_export_options
      
        # Databases to be exported. `MySQL instances:` If `fileType` is `SQL` and no
        # database is specified, all databases are exported, except for the `mysql`
        # system database. If `fileType` is `CSV`, you can specify one database, either
        # by using this property or by using the `csvExportOptions.selectQuery` property,
        # which takes precedence over this property. `PostgreSQL instances:` If you don'
        # t specify a database by name, all user databases in the instance are exported.
        # This excludes system databases and Cloud SQL databases used to manage internal
        # operations. Exporting all user databases is only available for directory-
        # formatted parallel export. If `fileType` is `CSV`, this database must match
        # the one specified in the `csvExportOptions.selectQuery` property. `SQL Server
        # instances:` You must specify one database to be exported, and the `fileType`
        # must be `BAK`.
        # Corresponds to the JSON property `databases`
        # @return [Array<String>]
        attr_accessor :databases
      
        # The file type for the specified uri.
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        # This is always `sql#exportContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether to perform a serverless export.
        # Corresponds to the JSON property `offload`
        # @return [Boolean]
        attr_accessor :offload
        alias_method :offload?, :offload
      
        # Options for exporting data as SQL statements.
        # Corresponds to the JSON property `sqlExportOptions`
        # @return [Google::Apis::SqladminV1::ExportContext::SqlExportOptions]
        attr_accessor :sql_export_options
      
        # Optional. Export parameters specific to SQL Server TDE certificates
        # Corresponds to the JSON property `tdeExportOptions`
        # @return [Google::Apis::SqladminV1::ExportContext::TdeExportOptions]
        attr_accessor :tde_export_options
      
        # The path to the file in Google Cloud Storage where the export will be stored.
        # The URI is in the form `gs://bucketName/fileName`. If the file already exists,
        # the request succeeds, but the operation fails. If `fileType` is `SQL` and the
        # filename ends with .gz, the contents are compressed.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bak_export_options = args[:bak_export_options] if args.key?(:bak_export_options)
          @csv_export_options = args[:csv_export_options] if args.key?(:csv_export_options)
          @databases = args[:databases] if args.key?(:databases)
          @file_type = args[:file_type] if args.key?(:file_type)
          @kind = args[:kind] if args.key?(:kind)
          @offload = args[:offload] if args.key?(:offload)
          @sql_export_options = args[:sql_export_options] if args.key?(:sql_export_options)
          @tde_export_options = args[:tde_export_options] if args.key?(:tde_export_options)
          @uri = args[:uri] if args.key?(:uri)
        end
        
        # Options for exporting BAK files (SQL Server-only)
        class BakExportOptions
          include Google::Apis::Core::Hashable
        
          # Type of this bak file will be export, FULL or DIFF, SQL Server only
          # Corresponds to the JSON property `bakType`
          # @return [String]
          attr_accessor :bak_type
        
          # Deprecated: copy_only is deprecated. Use differential_base instead
          # Corresponds to the JSON property `copyOnly`
          # @return [Boolean]
          attr_accessor :copy_only
          alias_method :copy_only?, :copy_only
        
          # Whether or not the backup can be used as a differential base copy_only backup
          # can not be served as differential base
          # Corresponds to the JSON property `differentialBase`
          # @return [Boolean]
          attr_accessor :differential_base
          alias_method :differential_base?, :differential_base
        
          # Optional. The end timestamp when transaction log will be included in the
          # export operation. [RFC 3339](https://tools.ietf.org/html/rfc3339) format (for
          # example, `2023-10-01T16:19:00.094`) in UTC. When omitted, all available logs
          # until current time will be included. Only applied to Cloud SQL for SQL Server.
          # Corresponds to the JSON property `exportLogEndTime`
          # @return [String]
          attr_accessor :export_log_end_time
        
          # Optional. The begin timestamp when transaction log will be included in the
          # export operation. [RFC 3339](https://tools.ietf.org/html/rfc3339) format (for
          # example, `2023-10-01T16:19:00.094`) in UTC. When omitted, all available logs
          # from the beginning of retention period will be included. Only applied to Cloud
          # SQL for SQL Server.
          # Corresponds to the JSON property `exportLogStartTime`
          # @return [String]
          attr_accessor :export_log_start_time
        
          # Option for specifying how many stripes to use for the export. If blank, and
          # the value of the striped field is true, the number of stripes is automatically
          # chosen.
          # Corresponds to the JSON property `stripeCount`
          # @return [Fixnum]
          attr_accessor :stripe_count
        
          # Whether or not the export should be striped.
          # Corresponds to the JSON property `striped`
          # @return [Boolean]
          attr_accessor :striped
          alias_method :striped?, :striped
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bak_type = args[:bak_type] if args.key?(:bak_type)
            @copy_only = args[:copy_only] if args.key?(:copy_only)
            @differential_base = args[:differential_base] if args.key?(:differential_base)
            @export_log_end_time = args[:export_log_end_time] if args.key?(:export_log_end_time)
            @export_log_start_time = args[:export_log_start_time] if args.key?(:export_log_start_time)
            @stripe_count = args[:stripe_count] if args.key?(:stripe_count)
            @striped = args[:striped] if args.key?(:striped)
          end
        end
        
        # Options for exporting data as CSV. `MySQL` and `PostgreSQL` instances only.
        class CsvExportOptions
          include Google::Apis::Core::Hashable
        
          # Specifies the character that should appear before a data character that needs
          # to be escaped.
          # Corresponds to the JSON property `escapeCharacter`
          # @return [String]
          attr_accessor :escape_character
        
          # Specifies the character that separates columns within each row (line) of the
          # file.
          # Corresponds to the JSON property `fieldsTerminatedBy`
          # @return [String]
          attr_accessor :fields_terminated_by
        
          # This is used to separate lines. If a line does not contain all fields, the
          # rest of the columns are set to their default values.
          # Corresponds to the JSON property `linesTerminatedBy`
          # @return [String]
          attr_accessor :lines_terminated_by
        
          # Specifies the quoting character to be used when a data value is quoted.
          # Corresponds to the JSON property `quoteCharacter`
          # @return [String]
          attr_accessor :quote_character
        
          # The select query used to extract the data.
          # Corresponds to the JSON property `selectQuery`
          # @return [String]
          attr_accessor :select_query
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @escape_character = args[:escape_character] if args.key?(:escape_character)
            @fields_terminated_by = args[:fields_terminated_by] if args.key?(:fields_terminated_by)
            @lines_terminated_by = args[:lines_terminated_by] if args.key?(:lines_terminated_by)
            @quote_character = args[:quote_character] if args.key?(:quote_character)
            @select_query = args[:select_query] if args.key?(:select_query)
          end
        end
        
        # Options for exporting data as SQL statements.
        class SqlExportOptions
          include Google::Apis::Core::Hashable
        
          # Options for exporting from MySQL.
          # Corresponds to the JSON property `mysqlExportOptions`
          # @return [Google::Apis::SqladminV1::ExportContext::SqlExportOptions::MysqlExportOptions]
          attr_accessor :mysql_export_options
        
          # Optional. Whether or not the export should be parallel.
          # Corresponds to the JSON property `parallel`
          # @return [Boolean]
          attr_accessor :parallel
          alias_method :parallel?, :parallel
        
          # Options for exporting from a Cloud SQL for PostgreSQL instance.
          # Corresponds to the JSON property `postgresExportOptions`
          # @return [Google::Apis::SqladminV1::ExportContext::SqlExportOptions::PostgresExportOptions]
          attr_accessor :postgres_export_options
        
          # Export only schemas.
          # Corresponds to the JSON property `schemaOnly`
          # @return [Boolean]
          attr_accessor :schema_only
          alias_method :schema_only?, :schema_only
        
          # Tables to export, or that were exported, from the specified database. If you
          # specify tables, specify one and only one database. For PostgreSQL instances,
          # you can specify only one table.
          # Corresponds to the JSON property `tables`
          # @return [Array<String>]
          attr_accessor :tables
        
          # Optional. The number of threads to use for parallel export.
          # Corresponds to the JSON property `threads`
          # @return [Fixnum]
          attr_accessor :threads
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @mysql_export_options = args[:mysql_export_options] if args.key?(:mysql_export_options)
            @parallel = args[:parallel] if args.key?(:parallel)
            @postgres_export_options = args[:postgres_export_options] if args.key?(:postgres_export_options)
            @schema_only = args[:schema_only] if args.key?(:schema_only)
            @tables = args[:tables] if args.key?(:tables)
            @threads = args[:threads] if args.key?(:threads)
          end
          
          # Options for exporting from MySQL.
          class MysqlExportOptions
            include Google::Apis::Core::Hashable
          
            # Option to include SQL statement required to set up replication. If set to `1`,
            # the dump file includes a CHANGE MASTER TO statement with the binary log
            # coordinates, and --set-gtid-purged is set to ON. If set to `2`, the CHANGE
            # MASTER TO statement is written as a SQL comment and has no effect. If set to
            # any value other than `1`, --set-gtid-purged is set to OFF.
            # Corresponds to the JSON property `masterData`
            # @return [Fixnum]
            attr_accessor :master_data
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @master_data = args[:master_data] if args.key?(:master_data)
            end
          end
          
          # Options for exporting from a Cloud SQL for PostgreSQL instance.
          class PostgresExportOptions
            include Google::Apis::Core::Hashable
          
            # Optional. Use this option to include DROP <object> SQL statements. Use these
            # statements to delete database objects before running the import operation.
            # Corresponds to the JSON property `clean`
            # @return [Boolean]
            attr_accessor :clean
            alias_method :clean?, :clean
          
            # Optional. Option to include an IF EXISTS SQL statement with each DROP
            # statement produced by clean.
            # Corresponds to the JSON property `ifExists`
            # @return [Boolean]
            attr_accessor :if_exists
            alias_method :if_exists?, :if_exists
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @clean = args[:clean] if args.key?(:clean)
              @if_exists = args[:if_exists] if args.key?(:if_exists)
            end
          end
        end
        
        # Optional. Export parameters specific to SQL Server TDE certificates
        class TdeExportOptions
          include Google::Apis::Core::Hashable
        
          # Required. Path to the TDE certificate public key in the form gs://bucketName/
          # fileName. The instance must have write access to the bucket. Applicable only
          # for SQL Server instances.
          # Corresponds to the JSON property `certificatePath`
          # @return [String]
          attr_accessor :certificate_path
        
          # Required. Certificate name. Applicable only for SQL Server instances.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Required. Password that encrypts the private key.
          # Corresponds to the JSON property `privateKeyPassword`
          # @return [String]
          attr_accessor :private_key_password
        
          # Required. Path to the TDE certificate private key in the form gs://bucketName/
          # fileName. The instance must have write access to the location. Applicable only
          # for SQL Server instances.
          # Corresponds to the JSON property `privateKeyPath`
          # @return [String]
          attr_accessor :private_key_path
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @certificate_path = args[:certificate_path] if args.key?(:certificate_path)
            @name = args[:name] if args.key?(:name)
            @private_key_password = args[:private_key_password] if args.key?(:private_key_password)
            @private_key_path = args[:private_key_path] if args.key?(:private_key_path)
          end
        end
      end
      
      # The selected object that Cloud SQL migrates.
      class ExternalSyncSelectedObject
        include Google::Apis::Core::Hashable
      
        # The name of the database that Cloud SQL migrates.
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
      
      # Database instance failover context.
      class FailoverContext
        include Google::Apis::Core::Hashable
      
        # This is always `sql#failoverContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current settings version of this instance. Request will be rejected if
        # this version doesn't match the current settings version.
        # Corresponds to the JSON property `settingsVersion`
        # @return [Fixnum]
        attr_accessor :settings_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @settings_version = args[:settings_version] if args.key?(:settings_version)
        end
      end
      
      # Config used to determine the final backup settings for the instance.
      class FinalBackupConfig
        include Google::Apis::Core::Hashable
      
        # Whether the final backup is enabled for the instance.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The number of days to retain the final backup after the instance deletion. The
        # final backup will be purged at (time_of_instance_deletion + retention_days).
        # Corresponds to the JSON property `retentionDays`
        # @return [Fixnum]
        attr_accessor :retention_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @retention_days = args[:retention_days] if args.key?(:retention_days)
        end
      end
      
      # A flag resource.
      class Flag
        include Google::Apis::Core::Hashable
      
        # Use this field if only certain integers are accepted. Can be combined with
        # min_value and max_value to add additional values.
        # Corresponds to the JSON property `allowedIntValues`
        # @return [Array<Fixnum>]
        attr_accessor :allowed_int_values
      
        # For `STRING` flags, a list of strings that the value can be set to.
        # Corresponds to the JSON property `allowedStringValues`
        # @return [Array<String>]
        attr_accessor :allowed_string_values
      
        # The database version this flag applies to. Can be MySQL instances: `MYSQL_8_0`,
        # `MYSQL_8_0_18`, `MYSQL_8_0_26`, `MYSQL_5_7`, or `MYSQL_5_6`. PostgreSQL
        # instances: `POSTGRES_9_6`, `POSTGRES_10`, `POSTGRES_11` or `POSTGRES_12`. SQL
        # Server instances: `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `
        # SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`, `SQLSERVER_2019_STANDARD`, `
        # SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`, or `SQLSERVER_2019_WEB`.
        # See [the complete list](/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).
        # Corresponds to the JSON property `appliesTo`
        # @return [Array<String>]
        attr_accessor :applies_to
      
        # Scope of flag.
        # Corresponds to the JSON property `flagScope`
        # @return [String]
        attr_accessor :flag_scope
      
        # Whether or not the flag is considered in beta.
        # Corresponds to the JSON property `inBeta`
        # @return [Boolean]
        attr_accessor :in_beta
        alias_method :in_beta?, :in_beta
      
        # This is always `sql#flag`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # For `INTEGER` flags, the maximum allowed value.
        # Corresponds to the JSON property `maxValue`
        # @return [Fixnum]
        attr_accessor :max_value
      
        # For `INTEGER` flags, the minimum allowed value.
        # Corresponds to the JSON property `minValue`
        # @return [Fixnum]
        attr_accessor :min_value
      
        # This is the name of the flag. Flag names always use underscores, not hyphens,
        # for example: `max_allowed_packet`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Recommended int value in integer format for UI display.
        # Corresponds to the JSON property `recommendedIntValue`
        # @return [Fixnum]
        attr_accessor :recommended_int_value
      
        # Recommended string value in string format for UI display.
        # Corresponds to the JSON property `recommendedStringValue`
        # @return [String]
        attr_accessor :recommended_string_value
      
        # Indicates whether changing this flag will trigger a database restart. Only
        # applicable to Second Generation instances.
        # Corresponds to the JSON property `requiresRestart`
        # @return [Boolean]
        attr_accessor :requires_restart
        alias_method :requires_restart?, :requires_restart
      
        # The type of the flag. Flags are typed to being `BOOLEAN`, `STRING`, `INTEGER`
        # or `NONE`. `NONE` is used for flags that do not take a value, such as `
        # skip_grant_tables`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_int_values = args[:allowed_int_values] if args.key?(:allowed_int_values)
          @allowed_string_values = args[:allowed_string_values] if args.key?(:allowed_string_values)
          @applies_to = args[:applies_to] if args.key?(:applies_to)
          @flag_scope = args[:flag_scope] if args.key?(:flag_scope)
          @in_beta = args[:in_beta] if args.key?(:in_beta)
          @kind = args[:kind] if args.key?(:kind)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @name = args[:name] if args.key?(:name)
          @recommended_int_value = args[:recommended_int_value] if args.key?(:recommended_int_value)
          @recommended_string_value = args[:recommended_string_value] if args.key?(:recommended_string_value)
          @requires_restart = args[:requires_restart] if args.key?(:requires_restart)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Flags list response.
      class FlagsListResponse
        include Google::Apis::Core::Hashable
      
        # List of flags.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::Flag>]
        attr_accessor :items
      
        # This is always `sql#flagsList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Gemini instance configuration.
      class GeminiInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the active query is enabled.
        # Corresponds to the JSON property `activeQueryEnabled`
        # @return [Boolean]
        attr_accessor :active_query_enabled
        alias_method :active_query_enabled?, :active_query_enabled
      
        # Output only. Whether Gemini is enabled.
        # Corresponds to the JSON property `entitled`
        # @return [Boolean]
        attr_accessor :entitled
        alias_method :entitled?, :entitled
      
        # Output only. Whether the flag recommender is enabled.
        # Corresponds to the JSON property `flagRecommenderEnabled`
        # @return [Boolean]
        attr_accessor :flag_recommender_enabled
        alias_method :flag_recommender_enabled?, :flag_recommender_enabled
      
        # Output only. Whether the vacuum management is enabled.
        # Corresponds to the JSON property `googleVacuumMgmtEnabled`
        # @return [Boolean]
        attr_accessor :google_vacuum_mgmt_enabled
        alias_method :google_vacuum_mgmt_enabled?, :google_vacuum_mgmt_enabled
      
        # Output only. Whether the index advisor is enabled.
        # Corresponds to the JSON property `indexAdvisorEnabled`
        # @return [Boolean]
        attr_accessor :index_advisor_enabled
        alias_method :index_advisor_enabled?, :index_advisor_enabled
      
        # Output only. Whether canceling the out-of-memory (OOM) session is enabled.
        # Corresponds to the JSON property `oomSessionCancelEnabled`
        # @return [Boolean]
        attr_accessor :oom_session_cancel_enabled
        alias_method :oom_session_cancel_enabled?, :oom_session_cancel_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_query_enabled = args[:active_query_enabled] if args.key?(:active_query_enabled)
          @entitled = args[:entitled] if args.key?(:entitled)
          @flag_recommender_enabled = args[:flag_recommender_enabled] if args.key?(:flag_recommender_enabled)
          @google_vacuum_mgmt_enabled = args[:google_vacuum_mgmt_enabled] if args.key?(:google_vacuum_mgmt_enabled)
          @index_advisor_enabled = args[:index_advisor_enabled] if args.key?(:index_advisor_enabled)
          @oom_session_cancel_enabled = args[:oom_session_cancel_enabled] if args.key?(:oom_session_cancel_enabled)
        end
      end
      
      # Ephemeral certificate creation request.
      class GenerateEphemeralCertRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Access token to include in the signed certificate.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # PEM encoded public key to include in the signed certificate.
        # Corresponds to the JSON property `public_key`
        # @return [String]
        attr_accessor :public_key
      
        # Optional. Optional snapshot read timestamp to trade freshness for performance.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # Optional. If set, it will contain the cert valid duration.
        # Corresponds to the JSON property `validDuration`
        # @return [String]
        attr_accessor :valid_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @public_key = args[:public_key] if args.key?(:public_key)
          @read_time = args[:read_time] if args.key?(:read_time)
          @valid_duration = args[:valid_duration] if args.key?(:valid_duration)
        end
      end
      
      # Ephemeral certificate creation request.
      class GenerateEphemeralCertResponse
        include Google::Apis::Core::Hashable
      
        # SslCerts Resource
        # Corresponds to the JSON property `ephemeralCert`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :ephemeral_cert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ephemeral_cert = args[:ephemeral_cert] if args.key?(:ephemeral_cert)
        end
      end
      
      # Database instance import context.
      class ImportContext
        include Google::Apis::Core::Hashable
      
        # Import parameters specific to SQL Server .BAK files
        # Corresponds to the JSON property `bakImportOptions`
        # @return [Google::Apis::SqladminV1::ImportContext::BakImportOptions]
        attr_accessor :bak_import_options
      
        # Options for importing data as CSV.
        # Corresponds to the JSON property `csvImportOptions`
        # @return [Google::Apis::SqladminV1::ImportContext::CsvImportOptions]
        attr_accessor :csv_import_options
      
        # The target database for the import. If `fileType` is `SQL`, this field is
        # required only if the import file does not specify a database, and is
        # overridden by any database specification in the import file. For entire
        # instance parallel import operations, the database is overridden by the
        # database name stored in subdirectory name. If `fileType` is `CSV`, one
        # database must be specified.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The file type for the specified uri.\`SQL`: The file contains SQL statements. \
        # `CSV`: The file contains CSV data.
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        # The PostgreSQL user for this import operation. PostgreSQL instances only.
        # Corresponds to the JSON property `importUser`
        # @return [String]
        attr_accessor :import_user
      
        # This is always `sql#importContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. Options for importing data from SQL statements.
        # Corresponds to the JSON property `sqlImportOptions`
        # @return [Google::Apis::SqladminV1::ImportContext::SqlImportOptions]
        attr_accessor :sql_import_options
      
        # Optional. Import parameters specific to SQL Server TDE certificates
        # Corresponds to the JSON property `tdeImportOptions`
        # @return [Google::Apis::SqladminV1::ImportContext::TdeImportOptions]
        attr_accessor :tde_import_options
      
        # Path to the import file in Cloud Storage, in the form `gs://bucketName/
        # fileName`. Compressed gzip files (.gz) are supported when `fileType` is `SQL`.
        # The instance must have write permissions to the bucket and read access to the
        # file.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bak_import_options = args[:bak_import_options] if args.key?(:bak_import_options)
          @csv_import_options = args[:csv_import_options] if args.key?(:csv_import_options)
          @database = args[:database] if args.key?(:database)
          @file_type = args[:file_type] if args.key?(:file_type)
          @import_user = args[:import_user] if args.key?(:import_user)
          @kind = args[:kind] if args.key?(:kind)
          @sql_import_options = args[:sql_import_options] if args.key?(:sql_import_options)
          @tde_import_options = args[:tde_import_options] if args.key?(:tde_import_options)
          @uri = args[:uri] if args.key?(:uri)
        end
        
        # Import parameters specific to SQL Server .BAK files
        class BakImportOptions
          include Google::Apis::Core::Hashable
        
          # Type of the bak content, FULL or DIFF
          # Corresponds to the JSON property `bakType`
          # @return [String]
          attr_accessor :bak_type
        
          # 
          # Corresponds to the JSON property `encryptionOptions`
          # @return [Google::Apis::SqladminV1::ImportContext::BakImportOptions::EncryptionOptions]
          attr_accessor :encryption_options
        
          # Whether or not the backup importing will restore database with NORECOVERY
          # option. Applies only to Cloud SQL for SQL Server.
          # Corresponds to the JSON property `noRecovery`
          # @return [Boolean]
          attr_accessor :no_recovery
          alias_method :no_recovery?, :no_recovery
        
          # Whether or not the backup importing request will just bring database online
          # without downloading Bak content only one of "no_recovery" and "recovery_only"
          # can be true otherwise error will return. Applies only to Cloud SQL for SQL
          # Server.
          # Corresponds to the JSON property `recoveryOnly`
          # @return [Boolean]
          attr_accessor :recovery_only
          alias_method :recovery_only?, :recovery_only
        
          # Optional. The timestamp when the import should stop. This timestamp is in the [
          # RFC 3339](https://tools.ietf.org/html/rfc3339) format (for example, `2023-10-
          # 01T16:19:00.094`). This field is equivalent to the STOPAT keyword and applies
          # to Cloud SQL for SQL Server only.
          # Corresponds to the JSON property `stopAt`
          # @return [String]
          attr_accessor :stop_at
        
          # Optional. The marked transaction where the import should stop. This field is
          # equivalent to the STOPATMARK keyword and applies to Cloud SQL for SQL Server
          # only.
          # Corresponds to the JSON property `stopAtMark`
          # @return [String]
          attr_accessor :stop_at_mark
        
          # Whether or not the backup set being restored is striped. Applies only to Cloud
          # SQL for SQL Server.
          # Corresponds to the JSON property `striped`
          # @return [Boolean]
          attr_accessor :striped
          alias_method :striped?, :striped
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bak_type = args[:bak_type] if args.key?(:bak_type)
            @encryption_options = args[:encryption_options] if args.key?(:encryption_options)
            @no_recovery = args[:no_recovery] if args.key?(:no_recovery)
            @recovery_only = args[:recovery_only] if args.key?(:recovery_only)
            @stop_at = args[:stop_at] if args.key?(:stop_at)
            @stop_at_mark = args[:stop_at_mark] if args.key?(:stop_at_mark)
            @striped = args[:striped] if args.key?(:striped)
          end
          
          # 
          class EncryptionOptions
            include Google::Apis::Core::Hashable
          
            # Path to the Certificate (.cer) in Cloud Storage, in the form `gs://bucketName/
            # fileName`. The instance must have write permissions to the bucket and read
            # access to the file.
            # Corresponds to the JSON property `certPath`
            # @return [String]
            attr_accessor :cert_path
          
            # Optional. Whether the imported file remains encrypted.
            # Corresponds to the JSON property `keepEncrypted`
            # @return [Boolean]
            attr_accessor :keep_encrypted
            alias_method :keep_encrypted?, :keep_encrypted
          
            # Password that encrypts the private key
            # Corresponds to the JSON property `pvkPassword`
            # @return [String]
            attr_accessor :pvk_password
          
            # Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form `gs://
            # bucketName/fileName`. The instance must have write permissions to the bucket
            # and read access to the file.
            # Corresponds to the JSON property `pvkPath`
            # @return [String]
            attr_accessor :pvk_path
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @cert_path = args[:cert_path] if args.key?(:cert_path)
              @keep_encrypted = args[:keep_encrypted] if args.key?(:keep_encrypted)
              @pvk_password = args[:pvk_password] if args.key?(:pvk_password)
              @pvk_path = args[:pvk_path] if args.key?(:pvk_path)
            end
          end
        end
        
        # Options for importing data as CSV.
        class CsvImportOptions
          include Google::Apis::Core::Hashable
        
          # The columns to which CSV data is imported. If not specified, all columns of
          # the database table are loaded with CSV data.
          # Corresponds to the JSON property `columns`
          # @return [Array<String>]
          attr_accessor :columns
        
          # Specifies the character that should appear before a data character that needs
          # to be escaped.
          # Corresponds to the JSON property `escapeCharacter`
          # @return [String]
          attr_accessor :escape_character
        
          # Specifies the character that separates columns within each row (line) of the
          # file.
          # Corresponds to the JSON property `fieldsTerminatedBy`
          # @return [String]
          attr_accessor :fields_terminated_by
        
          # This is used to separate lines. If a line does not contain all fields, the
          # rest of the columns are set to their default values.
          # Corresponds to the JSON property `linesTerminatedBy`
          # @return [String]
          attr_accessor :lines_terminated_by
        
          # Specifies the quoting character to be used when a data value is quoted.
          # Corresponds to the JSON property `quoteCharacter`
          # @return [String]
          attr_accessor :quote_character
        
          # The table to which CSV data is imported.
          # Corresponds to the JSON property `table`
          # @return [String]
          attr_accessor :table
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @columns = args[:columns] if args.key?(:columns)
            @escape_character = args[:escape_character] if args.key?(:escape_character)
            @fields_terminated_by = args[:fields_terminated_by] if args.key?(:fields_terminated_by)
            @lines_terminated_by = args[:lines_terminated_by] if args.key?(:lines_terminated_by)
            @quote_character = args[:quote_character] if args.key?(:quote_character)
            @table = args[:table] if args.key?(:table)
          end
        end
        
        # Optional. Options for importing data from SQL statements.
        class SqlImportOptions
          include Google::Apis::Core::Hashable
        
          # Optional. Whether or not the import should be parallel.
          # Corresponds to the JSON property `parallel`
          # @return [Boolean]
          attr_accessor :parallel
          alias_method :parallel?, :parallel
        
          # Optional. Options for importing from a Cloud SQL for PostgreSQL instance.
          # Corresponds to the JSON property `postgresImportOptions`
          # @return [Google::Apis::SqladminV1::ImportContext::SqlImportOptions::PostgresImportOptions]
          attr_accessor :postgres_import_options
        
          # Optional. The number of threads to use for parallel import.
          # Corresponds to the JSON property `threads`
          # @return [Fixnum]
          attr_accessor :threads
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @parallel = args[:parallel] if args.key?(:parallel)
            @postgres_import_options = args[:postgres_import_options] if args.key?(:postgres_import_options)
            @threads = args[:threads] if args.key?(:threads)
          end
          
          # Optional. Options for importing from a Cloud SQL for PostgreSQL instance.
          class PostgresImportOptions
            include Google::Apis::Core::Hashable
          
            # Optional. The --clean flag for the pg_restore utility. This flag applies only
            # if you enabled Cloud SQL to import files in parallel.
            # Corresponds to the JSON property `clean`
            # @return [Boolean]
            attr_accessor :clean
            alias_method :clean?, :clean
          
            # Optional. The --if-exists flag for the pg_restore utility. This flag applies
            # only if you enabled Cloud SQL to import files in parallel.
            # Corresponds to the JSON property `ifExists`
            # @return [Boolean]
            attr_accessor :if_exists
            alias_method :if_exists?, :if_exists
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @clean = args[:clean] if args.key?(:clean)
              @if_exists = args[:if_exists] if args.key?(:if_exists)
            end
          end
        end
        
        # Optional. Import parameters specific to SQL Server TDE certificates
        class TdeImportOptions
          include Google::Apis::Core::Hashable
        
          # Required. Path to the TDE certificate public key in the form gs://bucketName/
          # fileName. The instance must have read access to the file. Applicable only for
          # SQL Server instances.
          # Corresponds to the JSON property `certificatePath`
          # @return [String]
          attr_accessor :certificate_path
        
          # Required. Certificate name. Applicable only for SQL Server instances.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Required. Password that encrypts the private key.
          # Corresponds to the JSON property `privateKeyPassword`
          # @return [String]
          attr_accessor :private_key_password
        
          # Required. Path to the TDE certificate private key in the form gs://bucketName/
          # fileName. The instance must have read access to the file. Applicable only for
          # SQL Server instances.
          # Corresponds to the JSON property `privateKeyPath`
          # @return [String]
          attr_accessor :private_key_path
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @certificate_path = args[:certificate_path] if args.key?(:certificate_path)
            @name = args[:name] if args.key?(:name)
            @private_key_password = args[:private_key_password] if args.key?(:private_key_password)
            @private_key_path = args[:private_key_path] if args.key?(:private_key_path)
          end
        end
      end
      
      # Insights configuration. This specifies when Cloud SQL Insights feature is
      # enabled and optional configuration.
      class InsightsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether enhanced query insights feature is enabled.
        # Corresponds to the JSON property `enhancedQueryInsightsEnabled`
        # @return [Boolean]
        attr_accessor :enhanced_query_insights_enabled
        alias_method :enhanced_query_insights_enabled?, :enhanced_query_insights_enabled
      
        # Whether Query Insights feature is enabled.
        # Corresponds to the JSON property `queryInsightsEnabled`
        # @return [Boolean]
        attr_accessor :query_insights_enabled
        alias_method :query_insights_enabled?, :query_insights_enabled
      
        # Number of query execution plans captured by Insights per minute for all
        # queries combined. Default is 5.
        # Corresponds to the JSON property `queryPlansPerMinute`
        # @return [Fixnum]
        attr_accessor :query_plans_per_minute
      
        # Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-
        # 4500 bytes. Query lengths greater than this field value will be truncated to
        # this value. When unset, query length will be the default value. Changing query
        # length will restart the database.
        # Corresponds to the JSON property `queryStringLength`
        # @return [Fixnum]
        attr_accessor :query_string_length
      
        # Whether Query Insights will record application tags from query when enabled.
        # Corresponds to the JSON property `recordApplicationTags`
        # @return [Boolean]
        attr_accessor :record_application_tags
        alias_method :record_application_tags?, :record_application_tags
      
        # Whether Query Insights will record client address when enabled.
        # Corresponds to the JSON property `recordClientAddress`
        # @return [Boolean]
        attr_accessor :record_client_address
        alias_method :record_client_address?, :record_client_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enhanced_query_insights_enabled = args[:enhanced_query_insights_enabled] if args.key?(:enhanced_query_insights_enabled)
          @query_insights_enabled = args[:query_insights_enabled] if args.key?(:query_insights_enabled)
          @query_plans_per_minute = args[:query_plans_per_minute] if args.key?(:query_plans_per_minute)
          @query_string_length = args[:query_string_length] if args.key?(:query_string_length)
          @record_application_tags = args[:record_application_tags] if args.key?(:record_application_tags)
          @record_client_address = args[:record_client_address] if args.key?(:record_client_address)
        end
      end
      
      # Reference to another Cloud SQL instance.
      class InstanceReference
        include Google::Apis::Core::Hashable
      
        # The name of the Cloud SQL instance being referenced. This does not include the
        # project ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The project ID of the Cloud SQL instance being referenced. The default is the
        # same project ID as the instance references it.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The region of the Cloud SQL instance being referenced.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Request to acquire a lease for SSRS.
      class InstancesAcquireSsrsLeaseRequest
        include Google::Apis::Core::Hashable
      
        # Acquire SSRS lease context.
        # Corresponds to the JSON property `acquireSsrsLeaseContext`
        # @return [Google::Apis::SqladminV1::AcquireSsrsLeaseContext]
        attr_accessor :acquire_ssrs_lease_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquire_ssrs_lease_context = args[:acquire_ssrs_lease_context] if args.key?(:acquire_ssrs_lease_context)
        end
      end
      
      # Database instance clone request.
      class InstancesCloneRequest
        include Google::Apis::Core::Hashable
      
        # Database instance clone context.
        # Corresponds to the JSON property `cloneContext`
        # @return [Google::Apis::SqladminV1::CloneContext]
        attr_accessor :clone_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clone_context = args[:clone_context] if args.key?(:clone_context)
        end
      end
      
      # Database demote primary instance request.
      class InstancesDemoteMasterRequest
        include Google::Apis::Core::Hashable
      
        # Database instance demote primary instance context.
        # Corresponds to the JSON property `demoteMasterContext`
        # @return [Google::Apis::SqladminV1::DemoteMasterContext]
        attr_accessor :demote_master_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @demote_master_context = args[:demote_master_context] if args.key?(:demote_master_context)
        end
      end
      
      # This request is used to demote an existing standalone instance to be a Cloud
      # SQL read replica for an external database server.
      class InstancesDemoteRequest
        include Google::Apis::Core::Hashable
      
        # This context is used to demote an existing standalone instance to be a Cloud
        # SQL read replica for an external database server.
        # Corresponds to the JSON property `demoteContext`
        # @return [Google::Apis::SqladminV1::DemoteContext]
        attr_accessor :demote_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @demote_context = args[:demote_context] if args.key?(:demote_context)
        end
      end
      
      # Database instance export request.
      class InstancesExportRequest
        include Google::Apis::Core::Hashable
      
        # Database instance export context.
        # Corresponds to the JSON property `exportContext`
        # @return [Google::Apis::SqladminV1::ExportContext]
        attr_accessor :export_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_context = args[:export_context] if args.key?(:export_context)
        end
      end
      
      # Instance failover request.
      class InstancesFailoverRequest
        include Google::Apis::Core::Hashable
      
        # Database instance failover context.
        # Corresponds to the JSON property `failoverContext`
        # @return [Google::Apis::SqladminV1::FailoverContext]
        attr_accessor :failover_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failover_context = args[:failover_context] if args.key?(:failover_context)
        end
      end
      
      # Database instance import request.
      class InstancesImportRequest
        include Google::Apis::Core::Hashable
      
        # Database instance import context.
        # Corresponds to the JSON property `importContext`
        # @return [Google::Apis::SqladminV1::ImportContext]
        attr_accessor :import_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @import_context = args[:import_context] if args.key?(:import_context)
        end
      end
      
      # Instances ListEntraIdCertificates response.
      class InstancesListEntraIdCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The `sha1_fingerprint` of the active certificate from `certs`.
        # Corresponds to the JSON property `activeVersion`
        # @return [String]
        attr_accessor :active_version
      
        # List of Entra ID certificates for the instance.
        # Corresponds to the JSON property `certs`
        # @return [Array<Google::Apis::SqladminV1::SslCert>]
        attr_accessor :certs
      
        # This is always `sql#instancesListEntraIdCertificates`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_version = args[:active_version] if args.key?(:active_version)
          @certs = args[:certs] if args.key?(:certs)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database instances list response.
      class InstancesListResponse
        include Google::Apis::Core::Hashable
      
        # List of database instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::DatabaseInstance>]
        attr_accessor :items
      
        # This is always `sql#instancesList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of warnings that occurred while handling the request.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::SqladminV1::ApiWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Instances ListServerCas response.
      class InstancesListServerCasResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `activeVersion`
        # @return [String]
        attr_accessor :active_version
      
        # List of server CA certificates for the instance.
        # Corresponds to the JSON property `certs`
        # @return [Array<Google::Apis::SqladminV1::SslCert>]
        attr_accessor :certs
      
        # This is always `sql#instancesListServerCas`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_version = args[:active_version] if args.key?(:active_version)
          @certs = args[:certs] if args.key?(:certs)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Instances ListServerCertificates response.
      class InstancesListServerCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The `sha1_fingerprint` of the active certificate from `server_certs`.
        # Corresponds to the JSON property `activeVersion`
        # @return [String]
        attr_accessor :active_version
      
        # List of server CA certificates for the instance.
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::SqladminV1::SslCert>]
        attr_accessor :ca_certs
      
        # This is always `sql#instancesListServerCertificates`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of server certificates for the instance, signed by the corresponding CA
        # from the `ca_certs` list.
        # Corresponds to the JSON property `serverCerts`
        # @return [Array<Google::Apis::SqladminV1::SslCert>]
        attr_accessor :server_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_version = args[:active_version] if args.key?(:active_version)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
          @kind = args[:kind] if args.key?(:kind)
          @server_certs = args[:server_certs] if args.key?(:server_certs)
        end
      end
      
      # Request for Pre-checks for MVU
      class InstancesPreCheckMajorVersionUpgradeRequest
        include Google::Apis::Core::Hashable
      
        # Pre-check major version upgrade context.
        # Corresponds to the JSON property `preCheckMajorVersionUpgradeContext`
        # @return [Google::Apis::SqladminV1::PreCheckMajorVersionUpgradeContext]
        attr_accessor :pre_check_major_version_upgrade_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pre_check_major_version_upgrade_context = args[:pre_check_major_version_upgrade_context] if args.key?(:pre_check_major_version_upgrade_context)
        end
      end
      
      # Database Instance reencrypt request.
      class InstancesReencryptRequest
        include Google::Apis::Core::Hashable
      
        # Backup Reencryption Config
        # Corresponds to the JSON property `backupReencryptionConfig`
        # @return [Google::Apis::SqladminV1::BackupReencryptionConfig]
        attr_accessor :backup_reencryption_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_reencryption_config = args[:backup_reencryption_config] if args.key?(:backup_reencryption_config)
        end
      end
      
      # Database instance restore backup request.
      class InstancesRestoreBackupRequest
        include Google::Apis::Core::Hashable
      
        # The name of the backup that's used to restore a Cloud SQL instance: Format:
        # projects/`project-id`/backups/`backup-uid`. Only one of restore_backup_context,
        # backup, backupdr_backup can be passed to the input.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # The name of the backup that's used to restore a Cloud SQL instance: Format: "
        # projects/`project-id`/locations/`location`/backupVaults/`backupvault`/
        # dataSources/`datasource`/backups/`backup-uid`". Only one of
        # restore_backup_context, backup, backupdr_backup can be passed to the input.
        # Corresponds to the JSON property `backupdrBackup`
        # @return [String]
        attr_accessor :backupdr_backup
      
        # Database instance restore from backup context. Backup context contains source
        # instance id and project id.
        # Corresponds to the JSON property `restoreBackupContext`
        # @return [Google::Apis::SqladminV1::RestoreBackupContext]
        attr_accessor :restore_backup_context
      
        # Optional. This field has the same purpose as restore_instance_settings,
        # changes any instance settings stored in the backup you are restoring from.
        # With the difference that these fields are cleared in the settings.
        # Corresponds to the JSON property `restoreInstanceClearOverridesFieldNames`
        # @return [Array<String>]
        attr_accessor :restore_instance_clear_overrides_field_names
      
        # A Cloud SQL instance resource.
        # Corresponds to the JSON property `restoreInstanceSettings`
        # @return [Google::Apis::SqladminV1::DatabaseInstance]
        attr_accessor :restore_instance_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @backupdr_backup = args[:backupdr_backup] if args.key?(:backupdr_backup)
          @restore_backup_context = args[:restore_backup_context] if args.key?(:restore_backup_context)
          @restore_instance_clear_overrides_field_names = args[:restore_instance_clear_overrides_field_names] if args.key?(:restore_instance_clear_overrides_field_names)
          @restore_instance_settings = args[:restore_instance_settings] if args.key?(:restore_instance_settings)
        end
      end
      
      # Rotate Entra ID certificate request.
      class InstancesRotateEntraIdCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Instance rotate Entra ID certificate context.
        # Corresponds to the JSON property `rotateEntraIdCertificateContext`
        # @return [Google::Apis::SqladminV1::RotateEntraIdCertificateContext]
        attr_accessor :rotate_entra_id_certificate_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rotate_entra_id_certificate_context = args[:rotate_entra_id_certificate_context] if args.key?(:rotate_entra_id_certificate_context)
        end
      end
      
      # Rotate server CA request.
      class InstancesRotateServerCaRequest
        include Google::Apis::Core::Hashable
      
        # Instance rotate server CA context.
        # Corresponds to the JSON property `rotateServerCaContext`
        # @return [Google::Apis::SqladminV1::RotateServerCaContext]
        attr_accessor :rotate_server_ca_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rotate_server_ca_context = args[:rotate_server_ca_context] if args.key?(:rotate_server_ca_context)
        end
      end
      
      # Rotate server certificate request.
      class InstancesRotateServerCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Instance rotate server certificate context.
        # Corresponds to the JSON property `rotateServerCertificateContext`
        # @return [Google::Apis::SqladminV1::RotateServerCertificateContext]
        attr_accessor :rotate_server_certificate_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rotate_server_certificate_context = args[:rotate_server_certificate_context] if args.key?(:rotate_server_certificate_context)
        end
      end
      
      # Instance truncate log request.
      class InstancesTruncateLogRequest
        include Google::Apis::Core::Hashable
      
        # Database Instance truncate log context.
        # Corresponds to the JSON property `truncateLogContext`
        # @return [Google::Apis::SqladminV1::TruncateLogContext]
        attr_accessor :truncate_log_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @truncate_log_context = args[:truncate_log_context] if args.key?(:truncate_log_context)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # IP Management configuration.
      class IpConfiguration
        include Google::Apis::Core::Hashable
      
        # The name of the allocated ip range for the private ip Cloud SQL instance. For
        # example: "google-managed-services-default". If set, the instance ip will be
        # created in the allocated range. The range name must comply with [RFC 1035](
        # https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63
        # characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`
        # Corresponds to the JSON property `allocatedIpRange`
        # @return [String]
        attr_accessor :allocated_ip_range
      
        # The list of external networks that are allowed to connect to the instance
        # using the IP. In 'CIDR' notation, also known as 'slash' notation (for example:
        # `157.197.200.0/24`).
        # Corresponds to the JSON property `authorizedNetworks`
        # @return [Array<Google::Apis::SqladminV1::AclEntry>]
        attr_accessor :authorized_networks
      
        # Optional. Custom Subject Alternative Name(SAN)s for a Cloud SQL instance.
        # Corresponds to the JSON property `customSubjectAlternativeNames`
        # @return [Array<String>]
        attr_accessor :custom_subject_alternative_names
      
        # Controls connectivity to private IP instances from Google services, such as
        # BigQuery.
        # Corresponds to the JSON property `enablePrivatePathForGoogleCloudServices`
        # @return [Boolean]
        attr_accessor :enable_private_path_for_google_cloud_services
        alias_method :enable_private_path_for_google_cloud_services?, :enable_private_path_for_google_cloud_services
      
        # Whether the instance is assigned a public IP address or not.
        # Corresponds to the JSON property `ipv4Enabled`
        # @return [Boolean]
        attr_accessor :ipv4_enabled
        alias_method :ipv4_enabled?, :ipv4_enabled
      
        # The resource link for the VPC network from which the Cloud SQL instance is
        # accessible for private IP. For example, `/projects/myProject/global/networks/
        # default`. This setting can be updated, but it cannot be removed after it is
        # set.
        # Corresponds to the JSON property `privateNetwork`
        # @return [String]
        attr_accessor :private_network
      
        # PSC settings for a Cloud SQL instance.
        # Corresponds to the JSON property `pscConfig`
        # @return [Google::Apis::SqladminV1::PscConfig]
        attr_accessor :psc_config
      
        # Use `ssl_mode` instead. Whether SSL/TLS connections over IP are enforced. If
        # set to false, then allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/
        # TLS connections, the client certificate won't be verified. If set to true,
        # then only allow connections encrypted with SSL/TLS and with valid client
        # certificates. If you want to enforce SSL/TLS without enforcing the requirement
        # for valid client certificates, then use the `ssl_mode` flag instead of the `
        # require_ssl` flag.
        # Corresponds to the JSON property `requireSsl`
        # @return [Boolean]
        attr_accessor :require_ssl
        alias_method :require_ssl?, :require_ssl
      
        # Specify what type of CA is used for the server certificate.
        # Corresponds to the JSON property `serverCaMode`
        # @return [String]
        attr_accessor :server_ca_mode
      
        # Optional. The resource name of the server CA pool for an instance with `
        # CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`. Format: projects/`PROJECT`/
        # locations/`REGION`/caPools/`CA_POOL_ID`
        # Corresponds to the JSON property `serverCaPool`
        # @return [String]
        attr_accessor :server_ca_pool
      
        # Optional. Controls the automatic server certificate rotation feature. This
        # feature is disabled by default. When enabled, the server certificate will be
        # automatically rotated during Cloud SQL scheduled maintenance or self-service
        # maintenance updates up to six months before it expires. This setting can only
        # be set if server_ca_mode is either GOOGLE_MANAGED_CAS_CA or
        # CUSTOMER_MANAGED_CAS_CA.
        # Corresponds to the JSON property `serverCertificateRotationMode`
        # @return [String]
        attr_accessor :server_certificate_rotation_mode
      
        # Specify how SSL/TLS is enforced in database connections. If you must use the `
        # require_ssl` flag for backward compatibility, then only the following value
        # pairs are valid: For PostgreSQL and MySQL: * `ssl_mode=
        # ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=
        # ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=
        # TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` For SQL Server: * `
        # ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=
        # ENCRYPTED_ONLY` and `require_ssl=true` The value of `ssl_mode` has priority
        # over the value of `require_ssl`. For example, for the pair `ssl_mode=
        # ENCRYPTED_ONLY` and `require_ssl=false`, `ssl_mode=ENCRYPTED_ONLY` means
        # accept only SSL connections, while `require_ssl=false` means accept both non-
        # SSL and SSL connections. In this case, MySQL and PostgreSQL databases respect `
        # ssl_mode` and accepts only SSL connections.
        # Corresponds to the JSON property `sslMode`
        # @return [String]
        attr_accessor :ssl_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_ip_range = args[:allocated_ip_range] if args.key?(:allocated_ip_range)
          @authorized_networks = args[:authorized_networks] if args.key?(:authorized_networks)
          @custom_subject_alternative_names = args[:custom_subject_alternative_names] if args.key?(:custom_subject_alternative_names)
          @enable_private_path_for_google_cloud_services = args[:enable_private_path_for_google_cloud_services] if args.key?(:enable_private_path_for_google_cloud_services)
          @ipv4_enabled = args[:ipv4_enabled] if args.key?(:ipv4_enabled)
          @private_network = args[:private_network] if args.key?(:private_network)
          @psc_config = args[:psc_config] if args.key?(:psc_config)
          @require_ssl = args[:require_ssl] if args.key?(:require_ssl)
          @server_ca_mode = args[:server_ca_mode] if args.key?(:server_ca_mode)
          @server_ca_pool = args[:server_ca_pool] if args.key?(:server_ca_pool)
          @server_certificate_rotation_mode = args[:server_certificate_rotation_mode] if args.key?(:server_certificate_rotation_mode)
          @ssl_mode = args[:ssl_mode] if args.key?(:ssl_mode)
        end
      end
      
      # Database instance IP mapping
      class IpMapping
        include Google::Apis::Core::Hashable
      
        # The IP address assigned.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/
        # html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is
        # only available when the IP is scheduled to be retired.
        # Corresponds to the JSON property `timeToRetire`
        # @return [String]
        attr_accessor :time_to_retire
      
        # The type of this IP address. A `PRIMARY` address is a public address that can
        # accept incoming connections. A `PRIVATE` address is a private address that can
        # accept incoming connections. An `OUTGOING` address is the source address of
        # connections originating from the instance, if supported.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @time_to_retire = args[:time_to_retire] if args.key?(:time_to_retire)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The response payload containing a list of the backups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # A list of backups.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::SqladminV1::Backup>]
        attr_accessor :backups
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, then there aren't subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # If a region isn't unavailable or if an unknown error occurs, then a warning
        # message is returned.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::SqladminV1::ApiWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Preferred location. This specifies where a Cloud SQL instance is located. Note
      # that if the preferred location is not available, the instance will be located
      # as close as possible within the region. Only one location may be specified.
      class LocationPreference
        include Google::Apis::Core::Hashable
      
        # The App Engine application to follow, it must be in the same region as the
        # Cloud SQL instance. WARNING: Changing this might restart the instance.
        # Corresponds to the JSON property `followGaeApplication`
        # @return [String]
        attr_accessor :follow_gae_application
      
        # This is always `sql#locationPreference`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The preferred Compute Engine zone for the secondary/failover (for example: us-
        # central1-a, us-central1-b, etc.). To disable this field, set it to '
        # no_secondary_zone'.
        # Corresponds to the JSON property `secondaryZone`
        # @return [String]
        attr_accessor :secondary_zone
      
        # The preferred Compute Engine zone (for example: us-central1-a, us-central1-b,
        # etc.). WARNING: Changing this might restart the instance.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @follow_gae_application = args[:follow_gae_application] if args.key?(:follow_gae_application)
          @kind = args[:kind] if args.key?(:kind)
          @secondary_zone = args[:secondary_zone] if args.key?(:secondary_zone)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Maintenance window. This specifies when a Cloud SQL instance is restarted for
      # system maintenance purposes.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Day of week - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `
        # SATURDAY`, or `SUNDAY`. Specify in the UTC time zone. Returned in output as an
        # integer, 1 to 7, where `1` equals Monday.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Hour of day - 0 to 23. Specify in the UTC time zone.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # This is always `sql#maintenanceWindow`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Maintenance timing settings: `canary`, `stable`, or `week5`. For more
        # information, see [About maintenance on Cloud SQL instances](https://cloud.
        # google.com/sql/docs/mysql/maintenance).
        # Corresponds to the JSON property `updateTrack`
        # @return [String]
        attr_accessor :update_track
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hour = args[:hour] if args.key?(:hour)
          @kind = args[:kind] if args.key?(:kind)
          @update_track = args[:update_track] if args.key?(:update_track)
        end
      end
      
      # Represents a notice or warning message from the database.
      class Message
        include Google::Apis::Core::Hashable
      
        # The full message string. For PostgreSQL, this is a formatted string that may
        # include severity, code, and the notice/warning message. For MySQL, this
        # contains the warning message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The severity of the message (e.g., "NOTICE" for PostgreSQL, "WARNING" for
        # MySQL).
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # The additional metadata information regarding the execution of the SQL
      # statements.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The time taken to execute the SQL statements.
        # Corresponds to the JSON property `sqlStatementExecutionTime`
        # @return [String]
        attr_accessor :sql_statement_execution_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_statement_execution_time = args[:sql_statement_execution_time] if args.key?(:sql_statement_execution_time)
        end
      end
      
      # Read-replica configuration specific to MySQL databases.
      class MySqlReplicaConfiguration
        include Google::Apis::Core::Hashable
      
        # PEM representation of the trusted CA's x509 certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # PEM representation of the replica's x509 certificate.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # PEM representation of the replica's private key. The corresponding public key
        # is encoded in the client's certificate.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Seconds to wait between connect retries. MySQL's default is 60 seconds.
        # Corresponds to the JSON property `connectRetryInterval`
        # @return [Fixnum]
        attr_accessor :connect_retry_interval
      
        # Path to a SQL dump file in Google Cloud Storage from which the replica
        # instance is to be created. The URI is in the form gs://bucketName/fileName.
        # Compressed gzip files (.gz) are also supported. Dumps have the binlog co-
        # ordinates from which replication begins. This can be accomplished by setting --
        # master-data to 1 when using mysqldump.
        # Corresponds to the JSON property `dumpFilePath`
        # @return [String]
        attr_accessor :dump_file_path
      
        # This is always `sql#mysqlReplicaConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Interval in milliseconds between replication heartbeats.
        # Corresponds to the JSON property `masterHeartbeatPeriod`
        # @return [Fixnum]
        attr_accessor :master_heartbeat_period
      
        # The password for the replication connection.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # A list of permissible ciphers to use for SSL encryption.
        # Corresponds to the JSON property `sslCipher`
        # @return [String]
        attr_accessor :ssl_cipher
      
        # The username for the replication connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Whether or not to check the primary instance's Common Name value in the
        # certificate that it sends during the SSL handshake.
        # Corresponds to the JSON property `verifyServerCertificate`
        # @return [Boolean]
        attr_accessor :verify_server_certificate
        alias_method :verify_server_certificate?, :verify_server_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
          @connect_retry_interval = args[:connect_retry_interval] if args.key?(:connect_retry_interval)
          @dump_file_path = args[:dump_file_path] if args.key?(:dump_file_path)
          @kind = args[:kind] if args.key?(:kind)
          @master_heartbeat_period = args[:master_heartbeat_period] if args.key?(:master_heartbeat_period)
          @password = args[:password] if args.key?(:password)
          @ssl_cipher = args[:ssl_cipher] if args.key?(:ssl_cipher)
          @username = args[:username] if args.key?(:username)
          @verify_server_certificate = args[:verify_server_certificate] if args.key?(:verify_server_certificate)
        end
      end
      
      # MySQL-specific external server sync settings.
      class MySqlSyncConfig
        include Google::Apis::Core::Hashable
      
        # Flags to use for the initial dump.
        # Corresponds to the JSON property `initialSyncFlags`
        # @return [Array<Google::Apis::SqladminV1::SyncFlags>]
        attr_accessor :initial_sync_flags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_sync_flags = args[:initial_sync_flags] if args.key?(:initial_sync_flags)
        end
      end
      
      # On-premises instance configuration.
      class OnPremisesConfiguration
        include Google::Apis::Core::Hashable
      
        # PEM representation of the trusted CA's x509 certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # PEM representation of the replica's x509 certificate.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # PEM representation of the replica's private key. The corresponding public key
        # is encoded in the client's certificate.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # The dump file to create the Cloud SQL replica.
        # Corresponds to the JSON property `dumpFilePath`
        # @return [String]
        attr_accessor :dump_file_path
      
        # The host and port of the on-premises instance in host:port format
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        # This is always `sql#onPremisesConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The password for connecting to on-premises instance.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. A list of objects that the user selects for replication from an
        # external source instance.
        # Corresponds to the JSON property `selectedObjects`
        # @return [Array<Google::Apis::SqladminV1::SelectedObjects>]
        attr_accessor :selected_objects
      
        # Reference to another Cloud SQL instance.
        # Corresponds to the JSON property `sourceInstance`
        # @return [Google::Apis::SqladminV1::InstanceReference]
        attr_accessor :source_instance
      
        # Optional. SSL option for replica connection to the on-premises source.
        # Corresponds to the JSON property `sslOption`
        # @return [String]
        attr_accessor :ssl_option
      
        # The username for connecting to on-premises instance.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
          @dump_file_path = args[:dump_file_path] if args.key?(:dump_file_path)
          @host_port = args[:host_port] if args.key?(:host_port)
          @kind = args[:kind] if args.key?(:kind)
          @password = args[:password] if args.key?(:password)
          @selected_objects = args[:selected_objects] if args.key?(:selected_objects)
          @source_instance = args[:source_instance] if args.key?(:source_instance)
          @ssl_option = args[:ssl_option] if args.key?(:ssl_option)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # An Operation resource. For successful operations that return an Operation
      # resource, only the fields relevant to the operation are populated in the
      # resource.
      class Operation
        include Google::Apis::Core::Hashable
      
        # Acquire SSRS lease context.
        # Corresponds to the JSON property `acquireSsrsLeaseContext`
        # @return [Google::Apis::SqladminV1::AcquireSsrsLeaseContext]
        attr_accessor :acquire_ssrs_lease_context
      
        # An Admin API warning message.
        # Corresponds to the JSON property `apiWarning`
        # @return [Google::Apis::SqladminV1::ApiWarning]
        attr_accessor :api_warning
      
        # Backup context.
        # Corresponds to the JSON property `backupContext`
        # @return [Google::Apis::SqladminV1::BackupContext]
        attr_accessor :backup_context
      
        # The time this operation finished in UTC timezone in [RFC 3339](https://tools.
        # ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Database instance operation errors list wrapper.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SqladminV1::OperationErrors]
        attr_accessor :error
      
        # Database instance export context.
        # Corresponds to the JSON property `exportContext`
        # @return [Google::Apis::SqladminV1::ExportContext]
        attr_accessor :export_context
      
        # Database instance import context.
        # Corresponds to the JSON property `importContext`
        # @return [Google::Apis::SqladminV1::ImportContext]
        attr_accessor :import_context
      
        # The time this operation was enqueued in UTC timezone in [RFC 3339](https://
        # tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # This is always `sql#operation`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the operation. Valid values are: * `CREATE` * `DELETE` * `UPDATE` *
        # `RESTART` * `IMPORT` * `EXPORT` * `BACKUP_VOLUME` * `RESTORE_VOLUME` * `
        # CREATE_USER` * `DELETE_USER` * `CREATE_DATABASE` * `DELETE_DATABASE`
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Pre-check major version upgrade context.
        # Corresponds to the JSON property `preCheckMajorVersionUpgradeContext`
        # @return [Google::Apis::SqladminV1::PreCheckMajorVersionUpgradeContext]
        attr_accessor :pre_check_major_version_upgrade_context
      
        # The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The time this operation actually started in UTC timezone in [RFC 3339](https://
        # tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of an operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The sub operation type based on the operation type.
        # Corresponds to the JSON property `subOperationType`
        # @return [Google::Apis::SqladminV1::SqlSubOperationType]
        attr_accessor :sub_operation_type
      
        # Name of the resource on which this operation runs.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # 
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # The project ID of the target instance related to this operation.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # The email address of the user who initiated this operation.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquire_ssrs_lease_context = args[:acquire_ssrs_lease_context] if args.key?(:acquire_ssrs_lease_context)
          @api_warning = args[:api_warning] if args.key?(:api_warning)
          @backup_context = args[:backup_context] if args.key?(:backup_context)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @export_context = args[:export_context] if args.key?(:export_context)
          @import_context = args[:import_context] if args.key?(:import_context)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @pre_check_major_version_upgrade_context = args[:pre_check_major_version_upgrade_context] if args.key?(:pre_check_major_version_upgrade_context)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @sub_operation_type = args[:sub_operation_type] if args.key?(:sub_operation_type)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @target_project = args[:target_project] if args.key?(:target_project)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Database instance operation error.
      class OperationError
        include Google::Apis::Core::Hashable
      
        # Identifies the specific error that occurred.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # This is always `sql#operationError`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional information about the error encountered.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @kind = args[:kind] if args.key?(:kind)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Database instance operation errors list wrapper.
      class OperationErrors
        include Google::Apis::Core::Hashable
      
        # The list of errors encountered while processing this operation.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::SqladminV1::OperationError>]
        attr_accessor :errors
      
        # This is always `sql#operationErrors`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Operations list response.
      class OperationsListResponse
        include Google::Apis::Core::Hashable
      
        # List of operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::Operation>]
        attr_accessor :items
      
        # This is always `sql#operationsList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Read-only password status.
      class PasswordStatus
        include Google::Apis::Core::Hashable
      
        # If true, user does not have login privileges.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # The expiration time of the current password.
        # Corresponds to the JSON property `passwordExpirationTime`
        # @return [String]
        attr_accessor :password_expiration_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locked = args[:locked] if args.key?(:locked)
          @password_expiration_time = args[:password_expiration_time] if args.key?(:password_expiration_time)
        end
      end
      
      # Database instance local user password validation policy. This message defines
      # the password policy for local database users. When enabled, it enforces
      # constraints on password complexity, length, and reuse. Keep this policy
      # enabled to help prevent unauthorized access.
      class PasswordValidationPolicy
        include Google::Apis::Core::Hashable
      
        # The complexity of the password.
        # Corresponds to the JSON property `complexity`
        # @return [String]
        attr_accessor :complexity
      
        # This field is deprecated and will be removed in a future version of the API.
        # Corresponds to the JSON property `disallowCompromisedCredentials`
        # @return [Boolean]
        attr_accessor :disallow_compromised_credentials
        alias_method :disallow_compromised_credentials?, :disallow_compromised_credentials
      
        # Disallow username as a part of the password.
        # Corresponds to the JSON property `disallowUsernameSubstring`
        # @return [Boolean]
        attr_accessor :disallow_username_substring
        alias_method :disallow_username_substring?, :disallow_username_substring
      
        # Whether to enable the password policy or not. When enabled, passwords must
        # meet complexity requirements. Keep this policy enabled to help prevent
        # unauthorized access. Disabling this policy allows weak passwords.
        # Corresponds to the JSON property `enablePasswordPolicy`
        # @return [Boolean]
        attr_accessor :enable_password_policy
        alias_method :enable_password_policy?, :enable_password_policy
      
        # Minimum number of characters allowed.
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        # Minimum interval after which the password can be changed. This flag is only
        # supported for PostgreSQL.
        # Corresponds to the JSON property `passwordChangeInterval`
        # @return [String]
        attr_accessor :password_change_interval
      
        # Number of previous passwords that cannot be reused.
        # Corresponds to the JSON property `reuseInterval`
        # @return [Fixnum]
        attr_accessor :reuse_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complexity = args[:complexity] if args.key?(:complexity)
          @disallow_compromised_credentials = args[:disallow_compromised_credentials] if args.key?(:disallow_compromised_credentials)
          @disallow_username_substring = args[:disallow_username_substring] if args.key?(:disallow_username_substring)
          @enable_password_policy = args[:enable_password_policy] if args.key?(:enable_password_policy)
          @min_length = args[:min_length] if args.key?(:min_length)
          @password_change_interval = args[:password_change_interval] if args.key?(:password_change_interval)
          @reuse_interval = args[:reuse_interval] if args.key?(:reuse_interval)
        end
      end
      
      # Perform disk shrink context.
      class PerformDiskShrinkContext
        include Google::Apis::Core::Hashable
      
        # The target disk shrink size in GigaBytes.
        # Corresponds to the JSON property `targetSizeGb`
        # @return [Fixnum]
        attr_accessor :target_size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_size_gb = args[:target_size_gb] if args.key?(:target_size_gb)
        end
      end
      
      # Performance Capture configuration.
      class PerformanceCaptureConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Enable or disable the Performance Capture feature.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The minimum number of consecutive readings above threshold that
        # triggers instance state capture.
        # Corresponds to the JSON property `probeThreshold`
        # @return [Fixnum]
        attr_accessor :probe_threshold
      
        # Optional. The time interval in seconds between any two probes.
        # Corresponds to the JSON property `probingIntervalSeconds`
        # @return [Fixnum]
        attr_accessor :probing_interval_seconds
      
        # Optional. The minimum number of server threads running to trigger the capture
        # on primary.
        # Corresponds to the JSON property `runningThreadsThreshold`
        # @return [Fixnum]
        attr_accessor :running_threads_threshold
      
        # Optional. The minimum number of seconds replica must be lagging behind primary
        # to trigger capture on replica.
        # Corresponds to the JSON property `secondsBehindSourceThreshold`
        # @return [Fixnum]
        attr_accessor :seconds_behind_source_threshold
      
        # Optional. The amount of time in seconds that a transaction needs to have been
        # open before the watcher starts recording it.
        # Corresponds to the JSON property `transactionDurationThreshold`
        # @return [Fixnum]
        attr_accessor :transaction_duration_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @probe_threshold = args[:probe_threshold] if args.key?(:probe_threshold)
          @probing_interval_seconds = args[:probing_interval_seconds] if args.key?(:probing_interval_seconds)
          @running_threads_threshold = args[:running_threads_threshold] if args.key?(:running_threads_threshold)
          @seconds_behind_source_threshold = args[:seconds_behind_source_threshold] if args.key?(:seconds_behind_source_threshold)
          @transaction_duration_threshold = args[:transaction_duration_threshold] if args.key?(:transaction_duration_threshold)
        end
      end
      
      # The context to perform a point-in-time recovery of an instance managed by
      # Backup and Disaster Recovery (DR) Service.
      class PointInTimeRestoreContext
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the allocated IP range for the internal IP Cloud SQL
        # instance. For example: "google-managed-services-default". If you set this,
        # then Cloud SQL creates the IP address for the cloned instance in the allocated
        # range. This range must comply with [RFC 1035](https://tools.ietf.org/html/
        # rfc1035) standards. Specifically, the name must be 1-63 characters long and
        # match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. Reserved for future
        # use.
        # Corresponds to the JSON property `allocatedIpRange`
        # @return [String]
        attr_accessor :allocated_ip_range
      
        # The Backup and Disaster Recovery (DR) Service Datasource URI. Format: projects/
        # `project`/locations/`region`/backupVaults/`backupvault`/dataSources/`
        # datasource`.
        # Corresponds to the JSON property `datasource`
        # @return [String]
        attr_accessor :datasource
      
        # Required. The date and time to which you want to restore the instance.
        # Corresponds to the JSON property `pointInTime`
        # @return [String]
        attr_accessor :point_in_time
      
        # Optional. Point-in-time recovery of a regional instance in the specified zones.
        # If not specified, clone to the same secondary zone as the source instance.
        # This value cannot be the same as the preferred_zone field.
        # Corresponds to the JSON property `preferredSecondaryZone`
        # @return [String]
        attr_accessor :preferred_secondary_zone
      
        # Optional. Point-in-time recovery of an instance to the specified zone. If no
        # zone is specified, then clone to the same primary zone as the source instance.
        # Corresponds to the JSON property `preferredZone`
        # @return [String]
        attr_accessor :preferred_zone
      
        # Optional. The resource link for the VPC network from which the Cloud SQL
        # instance is accessible for private IP. For example, `/projects/myProject/
        # global/networks/default`.
        # Corresponds to the JSON property `privateNetwork`
        # @return [String]
        attr_accessor :private_network
      
        # Target instance name.
        # Corresponds to the JSON property `targetInstance`
        # @return [String]
        attr_accessor :target_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_ip_range = args[:allocated_ip_range] if args.key?(:allocated_ip_range)
          @datasource = args[:datasource] if args.key?(:datasource)
          @point_in_time = args[:point_in_time] if args.key?(:point_in_time)
          @preferred_secondary_zone = args[:preferred_secondary_zone] if args.key?(:preferred_secondary_zone)
          @preferred_zone = args[:preferred_zone] if args.key?(:preferred_zone)
          @private_network = args[:private_network] if args.key?(:private_network)
          @target_instance = args[:target_instance] if args.key?(:target_instance)
        end
      end
      
      # Details of a single read pool node of a read pool.
      class PoolNodeConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The DNS name of the read pool node.
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # Output only. The list of DNS names used by this read pool node.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<Google::Apis::SqladminV1::DnsNameMapping>]
        attr_accessor :dns_names
      
        # Output only. The zone of the read pool node.
        # Corresponds to the JSON property `gceZone`
        # @return [String]
        attr_accessor :gce_zone
      
        # Output only. Mappings containing IP addresses that can be used to connect to
        # the read pool node.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # Output only. The name of the read pool node, to be used for retrieving metrics
        # and logs.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of settings for requested automatically-setup Private
        # Service Connect (PSC) consumer endpoints that can be used to connect to this
        # read pool node.
        # Corresponds to the JSON property `pscAutoConnections`
        # @return [Array<Google::Apis::SqladminV1::PscAutoConnectionConfig>]
        attr_accessor :psc_auto_connections
      
        # Output only. The Private Service Connect (PSC) service attachment of the read
        # pool node.
        # Corresponds to the JSON property `pscServiceAttachmentLink`
        # @return [String]
        attr_accessor :psc_service_attachment_link
      
        # Output only. The current state of the read pool node.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @gce_zone = args[:gce_zone] if args.key?(:gce_zone)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @name = args[:name] if args.key?(:name)
          @psc_auto_connections = args[:psc_auto_connections] if args.key?(:psc_auto_connections)
          @psc_service_attachment_link = args[:psc_service_attachment_link] if args.key?(:psc_service_attachment_link)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Pre-check major version upgrade context.
      class PreCheckMajorVersionUpgradeContext
        include Google::Apis::Core::Hashable
      
        # Optional. This is always `sql#preCheckMajorVersionUpgradeContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The responses from the precheck operation.
        # Corresponds to the JSON property `preCheckResponse`
        # @return [Array<Google::Apis::SqladminV1::PreCheckResponse>]
        attr_accessor :pre_check_response
      
        # Required. The target database version to upgrade to.
        # Corresponds to the JSON property `targetDatabaseVersion`
        # @return [String]
        attr_accessor :target_database_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @pre_check_response = args[:pre_check_response] if args.key?(:pre_check_response)
          @target_database_version = args[:target_database_version] if args.key?(:target_database_version)
        end
      end
      
      # Structured PreCheckResponse containing message, type, and required actions.
      class PreCheckResponse
        include Google::Apis::Core::Hashable
      
        # The actions that the user needs to take. Use repeated for multiple actions.
        # Corresponds to the JSON property `actionsRequired`
        # @return [Array<String>]
        attr_accessor :actions_required
      
        # The message to be displayed to the user.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The type of message whether it is an info, warning, or error.
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions_required = args[:actions_required] if args.key?(:actions_required)
          @message = args[:message] if args.key?(:message)
          @message_type = args[:message_type] if args.key?(:message_type)
        end
      end
      
      # Settings for an automatically-setup Private Service Connect consumer endpoint
      # that is used to connect to a Cloud SQL instance.
      class PscAutoConnectionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The consumer network of this consumer endpoint. This must be a
        # resource path that includes both the host project and the network name. For
        # example, `projects/project1/global/networks/network1`. The consumer host
        # project of this network might be different from the consumer service project.
        # Corresponds to the JSON property `consumerNetwork`
        # @return [String]
        attr_accessor :consumer_network
      
        # The connection policy status of the consumer network.
        # Corresponds to the JSON property `consumerNetworkStatus`
        # @return [String]
        attr_accessor :consumer_network_status
      
        # Optional. This is the project ID of consumer service project of this consumer
        # endpoint. Optional. This is only applicable if consumer_network is a shared
        # vpc network.
        # Corresponds to the JSON property `consumerProject`
        # @return [String]
        attr_accessor :consumer_project
      
        # The IP address of the consumer endpoint.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The connection status of the consumer endpoint.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_network = args[:consumer_network] if args.key?(:consumer_network)
          @consumer_network_status = args[:consumer_network_status] if args.key?(:consumer_network_status)
          @consumer_project = args[:consumer_project] if args.key?(:consumer_project)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # PSC settings for a Cloud SQL instance.
      class PscConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The list of consumer projects that are allow-listed for PSC
        # connections to this instance. This instance can be connected to with PSC from
        # any network in these projects. Each consumer project in this list may be
        # represented by a project number (numeric) or by a project id (alphanumeric).
        # Corresponds to the JSON property `allowedConsumerProjects`
        # @return [Array<String>]
        attr_accessor :allowed_consumer_projects
      
        # Optional. The network attachment of the consumer network that the Private
        # Service Connect enabled Cloud SQL instance is authorized to connect via PSC
        # interface. format: projects/PROJECT/regions/REGION/networkAttachments/ID
        # Corresponds to the JSON property `networkAttachmentUri`
        # @return [String]
        attr_accessor :network_attachment_uri
      
        # Optional. The list of settings for requested Private Service Connect consumer
        # endpoints that can be used to connect to this Cloud SQL instance.
        # Corresponds to the JSON property `pscAutoConnections`
        # @return [Array<Google::Apis::SqladminV1::PscAutoConnectionConfig>]
        attr_accessor :psc_auto_connections
      
        # Whether PSC connectivity is enabled for this instance.
        # Corresponds to the JSON property `pscEnabled`
        # @return [Boolean]
        attr_accessor :psc_enabled
        alias_method :psc_enabled?, :psc_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_consumer_projects = args[:allowed_consumer_projects] if args.key?(:allowed_consumer_projects)
          @network_attachment_uri = args[:network_attachment_uri] if args.key?(:network_attachment_uri)
          @psc_auto_connections = args[:psc_auto_connections] if args.key?(:psc_auto_connections)
          @psc_enabled = args[:psc_enabled] if args.key?(:psc_enabled)
        end
      end
      
      # QueryResult contains the result of executing a single SQL statement.
      class QueryResult
        include Google::Apis::Core::Hashable
      
        # List of columns included in the result. This also includes the data type of
        # the column.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::SqladminV1::Column>]
        attr_accessor :columns
      
        # Message related to the SQL execution result.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Set to true if the SQL execution's result is truncated due to size limits or
        # an error retrieving results.
        # Corresponds to the JSON property `partialResult`
        # @return [Boolean]
        attr_accessor :partial_result
        alias_method :partial_result?, :partial_result
      
        # Rows returned by the SQL statement.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SqladminV1::Row>]
        attr_accessor :rows
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SqladminV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @message = args[:message] if args.key?(:message)
          @partial_result = args[:partial_result] if args.key?(:partial_result)
          @rows = args[:rows] if args.key?(:rows)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The read pool auto-scale configuration.
      class ReadPoolAutoScaleConfig
        include Google::Apis::Core::Hashable
      
        # Indicates whether read pool auto scaling supports scale in operations (
        # removing nodes).
        # Corresponds to the JSON property `disableScaleIn`
        # @return [Boolean]
        attr_accessor :disable_scale_in
        alias_method :disable_scale_in?, :disable_scale_in
      
        # Indicates whether read pool auto scaling is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Maximum number of read pool nodes to be maintained.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Minimum number of read pool nodes to be maintained.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        # The cooldown period for scale-in operations.
        # Corresponds to the JSON property `scaleInCooldownSeconds`
        # @return [Fixnum]
        attr_accessor :scale_in_cooldown_seconds
      
        # The cooldown period for scale-out operations.
        # Corresponds to the JSON property `scaleOutCooldownSeconds`
        # @return [Fixnum]
        attr_accessor :scale_out_cooldown_seconds
      
        # Optional. Target metrics for read pool auto scaling.
        # Corresponds to the JSON property `targetMetrics`
        # @return [Array<Google::Apis::SqladminV1::TargetMetric>]
        attr_accessor :target_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_scale_in = args[:disable_scale_in] if args.key?(:disable_scale_in)
          @enabled = args[:enabled] if args.key?(:enabled)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
          @scale_in_cooldown_seconds = args[:scale_in_cooldown_seconds] if args.key?(:scale_in_cooldown_seconds)
          @scale_out_cooldown_seconds = args[:scale_out_cooldown_seconds] if args.key?(:scale_out_cooldown_seconds)
          @target_metrics = args[:target_metrics] if args.key?(:target_metrics)
        end
      end
      
      # Read-replica configuration for connecting to the primary instance.
      class ReplicaConfiguration
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies if a SQL Server replica is a cascadable replica. A
        # cascadable replica is a SQL Server cross region replica that supports replica(
        # s) under it.
        # Corresponds to the JSON property `cascadableReplica`
        # @return [Boolean]
        attr_accessor :cascadable_replica
        alias_method :cascadable_replica?, :cascadable_replica
      
        # Specifies if the replica is the failover target. If the field is set to `true`,
        # the replica will be designated as a failover replica. In case the primary
        # instance fails, the replica instance will be promoted as the new primary
        # instance. Only one replica can be specified as failover target, and the
        # replica has to be in different zone with the primary instance.
        # Corresponds to the JSON property `failoverTarget`
        # @return [Boolean]
        attr_accessor :failover_target
        alias_method :failover_target?, :failover_target
      
        # This is always `sql#replicaConfiguration`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Read-replica configuration specific to MySQL databases.
        # Corresponds to the JSON property `mysqlReplicaConfiguration`
        # @return [Google::Apis::SqladminV1::MySqlReplicaConfiguration]
        attr_accessor :mysql_replica_configuration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cascadable_replica = args[:cascadable_replica] if args.key?(:cascadable_replica)
          @failover_target = args[:failover_target] if args.key?(:failover_target)
          @kind = args[:kind] if args.key?(:kind)
          @mysql_replica_configuration = args[:mysql_replica_configuration] if args.key?(:mysql_replica_configuration)
        end
      end
      
      # A primary instance and disaster recovery (DR) replica pair. A DR replica is a
      # cross-region replica that you designate for failover in the event that the
      # primary instance experiences regional failure. Applicable to MySQL and
      # PostgreSQL.
      class ReplicationCluster
        include Google::Apis::Core::Hashable
      
        # Output only. Read-only field that indicates whether the replica is a DR
        # replica. This field is not set if the instance is a primary instance.
        # Corresponds to the JSON property `drReplica`
        # @return [Boolean]
        attr_accessor :dr_replica
        alias_method :dr_replica?, :dr_replica
      
        # Optional. If the instance is a primary instance, then this field identifies
        # the disaster recovery (DR) replica. A DR replica is an optional configuration
        # for Enterprise Plus edition instances. If the instance is a read replica, then
        # the field is not set. Set this field to a replica name to designate a DR
        # replica for a primary instance. Remove the replica name to remove the DR
        # replica designation.
        # Corresponds to the JSON property `failoverDrReplicaName`
        # @return [String]
        attr_accessor :failover_dr_replica_name
      
        # Output only. If set, this field indicates this instance has a private service
        # access (PSA) DNS endpoint that is pointing to the primary instance of the
        # cluster. If this instance is the primary, then the DNS endpoint points to this
        # instance. After a switchover or replica failover operation, this DNS endpoint
        # points to the promoted instance. This is a read-only field, returned to the
        # user as information. This field can exist even if a standalone instance doesn'
        # t have a DR replica yet or the DR replica is deleted.
        # Corresponds to the JSON property `psaWriteEndpoint`
        # @return [String]
        attr_accessor :psa_write_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dr_replica = args[:dr_replica] if args.key?(:dr_replica)
          @failover_dr_replica_name = args[:failover_dr_replica_name] if args.key?(:failover_dr_replica_name)
          @psa_write_endpoint = args[:psa_write_endpoint] if args.key?(:psa_write_endpoint)
        end
      end
      
      # 
      class Reschedule
        include Google::Apis::Core::Hashable
      
        # Required. The type of the reschedule.
        # Corresponds to the JSON property `rescheduleType`
        # @return [String]
        attr_accessor :reschedule_type
      
        # Optional. Timestamp when the maintenance shall be rescheduled to if
        # reschedule_type=SPECIFIC_TIME, in [RFC 3339](https://tools.ietf.org/html/
        # rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reschedule_type = args[:reschedule_type] if args.key?(:reschedule_type)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
        end
      end
      
      # Database instance restore from backup context. Backup context contains source
      # instance id and project id.
      class RestoreBackupContext
        include Google::Apis::Core::Hashable
      
        # The ID of the backup run to restore from.
        # Corresponds to the JSON property `backupRunId`
        # @return [Fixnum]
        attr_accessor :backup_run_id
      
        # The ID of the instance that the backup was taken from.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # This is always `sql#restoreBackupContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The full project ID of the source instance.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_run_id = args[:backup_run_id] if args.key?(:backup_run_id)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @kind = args[:kind] if args.key?(:kind)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Instance rotate Entra ID certificate context.
      class RotateEntraIdCertificateContext
        include Google::Apis::Core::Hashable
      
        # Optional. This is always `sql#rotateEntraIdCertificateContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. The fingerprint of the next version to be rotated to. If left
        # unspecified, will be rotated to the most recently added server certificate
        # version.
        # Corresponds to the JSON property `nextVersion`
        # @return [String]
        attr_accessor :next_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_version = args[:next_version] if args.key?(:next_version)
        end
      end
      
      # Instance rotate server CA context.
      class RotateServerCaContext
        include Google::Apis::Core::Hashable
      
        # This is always `sql#rotateServerCaContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fingerprint of the next version to be rotated to. If left unspecified,
        # will be rotated to the most recently added server CA version.
        # Corresponds to the JSON property `nextVersion`
        # @return [String]
        attr_accessor :next_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_version = args[:next_version] if args.key?(:next_version)
        end
      end
      
      # Instance rotate server certificate context.
      class RotateServerCertificateContext
        include Google::Apis::Core::Hashable
      
        # Optional. This is always `sql#rotateServerCertificateContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fingerprint of the next version to be rotated to. If left unspecified,
        # will be rotated to the most recently added server certificate version.
        # Corresponds to the JSON property `nextVersion`
        # @return [String]
        attr_accessor :next_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_version = args[:next_version] if args.key?(:next_version)
        end
      end
      
      # Contains the values for a row.
      class Row
        include Google::Apis::Core::Hashable
      
        # The values for the row.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SqladminV1::Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A list of objects that the user selects for replication from an external
      # source instance.
      class SelectedObjects
        include Google::Apis::Core::Hashable
      
        # Required. The name of the database to migrate.
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
      
      # Database instance settings.
      class Settings
        include Google::Apis::Core::Hashable
      
        # The activation policy specifies when the instance is activated; it is
        # applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`:
        # The instance is on, and remains so even in the absence of connection requests.
        # * `NEVER`: The instance is off; it is not activated, even if a connection
        # request arrives.
        # Corresponds to the JSON property `activationPolicy`
        # @return [String]
        attr_accessor :activation_policy
      
        # Active Directory configuration, relevant only for Cloud SQL for SQL Server.
        # Corresponds to the JSON property `activeDirectoryConfig`
        # @return [Google::Apis::SqladminV1::SqlActiveDirectoryConfig]
        attr_accessor :active_directory_config
      
        # Specifies options for controlling advanced machine features.
        # Corresponds to the JSON property `advancedMachineFeatures`
        # @return [Google::Apis::SqladminV1::AdvancedMachineFeatures]
        attr_accessor :advanced_machine_features
      
        # The App Engine app IDs that can access this instance. (Deprecated) Applied to
        # First Generation instances only.
        # Corresponds to the JSON property `authorizedGaeApplications`
        # @return [Array<String>]
        attr_accessor :authorized_gae_applications
      
        # Optional. Cloud SQL for MySQL auto-upgrade configuration. When this parameter
        # is set to true, auto-upgrade is enabled for MySQL 8.0 minor versions. The
        # MySQL version must be 8.0.35 or higher.
        # Corresponds to the JSON property `autoUpgradeEnabled`
        # @return [Boolean]
        attr_accessor :auto_upgrade_enabled
        alias_method :auto_upgrade_enabled?, :auto_upgrade_enabled
      
        # Availability type. Potential values: * `ZONAL`: The instance serves data from
        # only one zone. Outages in that zone affect data accessibility. * `REGIONAL`:
        # The instance can serve data from more than one zone in a region (it is highly
        # available)./ For more information, see [Overview of the High Availability
        # Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
        # Corresponds to the JSON property `availabilityType`
        # @return [String]
        attr_accessor :availability_type
      
        # Database instance backup configuration.
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::SqladminV1::BackupConfiguration]
        attr_accessor :backup_configuration
      
        # The name of server Instance collation.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # The managed connection pooling configuration.
        # Corresponds to the JSON property `connectionPoolConfig`
        # @return [Google::Apis::SqladminV1::ConnectionPoolConfig]
        attr_accessor :connection_pool_config
      
        # Specifies if connections must use Cloud SQL connectors. Option values include
        # the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without
        # Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud
        # SQL Connectors). Note that using REQUIRED disables all existing authorized
        # networks. If this field is not specified when creating a new instance,
        # NOT_REQUIRED is used. If this field is not specified when patching or updating
        # an existing instance, it is left unchanged in the instance.
        # Corresponds to the JSON property `connectorEnforcement`
        # @return [String]
        attr_accessor :connector_enforcement
      
        # Configuration specific to read replica instances. Indicates whether database
        # flags for crash-safe replication are enabled. This property was only
        # applicable to First Generation instances.
        # Corresponds to the JSON property `crashSafeReplicationEnabled`
        # @return [Boolean]
        attr_accessor :crash_safe_replication_enabled
        alias_method :crash_safe_replication_enabled?, :crash_safe_replication_enabled
      
        # This parameter controls whether to allow using ExecuteSql API to connect to
        # the instance. Not allowed by default.
        # Corresponds to the JSON property `dataApiAccess`
        # @return [String]
        attr_accessor :data_api_access
      
        # Data cache configurations.
        # Corresponds to the JSON property `dataCacheConfig`
        # @return [Google::Apis::SqladminV1::DataCacheConfig]
        attr_accessor :data_cache_config
      
        # Optional. Provisioned number of I/O operations per second for the data disk.
        # This field is only used for hyperdisk-balanced disk types.
        # Corresponds to the JSON property `dataDiskProvisionedIops`
        # @return [Fixnum]
        attr_accessor :data_disk_provisioned_iops
      
        # Optional. Provisioned throughput measured in MiB per second for the data disk.
        # This field is only used for hyperdisk-balanced disk types.
        # Corresponds to the JSON property `dataDiskProvisionedThroughput`
        # @return [Fixnum]
        attr_accessor :data_disk_provisioned_throughput
      
        # The size of data disk, in GB. The data disk size minimum is 10GB.
        # Corresponds to the JSON property `dataDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :data_disk_size_gb
      
        # The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First
        # Generation instances.
        # Corresponds to the JSON property `dataDiskType`
        # @return [String]
        attr_accessor :data_disk_type
      
        # The database flags passed to the instance at startup.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Array<Google::Apis::SqladminV1::DatabaseFlags>]
        attr_accessor :database_flags
      
        # Configuration specific to read replica instances. Indicates whether
        # replication is enabled or not. WARNING: Changing this restarts the instance.
        # Corresponds to the JSON property `databaseReplicationEnabled`
        # @return [Boolean]
        attr_accessor :database_replication_enabled
        alias_method :database_replication_enabled?, :database_replication_enabled
      
        # Configuration to protect against accidental instance deletion.
        # Corresponds to the JSON property `deletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :deletion_protection_enabled
        alias_method :deletion_protection_enabled?, :deletion_protection_enabled
      
        # Deny maintenance periods
        # Corresponds to the JSON property `denyMaintenancePeriods`
        # @return [Array<Google::Apis::SqladminV1::DenyMaintenancePeriod>]
        attr_accessor :deny_maintenance_periods
      
        # Optional. The edition of the instance.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Optional. By default, Cloud SQL instances have schema extraction disabled for
        # Dataplex. When this parameter is set to true, schema extraction for Dataplex
        # on Cloud SQL instances is activated.
        # Corresponds to the JSON property `enableDataplexIntegration`
        # @return [Boolean]
        attr_accessor :enable_dataplex_integration
        alias_method :enable_dataplex_integration?, :enable_dataplex_integration
      
        # Optional. When this parameter is set to true, Cloud SQL instances can connect
        # to Vertex AI to pass requests for real-time predictions and insights to the AI.
        # The default value is false. This applies only to Cloud SQL for MySQL and
        # Cloud SQL for PostgreSQL instances.
        # Corresponds to the JSON property `enableGoogleMlIntegration`
        # @return [Boolean]
        attr_accessor :enable_google_ml_integration
        alias_method :enable_google_ml_integration?, :enable_google_ml_integration
      
        # SQL Server Entra ID configuration.
        # Corresponds to the JSON property `entraidConfig`
        # @return [Google::Apis::SqladminV1::SqlServerEntraIdConfig]
        attr_accessor :entraid_config
      
        # Config used to determine the final backup settings for the instance.
        # Corresponds to the JSON property `finalBackupConfig`
        # @return [Google::Apis::SqladminV1::FinalBackupConfig]
        attr_accessor :final_backup_config
      
        # Insights configuration. This specifies when Cloud SQL Insights feature is
        # enabled and optional configuration.
        # Corresponds to the JSON property `insightsConfig`
        # @return [Google::Apis::SqladminV1::InsightsConfig]
        attr_accessor :insights_config
      
        # IP Management configuration.
        # Corresponds to the JSON property `ipConfiguration`
        # @return [Google::Apis::SqladminV1::IpConfiguration]
        attr_accessor :ip_configuration
      
        # This is always `sql#settings`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Preferred location. This specifies where a Cloud SQL instance is located. Note
        # that if the preferred location is not available, the instance will be located
        # as close as possible within the region. Only one location may be specified.
        # Corresponds to the JSON property `locationPreference`
        # @return [Google::Apis::SqladminV1::LocationPreference]
        attr_accessor :location_preference
      
        # Maintenance window. This specifies when a Cloud SQL instance is restarted for
        # system maintenance purposes.
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::SqladminV1::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        # Database instance local user password validation policy. This message defines
        # the password policy for local database users. When enabled, it enforces
        # constraints on password complexity, length, and reuse. Keep this policy
        # enabled to help prevent unauthorized access.
        # Corresponds to the JSON property `passwordValidationPolicy`
        # @return [Google::Apis::SqladminV1::PasswordValidationPolicy]
        attr_accessor :password_validation_policy
      
        # Performance Capture configuration.
        # Corresponds to the JSON property `performanceCaptureConfig`
        # @return [Google::Apis::SqladminV1::PerformanceCaptureConfig]
        attr_accessor :performance_capture_config
      
        # The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`.
        # Only `PER_USE` is supported for Second Generation instances.
        # Corresponds to the JSON property `pricingPlan`
        # @return [String]
        attr_accessor :pricing_plan
      
        # The read pool auto-scale configuration.
        # Corresponds to the JSON property `readPoolAutoScaleConfig`
        # @return [Google::Apis::SqladminV1::ReadPoolAutoScaleConfig]
        attr_accessor :read_pool_auto_scale_config
      
        # Optional. Configuration value for recreation of replica after certain
        # replication lag
        # Corresponds to the JSON property `replicationLagMaxSeconds`
        # @return [Fixnum]
        attr_accessor :replication_lag_max_seconds
      
        # The type of replication this instance uses. This can be either `ASYNCHRONOUS`
        # or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First
        # Generation instances.
        # Corresponds to the JSON property `replicationType`
        # @return [String]
        attr_accessor :replication_type
      
        # Optional. When this parameter is set to true, Cloud SQL retains backups of the
        # instance even after the instance is deleted. The ON_DEMAND backup will be
        # retained until customer deletes the backup or the project. The AUTOMATED
        # backup will be retained based on the backups retention setting.
        # Corresponds to the JSON property `retainBackupsOnDelete`
        # @return [Boolean]
        attr_accessor :retain_backups_on_delete
        alias_method :retain_backups_on_delete?, :retain_backups_on_delete
      
        # The version of instance settings. This is a required field for update method
        # to make sure concurrent updates are handled properly. During update, use the
        # most recent settingsVersion value for this instance and do not try to update
        # this value.
        # Corresponds to the JSON property `settingsVersion`
        # @return [Fixnum]
        attr_accessor :settings_version
      
        # SQL Server specific audit configuration.
        # Corresponds to the JSON property `sqlServerAuditConfig`
        # @return [Google::Apis::SqladminV1::SqlServerAuditConfig]
        attr_accessor :sql_server_audit_config
      
        # Configuration to increase storage size automatically. The default value is
        # true.
        # Corresponds to the JSON property `storageAutoResize`
        # @return [Boolean]
        attr_accessor :storage_auto_resize
        alias_method :storage_auto_resize?, :storage_auto_resize
      
        # The maximum size to which storage capacity can be automatically increased. The
        # default value is 0, which specifies that there is no limit.
        # Corresponds to the JSON property `storageAutoResizeLimit`
        # @return [Fixnum]
        attr_accessor :storage_auto_resize_limit
      
        # The tier (or machine type) for this instance, for example `db-custom-1-3840`.
        # WARNING: Changing this restarts the instance.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Server timezone, relevant only for Cloud SQL for SQL Server.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # User-provided labels, represented as a dictionary where each label is a single
        # key value pair.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_policy = args[:activation_policy] if args.key?(:activation_policy)
          @active_directory_config = args[:active_directory_config] if args.key?(:active_directory_config)
          @advanced_machine_features = args[:advanced_machine_features] if args.key?(:advanced_machine_features)
          @authorized_gae_applications = args[:authorized_gae_applications] if args.key?(:authorized_gae_applications)
          @auto_upgrade_enabled = args[:auto_upgrade_enabled] if args.key?(:auto_upgrade_enabled)
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @collation = args[:collation] if args.key?(:collation)
          @connection_pool_config = args[:connection_pool_config] if args.key?(:connection_pool_config)
          @connector_enforcement = args[:connector_enforcement] if args.key?(:connector_enforcement)
          @crash_safe_replication_enabled = args[:crash_safe_replication_enabled] if args.key?(:crash_safe_replication_enabled)
          @data_api_access = args[:data_api_access] if args.key?(:data_api_access)
          @data_cache_config = args[:data_cache_config] if args.key?(:data_cache_config)
          @data_disk_provisioned_iops = args[:data_disk_provisioned_iops] if args.key?(:data_disk_provisioned_iops)
          @data_disk_provisioned_throughput = args[:data_disk_provisioned_throughput] if args.key?(:data_disk_provisioned_throughput)
          @data_disk_size_gb = args[:data_disk_size_gb] if args.key?(:data_disk_size_gb)
          @data_disk_type = args[:data_disk_type] if args.key?(:data_disk_type)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @database_replication_enabled = args[:database_replication_enabled] if args.key?(:database_replication_enabled)
          @deletion_protection_enabled = args[:deletion_protection_enabled] if args.key?(:deletion_protection_enabled)
          @deny_maintenance_periods = args[:deny_maintenance_periods] if args.key?(:deny_maintenance_periods)
          @edition = args[:edition] if args.key?(:edition)
          @enable_dataplex_integration = args[:enable_dataplex_integration] if args.key?(:enable_dataplex_integration)
          @enable_google_ml_integration = args[:enable_google_ml_integration] if args.key?(:enable_google_ml_integration)
          @entraid_config = args[:entraid_config] if args.key?(:entraid_config)
          @final_backup_config = args[:final_backup_config] if args.key?(:final_backup_config)
          @insights_config = args[:insights_config] if args.key?(:insights_config)
          @ip_configuration = args[:ip_configuration] if args.key?(:ip_configuration)
          @kind = args[:kind] if args.key?(:kind)
          @location_preference = args[:location_preference] if args.key?(:location_preference)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @password_validation_policy = args[:password_validation_policy] if args.key?(:password_validation_policy)
          @performance_capture_config = args[:performance_capture_config] if args.key?(:performance_capture_config)
          @pricing_plan = args[:pricing_plan] if args.key?(:pricing_plan)
          @read_pool_auto_scale_config = args[:read_pool_auto_scale_config] if args.key?(:read_pool_auto_scale_config)
          @replication_lag_max_seconds = args[:replication_lag_max_seconds] if args.key?(:replication_lag_max_seconds)
          @replication_type = args[:replication_type] if args.key?(:replication_type)
          @retain_backups_on_delete = args[:retain_backups_on_delete] if args.key?(:retain_backups_on_delete)
          @settings_version = args[:settings_version] if args.key?(:settings_version)
          @sql_server_audit_config = args[:sql_server_audit_config] if args.key?(:sql_server_audit_config)
          @storage_auto_resize = args[:storage_auto_resize] if args.key?(:storage_auto_resize)
          @storage_auto_resize_limit = args[:storage_auto_resize_limit] if args.key?(:storage_auto_resize_limit)
          @tier = args[:tier] if args.key?(:tier)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Active Directory configuration, relevant only for Cloud SQL for SQL Server.
      class SqlActiveDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The secret manager key storing the administrator credential. (e.g.,
        # projects/`project`/secrets/`secret`).
        # Corresponds to the JSON property `adminCredentialSecretName`
        # @return [String]
        attr_accessor :admin_credential_secret_name
      
        # Optional. Domain controller IPv4 addresses used to bootstrap Active Directory.
        # Corresponds to the JSON property `dnsServers`
        # @return [Array<String>]
        attr_accessor :dns_servers
      
        # The name of the domain (e.g., mydomain.com).
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # This is always sql#activeDirectoryConfig.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. The mode of the Active Directory configuration.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. The organizational unit distinguished name. This is the full
        # hierarchical path to the organizational unit.
        # Corresponds to the JSON property `organizationalUnit`
        # @return [String]
        attr_accessor :organizational_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_credential_secret_name = args[:admin_credential_secret_name] if args.key?(:admin_credential_secret_name)
          @dns_servers = args[:dns_servers] if args.key?(:dns_servers)
          @domain = args[:domain] if args.key?(:domain)
          @kind = args[:kind] if args.key?(:kind)
          @mode = args[:mode] if args.key?(:mode)
          @organizational_unit = args[:organizational_unit] if args.key?(:organizational_unit)
        end
      end
      
      # External primary instance migration setting error/warning.
      class SqlExternalSyncSettingError
        include Google::Apis::Core::Hashable
      
        # Additional information about the error encountered.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Can be `sql#externalSyncSettingError` or `sql#externalSyncSettingWarning`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Identifies the specific error that occurred.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @kind = args[:kind] if args.key?(:kind)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response for the acquire SSRS lease request.
      class SqlInstancesAcquireSsrsLeaseResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifier for this operation.
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
      
      # Execute SQL statements response.
      class SqlInstancesExecuteSqlResponse
        include Google::Apis::Core::Hashable
      
        # A list of notices and warnings generated during query execution. For
        # PostgreSQL, this includes all notices and warnings. For MySQL, this includes
        # warnings generated by the last executed statement. To retrieve all warnings
        # for a multi-statement query, `SHOW WARNINGS` must be executed after each
        # statement.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::SqladminV1::Message>]
        attr_accessor :messages
      
        # The additional metadata information regarding the execution of the SQL
        # statements.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SqladminV1::Metadata]
        attr_accessor :metadata
      
        # The list of results after executing all the SQL statements.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::SqladminV1::QueryResult>]
        attr_accessor :results
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SqladminV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @metadata = args[:metadata] if args.key?(:metadata)
          @results = args[:results] if args.key?(:results)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Instance get disk shrink config response.
      class SqlInstancesGetDiskShrinkConfigResponse
        include Google::Apis::Core::Hashable
      
        # This is always `sql#getDiskShrinkConfig`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional message to customers.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The minimum size to which a disk can be shrunk in GigaBytes.
        # Corresponds to the JSON property `minimalTargetSizeGb`
        # @return [Fixnum]
        attr_accessor :minimal_target_size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @message = args[:message] if args.key?(:message)
          @minimal_target_size_gb = args[:minimal_target_size_gb] if args.key?(:minimal_target_size_gb)
        end
      end
      
      # Instance get latest recovery time response.
      class SqlInstancesGetLatestRecoveryTimeResponse
        include Google::Apis::Core::Hashable
      
        # Timestamp, identifies the earliest recovery time of the source instance.
        # Corresponds to the JSON property `earliestRecoveryTime`
        # @return [String]
        attr_accessor :earliest_recovery_time
      
        # This is always `sql#getLatestRecoveryTime`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Timestamp, identifies the latest recovery time of the source instance.
        # Corresponds to the JSON property `latestRecoveryTime`
        # @return [String]
        attr_accessor :latest_recovery_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @earliest_recovery_time = args[:earliest_recovery_time] if args.key?(:earliest_recovery_time)
          @kind = args[:kind] if args.key?(:kind)
          @latest_recovery_time = args[:latest_recovery_time] if args.key?(:latest_recovery_time)
        end
      end
      
      # Response for the release SSRS lease request.
      class SqlInstancesReleaseSsrsLeaseResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifier for this operation.
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
      
      # Reschedule options for maintenance windows.
      class SqlInstancesRescheduleMaintenanceRequestBody
        include Google::Apis::Core::Hashable
      
        # Required. The type of the reschedule the user wants.
        # Corresponds to the JSON property `reschedule`
        # @return [Google::Apis::SqladminV1::Reschedule]
        attr_accessor :reschedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reschedule = args[:reschedule] if args.key?(:reschedule)
        end
      end
      
      # Instance reset replica size request.
      class SqlInstancesResetReplicaSizeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Instance start external sync request.
      class SqlInstancesStartExternalSyncRequest
        include Google::Apis::Core::Hashable
      
        # Optional. MigrationType configures the migration to use physical files or
        # logical dump files. If not set, then the logical dump file configuration is
        # used. Valid values are `LOGICAL` or `PHYSICAL`. Only applicable to MySQL.
        # Corresponds to the JSON property `migrationType`
        # @return [String]
        attr_accessor :migration_type
      
        # MySQL-specific external server sync settings.
        # Corresponds to the JSON property `mysqlSyncConfig`
        # @return [Google::Apis::SqladminV1::MySqlSyncConfig]
        attr_accessor :mysql_sync_config
      
        # Optional. MySQL only. True if end-user has confirmed that this SES call will
        # wipe replica databases overlapping with the proposed selected_objects. If this
        # field is not set and there are both overlapping and additional databases
        # proposed, an error will be returned.
        # Corresponds to the JSON property `replicaOverwriteEnabled`
        # @return [Boolean]
        attr_accessor :replica_overwrite_enabled
        alias_method :replica_overwrite_enabled?, :replica_overwrite_enabled
      
        # Whether to skip the verification step (VESS).
        # Corresponds to the JSON property `skipVerification`
        # @return [Boolean]
        attr_accessor :skip_verification
        alias_method :skip_verification?, :skip_verification
      
        # External sync mode.
        # Corresponds to the JSON property `syncMode`
        # @return [String]
        attr_accessor :sync_mode
      
        # Optional. Parallel level for initial data sync. Currently only applicable for
        # MySQL.
        # Corresponds to the JSON property `syncParallelLevel`
        # @return [String]
        attr_accessor :sync_parallel_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_type = args[:migration_type] if args.key?(:migration_type)
          @mysql_sync_config = args[:mysql_sync_config] if args.key?(:mysql_sync_config)
          @replica_overwrite_enabled = args[:replica_overwrite_enabled] if args.key?(:replica_overwrite_enabled)
          @skip_verification = args[:skip_verification] if args.key?(:skip_verification)
          @sync_mode = args[:sync_mode] if args.key?(:sync_mode)
          @sync_parallel_level = args[:sync_parallel_level] if args.key?(:sync_parallel_level)
        end
      end
      
      # Instance verify external sync settings request.
      class SqlInstancesVerifyExternalSyncSettingsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. MigrationType configures the migration to use physical files or
        # logical dump files. If not set, then the logical dump file configuration is
        # used. Valid values are `LOGICAL` or `PHYSICAL`. Only applicable to MySQL.
        # Corresponds to the JSON property `migrationType`
        # @return [String]
        attr_accessor :migration_type
      
        # MySQL-specific external server sync settings.
        # Corresponds to the JSON property `mysqlSyncConfig`
        # @return [Google::Apis::SqladminV1::MySqlSyncConfig]
        attr_accessor :mysql_sync_config
      
        # Optional. Migrate only the specified objects from the source instance. If this
        # field is empty, then migrate all objects.
        # Corresponds to the JSON property `selectedObjects`
        # @return [Array<Google::Apis::SqladminV1::ExternalSyncSelectedObject>]
        attr_accessor :selected_objects
      
        # External sync mode
        # Corresponds to the JSON property `syncMode`
        # @return [String]
        attr_accessor :sync_mode
      
        # Optional. Parallel level for initial data sync. Only applicable for PostgreSQL.
        # Corresponds to the JSON property `syncParallelLevel`
        # @return [String]
        attr_accessor :sync_parallel_level
      
        # Flag to enable verifying connection only
        # Corresponds to the JSON property `verifyConnectionOnly`
        # @return [Boolean]
        attr_accessor :verify_connection_only
        alias_method :verify_connection_only?, :verify_connection_only
      
        # Optional. Flag to verify settings required by replication setup only
        # Corresponds to the JSON property `verifyReplicationOnly`
        # @return [Boolean]
        attr_accessor :verify_replication_only
        alias_method :verify_replication_only?, :verify_replication_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_type = args[:migration_type] if args.key?(:migration_type)
          @mysql_sync_config = args[:mysql_sync_config] if args.key?(:mysql_sync_config)
          @selected_objects = args[:selected_objects] if args.key?(:selected_objects)
          @sync_mode = args[:sync_mode] if args.key?(:sync_mode)
          @sync_parallel_level = args[:sync_parallel_level] if args.key?(:sync_parallel_level)
          @verify_connection_only = args[:verify_connection_only] if args.key?(:verify_connection_only)
          @verify_replication_only = args[:verify_replication_only] if args.key?(:verify_replication_only)
        end
      end
      
      # Instance verify external sync settings response.
      class SqlInstancesVerifyExternalSyncSettingsResponse
        include Google::Apis::Core::Hashable
      
        # List of migration violations.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::SqladminV1::SqlExternalSyncSettingError>]
        attr_accessor :errors
      
        # This is always `sql#migrationSettingErrorList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of migration warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::SqladminV1::SqlExternalSyncSettingError>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # This message wraps up the information written by out-of-disk detection job.
      class SqlOutOfDiskReport
        include Google::Apis::Core::Hashable
      
        # The minimum recommended increase size in GigaBytes This field is consumed by
        # the frontend * Writers: * the proactive database wellness job for OOD. *
        # Readers:
        # Corresponds to the JSON property `sqlMinRecommendedIncreaseSizeGb`
        # @return [Fixnum]
        attr_accessor :sql_min_recommended_increase_size_gb
      
        # This field represents the state generated by the proactive database wellness
        # job for OutOfDisk issues. * Writers: * the proactive database wellness job for
        # OOD. * Readers: * the proactive database wellness job
        # Corresponds to the JSON property `sqlOutOfDiskState`
        # @return [String]
        attr_accessor :sql_out_of_disk_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_min_recommended_increase_size_gb = args[:sql_min_recommended_increase_size_gb] if args.key?(:sql_min_recommended_increase_size_gb)
          @sql_out_of_disk_state = args[:sql_out_of_disk_state] if args.key?(:sql_out_of_disk_state)
        end
      end
      
      # Any scheduled maintenance for this instance.
      class SqlScheduledMaintenance
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canDefer`
        # @return [Boolean]
        attr_accessor :can_defer
        alias_method :can_defer?, :can_defer
      
        # If the scheduled maintenance can be rescheduled.
        # Corresponds to the JSON property `canReschedule`
        # @return [Boolean]
        attr_accessor :can_reschedule
        alias_method :can_reschedule?, :can_reschedule
      
        # Maintenance cannot be rescheduled to start beyond this deadline.
        # Corresponds to the JSON property `scheduleDeadlineTime`
        # @return [String]
        attr_accessor :schedule_deadline_time
      
        # The start time of any upcoming scheduled maintenance for this instance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_defer = args[:can_defer] if args.key?(:can_defer)
          @can_reschedule = args[:can_reschedule] if args.key?(:can_reschedule)
          @schedule_deadline_time = args[:schedule_deadline_time] if args.key?(:schedule_deadline_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # SQL Server specific audit configuration.
      class SqlServerAuditConfig
        include Google::Apis::Core::Hashable
      
        # The name of the destination bucket (e.g., gs://mybucket).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # This is always sql#sqlServerAuditConfig
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # How long to keep generated audit files.
        # Corresponds to the JSON property `retentionInterval`
        # @return [String]
        attr_accessor :retention_interval
      
        # How often to upload generated audit files.
        # Corresponds to the JSON property `uploadInterval`
        # @return [String]
        attr_accessor :upload_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @kind = args[:kind] if args.key?(:kind)
          @retention_interval = args[:retention_interval] if args.key?(:retention_interval)
          @upload_interval = args[:upload_interval] if args.key?(:upload_interval)
        end
      end
      
      # Represents a Sql Server database on the Cloud SQL instance.
      class SqlServerDatabaseDetails
        include Google::Apis::Core::Hashable
      
        # The version of SQL Server with which the database is to be made compatible
        # Corresponds to the JSON property `compatibilityLevel`
        # @return [Fixnum]
        attr_accessor :compatibility_level
      
        # The recovery model of a SQL Server database
        # Corresponds to the JSON property `recoveryModel`
        # @return [String]
        attr_accessor :recovery_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compatibility_level = args[:compatibility_level] if args.key?(:compatibility_level)
          @recovery_model = args[:recovery_model] if args.key?(:recovery_model)
        end
      end
      
      # SQL Server Entra ID configuration.
      class SqlServerEntraIdConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The application ID for the Entra ID configuration.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # Output only. This is always sql#sqlServerEntraIdConfig
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. The tenant ID for the Entra ID configuration.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @kind = args[:kind] if args.key?(:kind)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Represents a Sql Server user on the Cloud SQL instance.
      class SqlServerUserDetails
        include Google::Apis::Core::Hashable
      
        # If the user has been disabled
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The server roles for this user
        # Corresponds to the JSON property `serverRoles`
        # @return [Array<String>]
        attr_accessor :server_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @server_roles = args[:server_roles] if args.key?(:server_roles)
        end
      end
      
      # The sub operation type based on the operation type.
      class SqlSubOperationType
        include Google::Apis::Core::Hashable
      
        # The type of maintenance to be performed on the instance.
        # Corresponds to the JSON property `maintenanceType`
        # @return [String]
        attr_accessor :maintenance_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_type = args[:maintenance_type] if args.key?(:maintenance_type)
        end
      end
      
      # SslCerts Resource
      class SslCert
        include Google::Apis::Core::Hashable
      
        # PEM representation.
        # Corresponds to the JSON property `cert`
        # @return [String]
        attr_accessor :cert
      
        # Serial number, as extracted from the certificate.
        # Corresponds to the JSON property `certSerialNumber`
        # @return [String]
        attr_accessor :cert_serial_number
      
        # User supplied name. Constrained to [a-zA-Z.-_ ]+.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        # The time when the certificate was created in [RFC 3339](https://tools.ietf.org/
        # html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when the certificate expires in [RFC 3339](https://tools.ietf.org/
        # html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always `sql#sslCert`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The URI of this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Sha1 Fingerprint.
        # Corresponds to the JSON property `sha1Fingerprint`
        # @return [String]
        attr_accessor :sha1_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert = args[:cert] if args.key?(:cert)
          @cert_serial_number = args[:cert_serial_number] if args.key?(:cert_serial_number)
          @common_name = args[:common_name] if args.key?(:common_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
          @sha1_fingerprint = args[:sha1_fingerprint] if args.key?(:sha1_fingerprint)
        end
      end
      
      # SslCertDetail.
      class SslCertDetail
        include Google::Apis::Core::Hashable
      
        # SslCerts Resource
        # Corresponds to the JSON property `certInfo`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :cert_info
      
        # The private key for the client cert, in pem format. Keep private in order to
        # protect your security.
        # Corresponds to the JSON property `certPrivateKey`
        # @return [String]
        attr_accessor :cert_private_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_info = args[:cert_info] if args.key?(:cert_info)
          @cert_private_key = args[:cert_private_key] if args.key?(:cert_private_key)
        end
      end
      
      # SslCerts create ephemeral certificate request.
      class SslCertsCreateEphemeralRequest
        include Google::Apis::Core::Hashable
      
        # Access token to include in the signed certificate.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # PEM encoded public key to include in the signed certificate.
        # Corresponds to the JSON property `public_key`
        # @return [String]
        attr_accessor :public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @public_key = args[:public_key] if args.key?(:public_key)
        end
      end
      
      # SslCerts insert request.
      class SslCertsInsertRequest
        include Google::Apis::Core::Hashable
      
        # User supplied name. Must be a distinct name from the other certificates for
        # this instance.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_name = args[:common_name] if args.key?(:common_name)
        end
      end
      
      # SslCert insert response.
      class SslCertsInsertResponse
        include Google::Apis::Core::Hashable
      
        # SslCertDetail.
        # Corresponds to the JSON property `clientCert`
        # @return [Google::Apis::SqladminV1::SslCertDetail]
        attr_accessor :client_cert
      
        # This is always `sql#sslCertsInsert`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An Operation resource. For successful operations that return an Operation
        # resource, only the fields relevant to the operation are populated in the
        # resource.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::SqladminV1::Operation]
        attr_accessor :operation
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :server_ca_cert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_cert = args[:client_cert] if args.key?(:client_cert)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
        end
      end
      
      # SslCerts list response.
      class SslCertsListResponse
        include Google::Apis::Core::Hashable
      
        # List of client certificates for the instance.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::SslCert>]
        attr_accessor :items
      
        # This is always `sql#sslCertsList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
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
      
      # Initial sync flags for certain Cloud SQL APIs. Currently used for the MySQL
      # external server initial dump.
      class SyncFlags
        include Google::Apis::Core::Hashable
      
        # The name of the flag.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the flag. This field must be omitted if the flag doesn't take a
        # value.
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
      
      # Target metric for read pool auto scaling.
      class TargetMetric
        include Google::Apis::Core::Hashable
      
        # The metric name to be used for auto scaling.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The target value for the metric.
        # Corresponds to the JSON property `targetValue`
        # @return [Float]
        attr_accessor :target_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @target_value = args[:target_value] if args.key?(:target_value)
        end
      end
      
      # A Google Cloud SQL service tier resource.
      class Tier
        include Google::Apis::Core::Hashable
      
        # The maximum disk size of this tier in bytes.
        # Corresponds to the JSON property `DiskQuota`
        # @return [Fixnum]
        attr_accessor :disk_quota
      
        # The maximum RAM usage of this tier in bytes.
        # Corresponds to the JSON property `RAM`
        # @return [Fixnum]
        attr_accessor :ram
      
        # This is always `sql#tier`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The applicable regions for this tier.
        # Corresponds to the JSON property `region`
        # @return [Array<String>]
        attr_accessor :region
      
        # An identifier for the machine type, for example, `db-custom-1-3840`. For
        # related information, see [Pricing](/sql/pricing).
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_quota = args[:disk_quota] if args.key?(:disk_quota)
          @ram = args[:ram] if args.key?(:ram)
          @kind = args[:kind] if args.key?(:kind)
          @region = args[:region] if args.key?(:region)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # Tiers list response.
      class TiersListResponse
        include Google::Apis::Core::Hashable
      
        # List of tiers.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::Tier>]
        attr_accessor :items
      
        # This is always `sql#tiersList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database Instance truncate log context.
      class TruncateLogContext
        include Google::Apis::Core::Hashable
      
        # This is always `sql#truncateLogContext`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The type of log to truncate. Valid values are `MYSQL_GENERAL_TABLE` and `
        # MYSQL_SLOW_TABLE`.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # A Cloud SQL user resource.
      class User
        include Google::Apis::Core::Hashable
      
        # Optional. Role memberships of the user
        # Corresponds to the JSON property `databaseRoles`
        # @return [Array<String>]
        attr_accessor :database_roles
      
        # Dual password status for the user.
        # Corresponds to the JSON property `dualPasswordType`
        # @return [String]
        attr_accessor :dual_password_type
      
        # This field is deprecated and will be removed from a future version of the API.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The host from which the user can connect. For `insert` operations,
        # host defaults to an empty string. For `update` operations, host is specified
        # as part of the request URL. The host name cannot be updated after insertion.
        # For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance,
        # it's optional.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Optional. The full email for an IAM user. For normal database users, this will
        # not be filled. Only applicable to MySQL database users.
        # Corresponds to the JSON property `iamEmail`
        # @return [String]
        attr_accessor :iam_email
      
        # Indicates if a group is active or inactive for IAM database authentication.
        # Corresponds to the JSON property `iamStatus`
        # @return [String]
        attr_accessor :iam_status
      
        # The name of the Cloud SQL instance. This does not include the project ID. Can
        # be omitted for `update` because it is already specified on the URL.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always `sql#user`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the user in the Cloud SQL instance. Can be omitted for `update`
        # because it is already specified in the URL.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The password for the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # User level password validation policy.
        # Corresponds to the JSON property `passwordPolicy`
        # @return [Google::Apis::SqladminV1::UserPasswordValidationPolicy]
        attr_accessor :password_policy
      
        # The project ID of the project containing the Cloud SQL database. The Google
        # apps domain is prefixed if applicable. Can be omitted for `update` because it
        # is already specified on the URL.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Represents a Sql Server user on the Cloud SQL instance.
        # Corresponds to the JSON property `sqlserverUserDetails`
        # @return [Google::Apis::SqladminV1::SqlServerUserDetails]
        attr_accessor :sqlserver_user_details
      
        # The user type. It determines the method to authenticate the user during login.
        # The default is the database's built-in user type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_roles = args[:database_roles] if args.key?(:database_roles)
          @dual_password_type = args[:dual_password_type] if args.key?(:dual_password_type)
          @etag = args[:etag] if args.key?(:etag)
          @host = args[:host] if args.key?(:host)
          @iam_email = args[:iam_email] if args.key?(:iam_email)
          @iam_status = args[:iam_status] if args.key?(:iam_status)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @password = args[:password] if args.key?(:password)
          @password_policy = args[:password_policy] if args.key?(:password_policy)
          @project = args[:project] if args.key?(:project)
          @sqlserver_user_details = args[:sqlserver_user_details] if args.key?(:sqlserver_user_details)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # User level password validation policy.
      class UserPasswordValidationPolicy
        include Google::Apis::Core::Hashable
      
        # Number of failed login attempts allowed before user get locked.
        # Corresponds to the JSON property `allowedFailedAttempts`
        # @return [Fixnum]
        attr_accessor :allowed_failed_attempts
      
        # If true, failed login attempts check will be enabled.
        # Corresponds to the JSON property `enableFailedAttemptsCheck`
        # @return [Boolean]
        attr_accessor :enable_failed_attempts_check
        alias_method :enable_failed_attempts_check?, :enable_failed_attempts_check
      
        # If true, the user must specify the current password before changing the
        # password. This flag is supported only for MySQL.
        # Corresponds to the JSON property `enablePasswordVerification`
        # @return [Boolean]
        attr_accessor :enable_password_verification
        alias_method :enable_password_verification?, :enable_password_verification
      
        # Expiration duration after password is updated.
        # Corresponds to the JSON property `passwordExpirationDuration`
        # @return [String]
        attr_accessor :password_expiration_duration
      
        # Read-only password status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SqladminV1::PasswordStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_failed_attempts = args[:allowed_failed_attempts] if args.key?(:allowed_failed_attempts)
          @enable_failed_attempts_check = args[:enable_failed_attempts_check] if args.key?(:enable_failed_attempts_check)
          @enable_password_verification = args[:enable_password_verification] if args.key?(:enable_password_verification)
          @password_expiration_duration = args[:password_expiration_duration] if args.key?(:password_expiration_duration)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # User list response.
      class UsersListResponse
        include Google::Apis::Core::Hashable
      
        # List of user resources in the instance.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::User>]
        attr_accessor :items
      
        # This is always `sql#usersList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Unused.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The cell value of the table.
      class Value
        include Google::Apis::Core::Hashable
      
        # If cell value is null, then this flag will be set to true.
        # Corresponds to the JSON property `nullValue`
        # @return [Boolean]
        attr_accessor :null_value
        alias_method :null_value?, :null_value
      
        # The cell value in string format.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @null_value = args[:null_value] if args.key?(:null_value)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
