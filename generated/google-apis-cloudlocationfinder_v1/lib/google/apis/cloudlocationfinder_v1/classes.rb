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
      
      # Represents resource cloud locations.
      class CloudLocation
        include Google::Apis::Core::Hashable
      
        # Optional. The carbon free energy percentage of the cloud location. This
        # represents the average percentage of time customers' application will be
        # running on carbon-free energy. See https://cloud.google.com/sustainability/
        # region-carbon for more details. There is a difference between default value 0
        # and unset value. 0 means the carbon free energy percentage is 0%, while unset
        # value means the carbon footprint data is not available.
        # Corresponds to the JSON property `carbonFreeEnergyPercentage`
        # @return [Float]
        attr_accessor :carbon_free_energy_percentage
      
        # Optional. The type of the cloud location.
        # Corresponds to the JSON property `cloudLocationType`
        # @return [String]
        attr_accessor :cloud_location_type
      
        # Optional. The provider of the cloud location. Values can be Google Cloud or
        # third-party providers, including AWS, Azure, or Oracle Cloud Infrastructure.
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # Output only. The containing cloud location in the strict nesting hierarchy.
        # For example, the containing cloud location of a zone is a region.
        # Corresponds to the JSON property `containingCloudLocation`
        # @return [String]
        attr_accessor :containing_cloud_location
      
        # Optional. The human-readable name of the cloud location. Example: us-east-2,
        # us-east1.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Name of the cloud location. Unique name of the cloud location
        # including project and location using the form: `projects/`project_id`/
        # locations/`location`/cloudLocations/`cloud_location``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The two-letter ISO 3166-1 alpha-2 code of the cloud location.
        # Examples: US, JP, KR.
        # Corresponds to the JSON property `territoryCode`
        # @return [String]
        attr_accessor :territory_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carbon_free_energy_percentage = args[:carbon_free_energy_percentage] if args.key?(:carbon_free_energy_percentage)
          @cloud_location_type = args[:cloud_location_type] if args.key?(:cloud_location_type)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @containing_cloud_location = args[:containing_cloud_location] if args.key?(:containing_cloud_location)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @territory_code = args[:territory_code] if args.key?(:territory_code)
        end
      end
      
      # Message for response to listing cloud locations.
      class ListCloudLocationsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. List of cloud locations.
        # Corresponds to the JSON property `cloudLocations`
        # @return [Array<Google::Apis::CloudlocationfinderV1::CloudLocation>]
        attr_accessor :cloud_locations
      
        # Output only. The continuation token, used to page through large result sets.
        # Provide this value in a subsequent request as page_token in subsequent
        # requests to retrieve the next page. If this field is not present, there are no
        # subsequent results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_locations = args[:cloud_locations] if args.key?(:cloud_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudlocationfinderV1::Location>]
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
      
      # Message for response to searching cloud locations.
      class SearchCloudLocationsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. List of cloud locations.
        # Corresponds to the JSON property `cloudLocations`
        # @return [Array<Google::Apis::CloudlocationfinderV1::CloudLocation>]
        attr_accessor :cloud_locations
      
        # Output only. The continuation token, used to page through large result sets.
        # Provide this value in a subsequent request as page_token in subsequent
        # requests to retrieve the next page. If this field is not present, there are no
        # subsequent results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_locations = args[:cloud_locations] if args.key?(:cloud_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
