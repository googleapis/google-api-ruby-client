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
    module OracledatabaseV1
      
      # A list of all connection strings that can be used to connect to the Autonomous
      # Database.
      class AllConnectionStrings
        include Google::Apis::Core::Hashable
      
        # Output only. The database service provides the highest level of resources to
        # each SQL statement.
        # Corresponds to the JSON property `high`
        # @return [String]
        attr_accessor :high
      
        # Output only. The database service provides the least level of resources to
        # each SQL statement.
        # Corresponds to the JSON property `low`
        # @return [String]
        attr_accessor :low
      
        # Output only. The database service provides a lower level of resources to each
        # SQL statement.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
          @medium = args[:medium] if args.key?(:medium)
        end
      end
      
      # Details of the Autonomous Database resource. https://docs.oracle.com/en-us/
      # iaas/api/#/en/database/20160918/AutonomousDatabase/
      class AutonomousDatabase
        include Google::Apis::Core::Hashable
      
        # Optional. The password for the default ADMIN user.
        # Corresponds to the JSON property `adminPassword`
        # @return [String]
        attr_accessor :admin_password
      
        # Required. The subnet CIDR range for the Autonmous Database.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # Output only. The date and time that the Autonomous Database was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The name of the Autonomous Database. The database name must be
        # unique in the project. The name must begin with a letter and can contain a
        # maximum of 30 alphanumeric characters.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Optional. The display name for the Autonomous Database. The name does not have
        # to be unique within your project.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The ID of the subscription entitlement associated with the
        # Autonomous Database.
        # Corresponds to the JSON property `entitlementId`
        # @return [String]
        attr_accessor :entitlement_id
      
        # Optional. The labels or tags associated with the Autonomous Database.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the Autonomous Database resource in the following
        # format: projects/`project`/locations/`region`/autonomousDatabases/`
        # autonomous_database`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name of the VPC network used by the Autonomous Database. Format:
        # projects/`project`/global/networks/`network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The properties of an Autonomous Database.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_password = args[:admin_password] if args.key?(:admin_password)
          @cidr = args[:cidr] if args.key?(:cidr)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database = args[:database] if args.key?(:database)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entitlement_id = args[:entitlement_id] if args.key?(:entitlement_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Oracle APEX Application Development. https://docs.oracle.com/en-us/iaas/api/#/
      # en/database/20160918/datatypes/AutonomousDatabaseApex
      class AutonomousDatabaseApex
        include Google::Apis::Core::Hashable
      
        # Output only. The Oracle APEX Application Development version.
        # Corresponds to the JSON property `apexVersion`
        # @return [String]
        attr_accessor :apex_version
      
        # Output only. The Oracle REST Data Services (ORDS) version.
        # Corresponds to the JSON property `ordsVersion`
        # @return [String]
        attr_accessor :ords_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apex_version = args[:apex_version] if args.key?(:apex_version)
          @ords_version = args[:ords_version] if args.key?(:ords_version)
        end
      end
      
      # Details of the Autonomous Database Backup resource. https://docs.oracle.com/en-
      # us/iaas/api/#/en/database/20160918/AutonomousDatabaseBackup/
      class AutonomousDatabaseBackup
        include Google::Apis::Core::Hashable
      
        # Required. The name of the Autonomous Database resource for which the backup is
        # being created. Format: projects/`project`/locations/`region`/
        # autonomousDatabases/`autonomous_database`
        # Corresponds to the JSON property `autonomousDatabase`
        # @return [String]
        attr_accessor :autonomous_database
      
        # Optional. User friendly name for the Backup. The name does not have to be
        # unique.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. labels or tags associated with the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the Autonomous Database Backup resource with the
        # format: projects/`project`/locations/`region`/autonomousDatabaseBackups/`
        # autonomous_database_backup`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Properties of the Autonomous Database Backup resource.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseBackupProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_database = args[:autonomous_database] if args.key?(:autonomous_database)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Properties of the Autonomous Database Backup resource.
      class AutonomousDatabaseBackupProperties
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp until when the backup will be available.
        # Corresponds to the JSON property `availableTillTime`
        # @return [String]
        attr_accessor :available_till_time
      
        # Output only. The OCID of the compartment.
        # Corresponds to the JSON property `compartmentId`
        # @return [String]
        attr_accessor :compartment_id
      
        # Output only. The quantity of data in the database, in terabytes.
        # Corresponds to the JSON property `databaseSizeTb`
        # @return [Float]
        attr_accessor :database_size_tb
      
        # Output only. A valid Oracle Database version for Autonomous Database.
        # Corresponds to the JSON property `dbVersion`
        # @return [String]
        attr_accessor :db_version
      
        # Output only. The date and time the backup completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Indicates if the backup is automatic or user initiated.
        # Corresponds to the JSON property `isAutomaticBackup`
        # @return [Boolean]
        attr_accessor :is_automatic_backup
        alias_method :is_automatic_backup?, :is_automatic_backup
      
        # Output only. Indicates if the backup is long term backup.
        # Corresponds to the JSON property `isLongTermBackup`
        # @return [Boolean]
        attr_accessor :is_long_term_backup
        alias_method :is_long_term_backup?, :is_long_term_backup
      
        # Output only. Indicates if the backup can be used to restore the Autonomous
        # Database.
        # Corresponds to the JSON property `isRestorable`
        # @return [Boolean]
        attr_accessor :is_restorable
        alias_method :is_restorable?, :is_restorable
      
        # Optional. The OCID of the key store of Oracle Vault.
        # Corresponds to the JSON property `keyStoreId`
        # @return [String]
        attr_accessor :key_store_id
      
        # Optional. The wallet name for Oracle Key Vault.
        # Corresponds to the JSON property `keyStoreWallet`
        # @return [String]
        attr_accessor :key_store_wallet
      
        # Optional. The OCID of the key container that is used as the master encryption
        # key in database transparent data encryption (TDE) operations.
        # Corresponds to the JSON property `kmsKeyId`
        # @return [String]
        attr_accessor :kms_key_id
      
        # Optional. The OCID of the key container version that is used in database
        # transparent data encryption (TDE) operations KMS Key can have multiple key
        # versions. If none is specified, the current key version (latest) of the Key Id
        # is used for the operation. Autonomous Database Serverless does not use key
        # versions, hence is not applicable for Autonomous Database Serverless instances.
        # Corresponds to the JSON property `kmsKeyVersionId`
        # @return [String]
        attr_accessor :kms_key_version_id
      
        # Output only. Additional information about the current lifecycle state.
        # Corresponds to the JSON property `lifecycleDetails`
        # @return [String]
        attr_accessor :lifecycle_details
      
        # Output only. The lifecycle state of the backup.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Output only. OCID of the Autonomous Database backup. https://docs.oracle.com/
        # en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Optional. Retention period in days for the backup.
        # Corresponds to the JSON property `retentionPeriodDays`
        # @return [Fixnum]
        attr_accessor :retention_period_days
      
        # Output only. The backup size in terabytes.
        # Corresponds to the JSON property `sizeTb`
        # @return [Float]
        attr_accessor :size_tb
      
        # Output only. The date and time the backup started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The type of the backup.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. The OCID of the vault.
        # Corresponds to the JSON property `vaultId`
        # @return [String]
        attr_accessor :vault_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_till_time = args[:available_till_time] if args.key?(:available_till_time)
          @compartment_id = args[:compartment_id] if args.key?(:compartment_id)
          @database_size_tb = args[:database_size_tb] if args.key?(:database_size_tb)
          @db_version = args[:db_version] if args.key?(:db_version)
          @end_time = args[:end_time] if args.key?(:end_time)
          @is_automatic_backup = args[:is_automatic_backup] if args.key?(:is_automatic_backup)
          @is_long_term_backup = args[:is_long_term_backup] if args.key?(:is_long_term_backup)
          @is_restorable = args[:is_restorable] if args.key?(:is_restorable)
          @key_store_id = args[:key_store_id] if args.key?(:key_store_id)
          @key_store_wallet = args[:key_store_wallet] if args.key?(:key_store_wallet)
          @kms_key_id = args[:kms_key_id] if args.key?(:kms_key_id)
          @kms_key_version_id = args[:kms_key_version_id] if args.key?(:kms_key_version_id)
          @lifecycle_details = args[:lifecycle_details] if args.key?(:lifecycle_details)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @ocid = args[:ocid] if args.key?(:ocid)
          @retention_period_days = args[:retention_period_days] if args.key?(:retention_period_days)
          @size_tb = args[:size_tb] if args.key?(:size_tb)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
          @vault_id = args[:vault_id] if args.key?(:vault_id)
        end
      end
      
      # Details of the Autonomous Database character set resource. https://docs.oracle.
      # com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseCharacterSets/
      class AutonomousDatabaseCharacterSet
        include Google::Apis::Core::Hashable
      
        # Output only. The character set name for the Autonomous Database which is the
        # ID in the resource name.
        # Corresponds to the JSON property `characterSet`
        # @return [String]
        attr_accessor :character_set
      
        # Output only. The character set type for the Autonomous Database.
        # Corresponds to the JSON property `characterSetType`
        # @return [String]
        attr_accessor :character_set_type
      
        # Identifier. The name of the Autonomous Database Character Set resource in the
        # following format: projects/`project`/locations/`region`/
        # autonomousDatabaseCharacterSets/`autonomous_database_character_set`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @character_set = args[:character_set] if args.key?(:character_set)
          @character_set_type = args[:character_set_type] if args.key?(:character_set_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The connection string used to connect to the Autonomous Database. https://docs.
      # oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/
      # AutonomousDatabaseConnectionStrings
      class AutonomousDatabaseConnectionStrings
        include Google::Apis::Core::Hashable
      
        # A list of all connection strings that can be used to connect to the Autonomous
        # Database.
        # Corresponds to the JSON property `allConnectionStrings`
        # @return [Google::Apis::OracledatabaseV1::AllConnectionStrings]
        attr_accessor :all_connection_strings
      
        # Output only. The database service provides the least level of resources to
        # each SQL statement, but supports the most number of concurrent SQL statements.
        # Corresponds to the JSON property `dedicated`
        # @return [String]
        attr_accessor :dedicated
      
        # Output only. The database service provides the highest level of resources to
        # each SQL statement.
        # Corresponds to the JSON property `high`
        # @return [String]
        attr_accessor :high
      
        # Output only. The database service provides the least level of resources to
        # each SQL statement.
        # Corresponds to the JSON property `low`
        # @return [String]
        attr_accessor :low
      
        # Output only. The database service provides a lower level of resources to each
        # SQL statement.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Output only. A list of connection string profiles to allow clients to group,
        # filter, and select values based on the structured metadata.
        # Corresponds to the JSON property `profiles`
        # @return [Array<Google::Apis::OracledatabaseV1::DatabaseConnectionStringProfile>]
        attr_accessor :profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_connection_strings = args[:all_connection_strings] if args.key?(:all_connection_strings)
          @dedicated = args[:dedicated] if args.key?(:dedicated)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
          @medium = args[:medium] if args.key?(:medium)
          @profiles = args[:profiles] if args.key?(:profiles)
        end
      end
      
      # The URLs for accessing Oracle Application Express (APEX) and SQL Developer Web
      # with a browser from a Compute instance. https://docs.oracle.com/en-us/iaas/api/
      # #/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
      class AutonomousDatabaseConnectionUrls
        include Google::Apis::Core::Hashable
      
        # Output only. Oracle Application Express (APEX) URL.
        # Corresponds to the JSON property `apexUri`
        # @return [String]
        attr_accessor :apex_uri
      
        # Output only. The URL of the Database Transforms for the Autonomous Database.
        # Corresponds to the JSON property `databaseTransformsUri`
        # @return [String]
        attr_accessor :database_transforms_uri
      
        # Output only. The URL of the Graph Studio for the Autonomous Database.
        # Corresponds to the JSON property `graphStudioUri`
        # @return [String]
        attr_accessor :graph_studio_uri
      
        # Output only. The URL of the Oracle Machine Learning (OML) Notebook for the
        # Autonomous Database.
        # Corresponds to the JSON property `machineLearningNotebookUri`
        # @return [String]
        attr_accessor :machine_learning_notebook_uri
      
        # Output only. The URL of Machine Learning user management the Autonomous
        # Database.
        # Corresponds to the JSON property `machineLearningUserManagementUri`
        # @return [String]
        attr_accessor :machine_learning_user_management_uri
      
        # Output only. The URL of the MongoDB API for the Autonomous Database.
        # Corresponds to the JSON property `mongoDbUri`
        # @return [String]
        attr_accessor :mongo_db_uri
      
        # Output only. The Oracle REST Data Services (ORDS) URL of the Web Access for
        # the Autonomous Database.
        # Corresponds to the JSON property `ordsUri`
        # @return [String]
        attr_accessor :ords_uri
      
        # Output only. The URL of the Oracle SQL Developer Web for the Autonomous
        # Database.
        # Corresponds to the JSON property `sqlDevWebUri`
        # @return [String]
        attr_accessor :sql_dev_web_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apex_uri = args[:apex_uri] if args.key?(:apex_uri)
          @database_transforms_uri = args[:database_transforms_uri] if args.key?(:database_transforms_uri)
          @graph_studio_uri = args[:graph_studio_uri] if args.key?(:graph_studio_uri)
          @machine_learning_notebook_uri = args[:machine_learning_notebook_uri] if args.key?(:machine_learning_notebook_uri)
          @machine_learning_user_management_uri = args[:machine_learning_user_management_uri] if args.key?(:machine_learning_user_management_uri)
          @mongo_db_uri = args[:mongo_db_uri] if args.key?(:mongo_db_uri)
          @ords_uri = args[:ords_uri] if args.key?(:ords_uri)
          @sql_dev_web_uri = args[:sql_dev_web_uri] if args.key?(:sql_dev_web_uri)
        end
      end
      
      # The properties of an Autonomous Database.
      class AutonomousDatabaseProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The amount of storage currently being used for user and system
        # data, in terabytes.
        # Corresponds to the JSON property `actualUsedDataStorageSizeTb`
        # @return [Float]
        attr_accessor :actual_used_data_storage_size_tb
      
        # Output only. The amount of storage currently allocated for the database tables
        # and billed for, rounded up in terabytes.
        # Corresponds to the JSON property `allocatedStorageSizeTb`
        # @return [Float]
        attr_accessor :allocated_storage_size_tb
      
        # Oracle APEX Application Development. https://docs.oracle.com/en-us/iaas/api/#/
        # en/database/20160918/datatypes/AutonomousDatabaseApex
        # Corresponds to the JSON property `apexDetails`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseApex]
        attr_accessor :apex_details
      
        # Output only. This field indicates the status of Data Guard and Access control
        # for the Autonomous Database. The field's value is null if Data Guard is
        # disabled or Access Control is disabled. The field's value is TRUE if both Data
        # Guard and Access Control are enabled, and the Autonomous Database is using
        # primary IP access control list (ACL) for standby. The field's value is FALSE
        # if both Data Guard and Access Control are enabled, and the Autonomous Database
        # is using a different IP access control list (ACL) for standby compared to
        # primary.
        # Corresponds to the JSON property `arePrimaryAllowlistedIpsUsed`
        # @return [Boolean]
        attr_accessor :are_primary_allowlisted_ips_used
        alias_method :are_primary_allowlisted_ips_used?, :are_primary_allowlisted_ips_used
      
        # Output only. The Autonomous Container Database OCID.
        # Corresponds to the JSON property `autonomousContainerDatabaseId`
        # @return [String]
        attr_accessor :autonomous_container_database_id
      
        # Output only. The list of available Oracle Database upgrade versions for an
        # Autonomous Database.
        # Corresponds to the JSON property `availableUpgradeVersions`
        # @return [Array<String>]
        attr_accessor :available_upgrade_versions
      
        # Optional. The retention period for the Autonomous Database. This field is
        # specified in days, can range from 1 day to 60 days, and has a default value of
        # 60 days.
        # Corresponds to the JSON property `backupRetentionPeriodDays`
        # @return [Fixnum]
        attr_accessor :backup_retention_period_days
      
        # Optional. The character set for the Autonomous Database. The default is
        # AL32UTF8.
        # Corresponds to the JSON property `characterSet`
        # @return [String]
        attr_accessor :character_set
      
        # Optional. The number of compute servers for the Autonomous Database.
        # Corresponds to the JSON property `computeCount`
        # @return [Float]
        attr_accessor :compute_count
      
        # The connection string used to connect to the Autonomous Database. https://docs.
        # oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/
        # AutonomousDatabaseConnectionStrings
        # Corresponds to the JSON property `connectionStrings`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionStrings]
        attr_accessor :connection_strings
      
        # The URLs for accessing Oracle Application Express (APEX) and SQL Developer Web
        # with a browser from a Compute instance. https://docs.oracle.com/en-us/iaas/api/
        # #/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
        # Corresponds to the JSON property `connectionUrls`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionUrls]
        attr_accessor :connection_urls
      
        # Optional. The number of CPU cores to be made available to the database.
        # Corresponds to the JSON property `cpuCoreCount`
        # @return [Fixnum]
        attr_accessor :cpu_core_count
      
        # Optional. The list of customer contacts.
        # Corresponds to the JSON property `customerContacts`
        # @return [Array<Google::Apis::OracledatabaseV1::CustomerContact>]
        attr_accessor :customer_contacts
      
        # Output only. The current state of the Data Safe registration for the
        # Autonomous Database.
        # Corresponds to the JSON property `dataSafeState`
        # @return [String]
        attr_accessor :data_safe_state
      
        # Optional. The size of the data stored in the database, in gigabytes.
        # Corresponds to the JSON property `dataStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :data_storage_size_gb
      
        # Optional. The size of the data stored in the database, in terabytes.
        # Corresponds to the JSON property `dataStorageSizeTb`
        # @return [Fixnum]
        attr_accessor :data_storage_size_tb
      
        # Output only. The current state of database management for the Autonomous
        # Database.
        # Corresponds to the JSON property `databaseManagementState`
        # @return [String]
        attr_accessor :database_management_state
      
        # Optional. The edition of the Autonomous Databases.
        # Corresponds to the JSON property `dbEdition`
        # @return [String]
        attr_accessor :db_edition
      
        # Optional. The Oracle Database version for the Autonomous Database.
        # Corresponds to the JSON property `dbVersion`
        # @return [String]
        attr_accessor :db_version
      
        # Required. The workload type of the Autonomous Database.
        # Corresponds to the JSON property `dbWorkload`
        # @return [String]
        attr_accessor :db_workload
      
        # Output only. This field indicates the number of seconds of data loss during a
        # Data Guard failover.
        # Corresponds to the JSON property `failedDataRecoveryDuration`
        # @return [String]
        attr_accessor :failed_data_recovery_duration
      
        # Optional. This field indicates if auto scaling is enabled for the Autonomous
        # Database CPU core count.
        # Corresponds to the JSON property `isAutoScalingEnabled`
        # @return [Boolean]
        attr_accessor :is_auto_scaling_enabled
        alias_method :is_auto_scaling_enabled?, :is_auto_scaling_enabled
      
        # Output only. This field indicates whether the Autonomous Database has local (
        # in-region) Data Guard enabled.
        # Corresponds to the JSON property `isLocalDataGuardEnabled`
        # @return [Boolean]
        attr_accessor :is_local_data_guard_enabled
        alias_method :is_local_data_guard_enabled?, :is_local_data_guard_enabled
      
        # Optional. This field indicates if auto scaling is enabled for the Autonomous
        # Database storage.
        # Corresponds to the JSON property `isStorageAutoScalingEnabled`
        # @return [Boolean]
        attr_accessor :is_storage_auto_scaling_enabled
        alias_method :is_storage_auto_scaling_enabled?, :is_storage_auto_scaling_enabled
      
        # Required. The license type used for the Autonomous Database.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # Output only. The details of the current lifestyle state of the Autonomous
        # Database.
        # Corresponds to the JSON property `lifecycleDetails`
        # @return [String]
        attr_accessor :lifecycle_details
      
        # Output only. This field indicates the maximum data loss limit for an
        # Autonomous Database, in seconds.
        # Corresponds to the JSON property `localAdgAutoFailoverMaxDataLossLimit`
        # @return [Fixnum]
        attr_accessor :local_adg_auto_failover_max_data_loss_limit
      
        # Output only. This field indicates the local disaster recovery (DR) type of an
        # Autonomous Database.
        # Corresponds to the JSON property `localDisasterRecoveryType`
        # @return [String]
        attr_accessor :local_disaster_recovery_type
      
        # Autonomous Data Guard standby database details. https://docs.oracle.com/en-us/
        # iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
        # Corresponds to the JSON property `localStandbyDb`
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabaseStandbySummary]
        attr_accessor :local_standby_db
      
        # Output only. The date and time when maintenance will begin.
        # Corresponds to the JSON property `maintenanceBeginTime`
        # @return [String]
        attr_accessor :maintenance_begin_time
      
        # Output only. The date and time when maintenance will end.
        # Corresponds to the JSON property `maintenanceEndTime`
        # @return [String]
        attr_accessor :maintenance_end_time
      
        # Optional. The maintenance schedule of the Autonomous Database.
        # Corresponds to the JSON property `maintenanceScheduleType`
        # @return [String]
        attr_accessor :maintenance_schedule_type
      
        # Output only. The amount of memory enabled per ECPU, in gigabytes.
        # Corresponds to the JSON property `memoryPerOracleComputeUnitGbs`
        # @return [Fixnum]
        attr_accessor :memory_per_oracle_compute_unit_gbs
      
        # Output only. The memory assigned to in-memory tables in an Autonomous Database.
        # Corresponds to the JSON property `memoryTableGbs`
        # @return [Fixnum]
        attr_accessor :memory_table_gbs
      
        # Optional. This field specifies if the Autonomous Database requires mTLS
        # connections.
        # Corresponds to the JSON property `mtlsConnectionRequired`
        # @return [Boolean]
        attr_accessor :mtls_connection_required
        alias_method :mtls_connection_required?, :mtls_connection_required
      
        # Optional. The national character set for the Autonomous Database. The default
        # is AL16UTF16.
        # Corresponds to the JSON property `nCharacterSet`
        # @return [String]
        attr_accessor :n_character_set
      
        # Output only. The long term backup schedule of the Autonomous Database.
        # Corresponds to the JSON property `nextLongTermBackupTime`
        # @return [String]
        attr_accessor :next_long_term_backup_time
      
        # Output only. The Oracle Cloud Infrastructure link for the Autonomous Database.
        # Corresponds to the JSON property `ociUrl`
        # @return [String]
        attr_accessor :oci_url
      
        # Output only. OCID of the Autonomous Database. https://docs.oracle.com/en-us/
        # iaas/Content/General/Concepts/identifiers.htm#Oracle
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Output only. This field indicates the current mode of the Autonomous Database.
        # Corresponds to the JSON property `openMode`
        # @return [String]
        attr_accessor :open_mode
      
        # Output only. This field indicates the state of Operations Insights for the
        # Autonomous Database.
        # Corresponds to the JSON property `operationsInsightsState`
        # @return [String]
        attr_accessor :operations_insights_state
      
        # Output only. The list of OCIDs of standby databases located in Autonomous Data
        # Guard remote regions that are associated with the source database.
        # Corresponds to the JSON property `peerDbIds`
        # @return [Array<String>]
        attr_accessor :peer_db_ids
      
        # Output only. The permission level of the Autonomous Database.
        # Corresponds to the JSON property `permissionLevel`
        # @return [String]
        attr_accessor :permission_level
      
        # Output only. The private endpoint for the Autonomous Database.
        # Corresponds to the JSON property `privateEndpoint`
        # @return [String]
        attr_accessor :private_endpoint
      
        # Optional. The private endpoint IP address for the Autonomous Database.
        # Corresponds to the JSON property `privateEndpointIp`
        # @return [String]
        attr_accessor :private_endpoint_ip
      
        # Optional. The private endpoint label for the Autonomous Database.
        # Corresponds to the JSON property `privateEndpointLabel`
        # @return [String]
        attr_accessor :private_endpoint_label
      
        # Output only. The refresh mode of the cloned Autonomous Database.
        # Corresponds to the JSON property `refreshableMode`
        # @return [String]
        attr_accessor :refreshable_mode
      
        # Output only. The refresh State of the clone.
        # Corresponds to the JSON property `refreshableState`
        # @return [String]
        attr_accessor :refreshable_state
      
        # Output only. The Data Guard role of the Autonomous Database.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Output only. The list and details of the scheduled operations of the
        # Autonomous Database.
        # Corresponds to the JSON property `scheduledOperationDetails`
        # @return [Array<Google::Apis::OracledatabaseV1::ScheduledOperationDetails>]
        attr_accessor :scheduled_operation_details
      
        # Optional. The ID of the Oracle Cloud Infrastructure vault secret.
        # Corresponds to the JSON property `secretId`
        # @return [String]
        attr_accessor :secret_id
      
        # Output only. The SQL Web Developer URL for the Autonomous Database.
        # Corresponds to the JSON property `sqlWebDeveloperUrl`
        # @return [String]
        attr_accessor :sql_web_developer_url
      
        # Output only. The current lifecycle state of the Autonomous Database.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The list of available regions that can be used to create a clone
        # for the Autonomous Database.
        # Corresponds to the JSON property `supportedCloneRegions`
        # @return [Array<String>]
        attr_accessor :supported_clone_regions
      
        # Output only. The storage space used by automatic backups of Autonomous
        # Database, in gigabytes.
        # Corresponds to the JSON property `totalAutoBackupStorageSizeGbs`
        # @return [Float]
        attr_accessor :total_auto_backup_storage_size_gbs
      
        # Output only. The storage space used by Autonomous Database, in gigabytes.
        # Corresponds to the JSON property `usedDataStorageSizeTbs`
        # @return [Fixnum]
        attr_accessor :used_data_storage_size_tbs
      
        # Optional. The ID of the Oracle Cloud Infrastructure vault.
        # Corresponds to the JSON property `vaultId`
        # @return [String]
        attr_accessor :vault_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actual_used_data_storage_size_tb = args[:actual_used_data_storage_size_tb] if args.key?(:actual_used_data_storage_size_tb)
          @allocated_storage_size_tb = args[:allocated_storage_size_tb] if args.key?(:allocated_storage_size_tb)
          @apex_details = args[:apex_details] if args.key?(:apex_details)
          @are_primary_allowlisted_ips_used = args[:are_primary_allowlisted_ips_used] if args.key?(:are_primary_allowlisted_ips_used)
          @autonomous_container_database_id = args[:autonomous_container_database_id] if args.key?(:autonomous_container_database_id)
          @available_upgrade_versions = args[:available_upgrade_versions] if args.key?(:available_upgrade_versions)
          @backup_retention_period_days = args[:backup_retention_period_days] if args.key?(:backup_retention_period_days)
          @character_set = args[:character_set] if args.key?(:character_set)
          @compute_count = args[:compute_count] if args.key?(:compute_count)
          @connection_strings = args[:connection_strings] if args.key?(:connection_strings)
          @connection_urls = args[:connection_urls] if args.key?(:connection_urls)
          @cpu_core_count = args[:cpu_core_count] if args.key?(:cpu_core_count)
          @customer_contacts = args[:customer_contacts] if args.key?(:customer_contacts)
          @data_safe_state = args[:data_safe_state] if args.key?(:data_safe_state)
          @data_storage_size_gb = args[:data_storage_size_gb] if args.key?(:data_storage_size_gb)
          @data_storage_size_tb = args[:data_storage_size_tb] if args.key?(:data_storage_size_tb)
          @database_management_state = args[:database_management_state] if args.key?(:database_management_state)
          @db_edition = args[:db_edition] if args.key?(:db_edition)
          @db_version = args[:db_version] if args.key?(:db_version)
          @db_workload = args[:db_workload] if args.key?(:db_workload)
          @failed_data_recovery_duration = args[:failed_data_recovery_duration] if args.key?(:failed_data_recovery_duration)
          @is_auto_scaling_enabled = args[:is_auto_scaling_enabled] if args.key?(:is_auto_scaling_enabled)
          @is_local_data_guard_enabled = args[:is_local_data_guard_enabled] if args.key?(:is_local_data_guard_enabled)
          @is_storage_auto_scaling_enabled = args[:is_storage_auto_scaling_enabled] if args.key?(:is_storage_auto_scaling_enabled)
          @license_type = args[:license_type] if args.key?(:license_type)
          @lifecycle_details = args[:lifecycle_details] if args.key?(:lifecycle_details)
          @local_adg_auto_failover_max_data_loss_limit = args[:local_adg_auto_failover_max_data_loss_limit] if args.key?(:local_adg_auto_failover_max_data_loss_limit)
          @local_disaster_recovery_type = args[:local_disaster_recovery_type] if args.key?(:local_disaster_recovery_type)
          @local_standby_db = args[:local_standby_db] if args.key?(:local_standby_db)
          @maintenance_begin_time = args[:maintenance_begin_time] if args.key?(:maintenance_begin_time)
          @maintenance_end_time = args[:maintenance_end_time] if args.key?(:maintenance_end_time)
          @maintenance_schedule_type = args[:maintenance_schedule_type] if args.key?(:maintenance_schedule_type)
          @memory_per_oracle_compute_unit_gbs = args[:memory_per_oracle_compute_unit_gbs] if args.key?(:memory_per_oracle_compute_unit_gbs)
          @memory_table_gbs = args[:memory_table_gbs] if args.key?(:memory_table_gbs)
          @mtls_connection_required = args[:mtls_connection_required] if args.key?(:mtls_connection_required)
          @n_character_set = args[:n_character_set] if args.key?(:n_character_set)
          @next_long_term_backup_time = args[:next_long_term_backup_time] if args.key?(:next_long_term_backup_time)
          @oci_url = args[:oci_url] if args.key?(:oci_url)
          @ocid = args[:ocid] if args.key?(:ocid)
          @open_mode = args[:open_mode] if args.key?(:open_mode)
          @operations_insights_state = args[:operations_insights_state] if args.key?(:operations_insights_state)
          @peer_db_ids = args[:peer_db_ids] if args.key?(:peer_db_ids)
          @permission_level = args[:permission_level] if args.key?(:permission_level)
          @private_endpoint = args[:private_endpoint] if args.key?(:private_endpoint)
          @private_endpoint_ip = args[:private_endpoint_ip] if args.key?(:private_endpoint_ip)
          @private_endpoint_label = args[:private_endpoint_label] if args.key?(:private_endpoint_label)
          @refreshable_mode = args[:refreshable_mode] if args.key?(:refreshable_mode)
          @refreshable_state = args[:refreshable_state] if args.key?(:refreshable_state)
          @role = args[:role] if args.key?(:role)
          @scheduled_operation_details = args[:scheduled_operation_details] if args.key?(:scheduled_operation_details)
          @secret_id = args[:secret_id] if args.key?(:secret_id)
          @sql_web_developer_url = args[:sql_web_developer_url] if args.key?(:sql_web_developer_url)
          @state = args[:state] if args.key?(:state)
          @supported_clone_regions = args[:supported_clone_regions] if args.key?(:supported_clone_regions)
          @total_auto_backup_storage_size_gbs = args[:total_auto_backup_storage_size_gbs] if args.key?(:total_auto_backup_storage_size_gbs)
          @used_data_storage_size_tbs = args[:used_data_storage_size_tbs] if args.key?(:used_data_storage_size_tbs)
          @vault_id = args[:vault_id] if args.key?(:vault_id)
        end
      end
      
      # Autonomous Data Guard standby database details. https://docs.oracle.com/en-us/
      # iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
      class AutonomousDatabaseStandbySummary
        include Google::Apis::Core::Hashable
      
        # Output only. The date and time the Autonomous Data Guard role was switched for
        # the standby Autonomous Database.
        # Corresponds to the JSON property `dataGuardRoleChangedTime`
        # @return [String]
        attr_accessor :data_guard_role_changed_time
      
        # Output only. The date and time the Disaster Recovery role was switched for the
        # standby Autonomous Database.
        # Corresponds to the JSON property `disasterRecoveryRoleChangedTime`
        # @return [String]
        attr_accessor :disaster_recovery_role_changed_time
      
        # Output only. The amount of time, in seconds, that the data of the standby
        # database lags in comparison to the data of the primary database.
        # Corresponds to the JSON property `lagTimeDuration`
        # @return [String]
        attr_accessor :lag_time_duration
      
        # Output only. The additional details about the current lifecycle state of the
        # Autonomous Database.
        # Corresponds to the JSON property `lifecycleDetails`
        # @return [String]
        attr_accessor :lifecycle_details
      
        # Output only. The current lifecycle state of the Autonomous Database.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_guard_role_changed_time = args[:data_guard_role_changed_time] if args.key?(:data_guard_role_changed_time)
          @disaster_recovery_role_changed_time = args[:disaster_recovery_role_changed_time] if args.key?(:disaster_recovery_role_changed_time)
          @lag_time_duration = args[:lag_time_duration] if args.key?(:lag_time_duration)
          @lifecycle_details = args[:lifecycle_details] if args.key?(:lifecycle_details)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Details of the Autonomous Database version. https://docs.oracle.com/en-us/iaas/
      # api/#/en/database/20160918/AutonomousDbVersionSummary/
      class AutonomousDbVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The Autonomous Database workload type.
        # Corresponds to the JSON property `dbWorkload`
        # @return [String]
        attr_accessor :db_workload
      
        # Identifier. The name of the Autonomous Database Version resource with the
        # format: projects/`project`/locations/`region`/autonomousDbVersions/`
        # autonomous_db_version`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. An Oracle Database version for Autonomous Database.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Output only. A URL that points to a detailed description of the Autonomous
        # Database version.
        # Corresponds to the JSON property `workloadUri`
        # @return [String]
        attr_accessor :workload_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_workload = args[:db_workload] if args.key?(:db_workload)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
          @workload_uri = args[:workload_uri] if args.key?(:workload_uri)
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
      
      # Details of the OCI Cloud Account.
      class CloudAccountDetails
        include Google::Apis::Core::Hashable
      
        # Output only. URL to create a new account and link.
        # Corresponds to the JSON property `accountCreationUri`
        # @return [String]
        attr_accessor :account_creation_uri
      
        # Output only. OCI account name.
        # Corresponds to the JSON property `cloudAccount`
        # @return [String]
        attr_accessor :cloud_account
      
        # Output only. OCI account home region.
        # Corresponds to the JSON property `cloudAccountHomeRegion`
        # @return [String]
        attr_accessor :cloud_account_home_region
      
        # Output only. URL to link an existing account.
        # Corresponds to the JSON property `linkExistingAccountUri`
        # @return [String]
        attr_accessor :link_existing_account_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_creation_uri = args[:account_creation_uri] if args.key?(:account_creation_uri)
          @cloud_account = args[:cloud_account] if args.key?(:cloud_account)
          @cloud_account_home_region = args[:cloud_account_home_region] if args.key?(:cloud_account_home_region)
          @link_existing_account_uri = args[:link_existing_account_uri] if args.key?(:link_existing_account_uri)
        end
      end
      
      # Represents CloudExadataInfrastructure resource. https://docs.oracle.com/en-us/
      # iaas/api/#/en/database/20160918/CloudExadataInfrastructure/
      class CloudExadataInfrastructure
        include Google::Apis::Core::Hashable
      
        # Output only. The date and time that the Exadata Infrastructure was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User friendly name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Entitlement ID of the private offer against which this
        # infrastructure resource is provisioned.
        # Corresponds to the JSON property `entitlementId`
        # @return [String]
        attr_accessor :entitlement_id
      
        # Optional. GCP location where Oracle Exadata is hosted.
        # Corresponds to the JSON property `gcpOracleZone`
        # @return [String]
        attr_accessor :gcp_oracle_zone
      
        # Optional. Labels or tags associated with the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the Exadata Infrastructure resource with the format:
        # projects/`project`/locations/`region`/cloudExadataInfrastructures/`
        # cloud_exadata_infrastructure`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Various properties of Exadata Infrastructure.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::CloudExadataInfrastructureProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entitlement_id = args[:entitlement_id] if args.key?(:entitlement_id)
          @gcp_oracle_zone = args[:gcp_oracle_zone] if args.key?(:gcp_oracle_zone)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Various properties of Exadata Infrastructure.
      class CloudExadataInfrastructureProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The requested number of additional storage servers activated for
        # the Exadata Infrastructure.
        # Corresponds to the JSON property `activatedStorageCount`
        # @return [Fixnum]
        attr_accessor :activated_storage_count
      
        # Output only. The requested number of additional storage servers for the
        # Exadata Infrastructure.
        # Corresponds to the JSON property `additionalStorageCount`
        # @return [Fixnum]
        attr_accessor :additional_storage_count
      
        # Output only. The available storage can be allocated to the Exadata
        # Infrastructure resource, in gigabytes (GB).
        # Corresponds to the JSON property `availableStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :available_storage_size_gb
      
        # Optional. The number of compute servers for the Exadata Infrastructure.
        # Corresponds to the JSON property `computeCount`
        # @return [Fixnum]
        attr_accessor :compute_count
      
        # Optional. The number of enabled CPU cores.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # Optional. The list of customer contacts.
        # Corresponds to the JSON property `customerContacts`
        # @return [Array<Google::Apis::OracledatabaseV1::CustomerContact>]
        attr_accessor :customer_contacts
      
        # Output only. Size, in terabytes, of the DATA disk group.
        # Corresponds to the JSON property `dataStorageSizeTb`
        # @return [Float]
        attr_accessor :data_storage_size_tb
      
        # Optional. The local node storage allocated in GBs.
        # Corresponds to the JSON property `dbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :db_node_storage_size_gb
      
        # Output only. The software version of the database servers (dom0) in the
        # Exadata Infrastructure.
        # Corresponds to the JSON property `dbServerVersion`
        # @return [String]
        attr_accessor :db_server_version
      
        # Maintenance window as defined by Oracle. https://docs.oracle.com/en-us/iaas/
        # api/#/en/database/20160918/datatypes/MaintenanceWindow
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::OracledatabaseV1::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        # Output only. The total number of CPU cores available.
        # Corresponds to the JSON property `maxCpuCount`
        # @return [Fixnum]
        attr_accessor :max_cpu_count
      
        # Output only. The total available DATA disk group size.
        # Corresponds to the JSON property `maxDataStorageTb`
        # @return [Float]
        attr_accessor :max_data_storage_tb
      
        # Output only. The total local node storage available in GBs.
        # Corresponds to the JSON property `maxDbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :max_db_node_storage_size_gb
      
        # Output only. The total memory available in GBs.
        # Corresponds to the JSON property `maxMemoryGb`
        # @return [Fixnum]
        attr_accessor :max_memory_gb
      
        # Optional. The memory allocated in GBs.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Fixnum]
        attr_accessor :memory_size_gb
      
        # Output only. The monthly software version of the database servers (dom0) in
        # the Exadata Infrastructure. Example: 20.1.15
        # Corresponds to the JSON property `monthlyDbServerVersion`
        # @return [String]
        attr_accessor :monthly_db_server_version
      
        # Output only. The monthly software version of the storage servers (cells) in
        # the Exadata Infrastructure. Example: 20.1.15
        # Corresponds to the JSON property `monthlyStorageServerVersion`
        # @return [String]
        attr_accessor :monthly_storage_server_version
      
        # Output only. The OCID of the next maintenance run.
        # Corresponds to the JSON property `nextMaintenanceRunId`
        # @return [String]
        attr_accessor :next_maintenance_run_id
      
        # Output only. The time when the next maintenance run will occur.
        # Corresponds to the JSON property `nextMaintenanceRunTime`
        # @return [String]
        attr_accessor :next_maintenance_run_time
      
        # Output only. The time when the next security maintenance run will occur.
        # Corresponds to the JSON property `nextSecurityMaintenanceRunTime`
        # @return [String]
        attr_accessor :next_security_maintenance_run_time
      
        # Output only. Deep link to the OCI console to view this resource.
        # Corresponds to the JSON property `ociUrl`
        # @return [String]
        attr_accessor :oci_url
      
        # Output only. OCID of created infra. https://docs.oracle.com/en-us/iaas/Content/
        # General/Concepts/identifiers.htm#Oracle
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Required. The shape of the Exadata Infrastructure. The shape determines the
        # amount of CPU, storage, and memory resources allocated to the instance.
        # Corresponds to the JSON property `shape`
        # @return [String]
        attr_accessor :shape
      
        # Output only. The current lifecycle state of the Exadata Infrastructure.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The number of Cloud Exadata storage servers for the Exadata
        # Infrastructure.
        # Corresponds to the JSON property `storageCount`
        # @return [Fixnum]
        attr_accessor :storage_count
      
        # Output only. The software version of the storage servers (cells) in the
        # Exadata Infrastructure.
        # Corresponds to the JSON property `storageServerVersion`
        # @return [String]
        attr_accessor :storage_server_version
      
        # Optional. The total storage allocated to the Exadata Infrastructure resource,
        # in gigabytes (GB).
        # Corresponds to the JSON property `totalStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :total_storage_size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activated_storage_count = args[:activated_storage_count] if args.key?(:activated_storage_count)
          @additional_storage_count = args[:additional_storage_count] if args.key?(:additional_storage_count)
          @available_storage_size_gb = args[:available_storage_size_gb] if args.key?(:available_storage_size_gb)
          @compute_count = args[:compute_count] if args.key?(:compute_count)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @customer_contacts = args[:customer_contacts] if args.key?(:customer_contacts)
          @data_storage_size_tb = args[:data_storage_size_tb] if args.key?(:data_storage_size_tb)
          @db_node_storage_size_gb = args[:db_node_storage_size_gb] if args.key?(:db_node_storage_size_gb)
          @db_server_version = args[:db_server_version] if args.key?(:db_server_version)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @max_cpu_count = args[:max_cpu_count] if args.key?(:max_cpu_count)
          @max_data_storage_tb = args[:max_data_storage_tb] if args.key?(:max_data_storage_tb)
          @max_db_node_storage_size_gb = args[:max_db_node_storage_size_gb] if args.key?(:max_db_node_storage_size_gb)
          @max_memory_gb = args[:max_memory_gb] if args.key?(:max_memory_gb)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @monthly_db_server_version = args[:monthly_db_server_version] if args.key?(:monthly_db_server_version)
          @monthly_storage_server_version = args[:monthly_storage_server_version] if args.key?(:monthly_storage_server_version)
          @next_maintenance_run_id = args[:next_maintenance_run_id] if args.key?(:next_maintenance_run_id)
          @next_maintenance_run_time = args[:next_maintenance_run_time] if args.key?(:next_maintenance_run_time)
          @next_security_maintenance_run_time = args[:next_security_maintenance_run_time] if args.key?(:next_security_maintenance_run_time)
          @oci_url = args[:oci_url] if args.key?(:oci_url)
          @ocid = args[:ocid] if args.key?(:ocid)
          @shape = args[:shape] if args.key?(:shape)
          @state = args[:state] if args.key?(:state)
          @storage_count = args[:storage_count] if args.key?(:storage_count)
          @storage_server_version = args[:storage_server_version] if args.key?(:storage_server_version)
          @total_storage_size_gb = args[:total_storage_size_gb] if args.key?(:total_storage_size_gb)
        end
      end
      
      # Details of the Cloud VM Cluster resource. https://docs.oracle.com/en-us/iaas/
      # api/#/en/database/20160918/CloudVmCluster/
      class CloudVmCluster
        include Google::Apis::Core::Hashable
      
        # Required. CIDR range of the backup subnet.
        # Corresponds to the JSON property `backupSubnetCidr`
        # @return [String]
        attr_accessor :backup_subnet_cidr
      
        # Required. Network settings. CIDR to use for cluster IP allocation.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # Output only. The date and time that the VM cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User friendly name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The name of the Exadata Infrastructure resource on which VM cluster
        # resource is created, in the following format: projects/`project`/locations/`
        # region`/cloudExadataInfrastuctures/`cloud_extradata_infrastructure`
        # Corresponds to the JSON property `exadataInfrastructure`
        # @return [String]
        attr_accessor :exadata_infrastructure
      
        # Output only. GCP location where Oracle Exadata is hosted. It is same as GCP
        # Oracle zone of Exadata infrastructure.
        # Corresponds to the JSON property `gcpOracleZone`
        # @return [String]
        attr_accessor :gcp_oracle_zone
      
        # Optional. Labels or tags associated with the VM Cluster.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the VM Cluster resource with the format: projects/`
        # project`/locations/`region`/cloudVmClusters/`cloud_vm_cluster`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name of the VPC network. Format: projects/`project`/global/
        # networks/`network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Various properties and settings associated with Exadata VM cluster.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::CloudVmClusterProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_subnet_cidr = args[:backup_subnet_cidr] if args.key?(:backup_subnet_cidr)
          @cidr = args[:cidr] if args.key?(:cidr)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exadata_infrastructure = args[:exadata_infrastructure] if args.key?(:exadata_infrastructure)
          @gcp_oracle_zone = args[:gcp_oracle_zone] if args.key?(:gcp_oracle_zone)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Various properties and settings associated with Exadata VM cluster.
      class CloudVmClusterProperties
        include Google::Apis::Core::Hashable
      
        # Optional. OCI Cluster name.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. Compartment ID of cluster.
        # Corresponds to the JSON property `compartmentId`
        # @return [String]
        attr_accessor :compartment_id
      
        # Required. Number of enabled CPU cores.
        # Corresponds to the JSON property `cpuCoreCount`
        # @return [Fixnum]
        attr_accessor :cpu_core_count
      
        # Optional. The data disk group size to be allocated in TBs.
        # Corresponds to the JSON property `dataStorageSizeTb`
        # @return [Float]
        attr_accessor :data_storage_size_tb
      
        # Optional. Local storage per VM.
        # Corresponds to the JSON property `dbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :db_node_storage_size_gb
      
        # Optional. OCID of database servers.
        # Corresponds to the JSON property `dbServerOcids`
        # @return [Array<String>]
        attr_accessor :db_server_ocids
      
        # Data collection options for diagnostics.
        # Corresponds to the JSON property `diagnosticsDataCollectionOptions`
        # @return [Google::Apis::OracledatabaseV1::DataCollectionOptions]
        attr_accessor :diagnostics_data_collection_options
      
        # Optional. The type of redundancy.
        # Corresponds to the JSON property `diskRedundancy`
        # @return [String]
        attr_accessor :disk_redundancy
      
        # Output only. DNS listener IP.
        # Corresponds to the JSON property `dnsListenerIp`
        # @return [String]
        attr_accessor :dns_listener_ip
      
        # Output only. Parent DNS domain where SCAN DNS and hosts names are qualified.
        # ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Optional. Grid Infrastructure Version.
        # Corresponds to the JSON property `giVersion`
        # @return [String]
        attr_accessor :gi_version
      
        # Output only. host name without domain. format: "-" with some suffix. ex: sp2-
        # yi0xq where "sp2" is the hostname_prefix.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. Prefix for VM cluster host names.
        # Corresponds to the JSON property `hostnamePrefix`
        # @return [String]
        attr_accessor :hostname_prefix
      
        # Required. License type of VM Cluster.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # Optional. Use local backup.
        # Corresponds to the JSON property `localBackupEnabled`
        # @return [Boolean]
        attr_accessor :local_backup_enabled
        alias_method :local_backup_enabled?, :local_backup_enabled
      
        # Optional. Memory allocated in GBs.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Fixnum]
        attr_accessor :memory_size_gb
      
        # Optional. Number of database servers.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Output only. Deep link to the OCI console to view this resource.
        # Corresponds to the JSON property `ociUrl`
        # @return [String]
        attr_accessor :oci_url
      
        # Output only. Oracle Cloud Infrastructure ID of VM Cluster.
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Optional. OCPU count per VM. Minimum is 0.1.
        # Corresponds to the JSON property `ocpuCount`
        # @return [Float]
        attr_accessor :ocpu_count
      
        # Output only. SCAN DNS name. ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.
        # oraclevcn.com
        # Corresponds to the JSON property `scanDns`
        # @return [String]
        attr_accessor :scan_dns
      
        # Output only. OCID of scan DNS record.
        # Corresponds to the JSON property `scanDnsRecordId`
        # @return [String]
        attr_accessor :scan_dns_record_id
      
        # Output only. OCIDs of scan IPs.
        # Corresponds to the JSON property `scanIpIds`
        # @return [Array<String>]
        attr_accessor :scan_ip_ids
      
        # Output only. SCAN listener port - TCP
        # Corresponds to the JSON property `scanListenerPortTcp`
        # @return [Fixnum]
        attr_accessor :scan_listener_port_tcp
      
        # Output only. SCAN listener port - TLS
        # Corresponds to the JSON property `scanListenerPortTcpSsl`
        # @return [Fixnum]
        attr_accessor :scan_listener_port_tcp_ssl
      
        # Output only. Shape of VM Cluster.
        # Corresponds to the JSON property `shape`
        # @return [String]
        attr_accessor :shape
      
        # Optional. Use exadata sparse snapshots.
        # Corresponds to the JSON property `sparseDiskgroupEnabled`
        # @return [Boolean]
        attr_accessor :sparse_diskgroup_enabled
        alias_method :sparse_diskgroup_enabled?, :sparse_diskgroup_enabled
      
        # Optional. SSH public keys to be stored with cluster.
        # Corresponds to the JSON property `sshPublicKeys`
        # @return [Array<String>]
        attr_accessor :ssh_public_keys
      
        # Output only. State of the cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The storage allocation for the disk group, in gigabytes (GB).
        # Corresponds to the JSON property `storageSizeGb`
        # @return [Fixnum]
        attr_accessor :storage_size_gb
      
        # Output only. Operating system version of the image.
        # Corresponds to the JSON property `systemVersion`
        # @return [String]
        attr_accessor :system_version
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::OracledatabaseV1::TimeZone]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @compartment_id = args[:compartment_id] if args.key?(:compartment_id)
          @cpu_core_count = args[:cpu_core_count] if args.key?(:cpu_core_count)
          @data_storage_size_tb = args[:data_storage_size_tb] if args.key?(:data_storage_size_tb)
          @db_node_storage_size_gb = args[:db_node_storage_size_gb] if args.key?(:db_node_storage_size_gb)
          @db_server_ocids = args[:db_server_ocids] if args.key?(:db_server_ocids)
          @diagnostics_data_collection_options = args[:diagnostics_data_collection_options] if args.key?(:diagnostics_data_collection_options)
          @disk_redundancy = args[:disk_redundancy] if args.key?(:disk_redundancy)
          @dns_listener_ip = args[:dns_listener_ip] if args.key?(:dns_listener_ip)
          @domain = args[:domain] if args.key?(:domain)
          @gi_version = args[:gi_version] if args.key?(:gi_version)
          @hostname = args[:hostname] if args.key?(:hostname)
          @hostname_prefix = args[:hostname_prefix] if args.key?(:hostname_prefix)
          @license_type = args[:license_type] if args.key?(:license_type)
          @local_backup_enabled = args[:local_backup_enabled] if args.key?(:local_backup_enabled)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @node_count = args[:node_count] if args.key?(:node_count)
          @oci_url = args[:oci_url] if args.key?(:oci_url)
          @ocid = args[:ocid] if args.key?(:ocid)
          @ocpu_count = args[:ocpu_count] if args.key?(:ocpu_count)
          @scan_dns = args[:scan_dns] if args.key?(:scan_dns)
          @scan_dns_record_id = args[:scan_dns_record_id] if args.key?(:scan_dns_record_id)
          @scan_ip_ids = args[:scan_ip_ids] if args.key?(:scan_ip_ids)
          @scan_listener_port_tcp = args[:scan_listener_port_tcp] if args.key?(:scan_listener_port_tcp)
          @scan_listener_port_tcp_ssl = args[:scan_listener_port_tcp_ssl] if args.key?(:scan_listener_port_tcp_ssl)
          @shape = args[:shape] if args.key?(:shape)
          @sparse_diskgroup_enabled = args[:sparse_diskgroup_enabled] if args.key?(:sparse_diskgroup_enabled)
          @ssh_public_keys = args[:ssh_public_keys] if args.key?(:ssh_public_keys)
          @state = args[:state] if args.key?(:state)
          @storage_size_gb = args[:storage_size_gb] if args.key?(:storage_size_gb)
          @system_version = args[:system_version] if args.key?(:system_version)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The CustomerContact reference as defined by Oracle. https://docs.oracle.com/en-
      # us/iaas/api/#/en/database/20160918/datatypes/CustomerContact
      class CustomerContact
        include Google::Apis::Core::Hashable
      
        # Required. The email address used by Oracle to send notifications regarding
        # databases and infrastructure.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Data collection options for diagnostics.
      class DataCollectionOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether diagnostic collection is enabled for the VM
        # cluster
        # Corresponds to the JSON property `diagnosticsEventsEnabled`
        # @return [Boolean]
        attr_accessor :diagnostics_events_enabled
        alias_method :diagnostics_events_enabled?, :diagnostics_events_enabled
      
        # Optional. Indicates whether health monitoring is enabled for the VM cluster
        # Corresponds to the JSON property `healthMonitoringEnabled`
        # @return [Boolean]
        attr_accessor :health_monitoring_enabled
        alias_method :health_monitoring_enabled?, :health_monitoring_enabled
      
        # Optional. Indicates whether incident logs and trace collection are enabled for
        # the VM cluster
        # Corresponds to the JSON property `incidentLogsEnabled`
        # @return [Boolean]
        attr_accessor :incident_logs_enabled
        alias_method :incident_logs_enabled?, :incident_logs_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostics_events_enabled = args[:diagnostics_events_enabled] if args.key?(:diagnostics_events_enabled)
          @health_monitoring_enabled = args[:health_monitoring_enabled] if args.key?(:health_monitoring_enabled)
          @incident_logs_enabled = args[:incident_logs_enabled] if args.key?(:incident_logs_enabled)
        end
      end
      
      # The connection string profile to allow clients to group. https://docs.oracle.
      # com/en-us/iaas/api/#/en/database/20160918/datatypes/
      # DatabaseConnectionStringProfile
      class DatabaseConnectionStringProfile
        include Google::Apis::Core::Hashable
      
        # Output only. The current consumer group being used by the connection.
        # Corresponds to the JSON property `consumerGroup`
        # @return [String]
        attr_accessor :consumer_group
      
        # Output only. The display name for the database connection.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The host name format being currently used in connection string.
        # Corresponds to the JSON property `hostFormat`
        # @return [String]
        attr_accessor :host_format
      
        # Output only. This field indicates if the connection string is regional and is
        # only applicable for cross-region Data Guard.
        # Corresponds to the JSON property `isRegional`
        # @return [Boolean]
        attr_accessor :is_regional
        alias_method :is_regional?, :is_regional
      
        # Output only. The protocol being used by the connection.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Output only. The current session mode of the connection.
        # Corresponds to the JSON property `sessionMode`
        # @return [String]
        attr_accessor :session_mode
      
        # Output only. The syntax of the connection string.
        # Corresponds to the JSON property `syntaxFormat`
        # @return [String]
        attr_accessor :syntax_format
      
        # Output only. This field indicates the TLS authentication type of the
        # connection.
        # Corresponds to the JSON property `tlsAuthentication`
        # @return [String]
        attr_accessor :tls_authentication
      
        # Output only. The value of the connection string.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_group = args[:consumer_group] if args.key?(:consumer_group)
          @display_name = args[:display_name] if args.key?(:display_name)
          @host_format = args[:host_format] if args.key?(:host_format)
          @is_regional = args[:is_regional] if args.key?(:is_regional)
          @protocol = args[:protocol] if args.key?(:protocol)
          @session_mode = args[:session_mode] if args.key?(:session_mode)
          @syntax_format = args[:syntax_format] if args.key?(:syntax_format)
          @tls_authentication = args[:tls_authentication] if args.key?(:tls_authentication)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Details of the database node resource. https://docs.oracle.com/en-us/iaas/api/#
      # /en/database/20160918/DbNode/
      class DbNode
        include Google::Apis::Core::Hashable
      
        # Identifier. The name of the database node resource in the following format:
        # projects/`project`/locations/`location`/cloudVmClusters/`cloud_vm_cluster`/
        # dbNodes/`db_node`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Various properties and settings associated with Db node.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::DbNodeProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Various properties and settings associated with Db node.
      class DbNodeProperties
        include Google::Apis::Core::Hashable
      
        # Optional. Local storage per database node.
        # Corresponds to the JSON property `dbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :db_node_storage_size_gb
      
        # Optional. Database server OCID.
        # Corresponds to the JSON property `dbServerOcid`
        # @return [String]
        attr_accessor :db_server_ocid
      
        # Optional. DNS
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Memory allocated in GBs.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Fixnum]
        attr_accessor :memory_size_gb
      
        # Output only. OCID of database node.
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Optional. OCPU count per database node.
        # Corresponds to the JSON property `ocpuCount`
        # @return [Fixnum]
        attr_accessor :ocpu_count
      
        # Output only. State of the database node.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Total CPU core count of the database node.
        # Corresponds to the JSON property `totalCpuCoreCount`
        # @return [Fixnum]
        attr_accessor :total_cpu_core_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_node_storage_size_gb = args[:db_node_storage_size_gb] if args.key?(:db_node_storage_size_gb)
          @db_server_ocid = args[:db_server_ocid] if args.key?(:db_server_ocid)
          @hostname = args[:hostname] if args.key?(:hostname)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @ocid = args[:ocid] if args.key?(:ocid)
          @ocpu_count = args[:ocpu_count] if args.key?(:ocpu_count)
          @state = args[:state] if args.key?(:state)
          @total_cpu_core_count = args[:total_cpu_core_count] if args.key?(:total_cpu_core_count)
        end
      end
      
      # Details of the database server resource. https://docs.oracle.com/en-us/iaas/
      # api/#/en/database/20160918/DbServer/
      class DbServer
        include Google::Apis::Core::Hashable
      
        # Optional. User friendly name for this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The name of the database server resource with the format: projects/
        # `project`/locations/`location`/cloudExadataInfrastructures/`
        # cloud_exadata_infrastructure`/dbServers/`db_server`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Various properties and settings associated with Exadata database server.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::OracledatabaseV1::DbServerProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Various properties and settings associated with Exadata database server.
      class DbServerProperties
        include Google::Apis::Core::Hashable
      
        # Output only. OCID of database nodes associated with the database server.
        # Corresponds to the JSON property `dbNodeIds`
        # @return [Array<String>]
        attr_accessor :db_node_ids
      
        # Optional. Local storage per VM.
        # Corresponds to the JSON property `dbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :db_node_storage_size_gb
      
        # Optional. Maximum local storage per VM.
        # Corresponds to the JSON property `maxDbNodeStorageSizeGb`
        # @return [Fixnum]
        attr_accessor :max_db_node_storage_size_gb
      
        # Optional. Maximum memory allocated in GBs.
        # Corresponds to the JSON property `maxMemorySizeGb`
        # @return [Fixnum]
        attr_accessor :max_memory_size_gb
      
        # Optional. Maximum OCPU count per database.
        # Corresponds to the JSON property `maxOcpuCount`
        # @return [Fixnum]
        attr_accessor :max_ocpu_count
      
        # Optional. Memory allocated in GBs.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Fixnum]
        attr_accessor :memory_size_gb
      
        # Output only. OCID of database server.
        # Corresponds to the JSON property `ocid`
        # @return [String]
        attr_accessor :ocid
      
        # Optional. OCPU count per database.
        # Corresponds to the JSON property `ocpuCount`
        # @return [Fixnum]
        attr_accessor :ocpu_count
      
        # Output only. State of the database server.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Vm count per database.
        # Corresponds to the JSON property `vmCount`
        # @return [Fixnum]
        attr_accessor :vm_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_node_ids = args[:db_node_ids] if args.key?(:db_node_ids)
          @db_node_storage_size_gb = args[:db_node_storage_size_gb] if args.key?(:db_node_storage_size_gb)
          @max_db_node_storage_size_gb = args[:max_db_node_storage_size_gb] if args.key?(:max_db_node_storage_size_gb)
          @max_memory_size_gb = args[:max_memory_size_gb] if args.key?(:max_memory_size_gb)
          @max_ocpu_count = args[:max_ocpu_count] if args.key?(:max_ocpu_count)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @ocid = args[:ocid] if args.key?(:ocid)
          @ocpu_count = args[:ocpu_count] if args.key?(:ocpu_count)
          @state = args[:state] if args.key?(:state)
          @vm_count = args[:vm_count] if args.key?(:vm_count)
        end
      end
      
      # Details of the Database System Shapes resource. https://docs.oracle.com/en-us/
      # iaas/api/#/en/database/20160918/DbSystemShapeSummary/
      class DbSystemShape
        include Google::Apis::Core::Hashable
      
        # Optional. Number of cores per node.
        # Corresponds to the JSON property `availableCoreCountPerNode`
        # @return [Fixnum]
        attr_accessor :available_core_count_per_node
      
        # Optional. Storage per storage server in terabytes.
        # Corresponds to the JSON property `availableDataStorageTb`
        # @return [Fixnum]
        attr_accessor :available_data_storage_tb
      
        # Optional. Memory per database server node in gigabytes.
        # Corresponds to the JSON property `availableMemoryPerNodeGb`
        # @return [Fixnum]
        attr_accessor :available_memory_per_node_gb
      
        # Optional. Maximum number of database servers.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Optional. Maximum number of storage servers.
        # Corresponds to the JSON property `maxStorageCount`
        # @return [Fixnum]
        attr_accessor :max_storage_count
      
        # Optional. Minimum core count per node.
        # Corresponds to the JSON property `minCoreCountPerNode`
        # @return [Fixnum]
        attr_accessor :min_core_count_per_node
      
        # Optional. Minimum node storage per database server in gigabytes.
        # Corresponds to the JSON property `minDbNodeStoragePerNodeGb`
        # @return [Fixnum]
        attr_accessor :min_db_node_storage_per_node_gb
      
        # Optional. Minimum memory per node in gigabytes.
        # Corresponds to the JSON property `minMemoryPerNodeGb`
        # @return [Fixnum]
        attr_accessor :min_memory_per_node_gb
      
        # Optional. Minimum number of database servers.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        # Optional. Minimum number of storage servers.
        # Corresponds to the JSON property `minStorageCount`
        # @return [Fixnum]
        attr_accessor :min_storage_count
      
        # Identifier. The name of the Database System Shape resource with the format:
        # projects/`project`/locations/`region`/dbSystemShapes/`db_system_shape`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. shape
        # Corresponds to the JSON property `shape`
        # @return [String]
        attr_accessor :shape
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_core_count_per_node = args[:available_core_count_per_node] if args.key?(:available_core_count_per_node)
          @available_data_storage_tb = args[:available_data_storage_tb] if args.key?(:available_data_storage_tb)
          @available_memory_per_node_gb = args[:available_memory_per_node_gb] if args.key?(:available_memory_per_node_gb)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @max_storage_count = args[:max_storage_count] if args.key?(:max_storage_count)
          @min_core_count_per_node = args[:min_core_count_per_node] if args.key?(:min_core_count_per_node)
          @min_db_node_storage_per_node_gb = args[:min_db_node_storage_per_node_gb] if args.key?(:min_db_node_storage_per_node_gb)
          @min_memory_per_node_gb = args[:min_memory_per_node_gb] if args.key?(:min_memory_per_node_gb)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
          @min_storage_count = args[:min_storage_count] if args.key?(:min_storage_count)
          @name = args[:name] if args.key?(:name)
          @shape = args[:shape] if args.key?(:shape)
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
      
      # Details of the Entitlement resource.
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # Details of the OCI Cloud Account.
        # Corresponds to the JSON property `cloudAccountDetails`
        # @return [Google::Apis::OracledatabaseV1::CloudAccountDetails]
        attr_accessor :cloud_account_details
      
        # Output only. Google Cloud Marketplace order ID (aka entitlement ID)
        # Corresponds to the JSON property `entitlementId`
        # @return [String]
        attr_accessor :entitlement_id
      
        # Identifier. The name of the Entitlement resource with the format: projects/`
        # project`/locations/`region`/entitlements/`entitlement`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Entitlement State.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_account_details = args[:cloud_account_details] if args.key?(:cloud_account_details)
          @entitlement_id = args[:entitlement_id] if args.key?(:entitlement_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The request for `AutonomousDatabase.GenerateWallet`.
      class GenerateAutonomousDatabaseWalletRequest
        include Google::Apis::Core::Hashable
      
        # Optional. True when requesting regional connection strings in PDB connect info,
        # applicable to cross-region Data Guard only.
        # Corresponds to the JSON property `isRegional`
        # @return [Boolean]
        attr_accessor :is_regional
        alias_method :is_regional?, :is_regional
      
        # Required. The password used to encrypt the keys inside the wallet. The
        # password must be a minimum of 8 characters.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. The type of wallet generation for the Autonomous Database. The
        # default value is SINGLE.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_regional = args[:is_regional] if args.key?(:is_regional)
          @password = args[:password] if args.key?(:password)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The response for `AutonomousDatabase.GenerateWallet`.
      class GenerateAutonomousDatabaseWalletResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The base64 encoded wallet files.
        # Corresponds to the JSON property `archiveContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :archive_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_content = args[:archive_content] if args.key?(:archive_content)
        end
      end
      
      # Details of the Oracle Grid Infrastructure (GI) version resource. https://docs.
      # oracle.com/en-us/iaas/api/#/en/database/20160918/GiVersionSummary/
      class GiVersion
        include Google::Apis::Core::Hashable
      
        # Identifier. The name of the Oracle Grid Infrastructure (GI) version resource
        # with the format: projects/`project`/locations/`region`/giVersions/`gi_versions`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. version
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The response for `AutonomousDatabaseBackup.List`.
      class ListAutonomousDatabaseBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Autonomous Database Backups.
        # Corresponds to the JSON property `autonomousDatabaseBackups`
        # @return [Array<Google::Apis::OracledatabaseV1::AutonomousDatabaseBackup>]
        attr_accessor :autonomous_database_backups
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_database_backups = args[:autonomous_database_backups] if args.key?(:autonomous_database_backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `AutonomousDatabaseCharacterSet.List`.
      class ListAutonomousDatabaseCharacterSetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Autonomous Database Character Sets.
        # Corresponds to the JSON property `autonomousDatabaseCharacterSets`
        # @return [Array<Google::Apis::OracledatabaseV1::AutonomousDatabaseCharacterSet>]
        attr_accessor :autonomous_database_character_sets
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_database_character_sets = args[:autonomous_database_character_sets] if args.key?(:autonomous_database_character_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `AutonomousDatabase.List`.
      class ListAutonomousDatabasesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Autonomous Databases.
        # Corresponds to the JSON property `autonomousDatabases`
        # @return [Array<Google::Apis::OracledatabaseV1::AutonomousDatabase>]
        attr_accessor :autonomous_databases
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_databases = args[:autonomous_databases] if args.key?(:autonomous_databases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `AutonomousDbVersion.List`.
      class ListAutonomousDbVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Autonomous Database versions.
        # Corresponds to the JSON property `autonomousDbVersions`
        # @return [Array<Google::Apis::OracledatabaseV1::AutonomousDbVersion>]
        attr_accessor :autonomous_db_versions
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_db_versions = args[:autonomous_db_versions] if args.key?(:autonomous_db_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `CloudExadataInfrastructures.list`.
      class ListCloudExadataInfrastructuresResponse
        include Google::Apis::Core::Hashable
      
        # The list of Exadata Infrastructures.
        # Corresponds to the JSON property `cloudExadataInfrastructures`
        # @return [Array<Google::Apis::OracledatabaseV1::CloudExadataInfrastructure>]
        attr_accessor :cloud_exadata_infrastructures
      
        # A token for fetching next page of response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_exadata_infrastructures = args[:cloud_exadata_infrastructures] if args.key?(:cloud_exadata_infrastructures)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `CloudVmCluster.List`.
      class ListCloudVmClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of VM Clusters.
        # Corresponds to the JSON property `cloudVmClusters`
        # @return [Array<Google::Apis::OracledatabaseV1::CloudVmCluster>]
        attr_accessor :cloud_vm_clusters
      
        # A token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_vm_clusters = args[:cloud_vm_clusters] if args.key?(:cloud_vm_clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `DbNode.List`.
      class ListDbNodesResponse
        include Google::Apis::Core::Hashable
      
        # The list of DB Nodes
        # Corresponds to the JSON property `dbNodes`
        # @return [Array<Google::Apis::OracledatabaseV1::DbNode>]
        attr_accessor :db_nodes
      
        # A token identifying a page of results the node should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_nodes = args[:db_nodes] if args.key?(:db_nodes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `DbServer.List`.
      class ListDbServersResponse
        include Google::Apis::Core::Hashable
      
        # The list of database servers.
        # Corresponds to the JSON property `dbServers`
        # @return [Array<Google::Apis::OracledatabaseV1::DbServer>]
        attr_accessor :db_servers
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_servers = args[:db_servers] if args.key?(:db_servers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `DbSystemShape.List`.
      class ListDbSystemShapesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Database System shapes.
        # Corresponds to the JSON property `dbSystemShapes`
        # @return [Array<Google::Apis::OracledatabaseV1::DbSystemShape>]
        attr_accessor :db_system_shapes
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_system_shapes = args[:db_system_shapes] if args.key?(:db_system_shapes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `Entitlement.List`.
      class ListEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Entitlements
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::OracledatabaseV1::Entitlement>]
        attr_accessor :entitlements
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for `GiVersion.List`.
      class ListGiVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Oracle Grid Infrastructure (GI) versions.
        # Corresponds to the JSON property `giVersions`
        # @return [Array<Google::Apis::OracledatabaseV1::GiVersion>]
        attr_accessor :gi_versions
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gi_versions = args[:gi_versions] if args.key?(:gi_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::OracledatabaseV1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::OracledatabaseV1::Operation>]
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
      
      # Metadata for a given Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. GCP Oracle zones in a location.
        # Corresponds to the JSON property `gcpOracleZones`
        # @return [Array<String>]
        attr_accessor :gcp_oracle_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_oracle_zones = args[:gcp_oracle_zones] if args.key?(:gcp_oracle_zones)
        end
      end
      
      # Maintenance window as defined by Oracle. https://docs.oracle.com/en-us/iaas/
      # api/#/en/database/20160918/datatypes/MaintenanceWindow
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Optional. Determines the amount of time the system will wait before the start
        # of each database server patching operation. Custom action timeout is in
        # minutes and valid value is between 15 to 120 (inclusive).
        # Corresponds to the JSON property `customActionTimeoutMins`
        # @return [Fixnum]
        attr_accessor :custom_action_timeout_mins
      
        # Optional. Days during the week when maintenance should be performed.
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Array<String>]
        attr_accessor :days_of_week
      
        # Optional. The window of hours during the day when maintenance should be
        # performed. The window is a 4 hour slot. Valid values are: 0 - represents time
        # slot 0:00 - 3:59 UTC 4 - represents time slot 4:00 - 7:59 UTC 8 - represents
        # time slot 8:00 - 11:59 UTC 12 - represents time slot 12:00 - 15:59 UTC 16 -
        # represents time slot 16:00 - 19:59 UTC 20 - represents time slot 20:00 - 23:59
        # UTC
        # Corresponds to the JSON property `hoursOfDay`
        # @return [Array<Fixnum>]
        attr_accessor :hours_of_day
      
        # Optional. If true, enables the configuration of a custom action timeout (
        # waiting period) between database server patching operations.
        # Corresponds to the JSON property `isCustomActionTimeoutEnabled`
        # @return [Boolean]
        attr_accessor :is_custom_action_timeout_enabled
        alias_method :is_custom_action_timeout_enabled?, :is_custom_action_timeout_enabled
      
        # Optional. Lead time window allows user to set a lead time to prepare for a
        # down time. The lead time is in weeks and valid value is between 1 to 4.
        # Corresponds to the JSON property `leadTimeWeek`
        # @return [Fixnum]
        attr_accessor :lead_time_week
      
        # Optional. Months during the year when maintenance should be performed.
        # Corresponds to the JSON property `months`
        # @return [Array<String>]
        attr_accessor :months
      
        # Optional. Cloud CloudExadataInfrastructure node patching method, either "
        # ROLLING" or "NONROLLING". Default value is ROLLING.
        # Corresponds to the JSON property `patchingMode`
        # @return [String]
        attr_accessor :patching_mode
      
        # Optional. The maintenance window scheduling preference.
        # Corresponds to the JSON property `preference`
        # @return [String]
        attr_accessor :preference
      
        # Optional. Weeks during the month when maintenance should be performed. Weeks
        # start on the 1st, 8th, 15th, and 22nd days of the month, and have a duration
        # of 7 days. Weeks start and end based on calendar dates, not days of the week.
        # Corresponds to the JSON property `weeksOfMonth`
        # @return [Array<Fixnum>]
        attr_accessor :weeks_of_month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_action_timeout_mins = args[:custom_action_timeout_mins] if args.key?(:custom_action_timeout_mins)
          @days_of_week = args[:days_of_week] if args.key?(:days_of_week)
          @hours_of_day = args[:hours_of_day] if args.key?(:hours_of_day)
          @is_custom_action_timeout_enabled = args[:is_custom_action_timeout_enabled] if args.key?(:is_custom_action_timeout_enabled)
          @lead_time_week = args[:lead_time_week] if args.key?(:lead_time_week)
          @months = args[:months] if args.key?(:months)
          @patching_mode = args[:patching_mode] if args.key?(:patching_mode)
          @preference = args[:preference] if args.key?(:preference)
          @weeks_of_month = args[:weeks_of_month] if args.key?(:weeks_of_month)
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
        # @return [Google::Apis::OracledatabaseV1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. An estimated percentage of the operation that has been completed
        # at a given moment of time, between 0 and 100.
        # Corresponds to the JSON property `percentComplete`
        # @return [Float]
        attr_accessor :percent_complete
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. The status of the operation.
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
          @percent_complete = args[:percent_complete] if args.key?(:percent_complete)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The request for `AutonomousDatabase.Restore`.
      class RestoreAutonomousDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The time and date to restore the database to.
        # Corresponds to the JSON property `restoreTime`
        # @return [String]
        attr_accessor :restore_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restore_time = args[:restore_time] if args.key?(:restore_time)
        end
      end
      
      # Details of scheduled operation. https://docs.oracle.com/en-us/iaas/api/#/en/
      # database/20160918/datatypes/ScheduledOperationDetails
      class ScheduledOperationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Day of week.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::OracledatabaseV1::TimeOfDay]
        attr_accessor :start_time
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `stopTime`
        # @return [Google::Apis::OracledatabaseV1::TimeOfDay]
        attr_accessor :stop_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @start_time = args[:start_time] if args.key?(:start_time)
          @stop_time = args[:stop_time] if args.key?(:stop_time)
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
