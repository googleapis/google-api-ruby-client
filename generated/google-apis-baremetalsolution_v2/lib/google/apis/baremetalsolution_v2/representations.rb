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
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vrf
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :hyperthreading_enabled, as: 'hyperthreadingEnabled'
          property :interactive_serial_console_enabled, as: 'interactiveSerialConsoleEnabled'
          hash :labels, as: 'labels'
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV2::Lun, decorator: Google::Apis::BaremetalsolutionV2::Lun::Representation
      
          property :machine_type, as: 'machineType'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::Network, decorator: Google::Apis::BaremetalsolutionV2::Network::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::BaremetalsolutionV2::Instance, decorator: Google::Apis::BaremetalsolutionV2::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BaremetalsolutionV2::Location, decorator: Google::Apis::BaremetalsolutionV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV2::Lun, decorator: Google::Apis::BaremetalsolutionV2::Lun::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Lun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_lun, as: 'bootLun'
          property :multiprotocol_type, as: 'multiprotocolType'
          property :name, as: 'name'
          property :shareable, as: 'shareable'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :state, as: 'state'
          property :storage_type, as: 'storageType'
          property :storage_volume, as: 'storageVolume'
          property :wwid, as: 'wwid'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr, as: 'cidr'
          property :ip_address, as: 'ipAddress'
          collection :mac_address, as: 'macAddress'
          property :name, as: 'name'
          property :network, as: 'network'
          property :state, as: 'state'
          property :type, as: 'type'
          property :vlan_id, as: 'vlanId'
          property :vrf, as: 'vrf', class: Google::Apis::BaremetalsolutionV2::Vrf, decorator: Google::Apis::BaremetalsolutionV2::Vrf::Representation
      
        end
      end
      
      class Vrf
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autonomous_system_number, as: 'autonomousSystemNumber'
          property :juniper_alias, as: 'juniperAlias'
          property :name, as: 'name'
          property :route_target, :numeric_string => true, as: 'routeTarget'
          property :state, as: 'state'
        end
      end
    end
  end
end
