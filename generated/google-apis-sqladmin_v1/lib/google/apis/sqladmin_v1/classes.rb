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
        # ietf.org/html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # This is always **sql#aclEntry**.
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
      
      # Database instance backup configuration.
      class BackupConfiguration
        include Google::Apis::Core::Hashable
      
        # We currently only support backup retention by specifying the number of backups
        # we will retain.
        # Corresponds to the JSON property `backupRetentionSettings`
        # @return [Google::Apis::SqladminV1::BackupRetentionSettings]
        attr_accessor :backup_retention_settings
      
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
      
        # This is always **sql#backupConfiguration**.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Location of the backup
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # (Postgres only) Whether point in time recovery is enabled.
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
        # format - **HH:MM**.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The number of days of transaction logs we retain for point in time restore,
        # from 1-7.
        # Corresponds to the JSON property `transactionLogRetentionDays`
        # @return [Fixnum]
        attr_accessor :transaction_log_retention_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_retention_settings = args[:backup_retention_settings] if args.key?(:backup_retention_settings)
          @binary_log_enabled = args[:binary_log_enabled] if args.key?(:binary_log_enabled)
          @enabled = args[:enabled] if args.key?(:enabled)
          @kind = args[:kind] if args.key?(:kind)
          @location = args[:location] if args.key?(:location)
          @point_in_time_recovery_enabled = args[:point_in_time_recovery_enabled] if args.key?(:point_in_time_recovery_enabled)
          @replication_log_archiving_enabled = args[:replication_log_archiving_enabled] if args.key?(:replication_log_archiving_enabled)
          @start_time = args[:start_time] if args.key?(:start_time)
          @transaction_log_retention_days = args[:transaction_log_retention_days] if args.key?(:transaction_log_retention_days)
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
      
      # Connect settings retrieval response.
      class ConnectSettings
        include Google::Apis::Core::Hashable
      
        # **SECOND_GEN**: Cloud SQL database instance. **EXTERNAL**: A database server
        # that is not managed by Google. This property is read-only; use the **tier**
        # property in the **settings** object to determine the database type.
        # Corresponds to the JSON property `backendType`
        # @return [String]
        attr_accessor :backend_type
      
        # The database engine type and version. The **databaseVersion** field cannot be
        # changed after instance creation. MySQL instances: **MYSQL_8_0**, **MYSQL_5_7**
        # (default), or **MYSQL_5_6**. PostgreSQL instances: **POSTGRES_9_6**, **
        # POSTGRES_10**, **POSTGRES_11** or **POSTGRES_12** (default). SQL Server
        # instances: **SQLSERVER_2017_STANDARD** (default), **SQLSERVER_2017_ENTERPRISE**
        # , **SQLSERVER_2017_EXPRESS**, or **SQLSERVER_2017_WEB**.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # The assigned IP addresses for the instance.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # This is always `sql#connectSettings`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1::SslCert]
        attr_accessor :server_ca_cert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_type = args[:backend_type] if args.key?(:backend_type)
          @database_version = args[:database_version] if args.key?(:database_version)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @kind = args[:kind] if args.key?(:kind)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
        end
      end
      
      # Database flags for Cloud SQL instances.
      class DatabaseFlags
        include Google::Apis::Core::Hashable
      
        # The name of the flag. These flags are passed at instance startup, so include
        # both server options and system variables for MySQL. Flags are specified with
        # underscores, not hyphens. For more information, see [Configuring Database
        # Flags](/sql/docs/mysql/flags) in the Cloud SQL documentation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the flag. Booleans are set to **on** for true and **off** for
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
      
        # *SECOND_GEN*: Cloud SQL database instance. *EXTERNAL*: A database server that
        # is not managed by Google. This property is read-only; use the *tier* property
        # in the *settings* object to determine the database type.
        # Corresponds to the JSON property `backendType`
        # @return [String]
        attr_accessor :backend_type
      
        # Connection name of the Cloud SQL instance used in connection strings.
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # The current disk usage of the instance in bytes. This property has been
        # deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used" metric
        # in Cloud Monitoring API instead. Please see this announcement for details.
        # Corresponds to the JSON property `currentDiskSize`
        # @return [Fixnum]
        attr_accessor :current_disk_size
      
        # The database engine type and version. The *databaseVersion* field cannot be
        # changed after instance creation. MySQL instances: *MYSQL_8_0*, *MYSQL_5_7* (
        # default), or *MYSQL_5_6*. PostgreSQL instances: *POSTGRES_9_6*, *POSTGRES_10*,
        # *POSTGRES_11*, *POSTGRES_12*, or *POSTGRES_13* (default). SQL Server instances:
        # *SQLSERVER_2017_STANDARD* (default), *SQLSERVER_2017_ENTERPRISE*, *
        # SQLSERVER_2017_EXPRESS*, or *SQLSERVER_2017_WEB*.
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
      
        # For internal usage only. The encrypted password.
        # Corresponds to the JSON property `encryptedRootPassword`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_root_password
      
        # This field is deprecated and will be removed from a future version of the API.
        # Use the *settings.settingsVersion* field instead.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The name and status of the failover replica. This property is applicable only
        # to Second Generation instances.
        # Corresponds to the JSON property `failoverReplica`
        # @return [Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica]
        attr_accessor :failover_replica
      
        # The Compute Engine zone that the instance is currently serving from. This
        # value could be different from the zone that was specified when the instance
        # was created if the instance has failed over to its secondary zone.
        # Corresponds to the JSON property `gceZone`
        # @return [String]
        attr_accessor :gce_zone
      
        # installed_version stores the current fully resolved database version including
        # minor version such as MySQL_5.6.50
        # Corresponds to the JSON property `installedVersion`
        # @return [String]
        attr_accessor :installed_version
      
        # The instance type. This can be one of the following. *CLOUD_SQL_INSTANCE*: A
        # Cloud SQL instance that is not replicating from a primary instance. *
        # ON_PREMISES_INSTANCE*: An instance running on the customer's premises. *
        # READ_REPLICA_INSTANCE*: A Cloud SQL instance configured as a read-replica.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Uid of the Cloud SQL instance. Used by Pantheon to check instance is created
        # Corresponds to the JSON property `instanceUid`
        # @return [String]
        attr_accessor :instance_uid
      
        # The assigned IP addresses for the instance.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1::IpMapping>]
        attr_accessor :ip_addresses
      
        # The IPv6 address assigned to the instance. (Deprecated) This property was
        # applicable only to First Generation instances.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # This is always *sql#instance*.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Reference to another Cloud SQL instance.
        # Corresponds to the JSON property `masterInstance`
        # @return [Google::Apis::SqladminV1::InstanceReference]
        attr_accessor :master_instance
      
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
      
        # On-premises instance configuration.
        # Corresponds to the JSON property `onPremisesConfiguration`
        # @return [Google::Apis::SqladminV1::OnPremisesConfiguration]
        attr_accessor :on_premises_configuration
      
        # This message wraps up the information written by out-of-disk detection job.
        # Corresponds to the JSON property `outOfDiskReport`
        # @return [Google::Apis::SqladminV1::SqlOutOfDiskReport]
        attr_accessor :out_of_disk_report
      
        # The project ID of the project containing the Cloud SQL instance. The Google
        # apps domain is prefixed if applicable.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The geographical region. Can be *us-central* (*FIRST_GEN* instances only) *us-
        # central1* (*SECOND_GEN* instances only) *asia-east1* or *europe-west1*.
        # Defaults to *us-central* or *us-central1* depending on the instance type. The
        # region cannot be changed after instance creation.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Read-replica configuration for connecting to the primary instance.
        # Corresponds to the JSON property `replicaConfiguration`
        # @return [Google::Apis::SqladminV1::ReplicaConfiguration]
        attr_accessor :replica_configuration
      
        # The replicas of the instance.
        # Corresponds to the JSON property `replicaInstances`
        # @return [Array<Google::Apis::SqladminV1::InstanceReference>]
        attr_accessor :replica_instances
      
        # The replicas of the instance.
        # Corresponds to the JSON property `replicaNames`
        # @return [Array<String>]
        attr_accessor :replica_names
      
        # Initial root password. Use only on creation.
        # Corresponds to the JSON property `rootPassword`
        # @return [String]
        attr_accessor :root_password
      
        # The status indicating if instance satisfiesPzs. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Any scheduled maintenancce for this instance.
        # Corresponds to the JSON property `scheduledMaintenance`
        # @return [Google::Apis::SqladminV1::SqlScheduledMaintenance]
        attr_accessor :scheduled_maintenance
      
        # The Compute Engine zone that the failover instance is currently serving from
        # for a regional instance. This value could be different from the zone that was
        # specified when the instance was created if the instance has failed over to its
        # secondary/failover zone. Reserved for future use.
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
      
        # The service account email address assigned to the instance. This property is
        # read-only.
        # Corresponds to the JSON property `serviceAccountEmailAddress`
        # @return [String]
        attr_accessor :service_account_email_address
      
        # Database instance settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::SqladminV1::Settings]
        attr_accessor :settings
      
        # The current serving state of the Cloud SQL instance. This can be one of the
        # following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The state of the instance is
        # unknown. *RUNNABLE*: The instance is running, or has been stopped by owner. *
        # SUSPENDED*: The instance is not available, for example due to problems with
        # billing. *PENDING_DELETE*: The instance is being deleted. *PENDING_CREATE*:
        # The instance is being created. *MAINTENANCE*: The instance is down for
        # maintenance. *FAILED*: The instance creation failed.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # If the instance state is SUSPENDED, the reason for the suspension.
        # Corresponds to the JSON property `suspensionReason`
        # @return [Array<String>]
        attr_accessor :suspension_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_type = args[:backend_type] if args.key?(:backend_type)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @current_disk_size = args[:current_disk_size] if args.key?(:current_disk_size)
          @database_version = args[:database_version] if args.key?(:database_version)
          @disk_encryption_configuration = args[:disk_encryption_configuration] if args.key?(:disk_encryption_configuration)
          @disk_encryption_status = args[:disk_encryption_status] if args.key?(:disk_encryption_status)
          @encrypted_root_password = args[:encrypted_root_password] if args.key?(:encrypted_root_password)
          @etag = args[:etag] if args.key?(:etag)
          @failover_replica = args[:failover_replica] if args.key?(:failover_replica)
          @gce_zone = args[:gce_zone] if args.key?(:gce_zone)
          @installed_version = args[:installed_version] if args.key?(:installed_version)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @instance_uid = args[:instance_uid] if args.key?(:instance_uid)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @kind = args[:kind] if args.key?(:kind)
          @master_instance = args[:master_instance] if args.key?(:master_instance)
          @master_instance_name = args[:master_instance_name] if args.key?(:master_instance_name)
          @max_disk_size = args[:max_disk_size] if args.key?(:max_disk_size)
          @name = args[:name] if args.key?(:name)
          @on_premises_configuration = args[:on_premises_configuration] if args.key?(:on_premises_configuration)
          @out_of_disk_report = args[:out_of_disk_report] if args.key?(:out_of_disk_report)
          @project = args[:project] if args.key?(:project)
          @region = args[:region] if args.key?(:region)
          @replica_configuration = args[:replica_configuration] if args.key?(:replica_configuration)
          @replica_instances = args[:replica_instances] if args.key?(:replica_instances)
          @replica_names = args[:replica_names] if args.key?(:replica_names)
          @root_password = args[:root_password] if args.key?(:root_password)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @scheduled_maintenance = args[:scheduled_maintenance] if args.key?(:scheduled_maintenance)
          @secondary_gce_zone = args[:secondary_gce_zone] if args.key?(:secondary_gce_zone)
          @self_link = args[:self_link] if args.key?(:self_link)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
          @service_account_email_address = args[:service_account_email_address] if args.key?(:service_account_email_address)
          @settings = args[:settings] if args.key?(:settings)
          @state = args[:state] if args.key?(:state)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
        end
        
        # The name and status of the failover replica. This property is applicable only
        # to Second Generation instances.
        class FailoverReplica
          include Google::Apis::Core::Hashable
        
          # The availability status of the failover replica. A false status indicates that
          # the failover replica is out of sync. The primary instance can only failover to
          # the failover replica when the status is true.
          # Corresponds to the JSON property `available`
          # @return [Boolean]
          attr_accessor :available
          alias_method :available?, :available
        
          # Reference to another Cloud SQL instance.
          # Corresponds to the JSON property `failoverInstance`
          # @return [Google::Apis::SqladminV1::InstanceReference]
          attr_accessor :failover_instance
        
          # The name of the failover replica. If specified at instance creation, a
          # failover replica is created for the instance. The name doesn't include the
          # project ID. This property is applicable only to Second Generation instances.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @available = args[:available] if args.key?(:available)
            @failover_instance = args[:failover_instance] if args.key?(:failover_instance)
            @name = args[:name] if args.key?(:name)
          end
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
        # the year of the end date also must be empty. In this case, it means the no
        # maintenance interval recurs every year. The date is in format yyyy-mm-dd i.e.,
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
      
        # This is always **sql#diskEncryptionConfiguration**.
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
      
        # This is always **sql#diskEncryptionStatus**.
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @public_key = args[:public_key] if args.key?(:public_key)
          @read_time = args[:read_time] if args.key?(:read_time)
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
      
      # Insights configuration. This specifies when Cloud SQL Insights feature is
      # enabled and optional configuration.
      class InsightsConfig
        include Google::Apis::Core::Hashable
      
        # Whether Query Insights feature is enabled.
        # Corresponds to the JSON property `queryInsightsEnabled`
        # @return [Boolean]
        attr_accessor :query_insights_enabled
        alias_method :query_insights_enabled?, :query_insights_enabled
      
        # Number of query plans generated by Insights per minute. Default is 5. Changing
        # this will restart the database.
        # Corresponds to the JSON property `queryPlansPerMinute`
        # @return [Fixnum]
        attr_accessor :query_plans_per_minute
      
        # Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-
        # 4500 bytes. Query length more than this field value will be truncated to this
        # value. When unset, query length will be the default value. Changing query
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
      
        # The name of the Cloud SQL instance being referenced.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Database instances list response.
      class InstancesListResponse
        include Google::Apis::Core::Hashable
      
        # List of database instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1::DatabaseInstance>]
        attr_accessor :items
      
        # This is always *sql#instancesList*.
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
      
      # IP Management configuration.
      class IpConfiguration
        include Google::Apis::Core::Hashable
      
        # The list of external networks that are allowed to connect to the instance
        # using the IP. In 'CIDR' notation, also known as 'slash' notation (for example:
        # **192.168.100.0/24**).
        # Corresponds to the JSON property `authorizedNetworks`
        # @return [Array<Google::Apis::SqladminV1::AclEntry>]
        attr_accessor :authorized_networks
      
        # Whether the instance is assigned a public IP address or not.
        # Corresponds to the JSON property `ipv4Enabled`
        # @return [Boolean]
        attr_accessor :ipv4_enabled
        alias_method :ipv4_enabled?, :ipv4_enabled
      
        # The resource link for the VPC network from which the Cloud SQL instance is
        # accessible for private IP. For example, **/projects/myProject/global/networks/
        # default**. This setting can be updated, but it cannot be removed after it is
        # set.
        # Corresponds to the JSON property `privateNetwork`
        # @return [String]
        attr_accessor :private_network
      
        # Whether SSL connections over IP are enforced or not.
        # Corresponds to the JSON property `requireSsl`
        # @return [Boolean]
        attr_accessor :require_ssl
        alias_method :require_ssl?, :require_ssl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_networks = args[:authorized_networks] if args.key?(:authorized_networks)
          @ipv4_enabled = args[:ipv4_enabled] if args.key?(:ipv4_enabled)
          @private_network = args[:private_network] if args.key?(:private_network)
          @require_ssl = args[:require_ssl] if args.key?(:require_ssl)
        end
      end
      
      # Database instance IP Mapping.
      class IpMapping
        include Google::Apis::Core::Hashable
      
        # The IP address assigned.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/
        # html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**. This field is
        # only available when the IP is scheduled to be retired.
        # Corresponds to the JSON property `timeToRetire`
        # @return [String]
        attr_accessor :time_to_retire
      
        # The type of this IP address. A **PRIMARY** address is a public address that
        # can accept incoming connections. A **PRIVATE** address is a private address
        # that can accept incoming connections. An **OUTGOING** address is the source
        # address of connections originating from the instance, if supported.
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
      
      # Preferred location. This specifies where a Cloud SQL instance is located. Note
      # that if the preferred location is not available, the instance will be located
      # as close as possible within the region. Only one location may be specified.
      class LocationPreference
        include Google::Apis::Core::Hashable
      
        # This is always **sql#locationPreference**.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The preferred Compute Engine zone for the secondary/failover (for example: us-
        # central1-a, us-central1-b, etc.). Reserved for future use.
        # Corresponds to the JSON property `secondaryZone`
        # @return [String]
        attr_accessor :secondary_zone
      
        # The preferred Compute Engine zone (for example: us-central1-a, us-central1-b,
        # etc.).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @secondary_zone = args[:secondary_zone] if args.key?(:secondary_zone)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Maintenance window. This specifies when a Cloud SQL instance is restarted for
      # system maintenance purposes.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # day of week (1-7), starting on Monday.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # hour of day - 0 to 23.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # This is always **sql#maintenanceWindow**.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Maintenance timing setting: **canary** (Earlier) or **stable** (Later). [Learn
        # more] (https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instance-
        # settings#maintenance-timing-2ndgen).
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
      
        # PEM representation of the replica's private key. The corresponsing public key
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
      
        # This is always **sql#mysqlReplicaConfiguration**.
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
      
        # PEM representation of the replica's private key. The corresponsing public key
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
      
        # This is always *sql#onPremisesConfiguration*.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The password for connecting to on-premises instance.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
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
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Read-replica configuration for connecting to the primary instance.
      class ReplicaConfiguration
        include Google::Apis::Core::Hashable
      
        # Specifies if the replica is the failover target. If the field is set to *true*
        # the replica will be designated as a failover replica. In case the primary
        # instance fails, the replica instance will be promoted as the new primary
        # instance. Only one replica can be specified as failover target, and the
        # replica has to be in different zone with the primary instance.
        # Corresponds to the JSON property `failoverTarget`
        # @return [Boolean]
        attr_accessor :failover_target
        alias_method :failover_target?, :failover_target
      
        # This is always *sql#replicaConfiguration*.
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
          @failover_target = args[:failover_target] if args.key?(:failover_target)
          @kind = args[:kind] if args.key?(:kind)
          @mysql_replica_configuration = args[:mysql_replica_configuration] if args.key?(:mysql_replica_configuration)
        end
      end
      
      # Database instance settings.
      class Settings
        include Google::Apis::Core::Hashable
      
        # The activation policy specifies when the instance is activated; it is
        # applicable only when the instance state is RUNNABLE. Valid values: **ALWAYS**:
        # The instance is on, and remains so even in the absence of connection requests.
        # **NEVER**: The instance is off; it is not activated, even if a connection
        # request arrives.
        # Corresponds to the JSON property `activationPolicy`
        # @return [String]
        attr_accessor :activation_policy
      
        # Active Directory configuration, relevant only for Cloud SQL for SQL Server.
        # Corresponds to the JSON property `activeDirectoryConfig`
        # @return [Google::Apis::SqladminV1::SqlActiveDirectoryConfig]
        attr_accessor :active_directory_config
      
        # Availability type. Potential values: **ZONAL**: The instance serves data from
        # only one zone. Outages in that zone affect data accessibility. **REGIONAL**:
        # The instance can serve data from more than one zone in a region (it is highly
        # available). For more information, see [Overview of the High Availability
        # Configuration](/sql/docs/postgres/high-availability).
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
      
        # Configuration specific to read replica instances. Indicates whether database
        # flags for crash-safe replication are enabled. This property was only
        # applicable to First Generation instances.
        # Corresponds to the JSON property `crashSafeReplicationEnabled`
        # @return [Boolean]
        attr_accessor :crash_safe_replication_enabled
        alias_method :crash_safe_replication_enabled?, :crash_safe_replication_enabled
      
        # The size of data disk, in GB. The data disk size minimum is 10GB.
        # Corresponds to the JSON property `dataDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :data_disk_size_gb
      
        # The type of data disk: **PD_SSD** (default) or **PD_HDD**.
        # Corresponds to the JSON property `dataDiskType`
        # @return [String]
        attr_accessor :data_disk_type
      
        # The database flags passed to the instance at startup.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Array<Google::Apis::SqladminV1::DatabaseFlags>]
        attr_accessor :database_flags
      
        # Configuration specific to read replica instances. Indicates whether
        # replication is enabled or not.
        # Corresponds to the JSON property `databaseReplicationEnabled`
        # @return [Boolean]
        attr_accessor :database_replication_enabled
        alias_method :database_replication_enabled?, :database_replication_enabled
      
        # Deny maintenance periods
        # Corresponds to the JSON property `denyMaintenancePeriods`
        # @return [Array<Google::Apis::SqladminV1::DenyMaintenancePeriod>]
        attr_accessor :deny_maintenance_periods
      
        # Insights configuration. This specifies when Cloud SQL Insights feature is
        # enabled and optional configuration.
        # Corresponds to the JSON property `insightsConfig`
        # @return [Google::Apis::SqladminV1::InsightsConfig]
        attr_accessor :insights_config
      
        # IP Management configuration.
        # Corresponds to the JSON property `ipConfiguration`
        # @return [Google::Apis::SqladminV1::IpConfiguration]
        attr_accessor :ip_configuration
      
        # This is always **sql#settings**.
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
      
        # The pricing plan for this instance. This can be either **PER_USE** or **
        # PACKAGE**. Only **PER_USE** is supported for Second Generation instances.
        # Corresponds to the JSON property `pricingPlan`
        # @return [String]
        attr_accessor :pricing_plan
      
        # The type of replication this instance uses. This can be either **ASYNCHRONOUS**
        # or **SYNCHRONOUS**. (Deprecated) This property was only applicable to First
        # Generation instances.
        # Corresponds to the JSON property `replicationType`
        # @return [String]
        attr_accessor :replication_type
      
        # The version of instance settings. This is a required field for update method
        # to make sure concurrent updates are handled properly. During update, use the
        # most recent settingsVersion value for this instance and do not try to update
        # this value.
        # Corresponds to the JSON property `settingsVersion`
        # @return [Fixnum]
        attr_accessor :settings_version
      
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
      
        # The tier (or machine type) for this instance, for example **db-custom-1-3840**.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
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
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @collation = args[:collation] if args.key?(:collation)
          @crash_safe_replication_enabled = args[:crash_safe_replication_enabled] if args.key?(:crash_safe_replication_enabled)
          @data_disk_size_gb = args[:data_disk_size_gb] if args.key?(:data_disk_size_gb)
          @data_disk_type = args[:data_disk_type] if args.key?(:data_disk_type)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @database_replication_enabled = args[:database_replication_enabled] if args.key?(:database_replication_enabled)
          @deny_maintenance_periods = args[:deny_maintenance_periods] if args.key?(:deny_maintenance_periods)
          @insights_config = args[:insights_config] if args.key?(:insights_config)
          @ip_configuration = args[:ip_configuration] if args.key?(:ip_configuration)
          @kind = args[:kind] if args.key?(:kind)
          @location_preference = args[:location_preference] if args.key?(:location_preference)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @pricing_plan = args[:pricing_plan] if args.key?(:pricing_plan)
          @replication_type = args[:replication_type] if args.key?(:replication_type)
          @settings_version = args[:settings_version] if args.key?(:settings_version)
          @storage_auto_resize = args[:storage_auto_resize] if args.key?(:storage_auto_resize)
          @storage_auto_resize_limit = args[:storage_auto_resize_limit] if args.key?(:storage_auto_resize_limit)
          @tier = args[:tier] if args.key?(:tier)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Active Directory configuration, relevant only for Cloud SQL for SQL Server.
      class SqlActiveDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # The name of the domain (e.g., mydomain.com).
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # This is always sql#activeDirectoryConfig.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # This message wraps up the information written by out-of-disk detection job.
      class SqlOutOfDiskReport
        include Google::Apis::Core::Hashable
      
        # The minimum recommended increase size in GigaBytes This field is consumed by
        # the frontend Writers: -- the proactive database wellness job for OOD. Readers:
        # -- the Pantheon frontend
        # Corresponds to the JSON property `sqlMinRecommendedIncreaseSizeGb`
        # @return [Fixnum]
        attr_accessor :sql_min_recommended_increase_size_gb
      
        # This field represents the state generated by the proactive database wellness
        # job for OutOfDisk issues. Writers: -- the proactive database wellness job for
        # OOD. Readers: -- the Pantheon frontend -- the proactive database wellness job
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
      
      # Any scheduled maintenancce for this instance.
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
        # html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when the certificate expires in [RFC 3339](https://tools.ietf.org/
        # html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always sql#sslCert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
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
          @sha1_fingerprint = args[:sha1_fingerprint] if args.key?(:sha1_fingerprint)
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
    end
  end
end
