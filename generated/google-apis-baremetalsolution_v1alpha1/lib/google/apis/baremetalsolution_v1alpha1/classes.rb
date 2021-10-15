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
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team (b/194021617).
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
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
          @user_note = args[:user_note] if args.key?(:user_note)
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
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team (b/194021617).
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
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
          @user_note = args[:user_note] if args.key?(:user_note)
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
      
      # Request for SubmitProvisioningConfig.
      class SubmitProvisioningConfigRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Email provided to send a confirmation with provisioning config to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # An provisioning configuration.
        # Corresponds to the JSON property `provisioningConfig`
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig]
        attr_accessor :provisioning_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
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
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team (b/194021617).
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
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
          @user_note = args[:user_note] if args.key?(:user_note)
        end
      end
    end
  end
end
