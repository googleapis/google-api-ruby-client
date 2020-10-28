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
      
      class GoogleHomeEnterpriseSdmV1Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ListRoomsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ListStructuresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1ParentRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1Room
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1Structure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomeEnterpriseSdmV1Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parent_relations, as: 'parentRelations', class: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ParentRelation, decorator: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ParentRelation::Representation
      
          hash :traits, as: 'traits'
          property :type, as: 'type'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          hash :params, as: 'params'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :results, as: 'results'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device, decorator: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ListRoomsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rooms, as: 'rooms', class: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room, decorator: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room::Representation
      
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ListStructuresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :structures, as: 'structures', class: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure, decorator: Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure::Representation
      
        end
      end
      
      class GoogleHomeEnterpriseSdmV1ParentRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1Room
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :traits, as: 'traits'
        end
      end
      
      class GoogleHomeEnterpriseSdmV1Structure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :traits, as: 'traits'
        end
      end
    end
  end
end
