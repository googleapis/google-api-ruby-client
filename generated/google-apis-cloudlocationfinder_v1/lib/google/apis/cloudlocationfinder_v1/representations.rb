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
    module CloudlocationfinderV1
      
      class CloudLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloudLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCloudLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carbon_free_energy_percentage, as: 'carbonFreeEnergyPercentage'
          property :cloud_location_type, as: 'cloudLocationType'
          property :cloud_provider, as: 'cloudProvider'
          property :containing_cloud_location, as: 'containingCloudLocation'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :territory_code, as: 'territoryCode'
        end
      end
      
      class ListCloudLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_locations, as: 'cloudLocations', class: Google::Apis::CloudlocationfinderV1::CloudLocation, decorator: Google::Apis::CloudlocationfinderV1::CloudLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudlocationfinderV1::Location, decorator: Google::Apis::CloudlocationfinderV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class SearchCloudLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_locations, as: 'cloudLocations', class: Google::Apis::CloudlocationfinderV1::CloudLocation, decorator: Google::Apis::CloudlocationfinderV1::CloudLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
