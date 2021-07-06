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
    module BaremetalsolutionV1alpha1
      
      # Request for DisableInteractiveSerialConsole.
      class DisableInteractiveSerialConsoleRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for DisableInteractiveSerialConsole.
      class DisableInteractiveSerialConsoleResponse
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
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for EnableInteractiveSerialConsole.
      class EnableInteractiveSerialConsoleRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for EnableInteractiveSerialConsole.
      class EnableInteractiveSerialConsoleResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An Instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Is hyperthreading enabled for this instance?
        # Corresponds to the JSON property `hyperthreadingEnabled`
        # @return [Boolean]
        attr_accessor :hyperthreading_enabled
        alias_method :hyperthreading_enabled?, :hyperthreading_enabled
      
        # The Luns attached to this instance
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::Lun>]
        attr_accessor :luns
      
        # Output only. The name of this Instance.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The scheduled power reset time.
        # Corresponds to the JSON property `scheduledPowerResetTime`
        # @return [String]
        attr_accessor :scheduled_power_reset_time
      
        # Is SSH enabled for this instance?
        # Corresponds to the JSON property `sshEnabled`
        # @return [Boolean]
        attr_accessor :ssh_enabled
        alias_method :ssh_enabled?, :ssh_enabled
      
        # The state of this Instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hyperthreading_enabled = args[:hyperthreading_enabled] if args.key?(:hyperthreading_enabled)
          @luns = args[:luns] if args.key?(:luns)
          @name = args[:name] if args.key?(:name)
          @scheduled_power_reset_time = args[:scheduled_power_reset_time] if args.key?(:scheduled_power_reset_time)
          @ssh_enabled = args[:ssh_enabled] if args.key?(:ssh_enabled)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Configuration parameters for a new instance.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # A network.
        # Corresponds to the JSON property `clientNetwork`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress]
        attr_accessor :client_network
      
        # Whether the instance should be provisioned with Hyperthreading enabled.
        # Corresponds to the JSON property `hyperthreading`
        # @return [Boolean]
        attr_accessor :hyperthreading
        alias_method :hyperthreading?, :hyperthreading
      
        # A transient unique identifier to idenfity an instance within an
        # ProvisioningConfig request.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Instance type.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Location where to deploy the instance.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # OS image to initialize the instance.
        # Corresponds to the JSON property `osImage`
        # @return [String]
        attr_accessor :os_image
      
        # A network.
        # Corresponds to the JSON property `privateNetwork`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress]
        attr_accessor :private_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_network = args[:client_network] if args.key?(:client_network)
          @hyperthreading = args[:hyperthreading] if args.key?(:hyperthreading)
          @id = args[:id] if args.key?(:id)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @location = args[:location] if args.key?(:location)
          @os_image = args[:os_image] if args.key?(:os_image)
          @private_network = args[:private_network] if args.key?(:private_network)
        end
      end
      
      # A resource budget.
      class InstanceQuota
        include Google::Apis::Core::Hashable
      
        # Number of machines than can be created for the given location and
        # instance_type.
        # Corresponds to the JSON property `availableMachineCount`
        # @return [Fixnum]
        attr_accessor :available_machine_count
      
        # Instance type.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Location where the quota applies.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_machine_count = args[:available_machine_count] if args.key?(:available_machine_count)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Response for ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The Instances in this project.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::Instance>]
        attr_accessor :instances
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListLuns.
      class ListLunsResponse
        include Google::Apis::Core::Hashable
      
        # The Luns in this project.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::Lun>]
        attr_accessor :luns
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @luns = args[:luns] if args.key?(:luns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListProvisioningQuotas.
      class ListProvisioningQuotasResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The provisioning quotas registered in this project.
        # Corresponds to the JSON property `provisioningQuotas`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::ProvisioningQuota>]
        attr_accessor :provisioning_quotas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @provisioning_quotas = args[:provisioning_quotas] if args.key?(:provisioning_quotas)
        end
      end
      
      # Response for ListSSHKeys.
      class ListSshKeysResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The SSH keys registered in this project.
        # Corresponds to the JSON property `sshKeys`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::SshKey>]
        attr_accessor :ssh_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @ssh_keys = args[:ssh_keys] if args.key?(:ssh_keys)
        end
      end
      
      # Response for ListSnapshotSchedulePolicies.
      class ListSnapshotSchedulePoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The snapshot schedule policies registered in this project.
        # Corresponds to the JSON property `snapshotSchedulePolicies`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy>]
        attr_accessor :snapshot_schedule_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshot_schedule_policies = args[:snapshot_schedule_policies] if args.key?(:snapshot_schedule_policies)
        end
      end
      
      # Response for ListVolumeSnapshots.
      class ListVolumeSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The VolumeSnapshots for the volume.
        # Corresponds to the JSON property `volumeSnapshots`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot>]
        attr_accessor :volume_snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @volume_snapshots = args[:volume_snapshots] if args.key?(:volume_snapshots)
        end
      end
      
      # Response for ListVolumes.
      class ListVolumesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The volumes registered in this project.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # A storage Lun.
      class Lun
        include Google::Apis::Core::Hashable
      
        # Whether this Lun is a boot Lun.
        # Corresponds to the JSON property `isBoot`
        # @return [Boolean]
        attr_accessor :is_boot
        alias_method :is_boot?, :is_boot
      
        # The multiprotocol type of this Lun.
        # Corresponds to the JSON property `multiprotocolType`
        # @return [String]
        attr_accessor :multiprotocol_type
      
        # Output only. The name of this Lun.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Volume registered in the project.
        # Corresponds to the JSON property `remoteVolume`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Volume]
        attr_accessor :remote_volume
      
        # Whether this Lun is allowed to be shared between multiple physical servers.
        # Corresponds to the JSON property `shareable`
        # @return [Boolean]
        attr_accessor :shareable
        alias_method :shareable?, :shareable
      
        # The size of this Lun, in gigabytes.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # The state of this Lun.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_boot = args[:is_boot] if args.key?(:is_boot)
          @multiprotocol_type = args[:multiprotocol_type] if args.key?(:multiprotocol_type)
          @name = args[:name] if args.key?(:name)
          @remote_volume = args[:remote_volume] if args.key?(:remote_volume)
          @shareable = args[:shareable] if args.key?(:shareable)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A LUN range.
      class LunRange
        include Google::Apis::Core::Hashable
      
        # Number of LUNs to create.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The requested size of each LUN, in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quantity = args[:quantity] if args.key?(:quantity)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # A network.
      class NetworkAddress
        include Google::Apis::Core::Hashable
      
        # IP address to be assigned to the server.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Id of the network to use, within the same ProvisioningConfig request.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @network_id = args[:network_id] if args.key?(:network_id)
        end
      end
      
      # Configuration parameters for a new network.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Interconnect bandwidth. Set only when type is CLIENT.
        # Corresponds to the JSON property `bandwidth`
        # @return [String]
        attr_accessor :bandwidth
      
        # CIDR range of the network.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # A transient unique identifier to identify a volume within an
        # ProvisioningConfig request.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Location where to deploy the network.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Service CIDR, if any.
        # Corresponds to the JSON property `serviceCidr`
        # @return [String]
        attr_accessor :service_cidr
      
        # The type of this network.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # List of VLAN attachments. As of now there are always 2 attachments, but it is
        # going to change in the future (multi vlan).
        # Corresponds to the JSON property `vlanAttachments`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::VlanAttachment>]
        attr_accessor :vlan_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth = args[:bandwidth] if args.key?(:bandwidth)
          @cidr = args[:cidr] if args.key?(:cidr)
          @id = args[:id] if args.key?(:id)
          @location = args[:location] if args.key?(:location)
          @service_cidr = args[:service_cidr] if args.key?(:service_cidr)
          @type = args[:type] if args.key?(:type)
          @vlan_attachments = args[:vlan_attachments] if args.key?(:vlan_attachments)
        end
      end
      
      # A NFS export entry.
      class NfsExport
        include Google::Apis::Core::Hashable
      
        # Allow dev.
        # Corresponds to the JSON property `allowDev`
        # @return [Boolean]
        attr_accessor :allow_dev
        alias_method :allow_dev?, :allow_dev
      
        # Allow the setuid flag.
        # Corresponds to the JSON property `allowSuid`
        # @return [Boolean]
        attr_accessor :allow_suid
        alias_method :allow_suid?, :allow_suid
      
        # A CIDR range.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # A single machine, identified by an ID.
        # Corresponds to the JSON property `machineId`
        # @return [String]
        attr_accessor :machine_id
      
        # Network to use to publish the export.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Disable root squashing.
        # Corresponds to the JSON property `noRootSquash`
        # @return [Boolean]
        attr_accessor :no_root_squash
        alias_method :no_root_squash?, :no_root_squash
      
        # Export permissions.
        # Corresponds to the JSON property `permissions`
        # @return [String]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_dev = args[:allow_dev] if args.key?(:allow_dev)
          @allow_suid = args[:allow_suid] if args.key?(:allow_suid)
          @cidr = args[:cidr] if args.key?(:cidr)
          @machine_id = args[:machine_id] if args.key?(:machine_id)
          @network_id = args[:network_id] if args.key?(:network_id)
          @no_root_squash = args[:no_root_squash] if args.key?(:no_root_squash)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # An provisioning configuration.
      class ProvisioningConfig
        include Google::Apis::Core::Hashable
      
        # Instances to be created.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::InstanceConfig>]
        attr_accessor :instances
      
        # Networks to be created.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::NetworkConfig>]
        attr_accessor :networks
      
        # A reference to track the request.
        # Corresponds to the JSON property `ticketId`
        # @return [String]
        attr_accessor :ticket_id
      
        # Volumes to be created.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::VolumeConfig>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @networks = args[:networks] if args.key?(:networks)
          @ticket_id = args[:ticket_id] if args.key?(:ticket_id)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # A provisioning quota for a given project.
      class ProvisioningQuota
        include Google::Apis::Core::Hashable
      
        # A resource budget.
        # Corresponds to the JSON property `instanceQuota`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::InstanceQuota]
        attr_accessor :instance_quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_quota = args[:instance_quota] if args.key?(:instance_quota)
        end
      end
      
      # Request for ResetInstance.
      class ResetInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for ResetInstance.
      class ResetInstanceResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for RestoreVolumeSnapshot.
      class RestoreVolumeSnapshotRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A public SSH key registered in the project. Used primarily for the interactive
      # serial console feature.
      class SshKey
        include Google::Apis::Core::Hashable
      
        # Output only. The name of this SSH key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The public SSH key.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @public_key = args[:public_key] if args.key?(:public_key)
        end
      end
      
      # A snapshot schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # The crontab-like specification that this Schedule will use to take snapshots.
        # Corresponds to the JSON property `crontabSpec`
        # @return [String]
        attr_accessor :crontab_spec
      
        # A string to prefix names of snapshots created under this Schedule.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # The maximum number of snapshots to retain under this Schedule.
        # Corresponds to the JSON property `retentionCount`
        # @return [Fixnum]
        attr_accessor :retention_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crontab_spec = args[:crontab_spec] if args.key?(:crontab_spec)
          @prefix = args[:prefix] if args.key?(:prefix)
          @retention_count = args[:retention_count] if args.key?(:retention_count)
        end
      end
      
      # Response for ReadSerialPortOutput.
      class SerialPortOutput
        include Google::Apis::Core::Hashable
      
        # The serial port output.
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # The byte index to use in a subsequent call to ReadSerialPortOutput to get more
        # output.
        # Corresponds to the JSON property `nextStartByte`
        # @return [Fixnum]
        attr_accessor :next_start_byte
      
        # The start byte index of the included contents.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @next_start_byte = args[:next_start_byte] if args.key?(:next_start_byte)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Request for SetVolumeSnapshotSchedulePolicy.
      class SetVolumeSnapshotSchedulePolicyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the policy to set on the volume.
        # Corresponds to the JSON property `snapshotSchedulePolicy`
        # @return [String]
        attr_accessor :snapshot_schedule_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot_schedule_policy = args[:snapshot_schedule_policy] if args.key?(:snapshot_schedule_policy)
        end
      end
      
      # Response for SetVolumeSnapshotSchedulePolicy.
      class SetVolumeSnapshotSchedulePolicyResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A snapshot schedule policy.
      class SnapshotSchedulePolicy
        include Google::Apis::Core::Hashable
      
        # The description of this SnapshotSchedulePolicy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of this SnapshotSchedulePolicy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The snapshot Schedules contained in this Policy. At most 5 Schedules may be
        # specified.
        # Corresponds to the JSON property `schedules`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::Schedule>]
        attr_accessor :schedules
      
        # The names of the Volumes this policy is associated with.
        # Corresponds to the JSON property `volumes`
        # @return [Array<String>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @schedules = args[:schedules] if args.key?(:schedules)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # Request for SubmitProvisioningConfig.
      class SubmitProvisioningConfigRequest
        include Google::Apis::Core::Hashable
      
        # An provisioning configuration.
        # Corresponds to the JSON property `provisioningConfig`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig]
        attr_accessor :provisioning_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provisioning_config = args[:provisioning_config] if args.key?(:provisioning_config)
        end
      end
      
      # A GCP vlan attachment.
      class VlanAttachment
        include Google::Apis::Core::Hashable
      
        # Identifier of the VLAN attachment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Attachment pairing key.
        # Corresponds to the JSON property `pairingKey`
        # @return [String]
        attr_accessor :pairing_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @pairing_key = args[:pairing_key] if args.key?(:pairing_key)
        end
      end
      
      # Volume registered in the project.
      class Volume
        include Google::Apis::Core::Hashable
      
        # The size, in GB, that this Volume has expanded as a result of an auto grow
        # policy.
        # Corresponds to the JSON property `autoGrownSizeGb`
        # @return [Fixnum]
        attr_accessor :auto_grown_size_gb
      
        # The current size of this Volume, in GB, including space reserved for snapshots.
        # This size may be different than the requested size if the Volume has been
        # configured with auto grow or auto shrink.
        # Corresponds to the JSON property `currentSizeGb`
        # @return [Fixnum]
        attr_accessor :current_size_gb
      
        # Output only. The name of this Volume.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The space remaining in the Volume for new LUNs, in GB, excluding space
        # reserved for snapshots.
        # Corresponds to the JSON property `remainingSpaceGb`
        # @return [Fixnum]
        attr_accessor :remaining_space_gb
      
        # The requested size of this Volume, in GB.
        # Corresponds to the JSON property `requestedSizeGb`
        # @return [Fixnum]
        attr_accessor :requested_size_gb
      
        # The percent of space on this Volume reserved for snapshots.
        # Corresponds to the JSON property `snapshotReservedSpacePercent`
        # @return [Fixnum]
        attr_accessor :snapshot_reserved_space_percent
      
        # The amount, in GB, of space available in this Volume's reserved snapshot space.
        # Corresponds to the JSON property `snapshotReservedSpaceRemainingGb`
        # @return [Fixnum]
        attr_accessor :snapshot_reserved_space_remaining_gb
      
        # The percent of reserved snapshot space on this Volume that is actually used by
        # snapshot copies. This may be higher than 100% if snapshot copies are occupying
        # more space than has been reserved on the Volume.
        # Corresponds to the JSON property `snapshotReservedSpaceUsedPercent`
        # @return [Fixnum]
        attr_accessor :snapshot_reserved_space_used_percent
      
        # The state of this Volume.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of this Volume.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_grown_size_gb = args[:auto_grown_size_gb] if args.key?(:auto_grown_size_gb)
          @current_size_gb = args[:current_size_gb] if args.key?(:current_size_gb)
          @name = args[:name] if args.key?(:name)
          @remaining_space_gb = args[:remaining_space_gb] if args.key?(:remaining_space_gb)
          @requested_size_gb = args[:requested_size_gb] if args.key?(:requested_size_gb)
          @snapshot_reserved_space_percent = args[:snapshot_reserved_space_percent] if args.key?(:snapshot_reserved_space_percent)
          @snapshot_reserved_space_remaining_gb = args[:snapshot_reserved_space_remaining_gb] if args.key?(:snapshot_reserved_space_remaining_gb)
          @snapshot_reserved_space_used_percent = args[:snapshot_reserved_space_used_percent] if args.key?(:snapshot_reserved_space_used_percent)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration parameters for a new volume.
      class VolumeConfig
        include Google::Apis::Core::Hashable
      
        # A transient unique identifier to identify a volume within an
        # ProvisioningConfig request.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Location where to deploy the volume.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
        # Corresponds to the JSON property `lunRanges`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::LunRange>]
        attr_accessor :lun_ranges
      
        # Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
        # Corresponds to the JSON property `machineIds`
        # @return [Array<String>]
        attr_accessor :machine_ids
      
        # NFS exports. Set only when protocol is PROTOCOL_NFS.
        # Corresponds to the JSON property `nfsExports`
        # @return [Array<Google::Apis::BaremetalsolutionV1alpha1::NfsExport>]
        attr_accessor :nfs_exports
      
        # Volume protocol.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The requested size of this volume, in GB. This will be updated in a later
        # iteration with a generic size field.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Whether snapshots should be enabled.
        # Corresponds to the JSON property `snapshotsEnabled`
        # @return [Boolean]
        attr_accessor :snapshots_enabled
        alias_method :snapshots_enabled?, :snapshots_enabled
      
        # The type of this Volume.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @location = args[:location] if args.key?(:location)
          @lun_ranges = args[:lun_ranges] if args.key?(:lun_ranges)
          @machine_ids = args[:machine_ids] if args.key?(:machine_ids)
          @nfs_exports = args[:nfs_exports] if args.key?(:nfs_exports)
          @protocol = args[:protocol] if args.key?(:protocol)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @snapshots_enabled = args[:snapshots_enabled] if args.key?(:snapshots_enabled)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # VolumeSnapshot registered for given Volume
      class VolumeSnapshot
        include Google::Apis::Core::Hashable
      
        # The description of this Snapshot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of this Snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The real size of this Snapshot, in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # The state of this Snapshot.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
        end
      end
    end
  end
end
