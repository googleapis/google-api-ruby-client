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
    module BackupdrV1
      
      # request message for AbandonBackup.
      class AbandonBackupRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A specification of the type and number of accelerator cards attached to the
      # instance.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The number of the guest accelerator cards exposed to this instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # Optional. Full or partial URL of the accelerator type resource to attach to
        # this instance.
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
        end
      end
      
      # An access configuration attached to an instance's network interface. Only one
      # access config per instance is supported.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The external IPv6 address of this access configuration.
        # Corresponds to the JSON property `externalIpv6`
        # @return [String]
        attr_accessor :external_ipv6
      
        # Optional. The prefix length of the external IPv6 range.
        # Corresponds to the JSON property `externalIpv6PrefixLength`
        # @return [Fixnum]
        attr_accessor :external_ipv6_prefix_length
      
        # Optional. The name of this access configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The external IP address of this access configuration.
        # Corresponds to the JSON property `natIP`
        # @return [String]
        attr_accessor :nat_ip
      
        # Optional. This signifies the networking tier used for configuring this access
        # Corresponds to the JSON property `networkTier`
        # @return [String]
        attr_accessor :network_tier
      
        # Optional. The DNS domain name for the public PTR record.
        # Corresponds to the JSON property `publicPtrDomainName`
        # @return [String]
        attr_accessor :public_ptr_domain_name
      
        # Optional. Specifies whether a public DNS 'PTR' record should be created to map
        # the external IP address of the instance to a DNS domain name.
        # Corresponds to the JSON property `setPublicPtr`
        # @return [Boolean]
        attr_accessor :set_public_ptr
        alias_method :set_public_ptr?, :set_public_ptr
      
        # Optional. In accessConfigs (IPv4), the default and only option is
        # ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is
        # DIRECT_IPV6.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_ipv6 = args[:external_ipv6] if args.key?(:external_ipv6)
          @external_ipv6_prefix_length = args[:external_ipv6_prefix_length] if args.key?(:external_ipv6_prefix_length)
          @name = args[:name] if args.key?(:name)
          @nat_ip = args[:nat_ip] if args.key?(:nat_ip)
          @network_tier = args[:network_tier] if args.key?(:network_tier)
          @public_ptr_domain_name = args[:public_ptr_domain_name] if args.key?(:public_ptr_domain_name)
          @set_public_ptr = args[:set_public_ptr] if args.key?(:set_public_ptr)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Specifies options for controlling advanced machine features.
      class AdvancedMachineFeatures
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to enable nested virtualization or not (default is false).
        # Corresponds to the JSON property `enableNestedVirtualization`
        # @return [Boolean]
        attr_accessor :enable_nested_virtualization
        alias_method :enable_nested_virtualization?, :enable_nested_virtualization
      
        # Optional. Whether to enable UEFI networking for instance creation.
        # Corresponds to the JSON property `enableUefiNetworking`
        # @return [Boolean]
        attr_accessor :enable_uefi_networking
        alias_method :enable_uefi_networking?, :enable_uefi_networking
      
        # Optional. The number of threads per physical core. To disable simultaneous
        # multithreading (SMT) set this to 1. If unset, the maximum number of threads
        # supported per core by the underlying processor is assumed.
        # Corresponds to the JSON property `threadsPerCore`
        # @return [Fixnum]
        attr_accessor :threads_per_core
      
        # Optional. The number of physical cores to expose to an instance. Multiply by
        # the number of threads per core to compute the total number of virtual CPUs to
        # expose to the instance. If unset, the number of cores is inferred from the
        # instance's nominal CPU count and the underlying platform's SMT width.
        # Corresponds to the JSON property `visibleCoreCount`
        # @return [Fixnum]
        attr_accessor :visible_core_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_nested_virtualization = args[:enable_nested_virtualization] if args.key?(:enable_nested_virtualization)
          @enable_uefi_networking = args[:enable_uefi_networking] if args.key?(:enable_uefi_networking)
          @threads_per_core = args[:threads_per_core] if args.key?(:threads_per_core)
          @visible_core_count = args[:visible_core_count] if args.key?(:visible_core_count)
        end
      end
      
      # An alias IP range attached to an instance's network interface.
      class AliasIpRange
        include Google::Apis::Core::Hashable
      
        # Optional. The IP alias ranges to allocate for this interface.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Optional. The name of a subnetwork secondary IP range from which to allocate
        # an IP alias range. If not specified, the primary range of the subnetwork is
        # used.
        # Corresponds to the JSON property `subnetworkRangeName`
        # @return [String]
        attr_accessor :subnetwork_range_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @subnetwork_range_name = args[:subnetwork_range_name] if args.key?(:subnetwork_range_name)
        end
      end
      
      # Specifies the reservations that this instance can consume from.
      class AllocationAffinity
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the type of reservation from which this instance can
        # consume
        # Corresponds to the JSON property `consumeReservationType`
        # @return [String]
        attr_accessor :consume_reservation_type
      
        # Optional. Corresponds to the label key of a reservation resource.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Corresponds to the label values of a reservation resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consume_reservation_type = args[:consume_reservation_type] if args.key?(:consume_reservation_type)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
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
        # @return [Google::Apis::BackupdrV1::IsolationExpectations]
        attr_accessor :expected
      
        # Defines extra parameters required for specific asset types.
        # Corresponds to the JSON property `extraParameters`
        # @return [Array<Google::Apis::BackupdrV1::ExtraParameter>]
        attr_accessor :extra_parameters
      
        # Contains all kinds of physical location definitions for this asset.
        # Corresponds to the JSON property `locationData`
        # @return [Array<Google::Apis::BackupdrV1::LocationData>]
        attr_accessor :location_data
      
        # Defines parents assets if any in order to allow later generation of
        # child_asset_location data via child assets.
        # Corresponds to the JSON property `parentAsset`
        # @return [Array<Google::Apis::BackupdrV1::CloudAsset>]
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
      
      # An instance-attached disk resource.
      class AttachedDisk
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies whether the disk will be auto-deleted when the instance is
        # deleted (but not when the disk is detached from the instance).
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # Optional. Indicates that this is a boot disk. The virtual machine will use the
        # first partition of the disk for its root filesystem.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Optional. This is used as an identifier for the disks. This is the unique name
        # has to provided to modify disk parameters like disk_name and replica_zones (in
        # case of RePDs)
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # A customer-supplied encryption key.
        # Corresponds to the JSON property `diskEncryptionKey`
        # @return [Google::Apis::BackupdrV1::CustomerEncryptionKey]
        attr_accessor :disk_encryption_key
      
        # Optional. Specifies the disk interface to use for attaching this disk.
        # Corresponds to the JSON property `diskInterface`
        # @return [String]
        attr_accessor :disk_interface
      
        # Optional. The size of the disk in GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Optional. Output only. The URI of the disk type resource. For example:
        # projects/project/zones/zone/diskTypes/pd-standard or pd-ssd
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Specifies the type of the disk.
        # Corresponds to the JSON property `diskTypeDeprecated`
        # @return [String]
        attr_accessor :disk_type_deprecated
      
        # Optional. A list of features to enable on the guest operating system.
        # Applicable only for bootable images.
        # Corresponds to the JSON property `guestOsFeature`
        # @return [Array<Google::Apis::BackupdrV1::GuestOsFeature>]
        attr_accessor :guest_os_feature
      
        # Optional. A zero-based index to this disk, where 0 is reserved for the boot
        # disk.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Specifies the parameters to initialize this disk.
        # Corresponds to the JSON property `initializeParams`
        # @return [Google::Apis::BackupdrV1::InitializeParams]
        attr_accessor :initialize_params
      
        # Optional. Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. Any valid publicly visible licenses.
        # Corresponds to the JSON property `license`
        # @return [Array<String>]
        attr_accessor :license
      
        # Optional. The mode in which to attach this disk.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. Output only. The state of the disk.
        # Corresponds to the JSON property `savedState`
        # @return [String]
        attr_accessor :saved_state
      
        # Optional. Specifies a valid partial or full URL to an existing Persistent Disk
        # resource.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. Specifies the type of the disk.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_delete = args[:auto_delete] if args.key?(:auto_delete)
          @boot = args[:boot] if args.key?(:boot)
          @device_name = args[:device_name] if args.key?(:device_name)
          @disk_encryption_key = args[:disk_encryption_key] if args.key?(:disk_encryption_key)
          @disk_interface = args[:disk_interface] if args.key?(:disk_interface)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @disk_type_deprecated = args[:disk_type_deprecated] if args.key?(:disk_type_deprecated)
          @guest_os_feature = args[:guest_os_feature] if args.key?(:guest_os_feature)
          @index = args[:index] if args.key?(:index)
          @initialize_params = args[:initialize_params] if args.key?(:initialize_params)
          @kind = args[:kind] if args.key?(:kind)
          @license = args[:license] if args.key?(:license)
          @mode = args[:mode] if args.key?(:mode)
          @saved_state = args[:saved_state] if args.key?(:saved_state)
          @source = args[:source] if args.key?(:source)
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
        # @return [Array<Google::Apis::BackupdrV1::AuditLogConfig>]
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
      
      # Message describing a Backup object.
      class Backup
        include Google::Apis::Core::Hashable
      
        # BackupApplianceBackupProperties represents BackupDR backup appliance's
        # properties.
        # Corresponds to the JSON property `backupApplianceBackupProperties`
        # @return [Google::Apis::BackupdrV1::BackupApplianceBackupProperties]
        attr_accessor :backup_appliance_backup_properties
      
        # Optional. The list of BackupLocks taken by the accessor Backup Appliance.
        # Corresponds to the JSON property `backupApplianceLocks`
        # @return [Array<Google::Apis::BackupdrV1::BackupLock>]
        attr_accessor :backup_appliance_locks
      
        # Output only. Type of the backup, unspecified, scheduled or ondemand.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # ComputeInstanceBackupProperties represents Compute Engine instance backup
        # properties.
        # Corresponds to the JSON property `computeInstanceBackupProperties`
        # @return [Google::Apis::BackupdrV1::ComputeInstanceBackupProperties]
        attr_accessor :compute_instance_backup_properties
      
        # Output only. The point in time when this backup was captured from the source.
        # Corresponds to the JSON property `consistencyTime`
        # @return [String]
        attr_accessor :consistency_time
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The description of the Backup instance (2048 characters or less).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The backup can not be deleted before this time.
        # Corresponds to the JSON property `enforcedRetentionEndTime`
        # @return [String]
        attr_accessor :enforced_retention_end_time
      
        # Optional. Server specified ETag to prevent updates from overwriting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. When this backup is automatically expired.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # GCPBackupPlanInfo captures the plan configuration details of Google Cloud
        # resources at the time of backup.
        # Corresponds to the JSON property `gcpBackupPlanInfo`
        # @return [Google::Apis::BackupdrV1::GcpBackupPlanInfo]
        attr_accessor :gcp_backup_plan_info
      
        # Optional. Resource labels to represent user provided metadata. No labels
        # currently defined.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. source resource size in bytes at the time of the backup.
        # Corresponds to the JSON property `resourceSizeBytes`
        # @return [Fixnum]
        attr_accessor :resource_size_bytes
      
        # Output only. The list of BackupLocks taken by the service to prevent the
        # deletion of the backup.
        # Corresponds to the JSON property `serviceLocks`
        # @return [Array<Google::Apis::BackupdrV1::BackupLock>]
        attr_accessor :service_locks
      
        # Output only. The Backup resource instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_appliance_backup_properties = args[:backup_appliance_backup_properties] if args.key?(:backup_appliance_backup_properties)
          @backup_appliance_locks = args[:backup_appliance_locks] if args.key?(:backup_appliance_locks)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @compute_instance_backup_properties = args[:compute_instance_backup_properties] if args.key?(:compute_instance_backup_properties)
          @consistency_time = args[:consistency_time] if args.key?(:consistency_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @enforced_retention_end_time = args[:enforced_retention_end_time] if args.key?(:enforced_retention_end_time)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @gcp_backup_plan_info = args[:gcp_backup_plan_info] if args.key?(:gcp_backup_plan_info)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_size_bytes = args[:resource_size_bytes] if args.key?(:resource_size_bytes)
          @service_locks = args[:service_locks] if args.key?(:service_locks)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # BackupApplianceBackupConfig captures the backup configuration for applications
      # that are protected by Backup Appliances.
      class BackupApplianceBackupConfig
        include Google::Apis::Core::Hashable
      
        # The name of the application.
        # Corresponds to the JSON property `applicationName`
        # @return [String]
        attr_accessor :application_name
      
        # The ID of the backup appliance.
        # Corresponds to the JSON property `backupApplianceId`
        # @return [Fixnum]
        attr_accessor :backup_appliance_id
      
        # The name of the backup appliance.
        # Corresponds to the JSON property `backupApplianceName`
        # @return [String]
        attr_accessor :backup_appliance_name
      
        # The name of the host where the application is running.
        # Corresponds to the JSON property `hostName`
        # @return [String]
        attr_accessor :host_name
      
        # The ID of the SLA of this application.
        # Corresponds to the JSON property `slaId`
        # @return [Fixnum]
        attr_accessor :sla_id
      
        # The name of the SLP associated with the application.
        # Corresponds to the JSON property `slpName`
        # @return [String]
        attr_accessor :slp_name
      
        # The name of the SLT associated with the application.
        # Corresponds to the JSON property `sltName`
        # @return [String]
        attr_accessor :slt_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_name = args[:application_name] if args.key?(:application_name)
          @backup_appliance_id = args[:backup_appliance_id] if args.key?(:backup_appliance_id)
          @backup_appliance_name = args[:backup_appliance_name] if args.key?(:backup_appliance_name)
          @host_name = args[:host_name] if args.key?(:host_name)
          @sla_id = args[:sla_id] if args.key?(:sla_id)
          @slp_name = args[:slp_name] if args.key?(:slp_name)
          @slt_name = args[:slt_name] if args.key?(:slt_name)
        end
      end
      
      # BackupApplianceBackupProperties represents BackupDR backup appliance's
      # properties.
      class BackupApplianceBackupProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this backup object was finalized (if none, backup
        # is not finalized).
        # Corresponds to the JSON property `finalizeTime`
        # @return [String]
        attr_accessor :finalize_time
      
        # Output only. The numeric generation ID of the backup (monotonically increasing)
        # .
        # Corresponds to the JSON property `generationId`
        # @return [Fixnum]
        attr_accessor :generation_id
      
        # Optional. The latest timestamp of data available in this Backup.
        # Corresponds to the JSON property `recoveryRangeEndTime`
        # @return [String]
        attr_accessor :recovery_range_end_time
      
        # Optional. The earliest timestamp of data available in this Backup.
        # Corresponds to the JSON property `recoveryRangeStartTime`
        # @return [String]
        attr_accessor :recovery_range_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finalize_time = args[:finalize_time] if args.key?(:finalize_time)
          @generation_id = args[:generation_id] if args.key?(:generation_id)
          @recovery_range_end_time = args[:recovery_range_end_time] if args.key?(:recovery_range_end_time)
          @recovery_range_start_time = args[:recovery_range_start_time] if args.key?(:recovery_range_start_time)
        end
      end
      
      # BackupApplianceLockInfo contains metadata about the backupappliance that
      # created the lock.
      class BackupApplianceLockInfo
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the backup/recovery appliance that created this lock.
        # Corresponds to the JSON property `backupApplianceId`
        # @return [Fixnum]
        attr_accessor :backup_appliance_id
      
        # Required. The name of the backup/recovery appliance that created this lock.
        # Corresponds to the JSON property `backupApplianceName`
        # @return [String]
        attr_accessor :backup_appliance_name
      
        # The image name that depends on this Backup.
        # Corresponds to the JSON property `backupImage`
        # @return [String]
        attr_accessor :backup_image
      
        # The job name on the backup/recovery appliance that created this lock.
        # Corresponds to the JSON property `jobName`
        # @return [String]
        attr_accessor :job_name
      
        # Required. The reason for the lock: e.g. MOUNT/RESTORE/BACKUP/etc. The value of
        # this string is only meaningful to the client and it is not interpreted by the
        # BackupVault service.
        # Corresponds to the JSON property `lockReason`
        # @return [String]
        attr_accessor :lock_reason
      
        # The SLA on the backup/recovery appliance that owns the lock.
        # Corresponds to the JSON property `slaId`
        # @return [Fixnum]
        attr_accessor :sla_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_appliance_id = args[:backup_appliance_id] if args.key?(:backup_appliance_id)
          @backup_appliance_name = args[:backup_appliance_name] if args.key?(:backup_appliance_name)
          @backup_image = args[:backup_image] if args.key?(:backup_image)
          @job_name = args[:job_name] if args.key?(:job_name)
          @lock_reason = args[:lock_reason] if args.key?(:lock_reason)
          @sla_id = args[:sla_id] if args.key?(:sla_id)
        end
      end
      
      # BackupConfigInfo has information about how the resource is configured for
      # Backup and about the most recent backup to this vault.
      class BackupConfigInfo
        include Google::Apis::Core::Hashable
      
        # BackupApplianceBackupConfig captures the backup configuration for applications
        # that are protected by Backup Appliances.
        # Corresponds to the JSON property `backupApplianceBackupConfig`
        # @return [Google::Apis::BackupdrV1::BackupApplianceBackupConfig]
        attr_accessor :backup_appliance_backup_config
      
        # GcpBackupConfig captures the Backup configuration details for Google Cloud
        # resources. All Google Cloud resources regardless of type are protected with
        # backup plan associations.
        # Corresponds to the JSON property `gcpBackupConfig`
        # @return [Google::Apis::BackupdrV1::GcpBackupConfig]
        attr_accessor :gcp_backup_config
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `lastBackupError`
        # @return [Google::Apis::BackupdrV1::Status]
        attr_accessor :last_backup_error
      
        # Output only. The status of the last backup to this BackupVault
        # Corresponds to the JSON property `lastBackupState`
        # @return [String]
        attr_accessor :last_backup_state
      
        # Output only. If the last backup were successful, this field has the
        # consistency date.
        # Corresponds to the JSON property `lastSuccessfulBackupConsistencyTime`
        # @return [String]
        attr_accessor :last_successful_backup_consistency_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_appliance_backup_config = args[:backup_appliance_backup_config] if args.key?(:backup_appliance_backup_config)
          @gcp_backup_config = args[:gcp_backup_config] if args.key?(:gcp_backup_config)
          @last_backup_error = args[:last_backup_error] if args.key?(:last_backup_error)
          @last_backup_state = args[:last_backup_state] if args.key?(:last_backup_state)
          @last_successful_backup_consistency_time = args[:last_successful_backup_consistency_time] if args.key?(:last_successful_backup_consistency_time)
        end
      end
      
      # BackupLock represents a single lock on a Backup resource. An unexpired lock on
      # a Backup prevents the Backup from being deleted.
      class BackupLock
        include Google::Apis::Core::Hashable
      
        # BackupApplianceLockInfo contains metadata about the backupappliance that
        # created the lock.
        # Corresponds to the JSON property `backupApplianceLockInfo`
        # @return [Google::Apis::BackupdrV1::BackupApplianceLockInfo]
        attr_accessor :backup_appliance_lock_info
      
        # Required. The time after which this lock is not considered valid and will no
        # longer protect the Backup from deletion.
        # Corresponds to the JSON property `lockUntilTime`
        # @return [String]
        attr_accessor :lock_until_time
      
        # ServiceLockInfo represents the details of a lock taken by the service on a
        # Backup resource.
        # Corresponds to the JSON property `serviceLockInfo`
        # @return [Google::Apis::BackupdrV1::ServiceLockInfo]
        attr_accessor :service_lock_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_appliance_lock_info = args[:backup_appliance_lock_info] if args.key?(:backup_appliance_lock_info)
          @lock_until_time = args[:lock_until_time] if args.key?(:lock_until_time)
          @service_lock_info = args[:service_lock_info] if args.key?(:service_lock_info)
        end
      end
      
      # A `BackupPlan` specifies some common fields, such as `display_name` as well as
      # one or more `BackupRule` messages. Each `BackupRule` has a retention policy
      # and defines a schedule by which the system is to perform backup workloads.
      class BackupPlan
        include Google::Apis::Core::Hashable
      
        # Required. The backup rules for this `BackupPlan`. There must be at least one `
        # BackupRule` message.
        # Corresponds to the JSON property `backupRules`
        # @return [Array<Google::Apis::BackupdrV1::BackupRule>]
        attr_accessor :backup_rules
      
        # Required. Resource name of backup vault which will be used as storage location
        # for backups. Format: projects/`project`/locations/`location`/backupVaults/`
        # backupvault`
        # Corresponds to the JSON property `backupVault`
        # @return [String]
        attr_accessor :backup_vault
      
        # Output only. The Google Cloud Platform Service Account to be used by the
        # BackupVault for taking backups. Specify the email address of the Backup Vault
        # Service Account.
        # Corresponds to the JSON property `backupVaultServiceAccount`
        # @return [String]
        attr_accessor :backup_vault_service_account
      
        # Output only. When the `BackupPlan` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the `BackupPlan` resource. The description allows
        # for additional details about `BackupPlan` and its use cases to be provided. An
        # example description is the following: "This is a backup plan that performs a
        # daily backup at 6pm and retains data for 3 months". The description must be at
        # most 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. `etag` is returned from the service in the response. As a user of
        # the service, you may provide an etag value in this field to prevent stale
        # resources.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. This collection of key/value pairs allows for custom labels to be
        # supplied by the user. Example, `"tag": "Weekly"`.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name of the `BackupPlan`. Format: `
        # projects/`project`/locations/`location`/backupPlans/`backup_plan``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource type to which the `BackupPlan` will be applied.
        # Examples include, "compute.googleapis.com/Instance" and "storage.googleapis.
        # com/Bucket".
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Output only. The `State` for the `BackupPlan`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. When the `BackupPlan` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_rules = args[:backup_rules] if args.key?(:backup_rules)
          @backup_vault = args[:backup_vault] if args.key?(:backup_vault)
          @backup_vault_service_account = args[:backup_vault_service_account] if args.key?(:backup_vault_service_account)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A BackupPlanAssociation represents a single BackupPlanAssociation which
      # contains details like workload, backup plan etc
      class BackupPlanAssociation
        include Google::Apis::Core::Hashable
      
        # Required. Resource name of backup plan which needs to be applied on workload.
        # Format: projects/`project`/locations/`location`/backupPlans/`backupPlanId`
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Output Only. Resource name of data source which will be used as
        # storage location for backups taken. Format : projects/`project`/locations/`
        # location`/backupVaults/`backupvault`/dataSources/`datasource`
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Output only. Identifier. The resource name of BackupPlanAssociation in below
        # format Format : projects/`project`/locations/`location`/backupPlanAssociations/
        # `backupPlanAssociationId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Resource name of workload on which backupplan is applied
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. Output Only. Resource type of workload on which backupplan is
        # applied
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Output only. The config info related to backup rules.
        # Corresponds to the JSON property `rulesConfigInfo`
        # @return [Array<Google::Apis::BackupdrV1::RuleConfigInfo>]
        attr_accessor :rules_config_info
      
        # Output only. The BackupPlanAssociation resource state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_source = args[:data_source] if args.key?(:data_source)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @rules_config_info = args[:rules_config_info] if args.key?(:rules_config_info)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `BackupRule` binds the backup schedule to a retention policy.
      class BackupRule
        include Google::Apis::Core::Hashable
      
        # Required. Configures the duration for which backup data will be kept. It is
        # defined in “days”. The value should be greater than or equal to minimum
        # enforced retention of the backup vault.
        # Corresponds to the JSON property `backupRetentionDays`
        # @return [Fixnum]
        attr_accessor :backup_retention_days
      
        # Required. Immutable. The unique id of this `BackupRule`. The `rule_id` is
        # unique per `BackupPlan`.The `rule_id` must start with a lowercase letter
        # followed by up to 62 lowercase letters, numbers, or hyphens. Pattern, /a-z`,62`
        # /.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        # `StandardSchedule` defines a schedule that run within the confines of a
        # defined window of days. We can define recurrence type for schedule as HOURLY,
        # DAILY, WEEKLY, MONTHLY or YEARLY.
        # Corresponds to the JSON property `standardSchedule`
        # @return [Google::Apis::BackupdrV1::StandardSchedule]
        attr_accessor :standard_schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_retention_days = args[:backup_retention_days] if args.key?(:backup_retention_days)
          @rule_id = args[:rule_id] if args.key?(:rule_id)
          @standard_schedule = args[:standard_schedule] if args.key?(:standard_schedule)
        end
      end
      
      # Message describing a BackupVault object.
      class BackupVault
        include Google::Apis::Core::Hashable
      
        # Optional. User annotations. See https://google.aip.dev/128#annotations Stores
        # small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The number of backups in this backup vault.
        # Corresponds to the JSON property `backupCount`
        # @return [Fixnum]
        attr_accessor :backup_count
      
        # Required. The default and minimum enforced retention for each backup within
        # the backup vault. The enforced retention for each backup can be extended.
        # Corresponds to the JSON property `backupMinimumEnforcedRetentionDuration`
        # @return [String]
        attr_accessor :backup_minimum_enforced_retention_duration
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Set to true when there are no backups nested under this resource.
        # Corresponds to the JSON property `deletable`
        # @return [Boolean]
        attr_accessor :deletable
        alias_method :deletable?, :deletable
      
        # Optional. The description of the BackupVault instance (2048 characters or less)
        # .
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Time after which the BackupVault resource is locked.
        # Corresponds to the JSON property `effectiveTime`
        # @return [String]
        attr_accessor :effective_time
      
        # Required. The default retention period for each backup in the backup vault (
        # Deprecated).
        # Corresponds to the JSON property `enforcedRetentionDuration`
        # @return [String]
        attr_accessor :enforced_retention_duration
      
        # Optional. Server specified ETag for the backup vault resource to prevent
        # simultaneous updates from overwiting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels to represent user provided metadata. No labels
        # currently defined:
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Service account used by the BackupVault Service for this
        # BackupVault. The user should grant this account permissions in their workload
        # project to enable the service to run backups and restores there.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. The BackupVault resource instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Total size of the storage used by all backup resources.
        # Corresponds to the JSON property `totalStoredBytes`
        # @return [Fixnum]
        attr_accessor :total_stored_bytes
      
        # Output only. Output only Immutable after resource creation until resource
        # deletion.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @backup_count = args[:backup_count] if args.key?(:backup_count)
          @backup_minimum_enforced_retention_duration = args[:backup_minimum_enforced_retention_duration] if args.key?(:backup_minimum_enforced_retention_duration)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deletable = args[:deletable] if args.key?(:deletable)
          @description = args[:description] if args.key?(:description)
          @effective_time = args[:effective_time] if args.key?(:effective_time)
          @enforced_retention_duration = args[:enforced_retention_duration] if args.key?(:enforced_retention_duration)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @total_stored_bytes = args[:total_stored_bytes] if args.key?(:total_stored_bytes)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `BackupWindow` defines a window of the day during which backup jobs will run.
      class BackupWindow
        include Google::Apis::Core::Hashable
      
        # Required. The hour of day (1-24) when the window end for e.g. if value of end
        # hour of day is 10 that mean backup window end time is 10:00. End hour of day
        # should be greater than start hour of day. 0 <= start_hour_of_day <
        # end_hour_of_day <= 24 End hour of day is not include in backup window that
        # mean if end_hour_of_day= 10 jobs should start before 10:00.
        # Corresponds to the JSON property `endHourOfDay`
        # @return [Fixnum]
        attr_accessor :end_hour_of_day
      
        # Required. The hour of day (0-23) when the window starts for e.g. if value of
        # start hour of day is 6 that mean backup window start at 6:00.
        # Corresponds to the JSON property `startHourOfDay`
        # @return [Fixnum]
        attr_accessor :start_hour_of_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_hour_of_day = args[:end_hour_of_day] if args.key?(:end_hour_of_day)
          @start_hour_of_day = args[:start_hour_of_day] if args.key?(:start_hour_of_day)
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
        # @return [Google::Apis::BackupdrV1::Expr]
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
        # @return [Array<Google::Apis::BackupdrV1::CloudAsset>]
        attr_accessor :child_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_asset = args[:child_asset] if args.key?(:child_asset)
        end
      end
      
      # ComputeInstanceBackupProperties represents Compute Engine instance backup
      # properties.
      class ComputeInstanceBackupProperties
        include Google::Apis::Core::Hashable
      
        # Enables instances created based on these properties to send packets with
        # source IP addresses other than their own and receive packets with destination
        # IP addresses other than their own. If these instances will be used as an IP
        # gateway or it will be set as the next-hop in a Route resource, specify `true`.
        # If unsure, leave this set to `false`. See the https://cloud.google.com/vpc/
        # docs/using-routes#canipforward documentation for more information.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # An optional text description for the instances that are created from these
        # properties.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An array of disks that are associated with the instances that are created from
        # these properties.
        # Corresponds to the JSON property `disk`
        # @return [Array<Google::Apis::BackupdrV1::AttachedDisk>]
        attr_accessor :disk
      
        # A list of guest accelerator cards' type and count to use for instances created
        # from these properties.
        # Corresponds to the JSON property `guestAccelerator`
        # @return [Array<Google::Apis::BackupdrV1::AcceleratorConfig>]
        attr_accessor :guest_accelerator
      
        # KeyRevocationActionType of the instance. Supported options are "STOP" and "
        # NONE". The default value is "NONE" if it is not specified.
        # Corresponds to the JSON property `keyRevocationActionType`
        # @return [String]
        attr_accessor :key_revocation_action_type
      
        # The machine type to use for instances that are created from these properties.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::BackupdrV1::Metadata]
        attr_accessor :metadata
      
        # Minimum cpu/platform to be used by instances. The instance may be scheduled on
        # the specified or newer cpu/platform. Applicable values are the friendly names
        # of CPU platforms, such as `minCpuPlatform: Intel Haswell` or `minCpuPlatform:
        # Intel Sandy Bridge`. For more information, read https://cloud.google.com/
        # compute/docs/instances/specify-min-cpu-platform.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # An array of network access configurations for this interface.
        # Corresponds to the JSON property `networkInterface`
        # @return [Array<Google::Apis::BackupdrV1::NetworkInterface>]
        attr_accessor :network_interface
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::BackupdrV1::Scheduling]
        attr_accessor :scheduling
      
        # A list of service accounts with specified scopes. Access tokens for these
        # service accounts are available to the instances that are created from these
        # properties. Use metadata queries to obtain the access tokens for these
        # instances.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Array<Google::Apis::BackupdrV1::ServiceAccount>]
        attr_accessor :service_account
      
        # The source instance used to create this backup. This can be a partial or full
        # URL to the resource. For example, the following are valid values: -https://www.
        # googleapis.com/compute/v1/projects/project/zones/zone/instances/instance -
        # projects/project/zones/zone/instances/instance
        # Corresponds to the JSON property `sourceInstance`
        # @return [String]
        attr_accessor :source_instance
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::BackupdrV1::Tags]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @description = args[:description] if args.key?(:description)
          @disk = args[:disk] if args.key?(:disk)
          @guest_accelerator = args[:guest_accelerator] if args.key?(:guest_accelerator)
          @key_revocation_action_type = args[:key_revocation_action_type] if args.key?(:key_revocation_action_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @network_interface = args[:network_interface] if args.key?(:network_interface)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source_instance = args[:source_instance] if args.key?(:source_instance)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # ComputeInstanceDataSourceProperties represents the properties of a
      # ComputeEngine resource that are stored in the DataSource.
      class ComputeInstanceDataSourceProperties
        include Google::Apis::Core::Hashable
      
        # The description of the Compute Engine instance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The machine type of the instance.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Name of the compute instance backed up by the datasource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The total number of disks attached to the Instance.
        # Corresponds to the JSON property `totalDiskCount`
        # @return [Fixnum]
        attr_accessor :total_disk_count
      
        # The sum of all the disk sizes.
        # Corresponds to the JSON property `totalDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :total_disk_size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @name = args[:name] if args.key?(:name)
          @total_disk_count = args[:total_disk_count] if args.key?(:total_disk_count)
          @total_disk_size_gb = args[:total_disk_size_gb] if args.key?(:total_disk_size_gb)
        end
      end
      
      # ComputeInstanceRestoreProperties represents Compute Engine instance properties
      # to be overridden during restore.
      class ComputeInstanceRestoreProperties
        include Google::Apis::Core::Hashable
      
        # Specifies options for controlling advanced machine features.
        # Corresponds to the JSON property `advancedMachineFeatures`
        # @return [Google::Apis::BackupdrV1::AdvancedMachineFeatures]
        attr_accessor :advanced_machine_features
      
        # Optional. Allows this instance to send and receive packets with non-matching
        # destination or source IPs.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # A set of Confidential Instance options.
        # Corresponds to the JSON property `confidentialInstanceConfig`
        # @return [Google::Apis::BackupdrV1::ConfidentialInstanceConfig]
        attr_accessor :confidential_instance_config
      
        # Optional. Whether the resource should be protected against deletion.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # Optional. An optional description of this resource. Provide this property when
        # you create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Array of disks associated with this instance. Persistent disks must
        # be created before you can assign them.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::BackupdrV1::AttachedDisk>]
        attr_accessor :disks
      
        # A set of Display Device options
        # Corresponds to the JSON property `displayDevice`
        # @return [Google::Apis::BackupdrV1::DisplayDevice]
        attr_accessor :display_device
      
        # Optional. A list of the type and count of accelerator cards attached to the
        # instance.
        # Corresponds to the JSON property `guestAccelerators`
        # @return [Array<Google::Apis::BackupdrV1::AcceleratorConfig>]
        attr_accessor :guest_accelerators
      
        # Optional. Specifies the hostname of the instance. The specified hostname must
        # be RFC1035 compliant. If hostname is not specified, the default hostname is [
        # INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [
        # INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # A customer-supplied encryption key.
        # Corresponds to the JSON property `instanceEncryptionKey`
        # @return [Google::Apis::BackupdrV1::CustomerEncryptionKey]
        attr_accessor :instance_encryption_key
      
        # Optional. KeyRevocationActionType of the instance.
        # Corresponds to the JSON property `keyRevocationActionType`
        # @return [String]
        attr_accessor :key_revocation_action_type
      
        # Optional. Labels to apply to this instance.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Full or partial URL of the machine type resource to use for this
        # instance.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::BackupdrV1::Metadata]
        attr_accessor :metadata
      
        # Optional. Minimum CPU platform to use for this instance.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # Required. Name of the compute instance.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. An array of network configurations for this instance. These specify
        # how interfaces are configured to interact with other network services, such as
        # connecting to the internet. Multiple interfaces are supported per instance.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::BackupdrV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Network performance configuration.
        # Corresponds to the JSON property `networkPerformanceConfig`
        # @return [Google::Apis::BackupdrV1::NetworkPerformanceConfig]
        attr_accessor :network_performance_config
      
        # Additional instance params.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::BackupdrV1::InstanceParams]
        attr_accessor :params
      
        # Optional. The private IPv6 google access type for the VM. If not specified,
        # use INHERIT_FROM_SUBNETWORK as default.
        # Corresponds to the JSON property `privateIpv6GoogleAccess`
        # @return [String]
        attr_accessor :private_ipv6_google_access
      
        # Specifies the reservations that this instance can consume from.
        # Corresponds to the JSON property `reservationAffinity`
        # @return [Google::Apis::BackupdrV1::AllocationAffinity]
        attr_accessor :reservation_affinity
      
        # Optional. Resource policies applied to this instance.
        # Corresponds to the JSON property `resourcePolicies`
        # @return [Array<String>]
        attr_accessor :resource_policies
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::BackupdrV1::Scheduling]
        attr_accessor :scheduling
      
        # Optional. A list of service accounts, with their specified scopes, authorized
        # for this instance. Only one service account per VM instance is supported.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::BackupdrV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::BackupdrV1::Tags]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_machine_features = args[:advanced_machine_features] if args.key?(:advanced_machine_features)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @confidential_instance_config = args[:confidential_instance_config] if args.key?(:confidential_instance_config)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @description = args[:description] if args.key?(:description)
          @disks = args[:disks] if args.key?(:disks)
          @display_device = args[:display_device] if args.key?(:display_device)
          @guest_accelerators = args[:guest_accelerators] if args.key?(:guest_accelerators)
          @hostname = args[:hostname] if args.key?(:hostname)
          @instance_encryption_key = args[:instance_encryption_key] if args.key?(:instance_encryption_key)
          @key_revocation_action_type = args[:key_revocation_action_type] if args.key?(:key_revocation_action_type)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @name = args[:name] if args.key?(:name)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_performance_config = args[:network_performance_config] if args.key?(:network_performance_config)
          @params = args[:params] if args.key?(:params)
          @private_ipv6_google_access = args[:private_ipv6_google_access] if args.key?(:private_ipv6_google_access)
          @reservation_affinity = args[:reservation_affinity] if args.key?(:reservation_affinity)
          @resource_policies = args[:resource_policies] if args.key?(:resource_policies)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # ComputeInstanceTargetEnvironment represents Compute Engine target environment
      # to be used during restore.
      class ComputeInstanceTargetEnvironment
        include Google::Apis::Core::Hashable
      
        # Required. Target project for the Compute Engine instance.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Required. The zone of the Compute Engine instance.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project = args[:project] if args.key?(:project)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # A set of Confidential Instance options.
      class ConfidentialInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the instance should have confidential compute
        # enabled.
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
      
      # A customer-supplied encryption key.
      class CustomerEncryptionKey
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the encryption key that is stored in Google Cloud KMS.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Optional. The service account being used for the encryption request for the
        # given KMS key. If absent, the Compute Engine default service account is used.
        # Corresponds to the JSON property `kmsKeyServiceAccount`
        # @return [String]
        attr_accessor :kms_key_service_account
      
        # Optional. Specifies a 256-bit customer-supplied encryption key.
        # Corresponds to the JSON property `rawKey`
        # @return [String]
        attr_accessor :raw_key
      
        # Optional. RSA-wrapped 2048-bit customer-supplied encryption key to either
        # encrypt or decrypt this resource.
        # Corresponds to the JSON property `rsaEncryptedKey`
        # @return [String]
        attr_accessor :rsa_encrypted_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_service_account = args[:kms_key_service_account] if args.key?(:kms_key_service_account)
          @raw_key = args[:raw_key] if args.key?(:raw_key)
          @rsa_encrypted_key = args[:rsa_encrypted_key] if args.key?(:rsa_encrypted_key)
        end
      end
      
      # Message describing a DataSource object. Datasource object used to represent
      # Datasource details for both admin and basic view.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # BackupConfigInfo has information about how the resource is configured for
        # Backup and about the most recent backup to this vault.
        # Corresponds to the JSON property `backupConfigInfo`
        # @return [Google::Apis::BackupdrV1::BackupConfigInfo]
        attr_accessor :backup_config_info
      
        # Number of backups in the data source.
        # Corresponds to the JSON property `backupCount`
        # @return [Fixnum]
        attr_accessor :backup_count
      
        # Output only. The backup configuration state.
        # Corresponds to the JSON property `configState`
        # @return [String]
        attr_accessor :config_state
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # BackupApplianceApplication describes a Source Resource when it is an
        # application backed up by a BackupAppliance.
        # Corresponds to the JSON property `dataSourceBackupApplianceApplication`
        # @return [Google::Apis::BackupdrV1::DataSourceBackupApplianceApplication]
        attr_accessor :data_source_backup_appliance_application
      
        # DataSourceGcpResource is used for protected resources that are Google Cloud
        # Resources. This name is easeier to understand than GcpResourceDataSource or
        # GcpDataSourceResource
        # Corresponds to the JSON property `dataSourceGcpResource`
        # @return [Google::Apis::BackupdrV1::DataSourceGcpResource]
        attr_accessor :data_source_gcp_resource
      
        # Server specified ETag for the ManagementServer resource to prevent
        # simultaneous updates from overwiting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels to represent user provided metadata. No labels
        # currently defined:
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The DataSource resource instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The number of bytes (metadata and data) stored in this datasource.
        # Corresponds to the JSON property `totalStoredBytes`
        # @return [Fixnum]
        attr_accessor :total_stored_bytes
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_config_info = args[:backup_config_info] if args.key?(:backup_config_info)
          @backup_count = args[:backup_count] if args.key?(:backup_count)
          @config_state = args[:config_state] if args.key?(:config_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_source_backup_appliance_application = args[:data_source_backup_appliance_application] if args.key?(:data_source_backup_appliance_application)
          @data_source_gcp_resource = args[:data_source_gcp_resource] if args.key?(:data_source_gcp_resource)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @total_stored_bytes = args[:total_stored_bytes] if args.key?(:total_stored_bytes)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # BackupApplianceApplication describes a Source Resource when it is an
      # application backed up by a BackupAppliance.
      class DataSourceBackupApplianceApplication
        include Google::Apis::Core::Hashable
      
        # Appliance Id of the Backup Appliance.
        # Corresponds to the JSON property `applianceId`
        # @return [Fixnum]
        attr_accessor :appliance_id
      
        # The appid field of the application within the Backup Appliance.
        # Corresponds to the JSON property `applicationId`
        # @return [Fixnum]
        attr_accessor :application_id
      
        # The name of the Application as known to the Backup Appliance.
        # Corresponds to the JSON property `applicationName`
        # @return [String]
        attr_accessor :application_name
      
        # Appliance name.
        # Corresponds to the JSON property `backupAppliance`
        # @return [String]
        attr_accessor :backup_appliance
      
        # Hostid of the application host.
        # Corresponds to the JSON property `hostId`
        # @return [Fixnum]
        attr_accessor :host_id
      
        # Hostname of the host where the application is running.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # The type of the application. e.g. VMBackup
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance_id = args[:appliance_id] if args.key?(:appliance_id)
          @application_id = args[:application_id] if args.key?(:application_id)
          @application_name = args[:application_name] if args.key?(:application_name)
          @backup_appliance = args[:backup_appliance] if args.key?(:backup_appliance)
          @host_id = args[:host_id] if args.key?(:host_id)
          @hostname = args[:hostname] if args.key?(:hostname)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # DataSourceGcpResource is used for protected resources that are Google Cloud
      # Resources. This name is easeier to understand than GcpResourceDataSource or
      # GcpDataSourceResource
      class DataSourceGcpResource
        include Google::Apis::Core::Hashable
      
        # ComputeInstanceDataSourceProperties represents the properties of a
        # ComputeEngine resource that are stored in the DataSource.
        # Corresponds to the JSON property `computeInstanceDatasourceProperties`
        # @return [Google::Apis::BackupdrV1::ComputeInstanceDataSourceProperties]
        attr_accessor :compute_instance_datasource_properties
      
        # Output only. Full resource pathname URL of the source Google Cloud resource.
        # Corresponds to the JSON property `gcpResourcename`
        # @return [String]
        attr_accessor :gcp_resourcename
      
        # Location of the resource: //"global"/"unspecified".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The type of the Google Cloud resource. Use the Unified Resource Type, eg.
        # compute.googleapis.com/Instance.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_instance_datasource_properties = args[:compute_instance_datasource_properties] if args.key?(:compute_instance_datasource_properties)
          @gcp_resourcename = args[:gcp_resourcename] if args.key?(:gcp_resourcename)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class DirectLocationAssignment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::BackupdrV1::LocationAssignment>]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # A set of Display Device options
      class DisplayDevice
        include Google::Apis::Core::Hashable
      
        # Optional. Enables display for the Compute Engine VM
        # Corresponds to the JSON property `enableDisplay`
        # @return [Boolean]
        attr_accessor :enable_display
        alias_method :enable_display?, :enable_display
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_display = args[:enable_display] if args.key?(:enable_display)
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
      
      # A key/value pair to be used for storing metadata.
      class Entry
        include Google::Apis::Core::Hashable
      
        # Optional. Key for the metadata entry.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Value for the metadata entry. These are free-form strings, and only
        # have meaning as interpreted by the image running in the instance. The only
        # restriction placed on values is that their size must be less than or equal to
        # 262144 bytes (256 KiB).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
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
      
      # Defines parameters that should only be used for specific asset types.
      class ExtraParameter
        include Google::Apis::Core::Hashable
      
        # To be used for specifying the intended distribution of regional compute.
        # googleapis.com/InstanceGroupManager instances
        # Corresponds to the JSON property `regionalMigDistributionPolicy`
        # @return [Google::Apis::BackupdrV1::RegionalMigDistributionPolicy]
        attr_accessor :regional_mig_distribution_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regional_mig_distribution_policy = args[:regional_mig_distribution_policy] if args.key?(:regional_mig_distribution_policy)
        end
      end
      
      # Request message for FetchAccessToken.
      class FetchAccessTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The generation of the backup to update.
        # Corresponds to the JSON property `generationId`
        # @return [Fixnum]
        attr_accessor :generation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generation_id = args[:generation_id] if args.key?(:generation_id)
        end
      end
      
      # Response message for FetchAccessToken.
      class FetchAccessTokenResponse
        include Google::Apis::Core::Hashable
      
        # The token is valid until this time.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The location in bucket that can be used for reading.
        # Corresponds to the JSON property `readLocation`
        # @return [String]
        attr_accessor :read_location
      
        # The downscoped token that was created.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The location in bucket that can be used for writing.
        # Corresponds to the JSON property `writeLocation`
        # @return [String]
        attr_accessor :write_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @read_location = args[:read_location] if args.key?(:read_location)
          @token = args[:token] if args.key?(:token)
          @write_location = args[:write_location] if args.key?(:write_location)
        end
      end
      
      # Response message for fetching usable BackupVaults.
      class FetchUsableBackupVaultsResponse
        include Google::Apis::Core::Hashable
      
        # The list of BackupVault instances in the project for the specified location.
        # If the '`location`' value in the request is "-", the response contains a list
        # of instances from all locations. In case any location is unreachable, the
        # response will only return backup vaults in reachable locations and the '
        # unreachable' field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `backupVaults`
        # @return [Array<Google::Apis::BackupdrV1::BackupVault>]
        attr_accessor :backup_vaults
      
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
          @backup_vaults = args[:backup_vaults] if args.key?(:backup_vaults)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for finalizing a Backup.
      class FinalizeBackupRequest
        include Google::Apis::Core::Hashable
      
        # Required. Resource ID of the Backup resource to be finalized. This must be the
        # same backup_id that was used in the InitiateBackupRequest.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # The point in time when this backup was captured from the source. This will be
        # assigned to the consistency_time field of the newly created Backup.
        # Corresponds to the JSON property `consistencyTime`
        # @return [String]
        attr_accessor :consistency_time
      
        # This will be assigned to the description field of the newly created Backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The latest timestamp of data available in this Backup. This will be set on the
        # newly created Backup.
        # Corresponds to the JSON property `recoveryRangeEndTime`
        # @return [String]
        attr_accessor :recovery_range_end_time
      
        # The earliest timestamp of data available in this Backup. This will set on the
        # newly created Backup.
        # Corresponds to the JSON property `recoveryRangeStartTime`
        # @return [String]
        attr_accessor :recovery_range_start_time
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The ExpireTime on the backup will be set to FinalizeTime plus this duration.
        # If the resulting ExpireTime is less than EnforcedRetentionEndTime, then
        # ExpireTime is set to EnforcedRetentionEndTime.
        # Corresponds to the JSON property `retentionDuration`
        # @return [String]
        attr_accessor :retention_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @consistency_time = args[:consistency_time] if args.key?(:consistency_time)
          @description = args[:description] if args.key?(:description)
          @recovery_range_end_time = args[:recovery_range_end_time] if args.key?(:recovery_range_end_time)
          @recovery_range_start_time = args[:recovery_range_start_time] if args.key?(:recovery_range_start_time)
          @request_id = args[:request_id] if args.key?(:request_id)
          @retention_duration = args[:retention_duration] if args.key?(:retention_duration)
        end
      end
      
      # GCPBackupPlanInfo captures the plan configuration details of Google Cloud
      # resources at the time of backup.
      class GcpBackupPlanInfo
        include Google::Apis::Core::Hashable
      
        # Resource name of backup plan by which workload is protected at the time of the
        # backup. Format: projects/`project`/locations/`location`/backupPlans/`
        # backupPlanId`
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # The rule id of the backup plan which triggered this backup in case of
        # scheduled backup or used for
        # Corresponds to the JSON property `backupPlanRuleId`
        # @return [String]
        attr_accessor :backup_plan_rule_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @backup_plan_rule_id = args[:backup_plan_rule_id] if args.key?(:backup_plan_rule_id)
        end
      end
      
      # GcpBackupConfig captures the Backup configuration details for Google Cloud
      # resources. All Google Cloud resources regardless of type are protected with
      # backup plan associations.
      class GcpBackupConfig
        include Google::Apis::Core::Hashable
      
        # The name of the backup plan.
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # The name of the backup plan association.
        # Corresponds to the JSON property `backupPlanAssociation`
        # @return [String]
        attr_accessor :backup_plan_association
      
        # The description of the backup plan.
        # Corresponds to the JSON property `backupPlanDescription`
        # @return [String]
        attr_accessor :backup_plan_description
      
        # The names of the backup plan rules which point to this backupvault
        # Corresponds to the JSON property `backupPlanRules`
        # @return [Array<String>]
        attr_accessor :backup_plan_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @backup_plan_association = args[:backup_plan_association] if args.key?(:backup_plan_association)
          @backup_plan_description = args[:backup_plan_description] if args.key?(:backup_plan_description)
          @backup_plan_rules = args[:backup_plan_rules] if args.key?(:backup_plan_rules)
        end
      end
      
      # Feature type of the Guest OS.
      class GuestOsFeature
        include Google::Apis::Core::Hashable
      
        # The ID of a supported feature.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Specifies the parameters to initialize this disk.
      class InitializeParams
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the disk name. If not specified, the default is to use the
        # name of the instance.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # Optional. URL of the zone where the disk should be created. Required for each
        # regional disk associated with the instance.
        # Corresponds to the JSON property `replicaZones`
        # @return [Array<String>]
        attr_accessor :replica_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @replica_zones = args[:replica_zones] if args.key?(:replica_zones)
        end
      end
      
      # request message for InitiateBackup.
      class InitiateBackupRequest
        include Google::Apis::Core::Hashable
      
        # Required. Resource ID of the Backup resource.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response message for InitiateBackup.
      class InitiateBackupResponse
        include Google::Apis::Core::Hashable
      
        # The name of the backup that was created.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # The generation id of the base backup. It is needed for the incremental backups.
        # Corresponds to the JSON property `baseBackupGenerationId`
        # @return [Fixnum]
        attr_accessor :base_backup_generation_id
      
        # The generation id of the new backup.
        # Corresponds to the JSON property `newBackupGenerationId`
        # @return [Fixnum]
        attr_accessor :new_backup_generation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @base_backup_generation_id = args[:base_backup_generation_id] if args.key?(:base_backup_generation_id)
          @new_backup_generation_id = args[:new_backup_generation_id] if args.key?(:new_backup_generation_id)
        end
      end
      
      # Additional instance params.
      class InstanceParams
        include Google::Apis::Core::Hashable
      
        # Optional. Resource manager tags to be bound to the instance.
        # Corresponds to the JSON property `resourceManagerTags`
        # @return [Hash<String,String>]
        attr_accessor :resource_manager_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_manager_tags = args[:resource_manager_tags] if args.key?(:resource_manager_tags)
        end
      end
      
      # 
      class IsolationExpectations
        include Google::Apis::Core::Hashable
      
        # Explicit overrides for ZI and ZS requirements to be used for resources that
        # should be excluded from ZI/ZS verification logic.
        # Corresponds to the JSON property `requirementOverride`
        # @return [Google::Apis::BackupdrV1::RequirementOverride]
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
      
      # Response message for List BackupPlanAssociation
      class ListBackupPlanAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Backup Plan Associations in the project for the specified location.
        # If the ``location`` value in the request is "-", the response contains a list
        # of instances from all locations. In case any location is unreachable, the
        # response will only return backup plan associations in reachable locations and
        # the 'unreachable' field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `backupPlanAssociations`
        # @return [Array<Google::Apis::BackupdrV1::BackupPlanAssociation>]
        attr_accessor :backup_plan_associations
      
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
          @backup_plan_associations = args[:backup_plan_associations] if args.key?(:backup_plan_associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for getting a list of `BackupPlan`.
      class ListBackupPlansResponse
        include Google::Apis::Core::Hashable
      
        # The list of `BackupPlans` in the project for the specified location. If the ``
        # location`` value in the request is "-", the response contains a list of
        # resources from all locations. In case any location is unreachable, the
        # response will only return backup plans in reachable locations and the '
        # unreachable' field will be populated with a list of unreachable locations.
        # BackupPlan
        # Corresponds to the JSON property `backupPlans`
        # @return [Array<Google::Apis::BackupdrV1::BackupPlan>]
        attr_accessor :backup_plans
      
        # A token which may be sent as page_token in a subsequent `ListBackupPlans` call
        # to retrieve the next page of results. If this field is omitted or empty, then
        # there are no more results to return.
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
          @backup_plans = args[:backup_plans] if args.key?(:backup_plans)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing BackupVaults.
      class ListBackupVaultsResponse
        include Google::Apis::Core::Hashable
      
        # The list of BackupVault instances in the project for the specified location.
        # If the '`location`' value in the request is "-", the response contains a list
        # of instances from all locations. In case any location is unreachable, the
        # response will only return backup vaults in reachable locations and the '
        # unreachable' field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `backupVaults`
        # @return [Array<Google::Apis::BackupdrV1::BackupVault>]
        attr_accessor :backup_vaults
      
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
          @backup_vaults = args[:backup_vaults] if args.key?(:backup_vaults)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing Backups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Backup instances in the project for the specified location. If the
        # '`location`' value in the request is "-", the response contains a list of
        # instances from all locations. In case any location is unreachable, the
        # response will only return data sources in reachable locations and the '
        # unreachable' field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::BackupdrV1::Backup>]
        attr_accessor :backups
      
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
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing DataSources.
      class ListDataSourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of DataSource instances in the project for the specified location. If
        # the '`location`' value in the request is "-", the response contains a list of
        # instances from all locations. In case any location is unreachable, the
        # response will only return data sources in reachable locations and the '
        # unreachable' field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `dataSources`
        # @return [Array<Google::Apis::BackupdrV1::DataSource>]
        attr_accessor :data_sources
      
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
          @data_sources = args[:data_sources] if args.key?(:data_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BackupdrV1::Location>]
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
      
      # Response message for listing management servers.
      class ListManagementServersResponse
        include Google::Apis::Core::Hashable
      
        # The list of ManagementServer instances in the project for the specified
        # location. If the '`location`' value in the request is "-", the response
        # contains a list of instances from all locations. In case any location is
        # unreachable, the response will only return management servers in reachable
        # locations and the 'unreachable' field will be populated with a list of
        # unreachable locations.
        # Corresponds to the JSON property `managementServers`
        # @return [Array<Google::Apis::BackupdrV1::ManagementServer>]
        attr_accessor :management_servers
      
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
          @management_servers = args[:management_servers] if args.key?(:management_servers)
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
        # @return [Array<Google::Apis::BackupdrV1::Operation>]
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
        # @return [Google::Apis::BackupdrV1::BlobstoreLocation]
        attr_accessor :blobstore_location
      
        # 
        # Corresponds to the JSON property `childAssetLocation`
        # @return [Google::Apis::BackupdrV1::CloudAssetComposition]
        attr_accessor :child_asset_location
      
        # 
        # Corresponds to the JSON property `directLocation`
        # @return [Google::Apis::BackupdrV1::DirectLocationAssignment]
        attr_accessor :direct_location
      
        # 
        # Corresponds to the JSON property `gcpProjectProxy`
        # @return [Google::Apis::BackupdrV1::TenantProjectProxy]
        attr_accessor :gcp_project_proxy
      
        # Message describing that the location of the customer resource is tied to
        # placer allocations
        # Corresponds to the JSON property `placerLocation`
        # @return [Google::Apis::BackupdrV1::PlacerLocation]
        attr_accessor :placer_location
      
        # 
        # Corresponds to the JSON property `spannerLocation`
        # @return [Google::Apis::BackupdrV1::SpannerLocation]
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
      
      # ManagementServer describes a single BackupDR ManagementServer instance.
      class ManagementServer
        include Google::Apis::Core::Hashable
      
        # Output only. The hostname or ip address of the exposed AGM endpoints, used by
        # BAs to connect to BA proxy.
        # Corresponds to the JSON property `baProxyUri`
        # @return [Array<String>]
        attr_accessor :ba_proxy_uri
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the ManagementServer instance (2048 characters or
        # less).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Server specified ETag for the ManagementServer resource to prevent
        # simultaneous updates from overwiting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels to represent user provided metadata. Labels
        # currently defined: 1. migrate_from_go= If set to true, the MS is created in
        # migration ready mode.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # ManagementURI for the Management Server resource.
        # Corresponds to the JSON property `managementUri`
        # @return [Google::Apis::BackupdrV1::ManagementUri]
        attr_accessor :management_uri
      
        # Output only. Identifier. The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. VPC networks to which the ManagementServer instance is connected.
        # For this version, only a single network is supported.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BackupdrV1::NetworkConfig>]
        attr_accessor :networks
      
        # Output only. The OAuth 2.0 client id is required to make API calls to the
        # BackupDR instance API of this ManagementServer. This is the value that should
        # be provided in the 'aud' field of the OIDC ID Token (see openid specification
        # https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
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
      
        # Output only. The ManagementServer state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The type of the ManagementServer resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
        # Corresponds to the JSON property `workforceIdentityBasedManagementUri`
        # @return [Google::Apis::BackupdrV1::WorkforceIdentityBasedManagementUri]
        attr_accessor :workforce_identity_based_management_uri
      
        # OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,
        # Corresponds to the JSON property `workforceIdentityBasedOauth2ClientId`
        # @return [Google::Apis::BackupdrV1::WorkforceIdentityBasedOAuth2ClientId]
        attr_accessor :workforce_identity_based_oauth2_client_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ba_proxy_uri = args[:ba_proxy_uri] if args.key?(:ba_proxy_uri)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @management_uri = args[:management_uri] if args.key?(:management_uri)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @workforce_identity_based_management_uri = args[:workforce_identity_based_management_uri] if args.key?(:workforce_identity_based_management_uri)
          @workforce_identity_based_oauth2_client_id = args[:workforce_identity_based_oauth2_client_id] if args.key?(:workforce_identity_based_oauth2_client_id)
        end
      end
      
      # ManagementURI for the Management Server resource.
      class ManagementUri
        include Google::Apis::Core::Hashable
      
        # Output only. The ManagementServer AGM/RD API URL.
        # Corresponds to the JSON property `api`
        # @return [String]
        attr_accessor :api
      
        # Output only. The ManagementServer AGM/RD WebUI URL.
        # Corresponds to the JSON property `webUi`
        # @return [String]
        attr_accessor :web_ui
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @web_ui = args[:web_ui] if args.key?(:web_ui)
        end
      end
      
      # A metadata key/value entry.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Optional. Array of key/value pairs. The total size of all keys and values must
        # be less than 512 KB.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::BackupdrV1::Entry>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Network configuration for ManagementServer instance.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the Google Compute Engine VPC network to which
        # the ManagementServer instance is connected.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The network connect mode of the ManagementServer instance. For this
        # version, only PRIVATE_SERVICE_ACCESS is supported.
        # Corresponds to the JSON property `peeringMode`
        # @return [String]
        attr_accessor :peering_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @peering_mode = args[:peering_mode] if args.key?(:peering_mode)
        end
      end
      
      # A network interface resource attached to an instance. s
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # Optional. An array of configurations for this interface. Currently, only one
        # access config,ONE_TO_ONE_NAT is supported. If there are no accessConfigs
        # specified, then this instance will have no external internet access.
        # Corresponds to the JSON property `accessConfigs`
        # @return [Array<Google::Apis::BackupdrV1::AccessConfig>]
        attr_accessor :access_configs
      
        # Optional. An array of alias IP ranges for this network interface. You can only
        # specify this field for network interfaces in VPC networks.
        # Corresponds to the JSON property `aliasIpRanges`
        # @return [Array<Google::Apis::BackupdrV1::AliasIpRange>]
        attr_accessor :alias_ip_ranges
      
        # Optional. The prefix length of the primary internal IPv6 range.
        # Corresponds to the JSON property `internalIpv6PrefixLength`
        # @return [Fixnum]
        attr_accessor :internal_ipv6_prefix_length
      
        # Optional. An array of IPv6 access configurations for this interface. Currently,
        # only one IPv6 access config, DIRECT_IPV6, is supported. If there is no
        # ipv6AccessConfig specified, then this instance will have no external IPv6
        # Internet access.
        # Corresponds to the JSON property `ipv6AccessConfigs`
        # @return [Array<Google::Apis::BackupdrV1::AccessConfig>]
        attr_accessor :ipv6_access_configs
      
        # Optional. [Output Only] One of EXTERNAL, INTERNAL to indicate whether the IP
        # can be accessed from the Internet. This field is always inherited from its
        # subnetwork.
        # Corresponds to the JSON property `ipv6AccessType`
        # @return [String]
        attr_accessor :ipv6_access_type
      
        # Optional. An IPv6 internal network address for this network interface. To use
        # a static internal IP address, it must be unused and in the same region as the
        # instance's zone. If not specified, Google Cloud will automatically assign an
        # internal IPv6 address from the instance's subnetwork.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # Output only. [Output Only] The name of the network interface, which is
        # generated by the server.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. URL of the VPC network resource for this instance.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The URL of the network attachment that this interface should connect
        # to in the following format: projects/`project_number`/regions/`region_name`/
        # networkAttachments/`network_attachment_name`.
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        # Optional. An IPv4 internal IP address to assign to the instance for this
        # network interface. If not specified by the user, an unused internal IP is
        # assigned by the system.
        # Corresponds to the JSON property `networkIP`
        # @return [String]
        attr_accessor :network_ip
      
        # Optional. The type of vNIC to be used on this interface. This may be gVNIC or
        # VirtioNet.
        # Corresponds to the JSON property `nicType`
        # @return [String]
        attr_accessor :nic_type
      
        # Optional. The networking queue count that's specified by users for the network
        # interface. Both Rx and Tx queues will be set to this number. It'll be empty if
        # not specified by the users.
        # Corresponds to the JSON property `queueCount`
        # @return [Fixnum]
        attr_accessor :queue_count
      
        # The stack type for this network interface.
        # Corresponds to the JSON property `stackType`
        # @return [String]
        attr_accessor :stack_type
      
        # Optional. The URL of the Subnetwork resource for this instance.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_configs = args[:access_configs] if args.key?(:access_configs)
          @alias_ip_ranges = args[:alias_ip_ranges] if args.key?(:alias_ip_ranges)
          @internal_ipv6_prefix_length = args[:internal_ipv6_prefix_length] if args.key?(:internal_ipv6_prefix_length)
          @ipv6_access_configs = args[:ipv6_access_configs] if args.key?(:ipv6_access_configs)
          @ipv6_access_type = args[:ipv6_access_type] if args.key?(:ipv6_access_type)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
          @network_ip = args[:network_ip] if args.key?(:network_ip)
          @nic_type = args[:nic_type] if args.key?(:nic_type)
          @queue_count = args[:queue_count] if args.key?(:queue_count)
          @stack_type = args[:stack_type] if args.key?(:stack_type)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Network performance configuration.
      class NetworkPerformanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The tier of the total egress bandwidth.
        # Corresponds to the JSON property `totalEgressBandwidthTier`
        # @return [String]
        attr_accessor :total_egress_bandwidth_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_egress_bandwidth_tier = args[:total_egress_bandwidth_tier] if args.key?(:total_egress_bandwidth_tier)
        end
      end
      
      # Node Affinity: the configuration of desired nodes onto which this Instance
      # could be scheduled.
      class NodeAffinity
        include Google::Apis::Core::Hashable
      
        # Optional. Corresponds to the label key of Node resource.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Defines the operation of node selection.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Optional. Corresponds to the label values of Node resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @operator = args[:operator] if args.key?(:operator)
          @values = args[:values] if args.key?(:values)
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
        # @return [Google::Apis::BackupdrV1::Status]
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
      
        # Output only. AdditionalInfo contains additional Info related to backup plan
        # association resource.
        # Corresponds to the JSON property `additionalInfo`
        # @return [Hash<String,String>]
        attr_accessor :additional_info
      
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
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to 'Code.
        # CANCELLED'.
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
          @additional_info = args[:additional_info] if args.key?(:additional_info)
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
        # @return [Array<Google::Apis::BackupdrV1::AuditConfig>]
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
        # @return [Array<Google::Apis::BackupdrV1::Binding>]
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
        # @return [Array<Google::Apis::BackupdrV1::ZoneConfiguration>]
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
      
      # Message for deleting a DataSource.
      class RemoveDataSourceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Request message for restoring from a Backup.
      class RestoreBackupRequest
        include Google::Apis::Core::Hashable
      
        # ComputeInstanceRestoreProperties represents Compute Engine instance properties
        # to be overridden during restore.
        # Corresponds to the JSON property `computeInstanceRestoreProperties`
        # @return [Google::Apis::BackupdrV1::ComputeInstanceRestoreProperties]
        attr_accessor :compute_instance_restore_properties
      
        # ComputeInstanceTargetEnvironment represents Compute Engine target environment
        # to be used during restore.
        # Corresponds to the JSON property `computeInstanceTargetEnvironment`
        # @return [Google::Apis::BackupdrV1::ComputeInstanceTargetEnvironment]
        attr_accessor :compute_instance_target_environment
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_instance_restore_properties = args[:compute_instance_restore_properties] if args.key?(:compute_instance_restore_properties)
          @compute_instance_target_environment = args[:compute_instance_target_environment] if args.key?(:compute_instance_target_environment)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Message for rules config info.
      class RuleConfigInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `lastBackupError`
        # @return [Google::Apis::BackupdrV1::Status]
        attr_accessor :last_backup_error
      
        # Output only. The last backup state for rule.
        # Corresponds to the JSON property `lastBackupState`
        # @return [String]
        attr_accessor :last_backup_state
      
        # Output only. The point in time when the last successful backup was captured
        # from the source.
        # Corresponds to the JSON property `lastSuccessfulBackupConsistencyTime`
        # @return [String]
        attr_accessor :last_successful_backup_consistency_time
      
        # Output only. Output Only. Backup Rule id fetched from backup plan.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_backup_error = args[:last_backup_error] if args.key?(:last_backup_error)
          @last_backup_state = args[:last_backup_state] if args.key?(:last_backup_state)
          @last_successful_backup_consistency_time = args[:last_successful_backup_consistency_time] if args.key?(:last_successful_backup_consistency_time)
          @rule_id = args[:rule_id] if args.key?(:rule_id)
        end
      end
      
      # Sets the scheduling options for an Instance.
      class Scheduling
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies whether the instance should be automatically restarted if
        # it is terminated by Compute Engine (not terminated by a user).
        # Corresponds to the JSON property `automaticRestart`
        # @return [Boolean]
        attr_accessor :automatic_restart
        alias_method :automatic_restart?, :automatic_restart
      
        # Optional. Specifies the termination action for the instance.
        # Corresponds to the JSON property `instanceTerminationAction`
        # @return [String]
        attr_accessor :instance_termination_action
      
        # A SchedulingDuration represents a fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". Range is
        # approximately 10,000 years.
        # Corresponds to the JSON property `localSsdRecoveryTimeout`
        # @return [Google::Apis::BackupdrV1::SchedulingDuration]
        attr_accessor :local_ssd_recovery_timeout
      
        # Optional. The minimum number of virtual CPUs this instance will consume when
        # running on a sole-tenant node.
        # Corresponds to the JSON property `minNodeCpus`
        # @return [Fixnum]
        attr_accessor :min_node_cpus
      
        # Optional. A set of node affinity and anti-affinity configurations. Overrides
        # reservationAffinity.
        # Corresponds to the JSON property `nodeAffinities`
        # @return [Array<Google::Apis::BackupdrV1::NodeAffinity>]
        attr_accessor :node_affinities
      
        # Optional. Defines the maintenance behavior for this instance.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Optional. Defines whether the instance is preemptible.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # Optional. Specifies the provisioning model of the instance.
        # Corresponds to the JSON property `provisioningModel`
        # @return [String]
        attr_accessor :provisioning_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_restart = args[:automatic_restart] if args.key?(:automatic_restart)
          @instance_termination_action = args[:instance_termination_action] if args.key?(:instance_termination_action)
          @local_ssd_recovery_timeout = args[:local_ssd_recovery_timeout] if args.key?(:local_ssd_recovery_timeout)
          @min_node_cpus = args[:min_node_cpus] if args.key?(:min_node_cpus)
          @node_affinities = args[:node_affinities] if args.key?(:node_affinities)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @provisioning_model = args[:provisioning_model] if args.key?(:provisioning_model)
        end
      end
      
      # A SchedulingDuration represents a fixed-length span of time represented as a
      # count of seconds and fractions of seconds at nanosecond resolution. It is
      # independent of any calendar and concepts like "day" or "month". Range is
      # approximately 10,000 years.
      class SchedulingDuration
        include Google::Apis::Core::Hashable
      
        # Optional. Span of time that's a fraction of a second at nanosecond resolution.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Span of time at a resolution of a second.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # A service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Optional. Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # ServiceLockInfo represents the details of a lock taken by the service on a
      # Backup resource.
      class ServiceLockInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the operation that created this lock. The lock will
        # automatically be released when the operation completes.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
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
        # @return [Google::Apis::BackupdrV1::Policy]
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
      
      # Request message for SetStatusInternal method.
      class SetInternalStatusRequest
        include Google::Apis::Core::Hashable
      
        # Required. Output only. The new BackupConfigState to set for the DataSource.
        # Corresponds to the JSON property `backupConfigState`
        # @return [String]
        attr_accessor :backup_config_state
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. The request ID must be a
        # valid UUID with the exception that zero UUID is not supported (00000000-0000-
        # 0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The value required for this method to work. This field must be the
        # 32-byte SHA256 hash of the DataSourceID. The DataSourceID used here is only
        # the final piece of the fully qualified resource path for this DataSource (i.e.
        # the part after '.../dataSources/'). This field exists to make this method
        # difficult to call since it is intended for use only by Backup Appliances.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_config_state = args[:backup_config_state] if args.key?(:backup_config_state)
          @request_id = args[:request_id] if args.key?(:request_id)
          @value = args[:value] if args.key?(:value)
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
      
      # `StandardSchedule` defines a schedule that run within the confines of a
      # defined window of days. We can define recurrence type for schedule as HOURLY,
      # DAILY, WEEKLY, MONTHLY or YEARLY.
      class StandardSchedule
        include Google::Apis::Core::Hashable
      
        # `BackupWindow` defines a window of the day during which backup jobs will run.
        # Corresponds to the JSON property `backupWindow`
        # @return [Google::Apis::BackupdrV1::BackupWindow]
        attr_accessor :backup_window
      
        # Optional. Specifies days of months like 1, 5, or 14 on which jobs will run.
        # Values for `days_of_month` are only applicable for `recurrence_type`, `MONTHLY`
        # and `YEARLY`. A validation error will occur if other values are supplied.
        # Corresponds to the JSON property `daysOfMonth`
        # @return [Array<Fixnum>]
        attr_accessor :days_of_month
      
        # Optional. Specifies days of week like, MONDAY or TUESDAY, on which jobs will
        # run. This is required for `recurrence_type`, `WEEKLY` and is not applicable
        # otherwise. A validation error will occur if a value is supplied and `
        # recurrence_type` is not `WEEKLY`.
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Array<String>]
        attr_accessor :days_of_week
      
        # Optional. Specifies frequency for hourly backups. A hourly frequency of 2
        # means jobs will run every 2 hours from start time till end time defined. This
        # is required for `recurrence_type`, `HOURLY` and is not applicable otherwise. A
        # validation error will occur if a value is supplied and `recurrence_type` is
        # not `HOURLY`. Value of hourly frequency should be between 6 and 23. Reason for
        # limit : We found that there is bandwidth limitation of 3GB/S for GMI while
        # taking a backup and 5GB/S while doing a restore. Given the amount of parallel
        # backups and restore we are targeting, this will potentially take the backup
        # time to mins and hours (in worst case scenario).
        # Corresponds to the JSON property `hourlyFrequency`
        # @return [Fixnum]
        attr_accessor :hourly_frequency
      
        # Optional. Specifies the months of year, like `FEBRUARY` and/or `MAY`, on which
        # jobs will run. This field is only applicable when `recurrence_type` is `YEARLY`
        # . A validation error will occur if other values are supplied.
        # Corresponds to the JSON property `months`
        # @return [Array<String>]
        attr_accessor :months
      
        # Required. Specifies the `RecurrenceType` for the schedule.
        # Corresponds to the JSON property `recurrenceType`
        # @return [String]
        attr_accessor :recurrence_type
      
        # Required. The time zone to be used when interpreting the schedule. The value
        # of this field must be a time zone name from the IANA tz database. See https://
        # en.wikipedia.org/wiki/List_of_tz_database_time_zones for the list of valid
        # timezone names. For e.g., Europe/Paris.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # `WeekDayOfMonth` defines the week day of the month on which the backups will
        # run. The message combines a `WeekOfMonth` and `DayOfWeek` to produce values
        # like `FIRST`/`MONDAY` or `LAST`/`FRIDAY`.
        # Corresponds to the JSON property `weekDayOfMonth`
        # @return [Google::Apis::BackupdrV1::WeekDayOfMonth]
        attr_accessor :week_day_of_month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_window = args[:backup_window] if args.key?(:backup_window)
          @days_of_month = args[:days_of_month] if args.key?(:days_of_month)
          @days_of_week = args[:days_of_week] if args.key?(:days_of_week)
          @hourly_frequency = args[:hourly_frequency] if args.key?(:hourly_frequency)
          @months = args[:months] if args.key?(:months)
          @recurrence_type = args[:recurrence_type] if args.key?(:recurrence_type)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @week_day_of_month = args[:week_day_of_month] if args.key?(:week_day_of_month)
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
      
      # A set of instance tags.
      class Tags
        include Google::Apis::Core::Hashable
      
        # Optional. An array of tags. Each tag must be 1-63 characters long, and comply
        # with RFC1035.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
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
      
      # Request message for triggering a backup.
      class TriggerBackupRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. backup rule_id for which a backup needs to be triggered.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @rule_id = args[:rule_id] if args.key?(:rule_id)
        end
      end
      
      # `WeekDayOfMonth` defines the week day of the month on which the backups will
      # run. The message combines a `WeekOfMonth` and `DayOfWeek` to produce values
      # like `FIRST`/`MONDAY` or `LAST`/`FRIDAY`.
      class WeekDayOfMonth
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the day of the week.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Required. Specifies the week of the month.
        # Corresponds to the JSON property `weekOfMonth`
        # @return [String]
        attr_accessor :week_of_month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @week_of_month = args[:week_of_month] if args.key?(:week_of_month)
        end
      end
      
      # ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
      class WorkforceIdentityBasedManagementUri
        include Google::Apis::Core::Hashable
      
        # Output only. First party Management URI for Google Identities.
        # Corresponds to the JSON property `firstPartyManagementUri`
        # @return [String]
        attr_accessor :first_party_management_uri
      
        # Output only. Third party Management URI for External Identity Providers.
        # Corresponds to the JSON property `thirdPartyManagementUri`
        # @return [String]
        attr_accessor :third_party_management_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_party_management_uri = args[:first_party_management_uri] if args.key?(:first_party_management_uri)
          @third_party_management_uri = args[:third_party_management_uri] if args.key?(:third_party_management_uri)
        end
      end
      
      # OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,
      class WorkforceIdentityBasedOAuth2ClientId
        include Google::Apis::Core::Hashable
      
        # Output only. First party OAuth Client ID for Google Identities.
        # Corresponds to the JSON property `firstPartyOauth2ClientId`
        # @return [String]
        attr_accessor :first_party_oauth2_client_id
      
        # Output only. Third party OAuth Client ID for External Identity Providers.
        # Corresponds to the JSON property `thirdPartyOauth2ClientId`
        # @return [String]
        attr_accessor :third_party_oauth2_client_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_party_oauth2_client_id = args[:first_party_oauth2_client_id] if args.key?(:first_party_oauth2_client_id)
          @third_party_oauth2_client_id = args[:third_party_oauth2_client_id] if args.key?(:third_party_oauth2_client_id)
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
