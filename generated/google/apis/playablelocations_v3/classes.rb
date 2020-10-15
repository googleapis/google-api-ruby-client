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
    module PlayablelocationsV3
      
      # Encapsulates impression event details.
      class GoogleMapsPlayablelocationsV3Impression
        include Google::Apis::Core::Hashable
      
        # An arbitrary, developer-defined type identifier for each type of game object
        # used in your game. Since players interact with differ types of game objects in
        # different ways, this field allows you to segregate impression data by type for
        # analysis. You should assign a unique `game_object_type` ID to represent a
        # distinct type of game object in your game. For example, 1=monster location, 2=
        # powerup location.
        # Corresponds to the JSON property `gameObjectType`
        # @return [Fixnum]
        attr_accessor :game_object_type
      
        # Required. The type of impression event.
        # Corresponds to the JSON property `impressionType`
        # @return [String]
        attr_accessor :impression_type
      
        # Required. The name of the playable location.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @game_object_type = args[:game_object_type] if args.key?(:game_object_type)
          @impression_type = args[:impression_type] if args.key?(:impression_type)
          @location_name = args[:location_name] if args.key?(:location_name)
        end
      end
      
      # A request for logging impressions.
      class GoogleMapsPlayablelocationsV3LogImpressionsRequest
        include Google::Apis::Core::Hashable
      
        # Client information.
        # Corresponds to the JSON property `clientInfo`
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo]
        attr_accessor :client_info
      
        # Required. Impression event details. The maximum number of impression reports
        # that you can log at once is 50.
        # Corresponds to the JSON property `impressions`
        # @return [Array<Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3Impression>]
        attr_accessor :impressions
      
        # Required. A string that uniquely identifies the log impressions request. This
        # allows you to detect duplicate requests. We recommend that you use UUIDs for
        # this value. The value must not exceed 50 characters. You should reuse the `
        # request_id` only when retrying a request in case of failure. In this case, the
        # request must be identical to the one that failed.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_info = args[:client_info] if args.key?(:client_info)
          @impressions = args[:impressions] if args.key?(:impressions)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A response for the LogImpressions method. This method returns no data upon
      # success.
      class GoogleMapsPlayablelocationsV3LogImpressionsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A request for logging your player's bad location reports.
      class GoogleMapsPlayablelocationsV3LogPlayerReportsRequest
        include Google::Apis::Core::Hashable
      
        # Client information.
        # Corresponds to the JSON property `clientInfo`
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo]
        attr_accessor :client_info
      
        # Required. Player reports. The maximum number of player reports that you can
        # log at once is 50.
        # Corresponds to the JSON property `playerReports`
        # @return [Array<Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3PlayerReport>]
        attr_accessor :player_reports
      
        # Required. A string that uniquely identifies the log player reports request.
        # This allows you to detect duplicate requests. We recommend that you use UUIDs
        # for this value. The value must not exceed 50 characters. You should reuse the `
        # request_id` only when retrying a request in the case of a failure. In that
        # case, the request must be identical to the one that failed.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_info = args[:client_info] if args.key?(:client_info)
          @player_reports = args[:player_reports] if args.key?(:player_reports)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A response for the LogPlayerReports method. This method returns no data upon
      # success.
      class GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A report submitted by a player about a playable location that is considered
      # inappropriate for use in the game.
      class GoogleMapsPlayablelocationsV3PlayerReport
        include Google::Apis::Core::Hashable
      
        # Language code (in BCP-47 format) indicating the language of the freeform
        # description provided in `reason_details`. Examples are "en", "en-US" or "ja-
        # Latn". For more information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The name of the playable location.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Required. A free-form description detailing why the playable location is
        # considered bad.
        # Corresponds to the JSON property `reasonDetails`
        # @return [String]
        attr_accessor :reason_details
      
        # Required. One or more reasons why this playable location is considered bad.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_name = args[:location_name] if args.key?(:location_name)
          @reason_details = args[:reason_details] if args.key?(:reason_details)
          @reasons = args[:reasons] if args.key?(:reasons)
        end
      end
      
      # Specifies the area to search for playable locations.
      class GoogleMapsPlayablelocationsV3SampleAreaFilter
        include Google::Apis::Core::Hashable
      
        # Required. The S2 cell ID of the area you want. This must be between cell level
        # 11 and 14 (inclusive). S2 cells are 64-bit integers that identify areas on the
        # Earth. They are hierarchical, and can therefore be used for spatial indexing.
        # The S2 geometry library is available in a number of languages: * [C++](https://
        # github.com/google/s2geometry) * [Java](https://github.com/google/s2-geometry-
        # library-java) * [Go](https://github.com/golang/geo) * [Python](https://github.
        # com/google/s2geometry/tree/master/src/python)
        # Corresponds to the JSON property `s2CellId`
        # @return [Fixnum]
        attr_accessor :s2_cell_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @s2_cell_id = args[:s2_cell_id] if args.key?(:s2_cell_id)
        end
      end
      
      # Encapsulates a filter criterion for searching for a set of playable locations.
      class GoogleMapsPlayablelocationsV3SampleCriterion
        include Google::Apis::Core::Hashable
      
        # Specifies which `PlayableLocation` fields are returned. `name` (which is used
        # for logging impressions), `center_point` and `place_id` (or `plus_code`) are
        # always returned. The following fields are omitted unless you specify them here:
        # * snapped_point * types Note: The more fields you include, the more expensive
        # in terms of data and associated latency your query will be.
        # Corresponds to the JSON property `fieldsToReturn`
        # @return [String]
        attr_accessor :fields_to_return
      
        # Specifies the filters to use when searching for playable locations.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleFilter]
        attr_accessor :filter
      
        # Required. An arbitrary, developer-defined identifier of the type of game
        # object that the playable location is used for. This field allows you to
        # specify criteria per game object type when searching for playable locations.
        # You should assign a unique `game_object_type` ID across all `request_criteria`
        # to represent a distinct type of game object. For example, 1=monster location,
        # 2=powerup location. The response contains a map.
        # Corresponds to the JSON property `gameObjectType`
        # @return [Fixnum]
        attr_accessor :game_object_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields_to_return = args[:fields_to_return] if args.key?(:fields_to_return)
          @filter = args[:filter] if args.key?(:filter)
          @game_object_type = args[:game_object_type] if args.key?(:game_object_type)
        end
      end
      
      # Specifies the filters to use when searching for playable locations.
      class GoogleMapsPlayablelocationsV3SampleFilter
        include Google::Apis::Core::Hashable
      
        # Restricts the set of playable locations to just the [types](/maps/
        # documentation/gaming/tt/types) that you want.
        # Corresponds to the JSON property `includedTypes`
        # @return [Array<String>]
        attr_accessor :included_types
      
        # Specifies the maximum number of playable locations to return. This value must
        # not be greater than 1000. The default value is 100. Only the top-ranking
        # playable locations are returned.
        # Corresponds to the JSON property `maxLocationCount`
        # @return [Fixnum]
        attr_accessor :max_location_count
      
        # A set of options that specifies the separation between playable locations.
        # Corresponds to the JSON property `spacing`
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleSpacingOptions]
        attr_accessor :spacing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_types = args[:included_types] if args.key?(:included_types)
          @max_location_count = args[:max_location_count] if args.key?(:max_location_count)
          @spacing = args[:spacing] if args.key?(:spacing)
        end
      end
      
      # A geographical point suitable for placing game objects in location-based games.
      class GoogleMapsPlayablelocationsV3SamplePlayableLocation
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges.
        # Corresponds to the JSON property `centerPoint`
        # @return [Google::Apis::PlayablelocationsV3::GoogleTypeLatLng]
        attr_accessor :center_point
      
        # Required. The name of this playable location.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A [place ID] (https://developers.google.com/places/place-id)
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # A [plus code] (http://openlocationcode.com)
        # Corresponds to the JSON property `plusCode`
        # @return [String]
        attr_accessor :plus_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges.
        # Corresponds to the JSON property `snappedPoint`
        # @return [Google::Apis::PlayablelocationsV3::GoogleTypeLatLng]
        attr_accessor :snapped_point
      
        # A collection of [Playable Location Types](/maps/documentation/gaming/tt/types)
        # for this playable location. The first type in the collection is the primary
        # type. Type information might not be available for all playable locations.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @center_point = args[:center_point] if args.key?(:center_point)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
          @plus_code = args[:plus_code] if args.key?(:plus_code)
          @snapped_point = args[:snapped_point] if args.key?(:snapped_point)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # A list of PlayableLocation objects that satisfies a single Criterion.
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationList
        include Google::Apis::Core::Hashable
      
        # A list of playable locations for this game object type.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocation>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # Life of a query: - When a game starts in a new location, your game server
      # issues a SamplePlayableLocations request. The request specifies the S2 cell,
      # and contains one or more "criteria" for filtering: - Criterion 0: i locations
      # for long-lived bases, or level 0 monsters, or... - Criterion 1: j locations
      # for short-lived bases, or level 1 monsters, ... - Criterion 2: k locations for
      # random objects. - etc (up to 5 criterion may be specified). `
      # PlayableLocationList` will then contain mutually exclusive lists of `
      # PlayableLocation` objects that satisfy each of the criteria. Think of it as a
      # collection of real-world locations that you can then associate with your game
      # state. Note: These points are impermanent in nature. E.g, parks can close, and
      # places can be removed. The response specifies how long you can expect the
      # playable locations to last. Once they expire, you should query the `
      # samplePlayableLocations` API again to get a fresh view of the real world.
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
        include Google::Apis::Core::Hashable
      
        # Specifies the area to search for playable locations.
        # Corresponds to the JSON property `areaFilter`
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleAreaFilter]
        attr_accessor :area_filter
      
        # Required. Specifies one or more (up to 5) criteria for filtering the returned
        # playable locations.
        # Corresponds to the JSON property `criteria`
        # @return [Array<Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleCriterion>]
        attr_accessor :criteria
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area_filter = args[:area_filter] if args.key?(:area_filter)
          @criteria = args[:criteria] if args.key?(:criteria)
        end
      end
      
      # Response for the SamplePlayableLocations method.
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
        include Google::Apis::Core::Hashable
      
        # Each PlayableLocation object corresponds to a game_object_type specified in
        # the request.
        # Corresponds to the JSON property `locationsPerGameObjectType`
        # @return [Hash<String,Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationList>]
        attr_accessor :locations_per_game_object_type
      
        # Required. Specifies the "time-to-live" for the set of playable locations. You
        # can use this value to determine how long to cache the set of playable
        # locations. After this length of time, your back-end game server should issue a
        # new SamplePlayableLocations request to get a fresh set of playable locations (
        # because for example, they might have been removed, a park might have closed
        # for the day, a business might have closed permanently).
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations_per_game_object_type = args[:locations_per_game_object_type] if args.key?(:locations_per_game_object_type)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # A set of options that specifies the separation between playable locations.
      class GoogleMapsPlayablelocationsV3SampleSpacingOptions
        include Google::Apis::Core::Hashable
      
        # Required. The minimum spacing between any two playable locations, measured in
        # meters. The minimum value is 30. The maximum value is 1000. Inputs will be
        # rounded up to the next 10 meter interval. The default value is 200m. Set this
        # field to remove tight clusters of playable locations. Note: The spacing is a
        # greedy algorithm. It optimizes for selecting the highest ranking locations
        # first, not to maximize the number of locations selected. Consider the
        # following scenario: * Rank: A: 2, B: 1, C: 3. * Distance: A--200m--B--200m--C
        # If spacing=250, it will pick the highest ranked location [B], not [A, C]. Note:
        # Spacing works within the game object type itself, as well as the previous
        # ones. Suppose three game object types, each with the following spacing: * X:
        # 400m, Y: undefined, Z: 200m. 1. Add locations for X, within 400m of each other.
        # 2. Add locations for Y, without any spacing. 3. Finally, add locations for Z
        # within 200m of each other as well X and Y. The distance diagram between those
        # locations end up as: * From->To. * X->X: 400m * Y->X, Y->Y: unspecified. * Z->
        # X, Z->Y, Z->Z: 200m.
        # Corresponds to the JSON property `minSpacingMeters`
        # @return [Float]
        attr_accessor :min_spacing_meters
      
        # Specifies whether the minimum spacing constraint applies to the center-point
        # or to the snapped point of playable locations. The default value is `
        # CENTER_POINT`. If a snapped point is not available for a playable location,
        # its center-point is used instead. Set this to the point type used in your game.
        # Corresponds to the JSON property `pointType`
        # @return [String]
        attr_accessor :point_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_spacing_meters = args[:min_spacing_meters] if args.key?(:min_spacing_meters)
          @point_type = args[:point_type] if args.key?(:point_type)
        end
      end
      
      # Client information.
      class GoogleMapsUnityClientInfo
        include Google::Apis::Core::Hashable
      
        # API client name and version. For example, the SDK calling the API. The exact
        # format is up to the client.
        # Corresponds to the JSON property `apiClient`
        # @return [String]
        attr_accessor :api_client
      
        # Application ID, such as the package name on Android and the bundle identifier
        # on iOS platforms.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # Application version number, such as "1.2.3". The exact format is application-
        # dependent.
        # Corresponds to the JSON property `applicationVersion`
        # @return [String]
        attr_accessor :application_version
      
        # Device model as reported by the device. The exact format is platform-dependent.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # Language code (in BCP-47 format) indicating the UI language of the client.
        # Examples are "en", "en-US" or "ja-Latn". For more information, see http://www.
        # unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Operating system name and version as reported by the OS. For example, "Mac OS
        # X 10.10.4". The exact format is platform-dependent.
        # Corresponds to the JSON property `operatingSystem`
        # @return [String]
        attr_accessor :operating_system
      
        # Build number/version of the operating system. e.g., the contents of android.os.
        # Build.ID in Android, or the contents of sysctl "kern.osversion" in iOS.
        # Corresponds to the JSON property `operatingSystemBuild`
        # @return [String]
        attr_accessor :operating_system_build
      
        # Platform where the application is running.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_client = args[:api_client] if args.key?(:api_client)
          @application_id = args[:application_id] if args.key?(:application_id)
          @application_version = args[:application_version] if args.key?(:application_version)
          @device_model = args[:device_model] if args.key?(:device_model)
          @language_code = args[:language_code] if args.key?(:language_code)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @operating_system_build = args[:operating_system_build] if args.key?(:operating_system_build)
          @platform = args[:platform] if args.key?(:platform)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the WGS84 standard. Values must be
      # within normalized ranges.
      class GoogleTypeLatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
    end
  end
end
