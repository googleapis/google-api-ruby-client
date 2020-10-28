# Copyright 2015 Google Inc.
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
    module SmartdevicemanagementV1
      
      # Device resource represents an instance of enterprise managed device in the
      # property.
      class GoogleHomeEnterpriseSdmV1Device
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the device. For example: "enterprises/XYZ/
        # devices/123".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Assignee details of the device.
        # Corresponds to the JSON property `parentRelations`
        # @return [Array<Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ParentRelation>]
        attr_accessor :parent_relations
      
        # Output only. Device traits.
        # Corresponds to the JSON property `traits`
        # @return [Hash<String,Object>]
        attr_accessor :traits
      
        # Output only. Type of the device for general display purposes. For example: "
        # THERMOSTAT". The device type should not be used to deduce or infer
        # functionality of the actual device it is assigned to. Instead, use the
        # returned traits for the device.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent_relations = args[:parent_relations] if args.key?(:parent_relations)
          @traits = args[:traits] if args.key?(:traits)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for SmartDeviceManagementService.ExecuteDeviceCommand
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest
        include Google::Apis::Core::Hashable
      
        # The command name to execute, represented by the fully qualified protobuf
        # message name.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # The command message to execute, represented as a Struct.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
          @params = args[:params] if args.key?(:params)
        end
      end
      
      # Response message for SmartDeviceManagementService.ExecuteDeviceCommand
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse
        include Google::Apis::Core::Hashable
      
        # The results of executing the command.
        # Corresponds to the JSON property `results`
        # @return [Hash<String,Object>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Response message for SmartDeviceManagementService.ListDevices
      class GoogleHomeEnterpriseSdmV1ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device>]
        attr_accessor :devices
      
        # The pagination token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for SmartDeviceManagementService.ListRooms
      class GoogleHomeEnterpriseSdmV1ListRoomsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of results. If this field is
        # omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of rooms.
        # Corresponds to the JSON property `rooms`
        # @return [Array<Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room>]
        attr_accessor :rooms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rooms = args[:rooms] if args.key?(:rooms)
        end
      end
      
      # Response message for SmartDeviceManagementService.ListStructures
      class GoogleHomeEnterpriseSdmV1ListStructuresResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of results. If this field is
        # omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of structures.
        # Corresponds to the JSON property `structures`
        # @return [Array<Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure>]
        attr_accessor :structures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @structures = args[:structures] if args.key?(:structures)
        end
      end
      
      # Represents device relationships, for instance, structure/room to which the
      # device is assigned to. For now this is only filled in the enterprise flow.
      class GoogleHomeEnterpriseSdmV1ParentRelation
        include Google::Apis::Core::Hashable
      
        # Output only. The custom name of the relation -- e.g., structure/room where the
        # device is assigned to.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The name of the relation -- e.g., structure/room where the device
        # is assigned to. For example: "enterprises/XYZ/structures/ABC" or "enterprises/
        # XYZ/structures/ABC/rooms/123"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Room resource represents an instance of sub-space within a structure such as
      # rooms in a hotel suite or rental apartment.
      class GoogleHomeEnterpriseSdmV1Room
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the room. For example: "enterprises/XYZ/
        # structures/ABC/rooms/123".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Room traits.
        # Corresponds to the JSON property `traits`
        # @return [Hash<String,Object>]
        attr_accessor :traits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @traits = args[:traits] if args.key?(:traits)
        end
      end
      
      # Structure resource represents an instance of enterprise managed home or hotel
      # room.
      class GoogleHomeEnterpriseSdmV1Structure
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the structure. For example: "enterprises/XYZ/
        # structures/ABC".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Structure traits.
        # Corresponds to the JSON property `traits`
        # @return [Hash<String,Object>]
        attr_accessor :traits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @traits = args[:traits] if args.key?(:traits)
        end
      end
    end
  end
end
