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
    module NetappV1
      
      # ActiveDirectory is the public representation of the active directory config.
      class ActiveDirectory
        include Google::Apis::Core::Hashable
      
        # Optional. Users to be added to the Built-in Admininstrators group.
        # Corresponds to the JSON property `administrators`
        # @return [Array<String>]
        attr_accessor :administrators
      
        # If enabled, AES encryption will be enabled for SMB communication.
        # Corresponds to the JSON property `aesEncryption`
        # @return [Boolean]
        attr_accessor :aes_encryption
        alias_method :aes_encryption?, :aes_encryption
      
        # Optional. Users to be added to the Built-in Backup Operator active directory
        # group.
        # Corresponds to the JSON property `backupOperators`
        # @return [Array<String>]
        attr_accessor :backup_operators
      
        # Output only. Create time of the active directory.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the active directory.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Comma separated list of DNS server IP addresses for the Active
        # Directory domain.
        # Corresponds to the JSON property `dns`
        # @return [String]
        attr_accessor :dns
      
        # Required. Name of the Active Directory domain
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # If enabled, traffic between the SMB server to Domain Controller (DC) will be
        # encrypted.
        # Corresponds to the JSON property `encryptDcConnections`
        # @return [Boolean]
        attr_accessor :encrypt_dc_connections
        alias_method :encrypt_dc_connections?, :encrypt_dc_connections
      
        # Name of the active directory machine. This optional parameter is used only
        # while creating kerberos volume
        # Corresponds to the JSON property `kdcHostname`
        # @return [String]
        attr_accessor :kdc_hostname
      
        # KDC server IP address for the active directory machine.
        # Corresponds to the JSON property `kdcIp`
        # @return [String]
        attr_accessor :kdc_ip
      
        # Labels for the active directory.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies whether or not the LDAP traffic needs to be signed.
        # Corresponds to the JSON property `ldapSigning`
        # @return [Boolean]
        attr_accessor :ldap_signing
        alias_method :ldap_signing?, :ldap_signing
      
        # Identifier. The resource name of the active directory. Format: `projects/`
        # project_number`/locations/`location_id`/activeDirectories/`active_directory_id`
        # `.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. NetBIOSPrefix is used as a prefix for SMB server name.
        # Corresponds to the JSON property `netBiosPrefix`
        # @return [String]
        attr_accessor :net_bios_prefix
      
        # If enabled, will allow access to local users and LDAP users. If access is
        # needed for only LDAP users, it has to be disabled.
        # Corresponds to the JSON property `nfsUsersWithLdap`
        # @return [Boolean]
        attr_accessor :nfs_users_with_ldap
        alias_method :nfs_users_with_ldap?, :nfs_users_with_ldap
      
        # The Organizational Unit (OU) within the Windows Active Directory the user
        # belongs to.
        # Corresponds to the JSON property `organizationalUnit`
        # @return [String]
        attr_accessor :organizational_unit
      
        # Required. Password of the Active Directory domain administrator.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Domain users to be given the SeSecurityPrivilege.
        # Corresponds to the JSON property `securityOperators`
        # @return [Array<String>]
        attr_accessor :security_operators
      
        # The Active Directory site the service will limit Domain Controller discovery
        # too.
        # Corresponds to the JSON property `site`
        # @return [String]
        attr_accessor :site
      
        # Output only. The state of the AD.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The state details of the Active Directory.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Required. Username of the Active Directory domain administrator.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @administrators = args[:administrators] if args.key?(:administrators)
          @aes_encryption = args[:aes_encryption] if args.key?(:aes_encryption)
          @backup_operators = args[:backup_operators] if args.key?(:backup_operators)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @dns = args[:dns] if args.key?(:dns)
          @domain = args[:domain] if args.key?(:domain)
          @encrypt_dc_connections = args[:encrypt_dc_connections] if args.key?(:encrypt_dc_connections)
          @kdc_hostname = args[:kdc_hostname] if args.key?(:kdc_hostname)
          @kdc_ip = args[:kdc_ip] if args.key?(:kdc_ip)
          @labels = args[:labels] if args.key?(:labels)
          @ldap_signing = args[:ldap_signing] if args.key?(:ldap_signing)
          @name = args[:name] if args.key?(:name)
          @net_bios_prefix = args[:net_bios_prefix] if args.key?(:net_bios_prefix)
          @nfs_users_with_ldap = args[:nfs_users_with_ldap] if args.key?(:nfs_users_with_ldap)
          @organizational_unit = args[:organizational_unit] if args.key?(:organizational_unit)
          @password = args[:password] if args.key?(:password)
          @security_operators = args[:security_operators] if args.key?(:security_operators)
          @site = args[:site] if args.key?(:site)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # A NetApp Backup.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. Region in which backup is stored. Format: `projects/`project_id`/
        # locations/`location``
        # Corresponds to the JSON property `backupRegion`
        # @return [String]
        attr_accessor :backup_region
      
        # Output only. Type of backup, manually created or created by a backup policy.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # Output only. Total size of all backups in a chain in bytes = baseline backup
        # size + sum(incremental backup size)
        # Corresponds to the JSON property `chainStorageBytes`
        # @return [Fixnum]
        attr_accessor :chain_storage_bytes
      
        # Output only. The time when the backup was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the backup with 2048 characters or less. Requests with longer
        # descriptions will be rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time until which the backup is not deletable.
        # Corresponds to the JSON property `enforcedRetentionEndTime`
        # @return [String]
        attr_accessor :enforced_retention_end_time
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the backup. Format: `projects/`project_id`/
        # locations/`location`/backupVaults/`backup_vault_id`/backups/`backup_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reserved for future use
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # If specified, backup will be created from the given snapshot. If not specified,
        # there will be a new snapshot taken to initiate the backup creation. Format: `
        # projects/`project_id`/locations/`location`/volumes/`volume_id`/snapshots/`
        # snapshot_id``
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        # Volume full name of this backup belongs to. Format: `projects/`projects_id`/
        # locations/`location`/volumes/`volume_id``
        # Corresponds to the JSON property `sourceVolume`
        # @return [String]
        attr_accessor :source_volume
      
        # Output only. The backup state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Region of the volume from which the backup was created. Format: `
        # projects/`project_id`/locations/`location``
        # Corresponds to the JSON property `volumeRegion`
        # @return [String]
        attr_accessor :volume_region
      
        # Output only. Size of the file system when the backup was created. When
        # creating a new volume from the backup, the volume capacity will have to be at
        # least as big.
        # Corresponds to the JSON property `volumeUsageBytes`
        # @return [Fixnum]
        attr_accessor :volume_usage_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_region = args[:backup_region] if args.key?(:backup_region)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @chain_storage_bytes = args[:chain_storage_bytes] if args.key?(:chain_storage_bytes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @enforced_retention_end_time = args[:enforced_retention_end_time] if args.key?(:enforced_retention_end_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
          @source_volume = args[:source_volume] if args.key?(:source_volume)
          @state = args[:state] if args.key?(:state)
          @volume_region = args[:volume_region] if args.key?(:volume_region)
          @volume_usage_bytes = args[:volume_usage_bytes] if args.key?(:volume_usage_bytes)
        end
      end
      
      # BackupConfig contains backup related config on a volume.
      class BackupConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Total size of all backups in a chain in bytes = baseline backup
        # size + sum(incremental backup size).
        # Corresponds to the JSON property `backupChainBytes`
        # @return [Fixnum]
        attr_accessor :backup_chain_bytes
      
        # Optional. When specified, schedule backups will be created based on the policy
        # configuration.
        # Corresponds to the JSON property `backupPolicies`
        # @return [Array<String>]
        attr_accessor :backup_policies
      
        # Optional. Name of backup vault. Format: projects/`project_id`/locations/`
        # location`/backupVaults/`backup_vault_id`
        # Corresponds to the JSON property `backupVault`
        # @return [String]
        attr_accessor :backup_vault
      
        # Optional. When set to true, scheduled backup is enabled on the volume. This
        # field should be nil when there's no backup policy attached.
        # Corresponds to the JSON property `scheduledBackupEnabled`
        # @return [Boolean]
        attr_accessor :scheduled_backup_enabled
        alias_method :scheduled_backup_enabled?, :scheduled_backup_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_chain_bytes = args[:backup_chain_bytes] if args.key?(:backup_chain_bytes)
          @backup_policies = args[:backup_policies] if args.key?(:backup_policies)
          @backup_vault = args[:backup_vault] if args.key?(:backup_vault)
          @scheduled_backup_enabled = args[:scheduled_backup_enabled] if args.key?(:scheduled_backup_enabled)
        end
      end
      
      # Backup Policy.
      class BackupPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of volumes assigned by this backup policy.
        # Corresponds to the JSON property `assignedVolumeCount`
        # @return [Fixnum]
        attr_accessor :assigned_volume_count
      
        # Output only. The time when the backup policy was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Number of daily backups to keep. Note that the minimum daily backup limit is 2.
        # Corresponds to the JSON property `dailyBackupLimit`
        # @return [Fixnum]
        attr_accessor :daily_backup_limit
      
        # Description of the backup policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If enabled, make backups automatically according to the schedules. This will
        # be applied to all volumes that have this policy attached and enforced on
        # volume level. If not specified, default is true.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Number of monthly backups to keep. Note that the sum of daily, weekly and
        # monthly backups should be greater than 1.
        # Corresponds to the JSON property `monthlyBackupLimit`
        # @return [Fixnum]
        attr_accessor :monthly_backup_limit
      
        # Identifier. The resource name of the backup policy. Format: `projects/`
        # project_id`/locations/`location`/backupPolicies/`backup_policy_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The backup policy state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Number of weekly backups to keep. Note that the sum of daily, weekly and
        # monthly backups should be greater than 1.
        # Corresponds to the JSON property `weeklyBackupLimit`
        # @return [Fixnum]
        attr_accessor :weekly_backup_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_volume_count = args[:assigned_volume_count] if args.key?(:assigned_volume_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @daily_backup_limit = args[:daily_backup_limit] if args.key?(:daily_backup_limit)
          @description = args[:description] if args.key?(:description)
          @enabled = args[:enabled] if args.key?(:enabled)
          @labels = args[:labels] if args.key?(:labels)
          @monthly_backup_limit = args[:monthly_backup_limit] if args.key?(:monthly_backup_limit)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @weekly_backup_limit = args[:weekly_backup_limit] if args.key?(:weekly_backup_limit)
        end
      end
      
      # Retention policy for backups in the backup vault
      class BackupRetentionPolicy
        include Google::Apis::Core::Hashable
      
        # Required. Minimum retention duration in days for backups in the backup vault.
        # Corresponds to the JSON property `backupMinimumEnforcedRetentionDays`
        # @return [Fixnum]
        attr_accessor :backup_minimum_enforced_retention_days
      
        # Optional. Indicates if the daily backups are immutable. At least one of
        # daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and
        # manual_backup_immutable must be true.
        # Corresponds to the JSON property `dailyBackupImmutable`
        # @return [Boolean]
        attr_accessor :daily_backup_immutable
        alias_method :daily_backup_immutable?, :daily_backup_immutable
      
        # Optional. Indicates if the manual backups are immutable. At least one of
        # daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and
        # manual_backup_immutable must be true.
        # Corresponds to the JSON property `manualBackupImmutable`
        # @return [Boolean]
        attr_accessor :manual_backup_immutable
        alias_method :manual_backup_immutable?, :manual_backup_immutable
      
        # Optional. Indicates if the monthly backups are immutable. At least one of
        # daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and
        # manual_backup_immutable must be true.
        # Corresponds to the JSON property `monthlyBackupImmutable`
        # @return [Boolean]
        attr_accessor :monthly_backup_immutable
        alias_method :monthly_backup_immutable?, :monthly_backup_immutable
      
        # Optional. Indicates if the weekly backups are immutable. At least one of
        # daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and
        # manual_backup_immutable must be true.
        # Corresponds to the JSON property `weeklyBackupImmutable`
        # @return [Boolean]
        attr_accessor :weekly_backup_immutable
        alias_method :weekly_backup_immutable?, :weekly_backup_immutable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_minimum_enforced_retention_days = args[:backup_minimum_enforced_retention_days] if args.key?(:backup_minimum_enforced_retention_days)
          @daily_backup_immutable = args[:daily_backup_immutable] if args.key?(:daily_backup_immutable)
          @manual_backup_immutable = args[:manual_backup_immutable] if args.key?(:manual_backup_immutable)
          @monthly_backup_immutable = args[:monthly_backup_immutable] if args.key?(:monthly_backup_immutable)
          @weekly_backup_immutable = args[:weekly_backup_immutable] if args.key?(:weekly_backup_immutable)
        end
      end
      
      # A NetApp BackupVault.
      class BackupVault
        include Google::Apis::Core::Hashable
      
        # Optional. Region where the backups are stored. Format: `projects/`project_id`/
        # locations/`location``
        # Corresponds to the JSON property `backupRegion`
        # @return [String]
        attr_accessor :backup_region
      
        # Retention policy for backups in the backup vault
        # Corresponds to the JSON property `backupRetentionPolicy`
        # @return [Google::Apis::NetappV1::BackupRetentionPolicy]
        attr_accessor :backup_retention_policy
      
        # Optional. Type of backup vault to be created. Default is IN_REGION.
        # Corresponds to the JSON property `backupVaultType`
        # @return [String]
        attr_accessor :backup_vault_type
      
        # Output only. Create time of the backup vault.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the backup vault.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Name of the Backup vault created in backup region. Format: `
        # projects/`project_id`/locations/`location`/backupVaults/`backup_vault_id``
        # Corresponds to the JSON property `destinationBackupVault`
        # @return [String]
        attr_accessor :destination_backup_vault
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the backup vault. Format: `projects/`
        # project_id`/locations/`location`/backupVaults/`backup_vault_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Name of the Backup vault created in source region. Format: `
        # projects/`project_id`/locations/`location`/backupVaults/`backup_vault_id``
        # Corresponds to the JSON property `sourceBackupVault`
        # @return [String]
        attr_accessor :source_backup_vault
      
        # Output only. Region in which the backup vault is created. Format: `projects/`
        # project_id`/locations/`location``
        # Corresponds to the JSON property `sourceRegion`
        # @return [String]
        attr_accessor :source_region
      
        # Output only. The backup vault state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_region = args[:backup_region] if args.key?(:backup_region)
          @backup_retention_policy = args[:backup_retention_policy] if args.key?(:backup_retention_policy)
          @backup_vault_type = args[:backup_vault_type] if args.key?(:backup_vault_type)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_backup_vault = args[:destination_backup_vault] if args.key?(:destination_backup_vault)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @source_backup_vault = args[:source_backup_vault] if args.key?(:source_backup_vault)
          @source_region = args[:source_region] if args.key?(:source_region)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Block device represents the device(s) which are stored in the block volume.
      class BlockDevice
        include Google::Apis::Core::Hashable
      
        # Optional. A list of host groups that identify hosts that can mount the block
        # volume. Format: `projects/`project_id`/locations/`location`/hostGroups/`
        # host_group_id`` This field can be updated after the block device is created.
        # Corresponds to the JSON property `hostGroups`
        # @return [Array<String>]
        attr_accessor :host_groups
      
        # Output only. Device identifier of the Block volume. This represents
        # lun_serial_number for iSCSI volumes
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        # Optional. User-defined name for the block device, unique within the Volume. In
        # case no user input is provided, name will be autogenerated in the backend. The
        # name must meet the following requirements: * Be between 1 and 255 characters
        # long. * Contain only uppercase or lowercase letters (A-Z, a-z), numbers (0-9),
        # and the following special characters: "-", "_", "`", "`", ".". * Spaces are
        # not allowed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The OS type of the volume. This field can't be changed
        # after the block device is created.
        # Corresponds to the JSON property `osType`
        # @return [String]
        attr_accessor :os_type
      
        # Optional. The size of the block device in GiB. Any value provided in this
        # field during Volume creation is IGNORED. The block device's size is system-
        # managed and will be set to match the parent Volume's `capacity_gib`.
        # Corresponds to the JSON property `sizeGib`
        # @return [Fixnum]
        attr_accessor :size_gib
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_groups = args[:host_groups] if args.key?(:host_groups)
          @identifier = args[:identifier] if args.key?(:identifier)
          @name = args[:name] if args.key?(:name)
          @os_type = args[:os_type] if args.key?(:os_type)
          @size_gib = args[:size_gib] if args.key?(:size_gib)
        end
      end
      
      # Configuration of the cache volume.
      class CacheConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Flag indicating whether a CIFS change notification is enabled for
        # the FlexCache volume.
        # Corresponds to the JSON property `cifsChangeNotifyEnabled`
        # @return [Boolean]
        attr_accessor :cifs_change_notify_enabled
        alias_method :cifs_change_notify_enabled?, :cifs_change_notify_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cifs_change_notify_enabled = args[:cifs_change_notify_enabled] if args.key?(:cifs_change_notify_enabled)
        end
      end
      
      # Cache Parameters for the volume.
      class CacheParameters
        include Google::Apis::Core::Hashable
      
        # Configuration of the cache volume.
        # Corresponds to the JSON property `cacheConfig`
        # @return [Google::Apis::NetappV1::CacheConfig]
        attr_accessor :cache_config
      
        # Output only. State of the cache volume indicating the peering status.
        # Corresponds to the JSON property `cacheState`
        # @return [String]
        attr_accessor :cache_state
      
        # Output only. Copy-paste-able commands to be used on user's ONTAP to accept
        # peering requests.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # Optional. Field indicating whether cache volume as global file lock enabled.
        # Corresponds to the JSON property `enableGlobalFileLock`
        # @return [Boolean]
        attr_accessor :enable_global_file_lock
        alias_method :enable_global_file_lock?, :enable_global_file_lock
      
        # Output only. Temporary passphrase generated to accept cluster peering command.
        # Corresponds to the JSON property `passphrase`
        # @return [String]
        attr_accessor :passphrase
      
        # Required. Name of the origin volume's ONTAP cluster.
        # Corresponds to the JSON property `peerClusterName`
        # @return [String]
        attr_accessor :peer_cluster_name
      
        # Required. List of IC LIF addresses of the origin volume's ONTAP cluster.
        # Corresponds to the JSON property `peerIpAddresses`
        # @return [Array<String>]
        attr_accessor :peer_ip_addresses
      
        # Required. Name of the origin volume's SVM.
        # Corresponds to the JSON property `peerSvmName`
        # @return [String]
        attr_accessor :peer_svm_name
      
        # Required. Name of the origin volume for the cache volume.
        # Corresponds to the JSON property `peerVolumeName`
        # @return [String]
        attr_accessor :peer_volume_name
      
        # Optional. Expiration time for the peering command to be executed on user's
        # ONTAP.
        # Corresponds to the JSON property `peeringCommandExpiryTime`
        # @return [String]
        attr_accessor :peering_command_expiry_time
      
        # Output only. Detailed description of the current cache state.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_config = args[:cache_config] if args.key?(:cache_config)
          @cache_state = args[:cache_state] if args.key?(:cache_state)
          @command = args[:command] if args.key?(:command)
          @enable_global_file_lock = args[:enable_global_file_lock] if args.key?(:enable_global_file_lock)
          @passphrase = args[:passphrase] if args.key?(:passphrase)
          @peer_cluster_name = args[:peer_cluster_name] if args.key?(:peer_cluster_name)
          @peer_ip_addresses = args[:peer_ip_addresses] if args.key?(:peer_ip_addresses)
          @peer_svm_name = args[:peer_svm_name] if args.key?(:peer_svm_name)
          @peer_volume_name = args[:peer_volume_name] if args.key?(:peer_volume_name)
          @peering_command_expiry_time = args[:peering_command_expiry_time] if args.key?(:peering_command_expiry_time)
          @state_details = args[:state_details] if args.key?(:state_details)
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
      
      # Make a snapshot every day e.g. at 04:00, 05:20, 23:50
      class DailySchedule
        include Google::Apis::Core::Hashable
      
        # Set the hour to start the snapshot (0-23), defaults to midnight (0).
        # Corresponds to the JSON property `hour`
        # @return [Float]
        attr_accessor :hour
      
        # Set the minute of the hour to start the snapshot (0-59), defaults to the top
        # of the hour (0).
        # Corresponds to the JSON property `minute`
        # @return [Float]
        attr_accessor :minute
      
        # The maximum number of Snapshots to keep for the hourly schedule
        # Corresponds to the JSON property `snapshotsToKeep`
        # @return [Float]
        attr_accessor :snapshots_to_keep
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @snapshots_to_keep = args[:snapshots_to_keep] if args.key?(:snapshots_to_keep)
        end
      end
      
      # DestinationVolumeParameters specify input parameters used for creating
      # destination volume.
      class DestinationVolumeParameters
        include Google::Apis::Core::Hashable
      
        # Description for the destination volume.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Destination volume's share name. If not specified, source volume's share name
        # will be used.
        # Corresponds to the JSON property `shareName`
        # @return [String]
        attr_accessor :share_name
      
        # Required. Existing destination StoragePool name.
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        # Defines tiering policy for the volume.
        # Corresponds to the JSON property `tieringPolicy`
        # @return [Google::Apis::NetappV1::TieringPolicy]
        attr_accessor :tiering_policy
      
        # Desired destination volume resource id. If not specified, source volume's
        # resource id will be used. This value must start with a lowercase letter
        # followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end
        # with a hyphen.
        # Corresponds to the JSON property `volumeId`
        # @return [String]
        attr_accessor :volume_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @share_name = args[:share_name] if args.key?(:share_name)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
          @tiering_policy = args[:tiering_policy] if args.key?(:tiering_policy)
          @volume_id = args[:volume_id] if args.key?(:volume_id)
        end
      end
      
      # EncryptVolumesRequest specifies the KMS config to encrypt existing volumes.
      class EncryptVolumesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # EstablishPeeringRequest establishes cluster and svm peerings between the
      # source and the destination replications.
      class EstablishPeeringRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the user's local source cluster to be peered with the
        # destination cluster.
        # Corresponds to the JSON property `peerClusterName`
        # @return [String]
        attr_accessor :peer_cluster_name
      
        # Optional. List of IPv4 ip addresses to be used for peering.
        # Corresponds to the JSON property `peerIpAddresses`
        # @return [Array<String>]
        attr_accessor :peer_ip_addresses
      
        # Required. Name of the user's local source vserver svm to be peered with the
        # destination vserver svm.
        # Corresponds to the JSON property `peerSvmName`
        # @return [String]
        attr_accessor :peer_svm_name
      
        # Required. Name of the user's local source volume to be peered with the
        # destination volume.
        # Corresponds to the JSON property `peerVolumeName`
        # @return [String]
        attr_accessor :peer_volume_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @peer_cluster_name = args[:peer_cluster_name] if args.key?(:peer_cluster_name)
          @peer_ip_addresses = args[:peer_ip_addresses] if args.key?(:peer_ip_addresses)
          @peer_svm_name = args[:peer_svm_name] if args.key?(:peer_svm_name)
          @peer_volume_name = args[:peer_volume_name] if args.key?(:peer_volume_name)
        end
      end
      
      # Defines the export policy for the volume.
      class ExportPolicy
        include Google::Apis::Core::Hashable
      
        # Required. List of export policy rules
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetappV1::SimpleExportPolicyRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
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
      
      # Host group is a collection of hosts that can be used for accessing a Block
      # Volume.
      class HostGroup
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the host group.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the host group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The list of hosts associated with the host group.
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        # Optional. Labels of the host group.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the host group. Format: `projects/`
        # project_number`/locations/`location_id`/hostGroups/`host_group_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The OS type of the host group. It indicates the type of operating
        # system used by all of the hosts in the HostGroup. All hosts in a HostGroup
        # must be of the same OS type. This can be set only when creating a HostGroup.
        # Corresponds to the JSON property `osType`
        # @return [String]
        attr_accessor :os_type
      
        # Output only. State of the host group.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Type of the host group.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @hosts = args[:hosts] if args.key?(:hosts)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @os_type = args[:os_type] if args.key?(:os_type)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Make a snapshot every hour e.g. at 04:00, 05:00, 06:00.
      class HourlySchedule
        include Google::Apis::Core::Hashable
      
        # Set the minute of the hour to start the snapshot (0-59), defaults to the top
        # of the hour (0).
        # Corresponds to the JSON property `minute`
        # @return [Float]
        attr_accessor :minute
      
        # The maximum number of Snapshots to keep for the hourly schedule
        # Corresponds to the JSON property `snapshotsToKeep`
        # @return [Float]
        attr_accessor :snapshots_to_keep
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minute = args[:minute] if args.key?(:minute)
          @snapshots_to_keep = args[:snapshots_to_keep] if args.key?(:snapshots_to_keep)
        end
      end
      
      # HybridPeeringDetails contains details about the hybrid peering.
      class HybridPeeringDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Copy-paste-able commands to be used on user's ONTAP to accept
        # peering requests.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # Output only. Expiration time for the peering command to be executed on user's
        # ONTAP.
        # Corresponds to the JSON property `commandExpiryTime`
        # @return [String]
        attr_accessor :command_expiry_time
      
        # Output only. Temporary passphrase generated to accept cluster peering command.
        # Corresponds to the JSON property `passphrase`
        # @return [String]
        attr_accessor :passphrase
      
        # Output only. Name of the user's local source cluster to be peered with the
        # destination cluster.
        # Corresponds to the JSON property `peerClusterName`
        # @return [String]
        attr_accessor :peer_cluster_name
      
        # Output only. Name of the user's local source vserver svm to be peered with the
        # destination vserver svm.
        # Corresponds to the JSON property `peerSvmName`
        # @return [String]
        attr_accessor :peer_svm_name
      
        # Output only. Name of the user's local source volume to be peered with the
        # destination volume.
        # Corresponds to the JSON property `peerVolumeName`
        # @return [String]
        attr_accessor :peer_volume_name
      
        # Output only. IP address of the subnet.
        # Corresponds to the JSON property `subnetIp`
        # @return [String]
        attr_accessor :subnet_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
          @command_expiry_time = args[:command_expiry_time] if args.key?(:command_expiry_time)
          @passphrase = args[:passphrase] if args.key?(:passphrase)
          @peer_cluster_name = args[:peer_cluster_name] if args.key?(:peer_cluster_name)
          @peer_svm_name = args[:peer_svm_name] if args.key?(:peer_svm_name)
          @peer_volume_name = args[:peer_volume_name] if args.key?(:peer_volume_name)
          @subnet_ip = args[:subnet_ip] if args.key?(:subnet_ip)
        end
      end
      
      # The Hybrid Replication parameters for the volume.
      class HybridReplicationParameters
        include Google::Apis::Core::Hashable
      
        # Optional. Name of source cluster location associated with the Hybrid
        # replication. This is a free-form field for the display purpose only.
        # Corresponds to the JSON property `clusterLocation`
        # @return [String]
        attr_accessor :cluster_location
      
        # Optional. Description of the replication.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Type of the hybrid replication.
        # Corresponds to the JSON property `hybridReplicationType`
        # @return [String]
        attr_accessor :hybrid_replication_type
      
        # Optional. Labels to be added to the replication as the key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Constituent volume count for large volume.
        # Corresponds to the JSON property `largeVolumeConstituentCount`
        # @return [Fixnum]
        attr_accessor :large_volume_constituent_count
      
        # Required. Name of the user's local source cluster to be peered with the
        # destination cluster.
        # Corresponds to the JSON property `peerClusterName`
        # @return [String]
        attr_accessor :peer_cluster_name
      
        # Required. List of node ip addresses to be peered with.
        # Corresponds to the JSON property `peerIpAddresses`
        # @return [Array<String>]
        attr_accessor :peer_ip_addresses
      
        # Required. Name of the user's local source vserver svm to be peered with the
        # destination vserver svm.
        # Corresponds to the JSON property `peerSvmName`
        # @return [String]
        attr_accessor :peer_svm_name
      
        # Required. Name of the user's local source volume to be peered with the
        # destination volume.
        # Corresponds to the JSON property `peerVolumeName`
        # @return [String]
        attr_accessor :peer_volume_name
      
        # Required. Desired name for the replication of this volume.
        # Corresponds to the JSON property `replication`
        # @return [String]
        attr_accessor :replication
      
        # Optional. Replication Schedule for the replication created.
        # Corresponds to the JSON property `replicationSchedule`
        # @return [String]
        attr_accessor :replication_schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_location = args[:cluster_location] if args.key?(:cluster_location)
          @description = args[:description] if args.key?(:description)
          @hybrid_replication_type = args[:hybrid_replication_type] if args.key?(:hybrid_replication_type)
          @labels = args[:labels] if args.key?(:labels)
          @large_volume_constituent_count = args[:large_volume_constituent_count] if args.key?(:large_volume_constituent_count)
          @peer_cluster_name = args[:peer_cluster_name] if args.key?(:peer_cluster_name)
          @peer_ip_addresses = args[:peer_ip_addresses] if args.key?(:peer_ip_addresses)
          @peer_svm_name = args[:peer_svm_name] if args.key?(:peer_svm_name)
          @peer_volume_name = args[:peer_volume_name] if args.key?(:peer_volume_name)
          @replication = args[:replication] if args.key?(:replication)
          @replication_schedule = args[:replication_schedule] if args.key?(:replication_schedule)
        end
      end
      
      # KmsConfig is the customer managed encryption key(CMEK) configuration.
      class KmsConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the KmsConfig.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Customer managed crypto key resource full name. Format: projects/`
        # project`/locations/`location`/keyRings/`key_ring`/cryptoKeys/`crypto_key`.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Description of the KmsConfig.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Instructions to provide the access to the customer provided
        # encryption key.
        # Corresponds to the JSON property `instructions`
        # @return [String]
        attr_accessor :instructions
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the KmsConfig.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The Service account which will have access to the customer
        # provided encryption key.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. State of the KmsConfig.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the KmsConfig.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @description = args[:description] if args.key?(:description)
          @instructions = args[:instructions] if args.key?(:instructions)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
        end
      end
      
      # ListActiveDirectoriesResponse contains all the active directories requested.
      class ListActiveDirectoriesResponse
        include Google::Apis::Core::Hashable
      
        # The list of active directories.
        # Corresponds to the JSON property `activeDirectories`
        # @return [Array<Google::Apis::NetappV1::ActiveDirectory>]
        attr_accessor :active_directories
      
        # A token identifying a page of results the server should return.
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
          @active_directories = args[:active_directories] if args.key?(:active_directories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListBackupPoliciesResponse contains all the backup policies requested.
      class ListBackupPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The list of backup policies.
        # Corresponds to the JSON property `backupPolicies`
        # @return [Array<Google::Apis::NetappV1::BackupPolicy>]
        attr_accessor :backup_policies
      
        # A token identifying a page of results the server should return.
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
          @backup_policies = args[:backup_policies] if args.key?(:backup_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListBackupVaultsResponse is the result of ListBackupVaultsRequest.
      class ListBackupVaultsResponse
        include Google::Apis::Core::Hashable
      
        # A list of backupVaults in the project for the specified location.
        # Corresponds to the JSON property `backupVaults`
        # @return [Array<Google::Apis::NetappV1::BackupVault>]
        attr_accessor :backup_vaults
      
        # The token you can use to retrieve the next page of results. Not returned if
        # there are no more results in the list.
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
          @backup_vaults = args[:backup_vaults] if args.key?(:backup_vaults)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListBackupsResponse is the result of ListBackupsRequest.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # A list of backups in the project.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::NetappV1::Backup>]
        attr_accessor :backups
      
        # The token you can use to retrieve the next page of results. Not returned if
        # there are no more results in the list.
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
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListHostGroupsResponse is the response to a ListHostGroupsRequest.
      class ListHostGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of host groups.
        # Corresponds to the JSON property `hostGroups`
        # @return [Array<Google::Apis::NetappV1::HostGroup>]
        attr_accessor :host_groups
      
        # A token identifying a page of results the server should return.
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
          @host_groups = args[:host_groups] if args.key?(:host_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListKmsConfigsResponse is the response to a ListKmsConfigsRequest.
      class ListKmsConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of KmsConfigs
        # Corresponds to the JSON property `kmsConfigs`
        # @return [Array<Google::Apis::NetappV1::KmsConfig>]
        attr_accessor :kms_configs
      
        # A token identifying a page of results the server should return.
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
          @kms_configs = args[:kms_configs] if args.key?(:kms_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetappV1::Location>]
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
        # @return [Array<Google::Apis::NetappV1::Operation>]
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
      
      # ListQuotaRulesResponse is the response to a ListQuotaRulesRequest.
      class ListQuotaRulesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of quota rules
        # Corresponds to the JSON property `quotaRules`
        # @return [Array<Google::Apis::NetappV1::QuotaRule>]
        attr_accessor :quota_rules
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @quota_rules = args[:quota_rules] if args.key?(:quota_rules)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListReplicationsResponse is the result of ListReplicationsRequest.
      class ListReplicationsResponse
        include Google::Apis::Core::Hashable
      
        # The token you can use to retrieve the next page of results. Not returned if
        # there are no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of replications in the project for the specified volume.
        # Corresponds to the JSON property `replications`
        # @return [Array<Google::Apis::NetappV1::Replication>]
        attr_accessor :replications
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @replications = args[:replications] if args.key?(:replications)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListSnapshotsResponse is the result of ListSnapshotsRequest.
      class ListSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # The token you can use to retrieve the next page of results. Not returned if
        # there are no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of snapshots in the project for the specified volume.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<Google::Apis::NetappV1::Snapshot>]
        attr_accessor :snapshots
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListStoragePoolsResponse is the response to a ListStoragePoolsRequest.
      class ListStoragePoolsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of StoragePools
        # Corresponds to the JSON property `storagePools`
        # @return [Array<Google::Apis::NetappV1::StoragePool>]
        attr_accessor :storage_pools
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @storage_pools = args[:storage_pools] if args.key?(:storage_pools)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Volumes
      class ListVolumesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of Volume
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::NetappV1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @volumes = args[:volumes] if args.key?(:volumes)
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
      
      # Metadata for a given google.cloud.location.Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates if the location has VCP support.
        # Corresponds to the JSON property `hasVcp`
        # @return [Boolean]
        attr_accessor :has_vcp
        alias_method :has_vcp?, :has_vcp
      
        # Output only. Supported flex performance in a location.
        # Corresponds to the JSON property `supportedFlexPerformance`
        # @return [Array<String>]
        attr_accessor :supported_flex_performance
      
        # Output only. Supported service levels in a location.
        # Corresponds to the JSON property `supportedServiceLevels`
        # @return [Array<String>]
        attr_accessor :supported_service_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_vcp = args[:has_vcp] if args.key?(:has_vcp)
          @supported_flex_performance = args[:supported_flex_performance] if args.key?(:supported_flex_performance)
          @supported_service_levels = args[:supported_service_levels] if args.key?(:supported_service_levels)
        end
      end
      
      # Make a snapshot once a month e.g. at 2nd 04:00, 7th 05:20, 24th 23:50
      class MonthlySchedule
        include Google::Apis::Core::Hashable
      
        # Set the day or days of the month to make a snapshot (1-31). Accepts a comma
        # separated number of days. Defaults to '1'.
        # Corresponds to the JSON property `daysOfMonth`
        # @return [String]
        attr_accessor :days_of_month
      
        # Set the hour to start the snapshot (0-23), defaults to midnight (0).
        # Corresponds to the JSON property `hour`
        # @return [Float]
        attr_accessor :hour
      
        # Set the minute of the hour to start the snapshot (0-59), defaults to the top
        # of the hour (0).
        # Corresponds to the JSON property `minute`
        # @return [Float]
        attr_accessor :minute
      
        # The maximum number of Snapshots to keep for the hourly schedule
        # Corresponds to the JSON property `snapshotsToKeep`
        # @return [Float]
        attr_accessor :snapshots_to_keep
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_of_month = args[:days_of_month] if args.key?(:days_of_month)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @snapshots_to_keep = args[:snapshots_to_keep] if args.key?(:snapshots_to_keep)
        end
      end
      
      # View only mount options for a volume.
      class MountOption
        include Google::Apis::Core::Hashable
      
        # Export string
        # Corresponds to the JSON property `export`
        # @return [String]
        attr_accessor :export
      
        # Full export string
        # Corresponds to the JSON property `exportFull`
        # @return [String]
        attr_accessor :export_full
      
        # Instructions for mounting
        # Corresponds to the JSON property `instructions`
        # @return [String]
        attr_accessor :instructions
      
        # Output only. IP Address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Protocol to mount with.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export = args[:export] if args.key?(:export)
          @export_full = args[:export_full] if args.key?(:export_full)
          @instructions = args[:instructions] if args.key?(:instructions)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @protocol = args[:protocol] if args.key?(:protocol)
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
        # @return [Google::Apis::NetappV1::Status]
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
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been canceled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
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
      
      # QuotaRule specifies the maximum disk space a user or group can use within a
      # volume. They can be used for creating default and individual quota rules.
      class QuotaRule
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the quota rule
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the quota rule
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The maximum allowed disk space in MiB.
        # Corresponds to the JSON property `diskLimitMib`
        # @return [Fixnum]
        attr_accessor :disk_limit_mib
      
        # Optional. Labels of the quota rule
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the quota rule. Format: `projects/`
        # project_number`/locations/`location_id`/volumes/volumes/`volume_id`/quotaRules/
        # `quota_rule_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the quota rule
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the quota rule
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Optional. The quota rule applies to the specified user or group, identified by
        # a Unix UID/GID, Windows SID, or null for default.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Required. The type of quota rule.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @disk_limit_mib = args[:disk_limit_mib] if args.key?(:disk_limit_mib)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @target = args[:target] if args.key?(:target)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Replication is a nested resource under Volume, that describes a cross-region
      # replication relationship between 2 volumes in different regions.
      class Replication
        include Google::Apis::Core::Hashable
      
        # Optional. Location of the user cluster.
        # Corresponds to the JSON property `clusterLocation`
        # @return [String]
        attr_accessor :cluster_location
      
        # Output only. Replication create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description about this replication relationship.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Full name of destination volume resource. Example : "projects/`
        # project`/locations/`location`/volumes/`volume_id`"
        # Corresponds to the JSON property `destinationVolume`
        # @return [String]
        attr_accessor :destination_volume
      
        # DestinationVolumeParameters specify input parameters used for creating
        # destination volume.
        # Corresponds to the JSON property `destinationVolumeParameters`
        # @return [Google::Apis::NetappV1::DestinationVolumeParameters]
        attr_accessor :destination_volume_parameters
      
        # Output only. Condition of the relationship. Can be one of the following: -
        # true: The replication relationship is healthy. It has not missed the most
        # recent scheduled transfer. - false: The replication relationship is not
        # healthy. It has missed the most recent scheduled transfer.
        # Corresponds to the JSON property `healthy`
        # @return [Boolean]
        attr_accessor :healthy
        alias_method :healthy?, :healthy
      
        # HybridPeeringDetails contains details about the hybrid peering.
        # Corresponds to the JSON property `hybridPeeringDetails`
        # @return [Google::Apis::NetappV1::HybridPeeringDetails]
        attr_accessor :hybrid_peering_details
      
        # Output only. Type of the hybrid replication.
        # Corresponds to the JSON property `hybridReplicationType`
        # @return [String]
        attr_accessor :hybrid_replication_type
      
        # UserCommands contains the commands to be executed by the customer.
        # Corresponds to the JSON property `hybridReplicationUserCommands`
        # @return [Google::Apis::NetappV1::UserCommands]
        attr_accessor :hybrid_replication_user_commands
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Indicates the state of mirroring.
        # Corresponds to the JSON property `mirrorState`
        # @return [String]
        attr_accessor :mirror_state
      
        # Identifier. The resource name of the Replication. Format: `projects/`
        # project_id`/locations/`location`/volumes/`volume_id`/replications/`
        # replication_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Indicates the schedule for replication.
        # Corresponds to the JSON property `replicationSchedule`
        # @return [String]
        attr_accessor :replication_schedule
      
        # Output only. Indicates whether this points to source or destination.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Output only. Full name of source volume resource. Example : "projects/`project`
        # /locations/`location`/volumes/`volume_id`"
        # Corresponds to the JSON property `sourceVolume`
        # @return [String]
        attr_accessor :source_volume
      
        # Output only. State of the replication.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the replication.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # TransferStats reports all statistics related to replication transfer.
        # Corresponds to the JSON property `transferStats`
        # @return [Google::Apis::NetappV1::TransferStats]
        attr_accessor :transfer_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_location = args[:cluster_location] if args.key?(:cluster_location)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_volume = args[:destination_volume] if args.key?(:destination_volume)
          @destination_volume_parameters = args[:destination_volume_parameters] if args.key?(:destination_volume_parameters)
          @healthy = args[:healthy] if args.key?(:healthy)
          @hybrid_peering_details = args[:hybrid_peering_details] if args.key?(:hybrid_peering_details)
          @hybrid_replication_type = args[:hybrid_replication_type] if args.key?(:hybrid_replication_type)
          @hybrid_replication_user_commands = args[:hybrid_replication_user_commands] if args.key?(:hybrid_replication_user_commands)
          @labels = args[:labels] if args.key?(:labels)
          @mirror_state = args[:mirror_state] if args.key?(:mirror_state)
          @name = args[:name] if args.key?(:name)
          @replication_schedule = args[:replication_schedule] if args.key?(:replication_schedule)
          @role = args[:role] if args.key?(:role)
          @source_volume = args[:source_volume] if args.key?(:source_volume)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @transfer_stats = args[:transfer_stats] if args.key?(:transfer_stats)
        end
      end
      
      # RestoreBackupFilesRequest restores files from a backup to a volume.
      class RestoreBackupFilesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The backup resource name, in the format `projects/`project_id`/
        # locations/`location`/backupVaults/`backup_vault_id`/backups/`backup_id``
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Required. List of files to be restored in the form of their absolute path as
        # in source volume.
        # Corresponds to the JSON property `fileList`
        # @return [Array<String>]
        attr_accessor :file_list
      
        # Optional. Absolute directory path in the destination volume.
        # Corresponds to the JSON property `restoreDestinationPath`
        # @return [String]
        attr_accessor :restore_destination_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @file_list = args[:file_list] if args.key?(:file_list)
          @restore_destination_path = args[:restore_destination_path] if args.key?(:restore_destination_path)
        end
      end
      
      # The RestoreParameters if volume is created from a snapshot or backup.
      class RestoreParameters
        include Google::Apis::Core::Hashable
      
        # Full name of the backup resource. Format: projects/`project`/locations/`
        # location`/backupVaults/`backup_vault_id`/backups/`backup_id`
        # Corresponds to the JSON property `sourceBackup`
        # @return [String]
        attr_accessor :source_backup
      
        # Full name of the snapshot resource. Format: projects/`project`/locations/`
        # location`/volumes/`volume`/snapshots/`snapshot`
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_backup = args[:source_backup] if args.key?(:source_backup)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
        end
      end
      
      # ResumeReplicationRequest resumes a stopped replication.
      class ResumeReplicationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ReverseReplicationDirectionRequest reverses direction of replication. Source
      # becomes destination and destination becomes source.
      class ReverseReplicationDirectionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # RevertVolumeRequest reverts the given volume to the specified snapshot.
      class RevertVolumeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The snapshot resource ID, in the format 'my-snapshot', where the
        # specified ID is the `snapshot_id` of the fully qualified name like projects/`
        # project_id`/locations/`location_id`/volumes/`volume_id`/snapshots/`snapshot_id`
        # Corresponds to the JSON property `snapshotId`
        # @return [String]
        attr_accessor :snapshot_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot_id = args[:snapshot_id] if args.key?(:snapshot_id)
        end
      end
      
      # An export policy rule describing various export options.
      class SimpleExportPolicyRule
        include Google::Apis::Core::Hashable
      
        # Access type (ReadWrite, ReadOnly, None)
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Comma separated list of allowed clients IP addresses
        # Corresponds to the JSON property `allowedClients`
        # @return [String]
        attr_accessor :allowed_clients
      
        # Optional. An integer representing the anonymous user ID. Range is 0 to
        # 4294967295. Required when squash_mode is ROOT_SQUASH or ALL_SQUASH.
        # Corresponds to the JSON property `anonUid`
        # @return [Fixnum]
        attr_accessor :anon_uid
      
        # Whether Unix root access will be granted.
        # Corresponds to the JSON property `hasRootAccess`
        # @return [String]
        attr_accessor :has_root_access
      
        # If enabled (true) the rule defines a read only access for clients matching the
        # 'allowedClients' specification. It enables nfs clients to mount using '
        # authentication' kerberos security mode.
        # Corresponds to the JSON property `kerberos5ReadOnly`
        # @return [Boolean]
        attr_accessor :kerberos5_read_only
        alias_method :kerberos5_read_only?, :kerberos5_read_only
      
        # If enabled (true) the rule defines read and write access for clients matching
        # the 'allowedClients' specification. It enables nfs clients to mount using '
        # authentication' kerberos security mode. The 'kerberos5ReadOnly' value be
        # ignored if this is enabled.
        # Corresponds to the JSON property `kerberos5ReadWrite`
        # @return [Boolean]
        attr_accessor :kerberos5_read_write
        alias_method :kerberos5_read_write?, :kerberos5_read_write
      
        # If enabled (true) the rule defines a read only access for clients matching the
        # 'allowedClients' specification. It enables nfs clients to mount using '
        # integrity' kerberos security mode.
        # Corresponds to the JSON property `kerberos5iReadOnly`
        # @return [Boolean]
        attr_accessor :kerberos5i_read_only
        alias_method :kerberos5i_read_only?, :kerberos5i_read_only
      
        # If enabled (true) the rule defines read and write access for clients matching
        # the 'allowedClients' specification. It enables nfs clients to mount using '
        # integrity' kerberos security mode. The 'kerberos5iReadOnly' value be ignored
        # if this is enabled.
        # Corresponds to the JSON property `kerberos5iReadWrite`
        # @return [Boolean]
        attr_accessor :kerberos5i_read_write
        alias_method :kerberos5i_read_write?, :kerberos5i_read_write
      
        # If enabled (true) the rule defines a read only access for clients matching the
        # 'allowedClients' specification. It enables nfs clients to mount using 'privacy'
        # kerberos security mode.
        # Corresponds to the JSON property `kerberos5pReadOnly`
        # @return [Boolean]
        attr_accessor :kerberos5p_read_only
        alias_method :kerberos5p_read_only?, :kerberos5p_read_only
      
        # If enabled (true) the rule defines read and write access for clients matching
        # the 'allowedClients' specification. It enables nfs clients to mount using '
        # privacy' kerberos security mode. The 'kerberos5pReadOnly' value be ignored if
        # this is enabled.
        # Corresponds to the JSON property `kerberos5pReadWrite`
        # @return [Boolean]
        attr_accessor :kerberos5p_read_write
        alias_method :kerberos5p_read_write?, :kerberos5p_read_write
      
        # NFS V3 protocol.
        # Corresponds to the JSON property `nfsv3`
        # @return [Boolean]
        attr_accessor :nfsv3
        alias_method :nfsv3?, :nfsv3
      
        # NFS V4 protocol.
        # Corresponds to the JSON property `nfsv4`
        # @return [Boolean]
        attr_accessor :nfsv4
        alias_method :nfsv4?, :nfsv4
      
        # Optional. Defines how user identity squashing is applied for this export rule.
        # This field is the preferred way to configure squashing behavior and takes
        # precedence over `has_root_access` if both are provided.
        # Corresponds to the JSON property `squashMode`
        # @return [String]
        attr_accessor :squash_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @allowed_clients = args[:allowed_clients] if args.key?(:allowed_clients)
          @anon_uid = args[:anon_uid] if args.key?(:anon_uid)
          @has_root_access = args[:has_root_access] if args.key?(:has_root_access)
          @kerberos5_read_only = args[:kerberos5_read_only] if args.key?(:kerberos5_read_only)
          @kerberos5_read_write = args[:kerberos5_read_write] if args.key?(:kerberos5_read_write)
          @kerberos5i_read_only = args[:kerberos5i_read_only] if args.key?(:kerberos5i_read_only)
          @kerberos5i_read_write = args[:kerberos5i_read_write] if args.key?(:kerberos5i_read_write)
          @kerberos5p_read_only = args[:kerberos5p_read_only] if args.key?(:kerberos5p_read_only)
          @kerberos5p_read_write = args[:kerberos5p_read_write] if args.key?(:kerberos5p_read_write)
          @nfsv3 = args[:nfsv3] if args.key?(:nfsv3)
          @nfsv4 = args[:nfsv4] if args.key?(:nfsv4)
          @squash_mode = args[:squash_mode] if args.key?(:squash_mode)
        end
      end
      
      # Snapshot is a point-in-time version of a Volume's content.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the snapshot was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the snapshot with 2048 characters or less. Requests with
        # longer descriptions will be rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the snapshot. Format: `projects/`project_id`/
        # locations/`location`/volumes/`volume_id`/snapshots/`snapshot_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The snapshot state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the storage pool
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Output only. Current storage usage for the snapshot in bytes.
        # Corresponds to the JSON property `usedBytes`
        # @return [Float]
        attr_accessor :used_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @used_bytes = args[:used_bytes] if args.key?(:used_bytes)
        end
      end
      
      # Snapshot Policy for a volume.
      class SnapshotPolicy
        include Google::Apis::Core::Hashable
      
        # Make a snapshot every day e.g. at 04:00, 05:20, 23:50
        # Corresponds to the JSON property `dailySchedule`
        # @return [Google::Apis::NetappV1::DailySchedule]
        attr_accessor :daily_schedule
      
        # If enabled, make snapshots automatically according to the schedules. Default
        # is false.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Make a snapshot every hour e.g. at 04:00, 05:00, 06:00.
        # Corresponds to the JSON property `hourlySchedule`
        # @return [Google::Apis::NetappV1::HourlySchedule]
        attr_accessor :hourly_schedule
      
        # Make a snapshot once a month e.g. at 2nd 04:00, 7th 05:20, 24th 23:50
        # Corresponds to the JSON property `monthlySchedule`
        # @return [Google::Apis::NetappV1::MonthlySchedule]
        attr_accessor :monthly_schedule
      
        # Make a snapshot every week e.g. at Monday 04:00, Wednesday 05:20, Sunday 23:50
        # Corresponds to the JSON property `weeklySchedule`
        # @return [Google::Apis::NetappV1::WeeklySchedule]
        attr_accessor :weekly_schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_schedule = args[:daily_schedule] if args.key?(:daily_schedule)
          @enabled = args[:enabled] if args.key?(:enabled)
          @hourly_schedule = args[:hourly_schedule] if args.key?(:hourly_schedule)
          @monthly_schedule = args[:monthly_schedule] if args.key?(:monthly_schedule)
          @weekly_schedule = args[:weekly_schedule] if args.key?(:weekly_schedule)
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
      
      # StopReplicationRequest stops a replication until resumed.
      class StopReplicationRequest
        include Google::Apis::Core::Hashable
      
        # Indicates whether to stop replication forcefully while data transfer is in
        # progress. Warning! if force is true, this will abort any current transfers and
        # can lead to data loss due to partial transfer. If force is false, stop
        # replication will fail while data transfer is in progress and you will need to
        # retry later.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # StoragePool is a container for volumes with a service level and capacity.
      # Volumes can be created in a pool of sufficient available capacity. StoragePool
      # capacity is what you are billed for.
      class StoragePool
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the Active Directory to be used for creating a SMB volume.
        # Corresponds to the JSON property `activeDirectory`
        # @return [String]
        attr_accessor :active_directory
      
        # Optional. True if the storage pool supports Auto Tiering enabled volumes.
        # Default is false. Auto-tiering can be enabled after storage pool creation but
        # it can't be disabled once enabled.
        # Corresponds to the JSON property `allowAutoTiering`
        # @return [Boolean]
        attr_accessor :allow_auto_tiering
        alias_method :allow_auto_tiering?, :allow_auto_tiering
      
        # Output only. Available throughput of the storage pool (in MiB/s).
        # Corresponds to the JSON property `availableThroughputMibps`
        # @return [Float]
        attr_accessor :available_throughput_mibps
      
        # Required. Capacity in GIB of the pool
        # Corresponds to the JSON property `capacityGib`
        # @return [Fixnum]
        attr_accessor :capacity_gib
      
        # Output only. Total cold tier data rounded down to the nearest GiB used by the
        # storage pool.
        # Corresponds to the JSON property `coldTierSizeUsedGib`
        # @return [Fixnum]
        attr_accessor :cold_tier_size_used_gib
      
        # Output only. Create time of the storage pool
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. True if using Independent Scaling of capacity and performance (
        # Hyperdisk) By default set to false
        # Corresponds to the JSON property `customPerformanceEnabled`
        # @return [Boolean]
        attr_accessor :custom_performance_enabled
        alias_method :custom_performance_enabled?, :custom_performance_enabled
      
        # Optional. Description of the storage pool
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Flag indicating that the hot-tier threshold will be auto-increased
        # by 10% of the hot-tier when it hits 100%. Default is true. The increment will
        # kick in only if the new size after increment is still less than or equal to
        # storage pool size.
        # Corresponds to the JSON property `enableHotTierAutoResize`
        # @return [Boolean]
        attr_accessor :enable_hot_tier_auto_resize
        alias_method :enable_hot_tier_auto_resize?, :enable_hot_tier_auto_resize
      
        # Output only. Specifies the current pool encryption key source.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Deprecated. Used to allow SO pool to access AD or DNS server from other
        # regions.
        # Corresponds to the JSON property `globalAccessAllowed`
        # @return [Boolean]
        attr_accessor :global_access_allowed
        alias_method :global_access_allowed?, :global_access_allowed
      
        # Optional. Total hot tier capacity for the Storage Pool. It is applicable only
        # to Flex service level. It should be less than the minimum storage pool size
        # and cannot be more than the current storage pool size. It cannot be decreased
        # once set.
        # Corresponds to the JSON property `hotTierSizeGib`
        # @return [Fixnum]
        attr_accessor :hot_tier_size_gib
      
        # Output only. Total hot tier data rounded down to the nearest GiB used by the
        # storage pool.
        # Corresponds to the JSON property `hotTierSizeUsedGib`
        # @return [Fixnum]
        attr_accessor :hot_tier_size_used_gib
      
        # Optional. Specifies the KMS config to be used for volume encryption.
        # Corresponds to the JSON property `kmsConfig`
        # @return [String]
        attr_accessor :kms_config
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Flag indicating if the pool is NFS LDAP enabled or not.
        # Corresponds to the JSON property `ldapEnabled`
        # @return [Boolean]
        attr_accessor :ldap_enabled
        alias_method :ldap_enabled?, :ldap_enabled
      
        # Identifier. Name of the storage pool
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. VPC Network name. Format: projects/`project`/global/networks/`
        # network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. This field is not implemented. The values provided in this field are
        # ignored.
        # Corresponds to the JSON property `psaRange`
        # @return [String]
        attr_accessor :psa_range
      
        # Optional. QoS (Quality of Service) Type of the storage pool
        # Corresponds to the JSON property `qosType`
        # @return [String]
        attr_accessor :qos_type
      
        # Optional. Specifies the replica zone for regional storagePool.
        # Corresponds to the JSON property `replicaZone`
        # @return [String]
        attr_accessor :replica_zone
      
        # Output only. Reserved for future use
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Required. Service level of the storage pool
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        # Output only. State of the storage pool
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the storage pool
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Optional. Custom Performance Total IOPS of the pool if not provided, it will
        # be calculated based on the total_throughput_mibps
        # Corresponds to the JSON property `totalIops`
        # @return [Fixnum]
        attr_accessor :total_iops
      
        # Optional. Custom Performance Total Throughput of the pool (in MiBps)
        # Corresponds to the JSON property `totalThroughputMibps`
        # @return [Fixnum]
        attr_accessor :total_throughput_mibps
      
        # Optional. Type of the storage pool. This field is used to control whether the
        # pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
        # If not specified during creation, it defaults to FILE.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Allocated size of all volumes in GIB in the storage pool
        # Corresponds to the JSON property `volumeCapacityGib`
        # @return [Fixnum]
        attr_accessor :volume_capacity_gib
      
        # Output only. Volume count of the storage pool
        # Corresponds to the JSON property `volumeCount`
        # @return [Fixnum]
        attr_accessor :volume_count
      
        # Optional. Specifies the active zone for regional storagePool.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_directory = args[:active_directory] if args.key?(:active_directory)
          @allow_auto_tiering = args[:allow_auto_tiering] if args.key?(:allow_auto_tiering)
          @available_throughput_mibps = args[:available_throughput_mibps] if args.key?(:available_throughput_mibps)
          @capacity_gib = args[:capacity_gib] if args.key?(:capacity_gib)
          @cold_tier_size_used_gib = args[:cold_tier_size_used_gib] if args.key?(:cold_tier_size_used_gib)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_performance_enabled = args[:custom_performance_enabled] if args.key?(:custom_performance_enabled)
          @description = args[:description] if args.key?(:description)
          @enable_hot_tier_auto_resize = args[:enable_hot_tier_auto_resize] if args.key?(:enable_hot_tier_auto_resize)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @global_access_allowed = args[:global_access_allowed] if args.key?(:global_access_allowed)
          @hot_tier_size_gib = args[:hot_tier_size_gib] if args.key?(:hot_tier_size_gib)
          @hot_tier_size_used_gib = args[:hot_tier_size_used_gib] if args.key?(:hot_tier_size_used_gib)
          @kms_config = args[:kms_config] if args.key?(:kms_config)
          @labels = args[:labels] if args.key?(:labels)
          @ldap_enabled = args[:ldap_enabled] if args.key?(:ldap_enabled)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @psa_range = args[:psa_range] if args.key?(:psa_range)
          @qos_type = args[:qos_type] if args.key?(:qos_type)
          @replica_zone = args[:replica_zone] if args.key?(:replica_zone)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @service_level = args[:service_level] if args.key?(:service_level)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @total_iops = args[:total_iops] if args.key?(:total_iops)
          @total_throughput_mibps = args[:total_throughput_mibps] if args.key?(:total_throughput_mibps)
          @type = args[:type] if args.key?(:type)
          @volume_capacity_gib = args[:volume_capacity_gib] if args.key?(:volume_capacity_gib)
          @volume_count = args[:volume_count] if args.key?(:volume_count)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SwitchActiveReplicaZoneRequest switch the active/replica zone for a regional
      # storagePool.
      class SwitchActiveReplicaZoneRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SyncReplicationRequest syncs the replication from source to destination.
      class SyncReplicationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Defines tiering policy for the volume.
      class TieringPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Time in days to mark the volume's data block as cold and make it
        # eligible for tiering, can be range from 2-183. Default is 31.
        # Corresponds to the JSON property `coolingThresholdDays`
        # @return [Fixnum]
        attr_accessor :cooling_threshold_days
      
        # Optional. Flag indicating that the hot tier bypass mode is enabled. Default is
        # false. This is only applicable to Flex service level.
        # Corresponds to the JSON property `hotTierBypassModeEnabled`
        # @return [Boolean]
        attr_accessor :hot_tier_bypass_mode_enabled
        alias_method :hot_tier_bypass_mode_enabled?, :hot_tier_bypass_mode_enabled
      
        # Optional. Flag indicating if the volume has tiering policy enable/pause.
        # Default is PAUSED.
        # Corresponds to the JSON property `tierAction`
        # @return [String]
        attr_accessor :tier_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cooling_threshold_days = args[:cooling_threshold_days] if args.key?(:cooling_threshold_days)
          @hot_tier_bypass_mode_enabled = args[:hot_tier_bypass_mode_enabled] if args.key?(:hot_tier_bypass_mode_enabled)
          @tier_action = args[:tier_action] if args.key?(:tier_action)
        end
      end
      
      # TransferStats reports all statistics related to replication transfer.
      class TransferStats
        include Google::Apis::Core::Hashable
      
        # Lag duration indicates the duration by which Destination region volume content
        # lags behind the primary region volume content.
        # Corresponds to the JSON property `lagDuration`
        # @return [String]
        attr_accessor :lag_duration
      
        # Last transfer size in bytes.
        # Corresponds to the JSON property `lastTransferBytes`
        # @return [Fixnum]
        attr_accessor :last_transfer_bytes
      
        # Time taken during last transfer.
        # Corresponds to the JSON property `lastTransferDuration`
        # @return [String]
        attr_accessor :last_transfer_duration
      
        # Time when last transfer completed.
        # Corresponds to the JSON property `lastTransferEndTime`
        # @return [String]
        attr_accessor :last_transfer_end_time
      
        # A message describing the cause of the last transfer failure.
        # Corresponds to the JSON property `lastTransferError`
        # @return [String]
        attr_accessor :last_transfer_error
      
        # Cumulative time taken across all transfers for the replication relationship.
        # Corresponds to the JSON property `totalTransferDuration`
        # @return [String]
        attr_accessor :total_transfer_duration
      
        # Cumulative bytes transferred so far for the replication relationship.
        # Corresponds to the JSON property `transferBytes`
        # @return [Fixnum]
        attr_accessor :transfer_bytes
      
        # Time when progress was updated last.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lag_duration = args[:lag_duration] if args.key?(:lag_duration)
          @last_transfer_bytes = args[:last_transfer_bytes] if args.key?(:last_transfer_bytes)
          @last_transfer_duration = args[:last_transfer_duration] if args.key?(:last_transfer_duration)
          @last_transfer_end_time = args[:last_transfer_end_time] if args.key?(:last_transfer_end_time)
          @last_transfer_error = args[:last_transfer_error] if args.key?(:last_transfer_error)
          @total_transfer_duration = args[:total_transfer_duration] if args.key?(:total_transfer_duration)
          @transfer_bytes = args[:transfer_bytes] if args.key?(:transfer_bytes)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # UserCommands contains the commands to be executed by the customer.
      class UserCommands
        include Google::Apis::Core::Hashable
      
        # Output only. List of commands to be executed by the customer.
        # Corresponds to the JSON property `commands`
        # @return [Array<String>]
        attr_accessor :commands
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commands = args[:commands] if args.key?(:commands)
        end
      end
      
      # ValidateDirectoryServiceRequest validates the directory service policy
      # attached to the storage pool.
      class ValidateDirectoryServiceRequest
        include Google::Apis::Core::Hashable
      
        # Type of directory service policy attached to the storage pool.
        # Corresponds to the JSON property `directoryServiceType`
        # @return [String]
        attr_accessor :directory_service_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_service_type = args[:directory_service_type] if args.key?(:directory_service_type)
        end
      end
      
      # VerifyKmsConfigRequest specifies the KMS config to be validated.
      class VerifyKmsConfigRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # VerifyKmsConfigResponse contains the information if the config is correctly
      # and error message.
      class VerifyKmsConfigResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Error message if config is not healthy.
        # Corresponds to the JSON property `healthError`
        # @return [String]
        attr_accessor :health_error
      
        # Output only. If the customer key configured correctly to the encrypt volume.
        # Corresponds to the JSON property `healthy`
        # @return [Boolean]
        attr_accessor :healthy
        alias_method :healthy?, :healthy
      
        # Output only. Instructions for the customers to provide the access to the
        # encryption key.
        # Corresponds to the JSON property `instructions`
        # @return [String]
        attr_accessor :instructions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_error = args[:health_error] if args.key?(:health_error)
          @healthy = args[:healthy] if args.key?(:healthy)
          @instructions = args[:instructions] if args.key?(:instructions)
        end
      end
      
      # Volume provides a filesystem that you can mount.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the ActiveDirectory name of a SMB volume.
        # Corresponds to the JSON property `activeDirectory`
        # @return [String]
        attr_accessor :active_directory
      
        # BackupConfig contains backup related config on a volume.
        # Corresponds to the JSON property `backupConfig`
        # @return [Google::Apis::NetappV1::BackupConfig]
        attr_accessor :backup_config
      
        # Optional. Block devices for the volume. Currently, only one block device is
        # permitted per Volume.
        # Corresponds to the JSON property `blockDevices`
        # @return [Array<Google::Apis::NetappV1::BlockDevice>]
        attr_accessor :block_devices
      
        # Cache Parameters for the volume.
        # Corresponds to the JSON property `cacheParameters`
        # @return [Google::Apis::NetappV1::CacheParameters]
        attr_accessor :cache_parameters
      
        # Required. Capacity in GIB of the volume
        # Corresponds to the JSON property `capacityGib`
        # @return [Fixnum]
        attr_accessor :capacity_gib
      
        # Output only. Size of the volume cold tier data rounded down to the nearest GiB.
        # Corresponds to the JSON property `coldTierSizeGib`
        # @return [Fixnum]
        attr_accessor :cold_tier_size_gib
      
        # Output only. Create time of the volume
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the volume
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Specified the current volume encryption key source.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Defines the export policy for the volume.
        # Corresponds to the JSON property `exportPolicy`
        # @return [Google::Apis::NetappV1::ExportPolicy]
        attr_accessor :export_policy
      
        # Output only. Indicates whether the volume is part of a replication
        # relationship.
        # Corresponds to the JSON property `hasReplication`
        # @return [Boolean]
        attr_accessor :has_replication
        alias_method :has_replication?, :has_replication
      
        # Output only. Total hot tier data rounded down to the nearest GiB used by the
        # Volume. This field is only used for flex Service Level
        # Corresponds to the JSON property `hotTierSizeUsedGib`
        # @return [Fixnum]
        attr_accessor :hot_tier_size_used_gib
      
        # The Hybrid Replication parameters for the volume.
        # Corresponds to the JSON property `hybridReplicationParameters`
        # @return [Google::Apis::NetappV1::HybridReplicationParameters]
        attr_accessor :hybrid_replication_parameters
      
        # Optional. Flag indicating if the volume is a kerberos volume or not, export
        # policy rules control kerberos security modes (krb5, krb5i, krb5p).
        # Corresponds to the JSON property `kerberosEnabled`
        # @return [Boolean]
        attr_accessor :kerberos_enabled
        alias_method :kerberos_enabled?, :kerberos_enabled
      
        # Output only. Specifies the KMS config to be used for volume encryption.
        # Corresponds to the JSON property `kmsConfig`
        # @return [String]
        attr_accessor :kms_config
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Flag indicating if the volume will be a large capacity volume or a
        # regular volume.
        # Corresponds to the JSON property `largeCapacity`
        # @return [Boolean]
        attr_accessor :large_capacity
        alias_method :large_capacity?, :large_capacity
      
        # Output only. Flag indicating if the volume is NFS LDAP enabled or not.
        # Corresponds to the JSON property `ldapEnabled`
        # @return [Boolean]
        attr_accessor :ldap_enabled
        alias_method :ldap_enabled?, :ldap_enabled
      
        # Output only. Mount options of this volume
        # Corresponds to the JSON property `mountOptions`
        # @return [Array<Google::Apis::NetappV1::MountOption>]
        attr_accessor :mount_options
      
        # Optional. Flag indicating if the volume will have an IP address per node for
        # volumes supporting multiple IP endpoints. Only the volume with large_capacity
        # will be allowed to have multiple endpoints.
        # Corresponds to the JSON property `multipleEndpoints`
        # @return [Boolean]
        attr_accessor :multiple_endpoints
        alias_method :multiple_endpoints?, :multiple_endpoints
      
        # Identifier. Name of the volume
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. VPC Network name. Format: projects/`project`/global/networks/`
        # network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Required. Protocols required for the volume
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # Output only. This field is not implemented. The values provided in this field
        # are ignored.
        # Corresponds to the JSON property `psaRange`
        # @return [String]
        attr_accessor :psa_range
      
        # Output only. Specifies the replica zone for regional volume.
        # Corresponds to the JSON property `replicaZone`
        # @return [String]
        attr_accessor :replica_zone
      
        # The RestoreParameters if volume is created from a snapshot or backup.
        # Corresponds to the JSON property `restoreParameters`
        # @return [Google::Apis::NetappV1::RestoreParameters]
        attr_accessor :restore_parameters
      
        # Optional. List of actions that are restricted on this volume.
        # Corresponds to the JSON property `restrictedActions`
        # @return [Array<String>]
        attr_accessor :restricted_actions
      
        # Optional. Security Style of the Volume
        # Corresponds to the JSON property `securityStyle`
        # @return [String]
        attr_accessor :security_style
      
        # Output only. Service level of the volume
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        # Required. Share name of the volume
        # Corresponds to the JSON property `shareName`
        # @return [String]
        attr_accessor :share_name
      
        # Optional. SMB share settings for the volume.
        # Corresponds to the JSON property `smbSettings`
        # @return [Array<String>]
        attr_accessor :smb_settings
      
        # Optional. Snap_reserve specifies percentage of volume storage reserved for
        # snapshot storage. Default is 0 percent.
        # Corresponds to the JSON property `snapReserve`
        # @return [Float]
        attr_accessor :snap_reserve
      
        # Optional. Snapshot_directory if enabled (true) the volume will contain a read-
        # only .snapshot directory which provides access to each of the volume's
        # snapshots.
        # Corresponds to the JSON property `snapshotDirectory`
        # @return [Boolean]
        attr_accessor :snapshot_directory
        alias_method :snapshot_directory?, :snapshot_directory
      
        # Snapshot Policy for a volume.
        # Corresponds to the JSON property `snapshotPolicy`
        # @return [Google::Apis::NetappV1::SnapshotPolicy]
        attr_accessor :snapshot_policy
      
        # Output only. State of the volume
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. State details of the volume
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Required. StoragePool name of the volume
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        # Optional. Throughput of the volume (in MiB/s)
        # Corresponds to the JSON property `throughputMibps`
        # @return [Float]
        attr_accessor :throughput_mibps
      
        # Defines tiering policy for the volume.
        # Corresponds to the JSON property `tieringPolicy`
        # @return [Google::Apis::NetappV1::TieringPolicy]
        attr_accessor :tiering_policy
      
        # Optional. Default unix style permission (e.g. 777) the mount point will be
        # created with. Applicable for NFS protocol types only.
        # Corresponds to the JSON property `unixPermissions`
        # @return [String]
        attr_accessor :unix_permissions
      
        # Output only. Used capacity in GIB of the volume. This is computed periodically
        # and it does not represent the realtime usage.
        # Corresponds to the JSON property `usedGib`
        # @return [Fixnum]
        attr_accessor :used_gib
      
        # Output only. Specifies the active zone for regional volume.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_directory = args[:active_directory] if args.key?(:active_directory)
          @backup_config = args[:backup_config] if args.key?(:backup_config)
          @block_devices = args[:block_devices] if args.key?(:block_devices)
          @cache_parameters = args[:cache_parameters] if args.key?(:cache_parameters)
          @capacity_gib = args[:capacity_gib] if args.key?(:capacity_gib)
          @cold_tier_size_gib = args[:cold_tier_size_gib] if args.key?(:cold_tier_size_gib)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @export_policy = args[:export_policy] if args.key?(:export_policy)
          @has_replication = args[:has_replication] if args.key?(:has_replication)
          @hot_tier_size_used_gib = args[:hot_tier_size_used_gib] if args.key?(:hot_tier_size_used_gib)
          @hybrid_replication_parameters = args[:hybrid_replication_parameters] if args.key?(:hybrid_replication_parameters)
          @kerberos_enabled = args[:kerberos_enabled] if args.key?(:kerberos_enabled)
          @kms_config = args[:kms_config] if args.key?(:kms_config)
          @labels = args[:labels] if args.key?(:labels)
          @large_capacity = args[:large_capacity] if args.key?(:large_capacity)
          @ldap_enabled = args[:ldap_enabled] if args.key?(:ldap_enabled)
          @mount_options = args[:mount_options] if args.key?(:mount_options)
          @multiple_endpoints = args[:multiple_endpoints] if args.key?(:multiple_endpoints)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @protocols = args[:protocols] if args.key?(:protocols)
          @psa_range = args[:psa_range] if args.key?(:psa_range)
          @replica_zone = args[:replica_zone] if args.key?(:replica_zone)
          @restore_parameters = args[:restore_parameters] if args.key?(:restore_parameters)
          @restricted_actions = args[:restricted_actions] if args.key?(:restricted_actions)
          @security_style = args[:security_style] if args.key?(:security_style)
          @service_level = args[:service_level] if args.key?(:service_level)
          @share_name = args[:share_name] if args.key?(:share_name)
          @smb_settings = args[:smb_settings] if args.key?(:smb_settings)
          @snap_reserve = args[:snap_reserve] if args.key?(:snap_reserve)
          @snapshot_directory = args[:snapshot_directory] if args.key?(:snapshot_directory)
          @snapshot_policy = args[:snapshot_policy] if args.key?(:snapshot_policy)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
          @throughput_mibps = args[:throughput_mibps] if args.key?(:throughput_mibps)
          @tiering_policy = args[:tiering_policy] if args.key?(:tiering_policy)
          @unix_permissions = args[:unix_permissions] if args.key?(:unix_permissions)
          @used_gib = args[:used_gib] if args.key?(:used_gib)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Make a snapshot every week e.g. at Monday 04:00, Wednesday 05:20, Sunday 23:50
      class WeeklySchedule
        include Google::Apis::Core::Hashable
      
        # Set the day or days of the week to make a snapshot. Accepts a comma separated
        # days of the week. Defaults to 'Sunday'.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Set the hour to start the snapshot (0-23), defaults to midnight (0).
        # Corresponds to the JSON property `hour`
        # @return [Float]
        attr_accessor :hour
      
        # Set the minute of the hour to start the snapshot (0-59), defaults to the top
        # of the hour (0).
        # Corresponds to the JSON property `minute`
        # @return [Float]
        attr_accessor :minute
      
        # The maximum number of Snapshots to keep for the hourly schedule
        # Corresponds to the JSON property `snapshotsToKeep`
        # @return [Float]
        attr_accessor :snapshots_to_keep
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @snapshots_to_keep = args[:snapshots_to_keep] if args.key?(:snapshots_to_keep)
        end
      end
    end
  end
end
