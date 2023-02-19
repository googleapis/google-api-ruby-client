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
    module BaremetalsolutionV2
      
      # Represents an 'access point' for the share.
      class AllowedClient
        include Google::Apis::Core::Hashable
      
        # Allow dev flag. Which controls whether to allow creation of devices.
        # Corresponds to the JSON property `allowDev`
        # @return [Boolean]
        attr_accessor :allow_dev
        alias_method :allow_dev?, :allow_dev
      
        # Allow the setuid flag.
        # Corresponds to the JSON property `allowSuid`
        # @return [Boolean]
        attr_accessor :allow_suid
        alias_method :allow_suid?, :allow_suid
      
        # The subnet of IP addresses permitted to access the share.
        # Corresponds to the JSON property `allowedClientsCidr`
        # @return [String]
        attr_accessor :allowed_clients_cidr
      
        # Mount permissions.
        # Corresponds to the JSON property `mountPermissions`
        # @return [String]
        attr_accessor :mount_permissions
      
        # The network the access point sits on.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The path to access NFS, in format shareIP:/InstanceID InstanceID
        # is the generated ID instead of customer provided name. example like "10.0.0.0:/
        # g123456789-nfs001"
        # Corresponds to the JSON property `nfsPath`
        # @return [String]
        attr_accessor :nfs_path
      
        # Disable root squashing, which is a feature of NFS. Root squash is a special
        # mapping of the remote superuser (root) identity when using identity
        # authentication.
        # Corresponds to the JSON property `noRootSquash`
        # @return [Boolean]
        attr_accessor :no_root_squash
        alias_method :no_root_squash?, :no_root_squash
      
        # Output only. The IP address of the share on this network. Assigned
        # automatically during provisioning based on the network's services_cidr.
        # Corresponds to the JSON property `shareIp`
        # @return [String]
        attr_accessor :share_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_dev = args[:allow_dev] if args.key?(:allow_dev)
          @allow_suid = args[:allow_suid] if args.key?(:allow_suid)
          @allowed_clients_cidr = args[:allowed_clients_cidr] if args.key?(:allowed_clients_cidr)
          @mount_permissions = args[:mount_permissions] if args.key?(:mount_permissions)
          @network = args[:network] if args.key?(:network)
          @nfs_path = args[:nfs_path] if args.key?(:nfs_path)
          @no_root_squash = args[:no_root_squash] if args.key?(:no_root_squash)
          @share_ip = args[:share_ip] if args.key?(:share_ip)
        end
      end
      
      # Message for detach specific LUN from an Instance.
      class DetachLunRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the Lun to detach.
        # Corresponds to the JSON property `lun`
        # @return [String]
        attr_accessor :lun
      
        # If true, performs lun unmapping without instance reboot.
        # Corresponds to the JSON property `skipReboot`
        # @return [Boolean]
        attr_accessor :skip_reboot
        alias_method :skip_reboot?, :skip_reboot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lun = args[:lun] if args.key?(:lun)
          @skip_reboot = args[:skip_reboot] if args.key?(:skip_reboot)
        end
      end
      
      # Message for disabling the interactive serial console on an instance.
      class DisableInteractiveSerialConsoleRequest
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
      
      # Message for enabling the interactive serial console on an instance.
      class EnableInteractiveSerialConsoleRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for skip lun cooloff and delete it.
      class EvictLunRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for skip volume cooloff and delete it.
      class EvictVolumeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response with all provisioning settings.
      class FetchInstanceProvisioningSettingsResponse
        include Google::Apis::Core::Hashable
      
        # The OS images available.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::BaremetalsolutionV2::OsImage>]
        attr_accessor :images
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
        end
      end
      
      # Each logical interface represents a logical abstraction of the underlying
      # physical interface (for eg. bond, nic) of the instance. Each logical interface
      # can effectively map to multiple network-IP pairs and still be mapped to one
      # underlying physical interface.
      class GoogleCloudBaremetalsolutionV2LogicalInterface
        include Google::Apis::Core::Hashable
      
        # The index of the logical interface mapping to the index of the hardware bond
        # or nic on the chosen network template. This field is deprecated.
        # Corresponds to the JSON property `interfaceIndex`
        # @return [Fixnum]
        attr_accessor :interface_index
      
        # List of logical network interfaces within a logical interface.
        # Corresponds to the JSON property `logicalNetworkInterfaces`
        # @return [Array<Google::Apis::BaremetalsolutionV2::LogicalNetworkInterface>]
        attr_accessor :logical_network_interfaces
      
        # Interface name. This is of syntax or and forms part of the network template
        # name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interface_index = args[:interface_index] if args.key?(:interface_index)
          @logical_network_interfaces = args[:logical_network_interfaces] if args.key?(:logical_network_interfaces)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Logical interface.
      class GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface
        include Google::Apis::Core::Hashable
      
        # Interface name. This is not a globally unique identifier. Name is unique only
        # inside the ServerNetworkTemplate. This is of syntax or and forms part of the
        # network template name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If true, interface must have network connected.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Interface type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @required = args[:required] if args.key?(:required)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A server.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. Create a time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # True if you enable hyperthreading for the server, otherwise false. The default
        # value is false.
        # Corresponds to the JSON property `hyperthreadingEnabled`
        # @return [Boolean]
        attr_accessor :hyperthreading_enabled
        alias_method :hyperthreading_enabled?, :hyperthreading_enabled
      
        # Output only. An identifier for the `Instance`, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. True if the interactive serial console feature is enabled for the
        # instance, false otherwise. The default value is false.
        # Corresponds to the JSON property `interactiveSerialConsoleEnabled`
        # @return [Boolean]
        attr_accessor :interactive_serial_console_enabled
        alias_method :interactive_serial_console_enabled?, :interactive_serial_console_enabled
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # List of logical interfaces for the instance. The number of logical interfaces
        # will be the same as number of hardware bond/nic on the chosen network template.
        # For the non-multivlan configurations (for eg, existing servers) that use
        # existing default network template (bondaa-bondaa), both the Instance.networks
        # field and the Instance.logical_interfaces fields will be filled to ensure
        # backward compatibility. For the others, only Instance.logical_interfaces will
        # be filled.
        # Corresponds to the JSON property `logicalInterfaces`
        # @return [Array<Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface>]
        attr_accessor :logical_interfaces
      
        # Output only. Text field about info for logging in.
        # Corresponds to the JSON property `loginInfo`
        # @return [String]
        attr_accessor :login_info
      
        # Immutable. List of LUNs associated with this server.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Lun>]
        attr_accessor :luns
      
        # Immutable. The server type. [Available server types](https://cloud.google.com/
        # bare-metal/docs/bms-planning#server_configurations)
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Immutable. The resource name of this `Instance`. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. Format: `projects/`project`/locations/`location`/instances/`
        # instance``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Instance network template name. For eg, bondaa-bondaa, bondab-nic, etc.
        # Generally, the template name follows the syntax of "bond" or "nic".
        # Corresponds to the JSON property `networkTemplate`
        # @return [String]
        attr_accessor :network_template
      
        # Output only. List of networks associated with this server.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Network>]
        attr_accessor :networks
      
        # The OS image currently installed on the server.
        # Corresponds to the JSON property `osImage`
        # @return [String]
        attr_accessor :os_image
      
        # Immutable. Pod name. Pod is an independent part of infrastructure. Instance
        # can be connected to the assets (networks, volumes) allocated in the same pod
        # only.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # Output only. The state of the server.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Update a time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Input only. List of Volumes to attach to this Instance on creation. This field
        # won't be populated in Get/List responses.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Volume>]
        attr_accessor :volumes
      
        # The workload profile for the instance.
        # Corresponds to the JSON property `workloadProfile`
        # @return [String]
        attr_accessor :workload_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hyperthreading_enabled = args[:hyperthreading_enabled] if args.key?(:hyperthreading_enabled)
          @id = args[:id] if args.key?(:id)
          @interactive_serial_console_enabled = args[:interactive_serial_console_enabled] if args.key?(:interactive_serial_console_enabled)
          @labels = args[:labels] if args.key?(:labels)
          @logical_interfaces = args[:logical_interfaces] if args.key?(:logical_interfaces)
          @login_info = args[:login_info] if args.key?(:login_info)
          @luns = args[:luns] if args.key?(:luns)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @name = args[:name] if args.key?(:name)
          @network_template = args[:network_template] if args.key?(:network_template)
          @networks = args[:networks] if args.key?(:networks)
          @os_image = args[:os_image] if args.key?(:os_image)
          @pod = args[:pod] if args.key?(:pod)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volumes = args[:volumes] if args.key?(:volumes)
          @workload_profile = args[:workload_profile] if args.key?(:workload_profile)
        end
      end
      
      # Configuration parameters for a new instance.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # If true networks can be from different projects of the same vendor account.
        # Corresponds to the JSON property `accountNetworksEnabled`
        # @return [Boolean]
        attr_accessor :account_networks_enabled
        alias_method :account_networks_enabled?, :account_networks_enabled
      
        # A network.
        # Corresponds to the JSON property `clientNetwork`
        # @return [Google::Apis::BaremetalsolutionV2::NetworkAddress]
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
      
        # Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-
        # planning#server_configurations)
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # List of logical interfaces for the instance. The number of logical interfaces
        # will be the same as number of hardware bond/nic on the chosen network template.
        # Filled if InstanceConfig.multivlan_config is true.
        # Corresponds to the JSON property `logicalInterfaces`
        # @return [Array<Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface>]
        attr_accessor :logical_interfaces
      
        # Output only. The name of the instance config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of network configuration on the instance.
        # Corresponds to the JSON property `networkConfig`
        # @return [String]
        attr_accessor :network_config
      
        # Server network template name. Filled if InstanceConfig.multivlan_config is
        # true.
        # Corresponds to the JSON property `networkTemplate`
        # @return [String]
        attr_accessor :network_template
      
        # OS image to initialize the instance. [Available images](https://cloud.google.
        # com/bare-metal/docs/bms-planning#server_configurations)
        # Corresponds to the JSON property `osImage`
        # @return [String]
        attr_accessor :os_image
      
        # A network.
        # Corresponds to the JSON property `privateNetwork`
        # @return [Google::Apis::BaremetalsolutionV2::NetworkAddress]
        attr_accessor :private_network
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team .
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_networks_enabled = args[:account_networks_enabled] if args.key?(:account_networks_enabled)
          @client_network = args[:client_network] if args.key?(:client_network)
          @hyperthreading = args[:hyperthreading] if args.key?(:hyperthreading)
          @id = args[:id] if args.key?(:id)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @logical_interfaces = args[:logical_interfaces] if args.key?(:logical_interfaces)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @network_template = args[:network_template] if args.key?(:network_template)
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
      
        # The gcp service of the provisioning quota.
        # Corresponds to the JSON property `gcpService`
        # @return [String]
        attr_accessor :gcp_service
      
        # Instance type. Deprecated: use gcp_service.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Location where the quota applies.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The name of the instance quota.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_machine_count = args[:available_machine_count] if args.key?(:available_machine_count)
          @gcp_service = args[:gcp_service] if args.key?(:gcp_service)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A GCP vlan attachment.
      class IntakeVlanAttachment
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
      
      # Response message for the list of servers.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of servers.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Instance>]
        attr_accessor :instances
      
        # A token identifying a page of results from the server.
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
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Location>]
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
      
      # Response message containing the list of storage volume luns.
      class ListLunsResponse
        include Google::Apis::Core::Hashable
      
        # The list of luns.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Lun>]
        attr_accessor :luns
      
        # A token identifying a page of results from the server.
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
          @luns = args[:luns] if args.key?(:luns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response with Networks with IPs
      class ListNetworkUsageResponse
        include Google::Apis::Core::Hashable
      
        # Networks with IPs.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NetworkUsage>]
        attr_accessor :networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @networks = args[:networks] if args.key?(:networks)
        end
      end
      
      # Response message containing the list of networks.
      class ListNetworksResponse
        include Google::Apis::Core::Hashable
      
        # The list of networks.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Network>]
        attr_accessor :networks
      
        # A token identifying a page of results from the server.
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
          @networks = args[:networks] if args.key?(:networks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message containing the list of NFS shares.
      class ListNfsSharesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results from the server.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of NFS shares.
        # Corresponds to the JSON property `nfsShares`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NfsShare>]
        attr_accessor :nfs_shares
      
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
          @nfs_shares = args[:nfs_shares] if args.key?(:nfs_shares)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for the list of provisioning quotas.
      class ListProvisioningQuotasResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The provisioning quotas registered in this project.
        # Corresponds to the JSON property `provisioningQuotas`
        # @return [Array<Google::Apis::BaremetalsolutionV2::ProvisioningQuota>]
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
      
      # Message for response of ListSSHKeys.
      class ListSshKeysResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The SSH keys registered in the project.
        # Corresponds to the JSON property `sshKeys`
        # @return [Array<Google::Apis::BaremetalsolutionV2::SshKey>]
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
      
      # Response message containing the list of volume snapshots.
      class ListVolumeSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results from the server.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of snapshots.
        # Corresponds to the JSON property `volumeSnapshots`
        # @return [Array<Google::Apis::BaremetalsolutionV2::VolumeSnapshot>]
        attr_accessor :volume_snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @volume_snapshots = args[:volume_snapshots] if args.key?(:volume_snapshots)
        end
      end
      
      # Response message containing the list of storage volumes.
      class ListVolumesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results from the server.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of storage volumes.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Volume>]
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
      
      # A resource that represents Google Cloud Platform location.
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
      
      # Each logical network interface is effectively a network and IP pair.
      class LogicalNetworkInterface
        include Google::Apis::Core::Hashable
      
        # Whether this interface is the default gateway for the instance. Only one
        # interface can be the default gateway for the instance.
        # Corresponds to the JSON property `defaultGateway`
        # @return [Boolean]
        attr_accessor :default_gateway
        alias_method :default_gateway?, :default_gateway
      
        # An identifier for the `Network`, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IP address in the network
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Name of the network
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Type of network.
        # Corresponds to the JSON property `networkType`
        # @return [String]
        attr_accessor :network_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_gateway = args[:default_gateway] if args.key?(:default_gateway)
          @id = args[:id] if args.key?(:id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network = args[:network] if args.key?(:network)
          @network_type = args[:network_type] if args.key?(:network_type)
        end
      end
      
      # A storage volume logical unit number (LUN).
      class Lun
        include Google::Apis::Core::Hashable
      
        # Display if this LUN is a boot LUN.
        # Corresponds to the JSON property `bootLun`
        # @return [Boolean]
        attr_accessor :boot_lun
        alias_method :boot_lun?, :boot_lun
      
        # Output only. Time after which LUN will be fully deleted. It is filled only for
        # LUNs in COOL_OFF state.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # An identifier for the LUN, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The LUN multiprotocol type ensures the characteristics of the LUN are
        # optimized for each operating system.
        # Corresponds to the JSON property `multiprotocolType`
        # @return [String]
        attr_accessor :multiprotocol_type
      
        # Output only. The name of the LUN.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Display if this LUN can be shared between multiple physical servers.
        # Corresponds to the JSON property `shareable`
        # @return [Boolean]
        attr_accessor :shareable
        alias_method :shareable?, :shareable
      
        # The size of this LUN, in gigabytes.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # The state of this storage volume.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The storage type for this LUN.
        # Corresponds to the JSON property `storageType`
        # @return [String]
        attr_accessor :storage_type
      
        # Display the storage volume for this LUN.
        # Corresponds to the JSON property `storageVolume`
        # @return [String]
        attr_accessor :storage_volume
      
        # The WWID for this LUN.
        # Corresponds to the JSON property `wwid`
        # @return [String]
        attr_accessor :wwid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_lun = args[:boot_lun] if args.key?(:boot_lun)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @multiprotocol_type = args[:multiprotocol_type] if args.key?(:multiprotocol_type)
          @name = args[:name] if args.key?(:name)
          @shareable = args[:shareable] if args.key?(:shareable)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @state = args[:state] if args.key?(:state)
          @storage_type = args[:storage_type] if args.key?(:storage_type)
          @storage_volume = args[:storage_volume] if args.key?(:storage_volume)
          @wwid = args[:wwid] if args.key?(:wwid)
        end
      end
      
      # A LUN(Logical Unit Number) range.
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
      
      # A Network.
      class Network
        include Google::Apis::Core::Hashable
      
        # The cidr of the Network.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # Output only. Gateway ip address.
        # Corresponds to the JSON property `gatewayIp`
        # @return [String]
        attr_accessor :gateway_ip
      
        # An identifier for the `Network`, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IP address configured.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Whether network uses standard frames or jumbo ones.
        # Corresponds to the JSON property `jumboFramesEnabled`
        # @return [Boolean]
        attr_accessor :jumbo_frames_enabled
        alias_method :jumbo_frames_enabled?, :jumbo_frames_enabled
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # List of physical interfaces.
        # Corresponds to the JSON property `macAddress`
        # @return [Array<String>]
        attr_accessor :mac_address
      
        # Input only. List of mount points to attach the network to.
        # Corresponds to the JSON property `mountPoints`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NetworkMountPoint>]
        attr_accessor :mount_points
      
        # Output only. The resource name of this `Network`. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. Format: `projects/`project`/locations/`location`/
        # networks/`network``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Pod name.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # List of IP address reservations in this network. When updating this field, an
        # error will be generated if a reservation conflicts with an IP address already
        # allocated to a physical server.
        # Corresponds to the JSON property `reservations`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NetworkAddressReservation>]
        attr_accessor :reservations
      
        # IP range for reserved for services (e.g. NFS).
        # Corresponds to the JSON property `servicesCidr`
        # @return [String]
        attr_accessor :services_cidr
      
        # The Network state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of this network.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The vlan id of the Network.
        # Corresponds to the JSON property `vlanId`
        # @return [String]
        attr_accessor :vlan_id
      
        # A network VRF.
        # Corresponds to the JSON property `vrf`
        # @return [Google::Apis::BaremetalsolutionV2::Vrf]
        attr_accessor :vrf
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr = args[:cidr] if args.key?(:cidr)
          @gateway_ip = args[:gateway_ip] if args.key?(:gateway_ip)
          @id = args[:id] if args.key?(:id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @jumbo_frames_enabled = args[:jumbo_frames_enabled] if args.key?(:jumbo_frames_enabled)
          @labels = args[:labels] if args.key?(:labels)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @mount_points = args[:mount_points] if args.key?(:mount_points)
          @name = args[:name] if args.key?(:name)
          @pod = args[:pod] if args.key?(:pod)
          @reservations = args[:reservations] if args.key?(:reservations)
          @services_cidr = args[:services_cidr] if args.key?(:services_cidr)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @vlan_id = args[:vlan_id] if args.key?(:vlan_id)
          @vrf = args[:vrf] if args.key?(:vrf)
        end
      end
      
      # A network.
      class NetworkAddress
        include Google::Apis::Core::Hashable
      
        # IPv4 address to be assigned to the server.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Name of the existing network to use.
        # Corresponds to the JSON property `existingNetworkId`
        # @return [String]
        attr_accessor :existing_network_id
      
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
          @existing_network_id = args[:existing_network_id] if args.key?(:existing_network_id)
          @network_id = args[:network_id] if args.key?(:network_id)
        end
      end
      
      # A reservation of one or more addresses in a network.
      class NetworkAddressReservation
        include Google::Apis::Core::Hashable
      
        # The last address of this reservation block, inclusive. I.e., for cases when
        # reservations are only single addresses, end_address and start_address will be
        # the same. Must be specified as a single IPv4 address, e.g. 10.1.2.2.
        # Corresponds to the JSON property `endAddress`
        # @return [String]
        attr_accessor :end_address
      
        # A note about this reservation, intended for human consumption.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # The first address of this reservation block. Must be specified as a single
        # IPv4 address, e.g. 10.1.2.2.
        # Corresponds to the JSON property `startAddress`
        # @return [String]
        attr_accessor :start_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_address = args[:end_address] if args.key?(:end_address)
          @note = args[:note] if args.key?(:note)
          @start_address = args[:start_address] if args.key?(:start_address)
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
      
        # The GCP service of the network. Available gcp_service are in https://cloud.
        # google.com/bare-metal/docs/bms-planning.
        # Corresponds to the JSON property `gcpService`
        # @return [String]
        attr_accessor :gcp_service
      
        # A transient unique identifier to identify a volume within an
        # ProvisioningConfig request.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The JumboFramesEnabled option for customer to set.
        # Corresponds to the JSON property `jumboFramesEnabled`
        # @return [Boolean]
        attr_accessor :jumbo_frames_enabled
        alias_method :jumbo_frames_enabled?, :jumbo_frames_enabled
      
        # Output only. The name of the network config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Service CIDR, if any.
        # Corresponds to the JSON property `serviceCidr`
        # @return [String]
        attr_accessor :service_cidr
      
        # The type of this network, either Client or Private.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team .
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
        # List of VLAN attachments. As of now there are always 2 attachments, but it is
        # going to change in the future (multi vlan).
        # Corresponds to the JSON property `vlanAttachments`
        # @return [Array<Google::Apis::BaremetalsolutionV2::IntakeVlanAttachment>]
        attr_accessor :vlan_attachments
      
        # Whether the VLAN attachment pair is located in the same project.
        # Corresponds to the JSON property `vlanSameProject`
        # @return [Boolean]
        attr_accessor :vlan_same_project
        alias_method :vlan_same_project?, :vlan_same_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth = args[:bandwidth] if args.key?(:bandwidth)
          @cidr = args[:cidr] if args.key?(:cidr)
          @gcp_service = args[:gcp_service] if args.key?(:gcp_service)
          @id = args[:id] if args.key?(:id)
          @jumbo_frames_enabled = args[:jumbo_frames_enabled] if args.key?(:jumbo_frames_enabled)
          @name = args[:name] if args.key?(:name)
          @service_cidr = args[:service_cidr] if args.key?(:service_cidr)
          @type = args[:type] if args.key?(:type)
          @user_note = args[:user_note] if args.key?(:user_note)
          @vlan_attachments = args[:vlan_attachments] if args.key?(:vlan_attachments)
          @vlan_same_project = args[:vlan_same_project] if args.key?(:vlan_same_project)
        end
      end
      
      # Mount point for a network.
      class NetworkMountPoint
        include Google::Apis::Core::Hashable
      
        # Network should be a default gateway.
        # Corresponds to the JSON property `defaultGateway`
        # @return [Boolean]
        attr_accessor :default_gateway
        alias_method :default_gateway?, :default_gateway
      
        # Instance to attach network to.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Ip address of the server.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Logical interface to detach from.
        # Corresponds to the JSON property `logicalInterface`
        # @return [String]
        attr_accessor :logical_interface
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_gateway = args[:default_gateway] if args.key?(:default_gateway)
          @instance = args[:instance] if args.key?(:instance)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @logical_interface = args[:logical_interface] if args.key?(:logical_interface)
        end
      end
      
      # Network with all used IP addresses.
      class NetworkUsage
        include Google::Apis::Core::Hashable
      
        # A Network.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::BaremetalsolutionV2::Network]
        attr_accessor :network
      
        # All used IP addresses in this network.
        # Corresponds to the JSON property `usedIps`
        # @return [Array<String>]
        attr_accessor :used_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @used_ips = args[:used_ips] if args.key?(:used_ips)
        end
      end
      
      # A NFS export entry.
      class NfsExport
        include Google::Apis::Core::Hashable
      
        # Allow dev flag in NfsShare AllowedClientsRequest.
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
      
        # Either a single machine, identified by an ID, or a comma-separated list of
        # machine IDs.
        # Corresponds to the JSON property `machineId`
        # @return [String]
        attr_accessor :machine_id
      
        # Network to use to publish the export.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Disable root squashing, which is a feature of NFS. Root squash is a special
        # mapping of the remote superuser (root) identity when using identity
        # authentication.
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
      
      # An NFS share.
      class NfsShare
        include Google::Apis::Core::Hashable
      
        # List of allowed access points.
        # Corresponds to the JSON property `allowedClients`
        # @return [Array<Google::Apis::BaremetalsolutionV2::AllowedClient>]
        attr_accessor :allowed_clients
      
        # Output only. An identifier for the NFS share, generated by the backend. This
        # is the same value as nfs_share_id and will replace it in the future.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of the NFS share.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. An identifier for the NFS share, generated by the backend. This
        # field will be deprecated in the future, use `id` instead.
        # Corresponds to the JSON property `nfsShareId`
        # @return [String]
        attr_accessor :nfs_share_id
      
        # The requested size, in GiB.
        # Corresponds to the JSON property `requestedSizeGib`
        # @return [Fixnum]
        attr_accessor :requested_size_gib
      
        # Output only. The state of the NFS share.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Immutable. The storage type of the underlying volume.
        # Corresponds to the JSON property `storageType`
        # @return [String]
        attr_accessor :storage_type
      
        # Output only. The underlying volume of the share. Created automatically during
        # provisioning.
        # Corresponds to the JSON property `volume`
        # @return [String]
        attr_accessor :volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_clients = args[:allowed_clients] if args.key?(:allowed_clients)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @nfs_share_id = args[:nfs_share_id] if args.key?(:nfs_share_id)
          @requested_size_gib = args[:requested_size_gib] if args.key?(:requested_size_gib)
          @state = args[:state] if args.key?(:state)
          @storage_type = args[:storage_type] if args.key?(:storage_type)
          @volume = args[:volume] if args.key?(:volume)
        end
      end
      
      # Operation System image.
      class OsImage
        include Google::Apis::Core::Hashable
      
        # Instance types this image is applicable to. [Available types](https://cloud.
        # google.com/bare-metal/docs/bms-planning#server_configurations)
        # Corresponds to the JSON property `applicableInstanceTypes`
        # @return [Array<String>]
        attr_accessor :applicable_instance_types
      
        # OS Image code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # OS Image description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. OS Image's unique name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network templates that can be used with this OS Image.
        # Corresponds to the JSON property `supportedNetworkTemplates`
        # @return [Array<Google::Apis::BaremetalsolutionV2::ServerNetworkTemplate>]
        attr_accessor :supported_network_templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_instance_types = args[:applicable_instance_types] if args.key?(:applicable_instance_types)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @supported_network_templates = args[:supported_network_templates] if args.key?(:supported_network_templates)
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
        # @return [Google::Apis::BaremetalsolutionV2::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # A provisioning configuration.
      class ProvisioningConfig
        include Google::Apis::Core::Hashable
      
        # Output only. URI to Cloud Console UI view of this provisioning config.
        # Corresponds to the JSON property `cloudConsoleUri`
        # @return [String]
        attr_accessor :cloud_console_uri
      
        # Optional. The user-defined identifier of the provisioning config.
        # Corresponds to the JSON property `customId`
        # @return [String]
        attr_accessor :custom_id
      
        # Email provided to send a confirmation with provisioning config to. Deprecated
        # in favour of email field in request messages.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A service account to enable customers to access instance credentials upon
        # handover.
        # Corresponds to the JSON property `handoverServiceAccount`
        # @return [String]
        attr_accessor :handover_service_account
      
        # Instances to be created.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BaremetalsolutionV2::InstanceConfig>]
        attr_accessor :instances
      
        # Optional. Location name of this ProvisioningConfig. It is optional only for
        # Intake UI transition period.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The system-generated name of the provisioning config. This
        # follows the UUID format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Networks to be created.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NetworkConfig>]
        attr_accessor :networks
      
        # Output only. State of ProvisioningConfig.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional status messages associated with the FAILED state.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # A generated ticket id to track provisioning request.
        # Corresponds to the JSON property `ticketId`
        # @return [String]
        attr_accessor :ticket_id
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Volumes to be created.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV2::VolumeConfig>]
        attr_accessor :volumes
      
        # If true, VPC SC is enabled for the cluster.
        # Corresponds to the JSON property `vpcScEnabled`
        # @return [Boolean]
        attr_accessor :vpc_sc_enabled
        alias_method :vpc_sc_enabled?, :vpc_sc_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_console_uri = args[:cloud_console_uri] if args.key?(:cloud_console_uri)
          @custom_id = args[:custom_id] if args.key?(:custom_id)
          @email = args[:email] if args.key?(:email)
          @handover_service_account = args[:handover_service_account] if args.key?(:handover_service_account)
          @instances = args[:instances] if args.key?(:instances)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @ticket_id = args[:ticket_id] if args.key?(:ticket_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volumes = args[:volumes] if args.key?(:volumes)
          @vpc_sc_enabled = args[:vpc_sc_enabled] if args.key?(:vpc_sc_enabled)
        end
      end
      
      # A provisioning quota for a given project.
      class ProvisioningQuota
        include Google::Apis::Core::Hashable
      
        # The asset type of this provisioning quota.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The available count of the provisioning quota.
        # Corresponds to the JSON property `availableCount`
        # @return [Fixnum]
        attr_accessor :available_count
      
        # The gcp service of the provisioning quota.
        # Corresponds to the JSON property `gcpService`
        # @return [String]
        attr_accessor :gcp_service
      
        # A resource budget.
        # Corresponds to the JSON property `instanceQuota`
        # @return [Google::Apis::BaremetalsolutionV2::InstanceQuota]
        attr_accessor :instance_quota
      
        # The specific location of the provisioining quota.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The name of the provisioning quota.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network bandwidth, Gbps
        # Corresponds to the JSON property `networkBandwidth`
        # @return [Fixnum]
        attr_accessor :network_bandwidth
      
        # Server count.
        # Corresponds to the JSON property `serverCount`
        # @return [Fixnum]
        attr_accessor :server_count
      
        # Storage size (GB).
        # Corresponds to the JSON property `storageGib`
        # @return [Fixnum]
        attr_accessor :storage_gib
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @available_count = args[:available_count] if args.key?(:available_count)
          @gcp_service = args[:gcp_service] if args.key?(:gcp_service)
          @instance_quota = args[:instance_quota] if args.key?(:instance_quota)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @network_bandwidth = args[:network_bandwidth] if args.key?(:network_bandwidth)
          @server_count = args[:server_count] if args.key?(:server_count)
          @storage_gib = args[:storage_gib] if args.key?(:storage_gib)
        end
      end
      
      # QOS policy parameters.
      class QosPolicy
        include Google::Apis::Core::Hashable
      
        # The bandwidth permitted by the QOS policy, in gbps.
        # Corresponds to the JSON property `bandwidthGbps`
        # @return [Float]
        attr_accessor :bandwidth_gbps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth_gbps = args[:bandwidth_gbps] if args.key?(:bandwidth_gbps)
        end
      end
      
      # Message requesting rename of a server.
      class RenameInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new `name` of the instance. Format: `instancename`
        # Corresponds to the JSON property `newName`
        # @return [String]
        attr_accessor :new_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_name = args[:new_name] if args.key?(:new_name)
        end
      end
      
      # Message requesting to reset a server.
      class ResetInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for emergency resize Volume.
      class ResizeVolumeRequest
        include Google::Apis::Core::Hashable
      
        # New Volume size, in GiB.
        # Corresponds to the JSON property `sizeGib`
        # @return [Fixnum]
        attr_accessor :size_gib
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_gib = args[:size_gib] if args.key?(:size_gib)
        end
      end
      
      # Message for restoring a volume snapshot.
      class RestoreVolumeSnapshotRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An SSH key, used for authorizing with the interactive serial console feature.
      class SshKey
        include Google::Apis::Core::Hashable
      
        # Output only. The name of this SSH key. Currently, the only valid value for the
        # location is "global".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The public SSH key. This must be in OpenSSH .authorized_keys format.
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
      
      # Network template.
      class ServerNetworkTemplate
        include Google::Apis::Core::Hashable
      
        # Instance types this template is applicable to.
        # Corresponds to the JSON property `applicableInstanceTypes`
        # @return [Array<String>]
        attr_accessor :applicable_instance_types
      
        # Logical interfaces.
        # Corresponds to the JSON property `logicalInterfaces`
        # @return [Array<Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface>]
        attr_accessor :logical_interfaces
      
        # Output only. Template's unique name. The full resource name follows the
        # pattern: `projects/`project`/locations/`location`/serverNetworkTemplate/`
        # server_network_template`` Generally, the `server_network_template` follows the
        # syntax of "bond" or "nic".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_instance_types = args[:applicable_instance_types] if args.key?(:applicable_instance_types)
          @logical_interfaces = args[:logical_interfaces] if args.key?(:logical_interfaces)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details about snapshot space reservation and usage on the storage volume.
      class SnapshotReservationDetail
        include Google::Apis::Core::Hashable
      
        # The space on this storage volume reserved for snapshots, shown in GiB.
        # Corresponds to the JSON property `reservedSpaceGib`
        # @return [Fixnum]
        attr_accessor :reserved_space_gib
      
        # Percent of the total Volume size reserved for snapshot copies. Enabling
        # snapshots requires reserving 20% or more of the storage volume space for
        # snapshots. Maximum reserved space for snapshots is 40%. Setting this field
        # will effectively set snapshot_enabled to true.
        # Corresponds to the JSON property `reservedSpacePercent`
        # @return [Fixnum]
        attr_accessor :reserved_space_percent
      
        # The amount, in GiB, of available space in this storage volume's reserved
        # snapshot space.
        # Corresponds to the JSON property `reservedSpaceRemainingGib`
        # @return [Fixnum]
        attr_accessor :reserved_space_remaining_gib
      
        # The percent of snapshot space on this storage volume actually being used by
        # the snapshot copies. This value might be higher than 100% if the snapshot
        # copies have overflowed into the data portion of the storage volume.
        # Corresponds to the JSON property `reservedSpaceUsedPercent`
        # @return [Fixnum]
        attr_accessor :reserved_space_used_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reserved_space_gib = args[:reserved_space_gib] if args.key?(:reserved_space_gib)
          @reserved_space_percent = args[:reserved_space_percent] if args.key?(:reserved_space_percent)
          @reserved_space_remaining_gib = args[:reserved_space_remaining_gib] if args.key?(:reserved_space_remaining_gib)
          @reserved_space_used_percent = args[:reserved_space_used_percent] if args.key?(:reserved_space_used_percent)
        end
      end
      
      # Message requesting to start a server.
      class StartInstanceRequest
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
      
      # Message requesting to stop a server.
      class StopInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for SubmitProvisioningConfig.
      class SubmitProvisioningConfigRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Email provided to send a confirmation with provisioning config to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A provisioning configuration.
        # Corresponds to the JSON property `provisioningConfig`
        # @return [Google::Apis::BaremetalsolutionV2::ProvisioningConfig]
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
      
      # Response for SubmitProvisioningConfig.
      class SubmitProvisioningConfigResponse
        include Google::Apis::Core::Hashable
      
        # A provisioning configuration.
        # Corresponds to the JSON property `provisioningConfig`
        # @return [Google::Apis::BaremetalsolutionV2::ProvisioningConfig]
        attr_accessor :provisioning_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provisioning_config = args[:provisioning_config] if args.key?(:provisioning_config)
        end
      end
      
      # A network VRF.
      class Vrf
        include Google::Apis::Core::Hashable
      
        # The name of the VRF.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # QOS policy parameters.
        # Corresponds to the JSON property `qosPolicy`
        # @return [Google::Apis::BaremetalsolutionV2::QosPolicy]
        attr_accessor :qos_policy
      
        # The possible state of VRF.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The list of VLAN attachments for the VRF.
        # Corresponds to the JSON property `vlanAttachments`
        # @return [Array<Google::Apis::BaremetalsolutionV2::VlanAttachment>]
        attr_accessor :vlan_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @qos_policy = args[:qos_policy] if args.key?(:qos_policy)
          @state = args[:state] if args.key?(:state)
          @vlan_attachments = args[:vlan_attachments] if args.key?(:vlan_attachments)
        end
      end
      
      # VLAN attachment details.
      class VlanAttachment
        include Google::Apis::Core::Hashable
      
        # Immutable. The identifier of the attachment within vrf.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Input only. Pairing key.
        # Corresponds to the JSON property `pairingKey`
        # @return [String]
        attr_accessor :pairing_key
      
        # The peer IP of the attachment.
        # Corresponds to the JSON property `peerIp`
        # @return [String]
        attr_accessor :peer_ip
      
        # The peer vlan ID of the attachment.
        # Corresponds to the JSON property `peerVlanId`
        # @return [Fixnum]
        attr_accessor :peer_vlan_id
      
        # QOS policy parameters.
        # Corresponds to the JSON property `qosPolicy`
        # @return [Google::Apis::BaremetalsolutionV2::QosPolicy]
        attr_accessor :qos_policy
      
        # The router IP of the attachment.
        # Corresponds to the JSON property `routerIp`
        # @return [String]
        attr_accessor :router_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @pairing_key = args[:pairing_key] if args.key?(:pairing_key)
          @peer_ip = args[:peer_ip] if args.key?(:peer_ip)
          @peer_vlan_id = args[:peer_vlan_id] if args.key?(:peer_vlan_id)
          @qos_policy = args[:qos_policy] if args.key?(:qos_policy)
          @router_ip = args[:router_ip] if args.key?(:router_ip)
        end
      end
      
      # A storage volume.
      class Volume
        include Google::Apis::Core::Hashable
      
        # The size, in GiB, that this storage volume has expanded as a result of an auto
        # grow policy. In the absence of auto-grow, the value is 0.
        # Corresponds to the JSON property `autoGrownSizeGib`
        # @return [Fixnum]
        attr_accessor :auto_grown_size_gib
      
        # Output only. Whether this volume is a boot volume. A boot volume is one which
        # contains a boot LUN.
        # Corresponds to the JSON property `bootVolume`
        # @return [Boolean]
        attr_accessor :boot_volume
        alias_method :boot_volume?, :boot_volume
      
        # The current size of this storage volume, in GiB, including space reserved for
        # snapshots. This size might be different than the requested size if the storage
        # volume has been configured with auto grow or auto shrink.
        # Corresponds to the JSON property `currentSizeGib`
        # @return [Fixnum]
        attr_accessor :current_size_gib
      
        # Additional emergency size that was requested for this Volume, in GiB.
        # current_size_gib includes this value.
        # Corresponds to the JSON property `emergencySizeGib`
        # @return [Fixnum]
        attr_accessor :emergency_size_gib
      
        # Output only. Time after which volume will be fully deleted. It is filled only
        # for volumes in COOLOFF state.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # An identifier for the `Volume`, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Maximum size volume can be expanded to in case of evergency, in GiB.
        # Corresponds to the JSON property `maxSizeGib`
        # @return [Fixnum]
        attr_accessor :max_size_gib
      
        # Output only. The resource name of this `Volume`. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. Format: `projects/`project`/locations/`location`/volumes/`
        # volume``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. User-specified notes for new Volume. Used to provision Volumes
        # that require manual intervention.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Originally requested size, in GiB.
        # Corresponds to the JSON property `originallyRequestedSizeGib`
        # @return [Fixnum]
        attr_accessor :originally_requested_size_gib
      
        # Immutable. Performance tier of the Volume. Default is SHARED.
        # Corresponds to the JSON property `performanceTier`
        # @return [String]
        attr_accessor :performance_tier
      
        # Immutable. Pod name.
        # Corresponds to the JSON property `pod`
        # @return [String]
        attr_accessor :pod
      
        # Output only. Storage protocol for the Volume.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The space remaining in the storage volume for new LUNs, in GiB, excluding
        # space reserved for snapshots.
        # Corresponds to the JSON property `remainingSpaceGib`
        # @return [Fixnum]
        attr_accessor :remaining_space_gib
      
        # The requested size of this storage volume, in GiB.
        # Corresponds to the JSON property `requestedSizeGib`
        # @return [Fixnum]
        attr_accessor :requested_size_gib
      
        # The behavior to use when snapshot reserved space is full.
        # Corresponds to the JSON property `snapshotAutoDeleteBehavior`
        # @return [String]
        attr_accessor :snapshot_auto_delete_behavior
      
        # Whether snapshots are enabled.
        # Corresponds to the JSON property `snapshotEnabled`
        # @return [Boolean]
        attr_accessor :snapshot_enabled
        alias_method :snapshot_enabled?, :snapshot_enabled
      
        # Details about snapshot space reservation and usage on the storage volume.
        # Corresponds to the JSON property `snapshotReservationDetail`
        # @return [Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail]
        attr_accessor :snapshot_reservation_detail
      
        # The name of the snapshot schedule policy in use for this volume, if any.
        # Corresponds to the JSON property `snapshotSchedulePolicy`
        # @return [String]
        attr_accessor :snapshot_schedule_policy
      
        # The state of this storage volume.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Input only. Name of the storage aggregate pool to allocate the volume in. Can
        # be used only for VOLUME_PERFORMANCE_TIER_ASSIGNED volumes.
        # Corresponds to the JSON property `storageAggregatePool`
        # @return [String]
        attr_accessor :storage_aggregate_pool
      
        # The storage type for this volume.
        # Corresponds to the JSON property `storageType`
        # @return [String]
        attr_accessor :storage_type
      
        # The workload profile for the volume.
        # Corresponds to the JSON property `workloadProfile`
        # @return [String]
        attr_accessor :workload_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_grown_size_gib = args[:auto_grown_size_gib] if args.key?(:auto_grown_size_gib)
          @boot_volume = args[:boot_volume] if args.key?(:boot_volume)
          @current_size_gib = args[:current_size_gib] if args.key?(:current_size_gib)
          @emergency_size_gib = args[:emergency_size_gib] if args.key?(:emergency_size_gib)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @max_size_gib = args[:max_size_gib] if args.key?(:max_size_gib)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @originally_requested_size_gib = args[:originally_requested_size_gib] if args.key?(:originally_requested_size_gib)
          @performance_tier = args[:performance_tier] if args.key?(:performance_tier)
          @pod = args[:pod] if args.key?(:pod)
          @protocol = args[:protocol] if args.key?(:protocol)
          @remaining_space_gib = args[:remaining_space_gib] if args.key?(:remaining_space_gib)
          @requested_size_gib = args[:requested_size_gib] if args.key?(:requested_size_gib)
          @snapshot_auto_delete_behavior = args[:snapshot_auto_delete_behavior] if args.key?(:snapshot_auto_delete_behavior)
          @snapshot_enabled = args[:snapshot_enabled] if args.key?(:snapshot_enabled)
          @snapshot_reservation_detail = args[:snapshot_reservation_detail] if args.key?(:snapshot_reservation_detail)
          @snapshot_schedule_policy = args[:snapshot_schedule_policy] if args.key?(:snapshot_schedule_policy)
          @state = args[:state] if args.key?(:state)
          @storage_aggregate_pool = args[:storage_aggregate_pool] if args.key?(:storage_aggregate_pool)
          @storage_type = args[:storage_type] if args.key?(:storage_type)
          @workload_profile = args[:workload_profile] if args.key?(:workload_profile)
        end
      end
      
      # Configuration parameters for a new volume.
      class VolumeConfig
        include Google::Apis::Core::Hashable
      
        # The GCP service of the storage volume. Available gcp_service are in https://
        # cloud.google.com/bare-metal/docs/bms-planning.
        # Corresponds to the JSON property `gcpService`
        # @return [String]
        attr_accessor :gcp_service
      
        # A transient unique identifier to identify a volume within an
        # ProvisioningConfig request.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
        # Corresponds to the JSON property `lunRanges`
        # @return [Array<Google::Apis::BaremetalsolutionV2::LunRange>]
        attr_accessor :lun_ranges
      
        # Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
        # Corresponds to the JSON property `machineIds`
        # @return [Array<String>]
        attr_accessor :machine_ids
      
        # Output only. The name of the volume config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NFS exports. Set only when protocol is PROTOCOL_NFS.
        # Corresponds to the JSON property `nfsExports`
        # @return [Array<Google::Apis::BaremetalsolutionV2::NfsExport>]
        attr_accessor :nfs_exports
      
        # Performance tier of the Volume. Default is SHARED.
        # Corresponds to the JSON property `performanceTier`
        # @return [String]
        attr_accessor :performance_tier
      
        # Volume protocol.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The requested size of this volume, in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Whether snapshots should be enabled.
        # Corresponds to the JSON property `snapshotsEnabled`
        # @return [Boolean]
        attr_accessor :snapshots_enabled
        alias_method :snapshots_enabled?, :snapshots_enabled
      
        # Input only. Name of the storage aggregate pool to allocate the volume in. Can
        # be used only for VOLUME_PERFORMANCE_TIER_ASSIGNED volumes.
        # Corresponds to the JSON property `storageAggregatePool`
        # @return [String]
        attr_accessor :storage_aggregate_pool
      
        # The type of this Volume.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # User note field, it can be used by customers to add additional information for
        # the BMS Ops team .
        # Corresponds to the JSON property `userNote`
        # @return [String]
        attr_accessor :user_note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_service = args[:gcp_service] if args.key?(:gcp_service)
          @id = args[:id] if args.key?(:id)
          @lun_ranges = args[:lun_ranges] if args.key?(:lun_ranges)
          @machine_ids = args[:machine_ids] if args.key?(:machine_ids)
          @name = args[:name] if args.key?(:name)
          @nfs_exports = args[:nfs_exports] if args.key?(:nfs_exports)
          @performance_tier = args[:performance_tier] if args.key?(:performance_tier)
          @protocol = args[:protocol] if args.key?(:protocol)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @snapshots_enabled = args[:snapshots_enabled] if args.key?(:snapshots_enabled)
          @storage_aggregate_pool = args[:storage_aggregate_pool] if args.key?(:storage_aggregate_pool)
          @type = args[:type] if args.key?(:type)
          @user_note = args[:user_note] if args.key?(:user_note)
        end
      end
      
      # A snapshot of a volume. Only boot volumes can have snapshots.
      class VolumeSnapshot
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of the snapshot.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the snapshot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. An identifier for the snapshot, generated by the backend.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The name of the volume which this snapshot belongs to.
        # Corresponds to the JSON property `storageVolume`
        # @return [String]
        attr_accessor :storage_volume
      
        # Output only. The type of the snapshot which indicates whether it was scheduled
        # or manual/ad-hoc.
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
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @storage_volume = args[:storage_volume] if args.key?(:storage_volume)
          @type = args[:type] if args.key?(:type)
        end
      end
    end
  end
end
