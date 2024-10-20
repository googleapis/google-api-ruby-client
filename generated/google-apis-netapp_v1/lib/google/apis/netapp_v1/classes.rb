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
      
      # Provides the mapping of a cloud asset to a direct physical location or to a
      # proxy that defines the location on its behalf.
      class AssetLocation
        include Google::Apis::Core::Hashable
      
        # Spanner path of the CCFE RMS database. It is only applicable for CCFE tenants
        # that use CCFE RMS for storing resource metadata.
        # Corresponds to the JSON property `ccfeRmsPath`
        # @return [String]
        attr_accessor :ccfe_rms_path
      
        # Defines the customer expectation around ZI/ZS for this asset and ZI/ZS state
        # of the region at the time of asset creation.
        # Corresponds to the JSON property `expected`
        # @return [Google::Apis::NetappV1::IsolationExpectations]
        attr_accessor :expected
      
        # Defines extra parameters required for specific asset types.
        # Corresponds to the JSON property `extraParameters`
        # @return [Array<Google::Apis::NetappV1::ExtraParameter>]
        attr_accessor :extra_parameters
      
        # Contains all kinds of physical location definitions for this asset.
        # Corresponds to the JSON property `locationData`
        # @return [Array<Google::Apis::NetappV1::LocationData>]
        attr_accessor :location_data
      
        # Defines parents assets if any in order to allow later generation of
        # child_asset_location data via child assets.
        # Corresponds to the JSON property `parentAsset`
        # @return [Array<Google::Apis::NetappV1::CloudAsset>]
        attr_accessor :parent_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ccfe_rms_path = args[:ccfe_rms_path] if args.key?(:ccfe_rms_path)
          @expected = args[:expected] if args.key?(:expected)
          @extra_parameters = args[:extra_parameters] if args.key?(:extra_parameters)
          @location_data = args[:location_data] if args.key?(:location_data)
          @parent_asset = args[:parent_asset] if args.key?(:parent_asset)
        end
      end
      
      # A NetApp Backup.
      class Backup
        include Google::Apis::Core::Hashable
      
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
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the backup. Format: `projects/`project_id`/
        # locations/`location`/backupVaults/`backup_vault_id`/backups/`backup_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @chain_storage_bytes = args[:chain_storage_bytes] if args.key?(:chain_storage_bytes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
          @source_volume = args[:source_volume] if args.key?(:source_volume)
          @state = args[:state] if args.key?(:state)
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
      
      # A NetApp BackupVault.
      class BackupVault
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the backup vault.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the backup vault.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the backup vault. Format: `projects/`
        # project_id`/locations/`location`/backupVaults/`backup_vault_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The backup vault state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
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
        end
      end
      
      # Policy ID that identified data placement in Blobstore as per go/blobstore-user-
      # guide#data-metadata-placement-and-failure-domains
      class BlobstoreLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `policyId`
        # @return [Array<String>]
        attr_accessor :policy_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
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
      
      # 
      class CloudAsset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assetName`
        # @return [String]
        attr_accessor :asset_name
      
        # 
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_name = args[:asset_name] if args.key?(:asset_name)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
        end
      end
      
      # 
      class CloudAssetComposition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `childAsset`
        # @return [Array<Google::Apis::NetappV1::CloudAsset>]
        attr_accessor :child_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_asset = args[:child_asset] if args.key?(:child_asset)
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
          @volume_id = args[:volume_id] if args.key?(:volume_id)
        end
      end
      
      # 
      class DirectLocationAssignment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::NetappV1::LocationAssignment>]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
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
      
      # Defines parameters that should only be used for specific asset types.
      class ExtraParameter
        include Google::Apis::Core::Hashable
      
        # To be used for specifying the intended distribution of regional compute.
        # googleapis.com/InstanceGroupManager instances
        # Corresponds to the JSON property `regionalMigDistributionPolicy`
        # @return [Google::Apis::NetappV1::RegionalMigDistributionPolicy]
        attr_accessor :regional_mig_distribution_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regional_mig_distribution_policy = args[:regional_mig_distribution_policy] if args.key?(:regional_mig_distribution_policy)
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
      
      # 
      class IsolationExpectations
        include Google::Apis::Core::Hashable
      
        # Explicit overrides for ZI and ZS requirements to be used for resources that
        # should be excluded from ZI/ZS verification logic.
        # Corresponds to the JSON property `requirementOverride`
        # @return [Google::Apis::NetappV1::RequirementOverride]
        attr_accessor :requirement_override
      
        # 
        # Corresponds to the JSON property `ziOrgPolicy`
        # @return [String]
        attr_accessor :zi_org_policy
      
        # 
        # Corresponds to the JSON property `ziRegionPolicy`
        # @return [String]
        attr_accessor :zi_region_policy
      
        # 
        # Corresponds to the JSON property `ziRegionState`
        # @return [String]
        attr_accessor :zi_region_state
      
        # Deprecated: use zi_org_policy, zi_region_policy and zi_region_state instead
        # for setting ZI expectations as per go/zicy-publish-physical-location.
        # Corresponds to the JSON property `zoneIsolation`
        # @return [String]
        attr_accessor :zone_isolation
      
        # Deprecated: use zs_org_policy, and zs_region_stateinstead for setting Zs
        # expectations as per go/zicy-publish-physical-location.
        # Corresponds to the JSON property `zoneSeparation`
        # @return [String]
        attr_accessor :zone_separation
      
        # 
        # Corresponds to the JSON property `zsOrgPolicy`
        # @return [String]
        attr_accessor :zs_org_policy
      
        # 
        # Corresponds to the JSON property `zsRegionState`
        # @return [String]
        attr_accessor :zs_region_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requirement_override = args[:requirement_override] if args.key?(:requirement_override)
          @zi_org_policy = args[:zi_org_policy] if args.key?(:zi_org_policy)
          @zi_region_policy = args[:zi_region_policy] if args.key?(:zi_region_policy)
          @zi_region_state = args[:zi_region_state] if args.key?(:zi_region_state)
          @zone_isolation = args[:zone_isolation] if args.key?(:zone_isolation)
          @zone_separation = args[:zone_separation] if args.key?(:zone_separation)
          @zs_org_policy = args[:zs_org_policy] if args.key?(:zs_org_policy)
          @zs_region_state = args[:zs_region_state] if args.key?(:zs_region_state)
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
        # project`/locations/`location`/keyRings/`key_ring`/cryptoKeys/`key`.
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
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
      
      # 
      class LocationAssignment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @location_type = args[:location_type] if args.key?(:location_type)
        end
      end
      
      # 
      class LocationData
        include Google::Apis::Core::Hashable
      
        # Policy ID that identified data placement in Blobstore as per go/blobstore-user-
        # guide#data-metadata-placement-and-failure-domains
        # Corresponds to the JSON property `blobstoreLocation`
        # @return [Google::Apis::NetappV1::BlobstoreLocation]
        attr_accessor :blobstore_location
      
        # 
        # Corresponds to the JSON property `childAssetLocation`
        # @return [Google::Apis::NetappV1::CloudAssetComposition]
        attr_accessor :child_asset_location
      
        # 
        # Corresponds to the JSON property `directLocation`
        # @return [Google::Apis::NetappV1::DirectLocationAssignment]
        attr_accessor :direct_location
      
        # 
        # Corresponds to the JSON property `gcpProjectProxy`
        # @return [Google::Apis::NetappV1::TenantProjectProxy]
        attr_accessor :gcp_project_proxy
      
        # Message describing that the location of the customer resource is tied to
        # placer allocations
        # Corresponds to the JSON property `placerLocation`
        # @return [Google::Apis::NetappV1::PlacerLocation]
        attr_accessor :placer_location
      
        # 
        # Corresponds to the JSON property `spannerLocation`
        # @return [Google::Apis::NetappV1::SpannerLocation]
        attr_accessor :spanner_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blobstore_location = args[:blobstore_location] if args.key?(:blobstore_location)
          @child_asset_location = args[:child_asset_location] if args.key?(:child_asset_location)
          @direct_location = args[:direct_location] if args.key?(:direct_location)
          @gcp_project_proxy = args[:gcp_project_proxy] if args.key?(:gcp_project_proxy)
          @placer_location = args[:placer_location] if args.key?(:placer_location)
          @spanner_location = args[:spanner_location] if args.key?(:spanner_location)
        end
      end
      
      # Metadata for a given google.cloud.location.Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Supported service levels in a location.
        # Corresponds to the JSON property `supportedServiceLevels`
        # @return [Array<String>]
        attr_accessor :supported_service_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Message describing that the location of the customer resource is tied to
      # placer allocations
      class PlacerLocation
        include Google::Apis::Core::Hashable
      
        # Directory with a config related to it in placer (e.g. "/placer/prod/home/my-
        # root/my-dir")
        # Corresponds to the JSON property `placerConfig`
        # @return [String]
        attr_accessor :placer_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @placer_config = args[:placer_config] if args.key?(:placer_config)
        end
      end
      
      # To be used for specifying the intended distribution of regional compute.
      # googleapis.com/InstanceGroupManager instances
      class RegionalMigDistributionPolicy
        include Google::Apis::Core::Hashable
      
        # The shape in which the group converges around distribution of resources.
        # Instance of proto2 enum
        # Corresponds to the JSON property `targetShape`
        # @return [Fixnum]
        attr_accessor :target_shape
      
        # Cloud zones used by regional MIG to create instances.
        # Corresponds to the JSON property `zones`
        # @return [Array<Google::Apis::NetappV1::ZoneConfiguration>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_shape = args[:target_shape] if args.key?(:target_shape)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # Replication is a nested resource under Volume, that describes a cross-region
      # replication relationship between 2 volumes in different regions.
      class Replication
        include Google::Apis::Core::Hashable
      
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_volume = args[:destination_volume] if args.key?(:destination_volume)
          @destination_volume_parameters = args[:destination_volume_parameters] if args.key?(:destination_volume_parameters)
          @healthy = args[:healthy] if args.key?(:healthy)
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
      
      # 
      class RequirementOverride
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ziOverride`
        # @return [String]
        attr_accessor :zi_override
      
        # 
        # Corresponds to the JSON property `zsOverride`
        # @return [String]
        attr_accessor :zs_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @zi_override = args[:zi_override] if args.key?(:zi_override)
          @zs_override = args[:zs_override] if args.key?(:zs_override)
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @allowed_clients = args[:allowed_clients] if args.key?(:allowed_clients)
          @has_root_access = args[:has_root_access] if args.key?(:has_root_access)
          @kerberos5_read_only = args[:kerberos5_read_only] if args.key?(:kerberos5_read_only)
          @kerberos5_read_write = args[:kerberos5_read_write] if args.key?(:kerberos5_read_write)
          @kerberos5i_read_only = args[:kerberos5i_read_only] if args.key?(:kerberos5i_read_only)
          @kerberos5i_read_write = args[:kerberos5i_read_write] if args.key?(:kerberos5i_read_write)
          @kerberos5p_read_only = args[:kerberos5p_read_only] if args.key?(:kerberos5p_read_only)
          @kerberos5p_read_write = args[:kerberos5p_read_write] if args.key?(:kerberos5p_read_write)
          @nfsv3 = args[:nfsv3] if args.key?(:nfsv3)
          @nfsv4 = args[:nfsv4] if args.key?(:nfsv4)
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
      
      # 
      class SpannerLocation
        include Google::Apis::Core::Hashable
      
        # Set of backups used by the resource with name in the same format as what is
        # available at http://table/spanner_automon.backup_metadata
        # Corresponds to the JSON property `backupName`
        # @return [Array<String>]
        attr_accessor :backup_name
      
        # Set of databases used by the resource in format /span//
        # Corresponds to the JSON property `dbName`
        # @return [Array<String>]
        attr_accessor :db_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_name = args[:backup_name] if args.key?(:backup_name)
          @db_name = args[:db_name] if args.key?(:db_name)
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
      
        # Required. Capacity in GIB of the pool
        # Corresponds to the JSON property `capacityGib`
        # @return [Fixnum]
        attr_accessor :capacity_gib
      
        # Output only. Create time of the storage pool
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the storage pool
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
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
      
        # Optional. Specifies the replica zone for regional storagePool.
        # Corresponds to the JSON property `replicaZone`
        # @return [String]
        attr_accessor :replica_zone
      
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
          @capacity_gib = args[:capacity_gib] if args.key?(:capacity_gib)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @global_access_allowed = args[:global_access_allowed] if args.key?(:global_access_allowed)
          @kms_config = args[:kms_config] if args.key?(:kms_config)
          @labels = args[:labels] if args.key?(:labels)
          @ldap_enabled = args[:ldap_enabled] if args.key?(:ldap_enabled)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @psa_range = args[:psa_range] if args.key?(:psa_range)
          @replica_zone = args[:replica_zone] if args.key?(:replica_zone)
          @service_level = args[:service_level] if args.key?(:service_level)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
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
      
      # 
      class TenantProjectProxy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `projectNumbers`
        # @return [Array<String>]
        attr_accessor :project_numbers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_numbers = args[:project_numbers] if args.key?(:project_numbers)
        end
      end
      
      # Defines tiering policy for the volume.
      class TieringPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Time in days to mark the volume's data block as cold and make it
        # eligible for tiering, can be range from 7-183. Default is 31.
        # Corresponds to the JSON property `coolingThresholdDays`
        # @return [Fixnum]
        attr_accessor :cooling_threshold_days
      
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
      
        # Cumulative bytes trasferred so far for the replication relatinonship.
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
      
        # Required. Capacity in GIB of the volume
        # Corresponds to the JSON property `capacityGib`
        # @return [Fixnum]
        attr_accessor :capacity_gib
      
        # Output only. Size of the volume cold tier data in GiB.
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
          @capacity_gib = args[:capacity_gib] if args.key?(:capacity_gib)
          @cold_tier_size_gib = args[:cold_tier_size_gib] if args.key?(:cold_tier_size_gib)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @export_policy = args[:export_policy] if args.key?(:export_policy)
          @has_replication = args[:has_replication] if args.key?(:has_replication)
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
      
      # 
      class ZoneConfiguration
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
    end
  end
end
