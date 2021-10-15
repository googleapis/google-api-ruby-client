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
      
        # True if the interactive serial console feature is enabled for the instance,
        # false otherwise. The default value is false.
        # Corresponds to the JSON property `interactiveSerialConsoleEnabled`
        # @return [Boolean]
        attr_accessor :interactive_serial_console_enabled
        alias_method :interactive_serial_console_enabled?, :interactive_serial_console_enabled
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # List of LUNs associated with this server.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Lun>]
        attr_accessor :luns
      
        # The server type. [Available server types](https://cloud.google.com/bare-metal/
        # docs/bms-planning#server_configurations)
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Output only. The resource name of this `Instance`. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. Format: `projects/`project`/locations/`location`/
        # instances/`instance``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of networks associated with this server.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Network>]
        attr_accessor :networks
      
        # The state of the server.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Update a time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hyperthreading_enabled = args[:hyperthreading_enabled] if args.key?(:hyperthreading_enabled)
          @interactive_serial_console_enabled = args[:interactive_serial_console_enabled] if args.key?(:interactive_serial_console_enabled)
          @labels = args[:labels] if args.key?(:labels)
          @luns = args[:luns] if args.key?(:luns)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # A storage volume logical unit number (LUN).
      class Lun
        include Google::Apis::Core::Hashable
      
        # Display if this LUN is a boot LUN.
        # Corresponds to the JSON property `bootLun`
        # @return [Boolean]
        attr_accessor :boot_lun
        alias_method :boot_lun?, :boot_lun
      
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
      
      # A Network.
      class Network
        include Google::Apis::Core::Hashable
      
        # The cidr of the Network.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # IP address configured.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # List of physical interfaces.
        # Corresponds to the JSON property `macAddress`
        # @return [Array<String>]
        attr_accessor :mac_address
      
        # Output only. The resource name of this `Network`. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. Format: `projects/`project`/locations/`location`/
        # networks/`network`` This field will contain the same value as field "network",
        # which will soon be deprecated. Please use this field to reference the name of
        # the network resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
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
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @vlan_id = args[:vlan_id] if args.key?(:vlan_id)
          @vrf = args[:vrf] if args.key?(:vrf)
        end
      end
      
      # A network VRF.
      class Vrf
        include Google::Apis::Core::Hashable
      
        # The autonomous system number of the VRF.
        # Corresponds to the JSON property `autonomousSystemNumber`
        # @return [String]
        attr_accessor :autonomous_system_number
      
        # The Juniper alias of the VRF.
        # Corresponds to the JSON property `juniperAlias`
        # @return [String]
        attr_accessor :juniper_alias
      
        # The name of the VRF.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The route target of the VRF.
        # Corresponds to the JSON property `routeTarget`
        # @return [Fixnum]
        attr_accessor :route_target
      
        # The possible state of VRF.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_system_number = args[:autonomous_system_number] if args.key?(:autonomous_system_number)
          @juniper_alias = args[:juniper_alias] if args.key?(:juniper_alias)
          @name = args[:name] if args.key?(:name)
          @route_target = args[:route_target] if args.key?(:route_target)
          @state = args[:state] if args.key?(:state)
        end
      end
    end
  end
end
