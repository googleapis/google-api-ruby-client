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
    module PlacesV1
      
      # A latitude-longitude viewport, represented as two diagonally opposite `low`
      # and `high` points. A viewport is considered a closed region, i.e. it includes
      # its boundary. The latitude bounds must range between -90 to 90 degrees
      # inclusive, and the longitude bounds must range between -180 to 180 degrees
      # inclusive. Various cases include: - If `low` = `high`, the viewport consists
      # of that single point. - If `low.longitude` > `high.longitude`, the longitude
      # range is inverted (the viewport crosses the 180 degree longitude line). - If `
      # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
      # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
      # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
      # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
      # populated, and the represented box cannot be empty (as specified by the
      # definitions above). An empty viewport will result in an error. For example,
      # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
      # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
      # 70018 ` `
      class GoogleGeoTypeViewport
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `high`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :high
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `low`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :low
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
        end
      end
      
      # A relational description of a location. Includes a ranked set of nearby
      # landmarks and precise containing areas and their relationship to the target
      # location.
      class GoogleMapsPlacesV1AddressDescriptor
        include Google::Apis::Core::Hashable
      
        # A ranked list of containing or adjacent areas. The most recognizable and
        # precise areas are ranked first.
        # Corresponds to the JSON property `areas`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorArea>]
        attr_accessor :areas
      
        # A ranked list of nearby landmarks. The most recognizable and nearby landmarks
        # are ranked first.
        # Corresponds to the JSON property `landmarks`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorLandmark>]
        attr_accessor :landmarks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @areas = args[:areas] if args.key?(:areas)
          @landmarks = args[:landmarks] if args.key?(:landmarks)
        end
      end
      
      # Area information and the area's relationship with the target location. Areas
      # includes precise sublocality, neighborhoods, and large compounds that are
      # useful for describing a location.
      class GoogleMapsPlacesV1AddressDescriptorArea
        include Google::Apis::Core::Hashable
      
        # Defines the spatial relationship between the target location and the area.
        # Corresponds to the JSON property `containment`
        # @return [String]
        attr_accessor :containment
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :display_name
      
        # The area's resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The area's place id.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containment = args[:containment] if args.key?(:containment)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Basic landmark information and the landmark's relationship with the target
      # location. Landmarks are prominent places that can be used to describe a
      # location.
      class GoogleMapsPlacesV1AddressDescriptorLandmark
        include Google::Apis::Core::Hashable
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :display_name
      
        # The landmark's resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The landmark's place id.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Defines the spatial relationship between the target location and the landmark.
        # Corresponds to the JSON property `spatialRelationship`
        # @return [String]
        attr_accessor :spatial_relationship
      
        # The straight line distance, in meters, between the center point of the target
        # and the center point of the landmark. In some situations, this value can be
        # longer than `travel_distance_meters`.
        # Corresponds to the JSON property `straightLineDistanceMeters`
        # @return [Float]
        attr_accessor :straight_line_distance_meters
      
        # The travel distance, in meters, along the road network from the target to the
        # landmark, if known. This value does not take into account the mode of
        # transportation, such as walking, driving, or biking.
        # Corresponds to the JSON property `travelDistanceMeters`
        # @return [Float]
        attr_accessor :travel_distance_meters
      
        # A set of type tags for this landmark. For a complete list of possible values,
        # see https://developers.google.com/maps/documentation/places/web-service/place-
        # types.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
          @spatial_relationship = args[:spatial_relationship] if args.key?(:spatial_relationship)
          @straight_line_distance_meters = args[:straight_line_distance_meters] if args.key?(:straight_line_distance_meters)
          @travel_distance_meters = args[:travel_distance_meters] if args.key?(:travel_distance_meters)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Information about the author of the UGC data. Used in Photo, and Review.
      class GoogleMapsPlacesV1AuthorAttribution
        include Google::Apis::Core::Hashable
      
        # Name of the author of the Photo or Review.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Profile photo URI of the author of the Photo or Review.
        # Corresponds to the JSON property `photoUri`
        # @return [String]
        attr_accessor :photo_uri
      
        # URI of the author of the Photo or Review.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @photo_uri = args[:photo_uri] if args.key?(:photo_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Request proto for AutocompletePlaces.
      class GoogleMapsPlacesV1AutocompletePlacesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Include pure service area businesses if the field is set to true.
        # Pure service area business is a business that visits or delivers to customers
        # directly but does not serve customers at their business address. For example,
        # businesses like cleaning services or plumbers. Those businesses do not have a
        # physical address or location on Google Maps. Places will not return fields
        # including `location`, `plus_code`, and other location related fields for these
        # businesses.
        # Corresponds to the JSON property `includePureServiceAreaBusinesses`
        # @return [Boolean]
        attr_accessor :include_pure_service_area_businesses
        alias_method :include_pure_service_area_businesses?, :include_pure_service_area_businesses
      
        # Optional. If true, the response will include both Place and query predictions.
        # Otherwise the response will only return Place predictions.
        # Corresponds to the JSON property `includeQueryPredictions`
        # @return [Boolean]
        attr_accessor :include_query_predictions
        alias_method :include_query_predictions?, :include_query_predictions
      
        # Optional. Included primary Place type (for example, "restaurant" or "
        # gas_station") in Place Types (https://developers.google.com/maps/documentation/
        # places/web-service/place-types), or only `(regions)`, or only `(cities)`. A
        # Place is only returned if its primary type is included in this list. Up to 5
        # values can be specified. If no types are specified, all Place types are
        # returned.
        # Corresponds to the JSON property `includedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :included_primary_types
      
        # Optional. Only include results in the specified regions, specified as up to 15
        # CLDR two-character region codes. An empty set will not restrict the results.
        # If both `location_restriction` and `included_region_codes` are set, the
        # results will be located in the area of intersection.
        # Corresponds to the JSON property `includedRegionCodes`
        # @return [Array<String>]
        attr_accessor :included_region_codes
      
        # Required. The text string on which to search.
        # Corresponds to the JSON property `input`
        # @return [String]
        attr_accessor :input
      
        # Optional. A zero-based Unicode character offset of `input` indicating the
        # cursor position in `input`. The cursor position may influence what predictions
        # are returned. If empty, defaults to the length of `input`.
        # Corresponds to the JSON property `inputOffset`
        # @return [Fixnum]
        attr_accessor :input_offset
      
        # Optional. The language in which to return results. Defaults to en-US. The
        # results may be in mixed languages if the language used in `input` is different
        # from `language_code` or if the returned Place does not have a translation from
        # the local language to `language_code`.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The region to search. The results may be biased around the specified region.
        # Corresponds to the JSON property `locationBias`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias]
        attr_accessor :location_bias
      
        # The region to search. The results will be restricted to the specified region.
        # Corresponds to the JSON property `locationRestriction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction]
        attr_accessor :location_restriction
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :origin
      
        # Optional. The region code, specified as a CLDR two-character region code. This
        # affects address formatting, result ranking, and may influence what results are
        # returned. This does not restrict results to the specified region. To restrict
        # results to a region, use `region_code_restriction`.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Optional. A string which identifies an Autocomplete session for billing
        # purposes. Must be a URL and filename safe base64 string with at most 36 ASCII
        # characters in length. Otherwise an INVALID_ARGUMENT error is returned. The
        # session begins when the user starts typing a query, and concludes when they
        # select a place and a call to Place Details or Address Validation is made. Each
        # session can have multiple queries, followed by one Place Details or Address
        # Validation request. The credentials used for each request within a session
        # must belong to the same Google Cloud Console project. Once a session has
        # concluded, the token is no longer valid; your app must generate a fresh token
        # for each session. If the `session_token` parameter is omitted, or if you reuse
        # a session token, the session is charged as if no session token was provided (
        # each request is billed separately). We recommend the following guidelines: *
        # Use session tokens for all Place Autocomplete calls. * Generate a fresh token
        # for each session. Using a version 4 UUID is recommended. * Ensure that the
        # credentials used for all Place Autocomplete, Place Details, and Address
        # Validation requests within a session belong to the same Cloud Console project.
        # * Be sure to pass a unique session token for each new session. Using the same
        # token for more than one session will result in each request being billed
        # individually.
        # Corresponds to the JSON property `sessionToken`
        # @return [String]
        attr_accessor :session_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_pure_service_area_businesses = args[:include_pure_service_area_businesses] if args.key?(:include_pure_service_area_businesses)
          @include_query_predictions = args[:include_query_predictions] if args.key?(:include_query_predictions)
          @included_primary_types = args[:included_primary_types] if args.key?(:included_primary_types)
          @included_region_codes = args[:included_region_codes] if args.key?(:included_region_codes)
          @input = args[:input] if args.key?(:input)
          @input_offset = args[:input_offset] if args.key?(:input_offset)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_bias = args[:location_bias] if args.key?(:location_bias)
          @location_restriction = args[:location_restriction] if args.key?(:location_restriction)
          @origin = args[:origin] if args.key?(:origin)
          @region_code = args[:region_code] if args.key?(:region_code)
          @session_token = args[:session_token] if args.key?(:session_token)
        end
      end
      
      # The region to search. The results may be biased around the specified region.
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # The region to search. The results will be restricted to the specified region.
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # Response proto for AutocompletePlaces.
      class GoogleMapsPlacesV1AutocompletePlacesResponse
        include Google::Apis::Core::Hashable
      
        # Contains a list of suggestions, ordered in descending order of relevance.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # An Autocomplete suggestion result.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion
        include Google::Apis::Core::Hashable
      
        # Prediction results for a Place Autocomplete prediction.
        # Corresponds to the JSON property `placePrediction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction]
        attr_accessor :place_prediction
      
        # Prediction results for a Query Autocomplete prediction.
        # Corresponds to the JSON property `queryPrediction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction]
        attr_accessor :query_prediction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_prediction = args[:place_prediction] if args.key?(:place_prediction)
          @query_prediction = args[:query_prediction] if args.key?(:query_prediction)
        end
      end
      
      # Text representing a Place or query prediction. The text may be used as is or
      # formatted.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
        include Google::Apis::Core::Hashable
      
        # A list of string ranges identifying where the input request matched in `text`.
        # The ranges can be used to format specific parts of `text`. The substrings may
        # not be exact matches of `input` if the matching was determined by criteria
        # other than string matching (for example, spell corrections or transliterations)
        # . These values are Unicode character offsets of `text`. The ranges are
        # guaranteed to be ordered in increasing offset values.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>]
        attr_accessor :matches
      
        # Text that may be used as is or formatted with `matches`.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matches = args[:matches] if args.key?(:matches)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Prediction results for a Place Autocomplete prediction.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
        include Google::Apis::Core::Hashable
      
        # The length of the geodesic in meters from `origin` if `origin` is specified.
        # Certain predictions such as routes may not populate this field.
        # Corresponds to the JSON property `distanceMeters`
        # @return [Fixnum]
        attr_accessor :distance_meters
      
        # The resource name of the suggested Place. This name can be used in other APIs
        # that accept Place names.
        # Corresponds to the JSON property `place`
        # @return [String]
        attr_accessor :place
      
        # The unique identifier of the suggested Place. This identifier can be used in
        # other APIs that accept Place IDs.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Contains a breakdown of a Place or query prediction into main text and
        # secondary text. For Place predictions, the main text contains the specific
        # name of the Place. For query predictions, the main text contains the query.
        # The secondary text contains additional disambiguating features (such as a city
        # or region) to further identify the Place or refine the query.
        # Corresponds to the JSON property `structuredFormat`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat]
        attr_accessor :structured_format
      
        # Text representing a Place or query prediction. The text may be used as is or
        # formatted.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText]
        attr_accessor :text
      
        # List of types that apply to this Place from Table A or Table B in https://
        # developers.google.com/maps/documentation/places/web-service/place-types. A
        # type is a categorization of a Place. Places with shared types will share
        # similar characteristics.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distance_meters = args[:distance_meters] if args.key?(:distance_meters)
          @place = args[:place] if args.key?(:place)
          @place_id = args[:place_id] if args.key?(:place_id)
          @structured_format = args[:structured_format] if args.key?(:structured_format)
          @text = args[:text] if args.key?(:text)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Prediction results for a Query Autocomplete prediction.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
        include Google::Apis::Core::Hashable
      
        # Contains a breakdown of a Place or query prediction into main text and
        # secondary text. For Place predictions, the main text contains the specific
        # name of the Place. For query predictions, the main text contains the query.
        # The secondary text contains additional disambiguating features (such as a city
        # or region) to further identify the Place or refine the query.
        # Corresponds to the JSON property `structuredFormat`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat]
        attr_accessor :structured_format
      
        # Text representing a Place or query prediction. The text may be used as is or
        # formatted.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @structured_format = args[:structured_format] if args.key?(:structured_format)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Identifies a substring within a given text.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
        include Google::Apis::Core::Hashable
      
        # Zero-based offset of the last Unicode character (exclusive).
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Zero-based offset of the first Unicode character of the string (inclusive).
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Contains a breakdown of a Place or query prediction into main text and
      # secondary text. For Place predictions, the main text contains the specific
      # name of the Place. For query predictions, the main text contains the query.
      # The secondary text contains additional disambiguating features (such as a city
      # or region) to further identify the Place or refine the query.
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
        include Google::Apis::Core::Hashable
      
        # Text representing a Place or query prediction. The text may be used as is or
        # formatted.
        # Corresponds to the JSON property `mainText`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText]
        attr_accessor :main_text
      
        # Text representing a Place or query prediction. The text may be used as is or
        # formatted.
        # Corresponds to the JSON property `secondaryText`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText]
        attr_accessor :secondary_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @main_text = args[:main_text] if args.key?(:main_text)
          @secondary_text = args[:secondary_text] if args.key?(:secondary_text)
        end
      end
      
      # Circle with a LatLng as center and radius.
      class GoogleMapsPlacesV1Circle
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :center
      
        # Required. Radius measured in meters. The radius must be within [0.0, 50000.0].
        # Corresponds to the JSON property `radius`
        # @return [Float]
        attr_accessor :radius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @center = args[:center] if args.key?(:center)
          @radius = args[:radius] if args.key?(:radius)
        end
      end
      
      # A block of content that can be served individually.
      class GoogleMapsPlacesV1ContentBlock
        include Google::Apis::Core::Hashable
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :content
      
        # The list of resource names of the referenced places. This name can be used in
        # other APIs that accept Place resource names.
        # Corresponds to the JSON property `referencedPlaces`
        # @return [Array<String>]
        attr_accessor :referenced_places
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @referenced_places = args[:referenced_places] if args.key?(:referenced_places)
        end
      end
      
      # Experimental: See https://developers.google.com/maps/documentation/places/web-
      # service/experimental/places-generative for more details. Content that is
      # contextual to the place query.
      class GoogleMapsPlacesV1ContextualContent
        include Google::Apis::Core::Hashable
      
        # Experimental: See https://developers.google.com/maps/documentation/places/web-
        # service/experimental/places-generative for more details. Justifications for
        # the place.
        # Corresponds to the JSON property `justifications`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustification>]
        attr_accessor :justifications
      
        # Information (including references) about photos of this place, contextual to
        # the place query.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo>]
        attr_accessor :photos
      
        # List of reviews about this place, contextual to the place query.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Review>]
        attr_accessor :reviews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @justifications = args[:justifications] if args.key?(:justifications)
          @photos = args[:photos] if args.key?(:photos)
          @reviews = args[:reviews] if args.key?(:reviews)
        end
      end
      
      # Experimental: See https://developers.google.com/maps/documentation/places/web-
      # service/experimental/places-generative for more details. Justifications for
      # the place. Justifications answers the question of why a place could interest
      # an end user.
      class GoogleMapsPlacesV1ContextualContentJustification
        include Google::Apis::Core::Hashable
      
        # Experimental: See https://developers.google.com/maps/documentation/places/web-
        # service/experimental/places-generative for more details.
        # BusinessAvailabilityAttributes justifications. This shows some attributes a
        # business has that could interest an end user.
        # Corresponds to the JSON property `businessAvailabilityAttributesJustification`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification]
        attr_accessor :business_availability_attributes_justification
      
        # Experimental: See https://developers.google.com/maps/documentation/places/web-
        # service/experimental/places-generative for more details. User review
        # justifications. This highlights a section of the user review that would
        # interest an end user. For instance, if the search query is "firewood pizza",
        # the review justification highlights the text relevant to the search query.
        # Corresponds to the JSON property `reviewJustification`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustification]
        attr_accessor :review_justification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_availability_attributes_justification = args[:business_availability_attributes_justification] if args.key?(:business_availability_attributes_justification)
          @review_justification = args[:review_justification] if args.key?(:review_justification)
        end
      end
      
      # Experimental: See https://developers.google.com/maps/documentation/places/web-
      # service/experimental/places-generative for more details.
      # BusinessAvailabilityAttributes justifications. This shows some attributes a
      # business has that could interest an end user.
      class GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification
        include Google::Apis::Core::Hashable
      
        # If a place provides delivery.
        # Corresponds to the JSON property `delivery`
        # @return [Boolean]
        attr_accessor :delivery
        alias_method :delivery?, :delivery
      
        # If a place provides dine-in.
        # Corresponds to the JSON property `dineIn`
        # @return [Boolean]
        attr_accessor :dine_in
        alias_method :dine_in?, :dine_in
      
        # If a place provides takeout.
        # Corresponds to the JSON property `takeout`
        # @return [Boolean]
        attr_accessor :takeout
        alias_method :takeout?, :takeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery = args[:delivery] if args.key?(:delivery)
          @dine_in = args[:dine_in] if args.key?(:dine_in)
          @takeout = args[:takeout] if args.key?(:takeout)
        end
      end
      
      # Experimental: See https://developers.google.com/maps/documentation/places/web-
      # service/experimental/places-generative for more details. User review
      # justifications. This highlights a section of the user review that would
      # interest an end user. For instance, if the search query is "firewood pizza",
      # the review justification highlights the text relevant to the search query.
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustification
        include Google::Apis::Core::Hashable
      
        # The text highlighted by the justification. This is a subset of the review
        # itself. The exact word to highlight is marked by the HighlightedTextRange.
        # There could be several words in the text being highlighted.
        # Corresponds to the JSON property `highlightedText`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText]
        attr_accessor :highlighted_text
      
        # Information about a review of a place.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Review]
        attr_accessor :review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @highlighted_text = args[:highlighted_text] if args.key?(:highlighted_text)
          @review = args[:review] if args.key?(:review)
        end
      end
      
      # The text highlighted by the justification. This is a subset of the review
      # itself. The exact word to highlight is marked by the HighlightedTextRange.
      # There could be several words in the text being highlighted.
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText
        include Google::Apis::Core::Hashable
      
        # The list of the ranges of the highlighted text.
        # Corresponds to the JSON property `highlightedTextRanges`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange>]
        attr_accessor :highlighted_text_ranges
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @highlighted_text_ranges = args[:highlighted_text_ranges] if args.key?(:highlighted_text_ranges)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The range of highlighted text.
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # 
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # Information about the EV Charge Station hosted in Place. Terminology follows
      # https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
      # charge one car at a time. One port has one or more connectors. One station has
      # one or more ports.
      class GoogleMapsPlacesV1EvChargeOptions
        include Google::Apis::Core::Hashable
      
        # A list of EV charging connector aggregations that contain connectors of the
        # same type and same charge rate.
        # Corresponds to the JSON property `connectorAggregation`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation>]
        attr_accessor :connector_aggregation
      
        # Number of connectors at this station. However, because some ports can have
        # multiple connectors but only be able to charge one car at a time (e.g.) the
        # number of connectors may be greater than the total number of cars which can
        # charge simultaneously.
        # Corresponds to the JSON property `connectorCount`
        # @return [Fixnum]
        attr_accessor :connector_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_aggregation = args[:connector_aggregation] if args.key?(:connector_aggregation)
          @connector_count = args[:connector_count] if args.key?(:connector_count)
        end
      end
      
      # EV charging information grouped by [type, max_charge_rate_kw]. Shows EV charge
      # aggregation of connectors that have the same type and max charge rate in kw.
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        include Google::Apis::Core::Hashable
      
        # The timestamp when the connector availability information in this aggregation
        # was last updated.
        # Corresponds to the JSON property `availabilityLastUpdateTime`
        # @return [String]
        attr_accessor :availability_last_update_time
      
        # Number of connectors in this aggregation that are currently available.
        # Corresponds to the JSON property `availableCount`
        # @return [Fixnum]
        attr_accessor :available_count
      
        # Number of connectors in this aggregation.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The static max charging rate in kw of each connector in the aggregation.
        # Corresponds to the JSON property `maxChargeRateKw`
        # @return [Float]
        attr_accessor :max_charge_rate_kw
      
        # Number of connectors in this aggregation that are currently out of service.
        # Corresponds to the JSON property `outOfServiceCount`
        # @return [Fixnum]
        attr_accessor :out_of_service_count
      
        # The connector type of this aggregation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_last_update_time = args[:availability_last_update_time] if args.key?(:availability_last_update_time)
          @available_count = args[:available_count] if args.key?(:available_count)
          @count = args[:count] if args.key?(:count)
          @max_charge_rate_kw = args[:max_charge_rate_kw] if args.key?(:max_charge_rate_kw)
          @out_of_service_count = args[:out_of_service_count] if args.key?(:out_of_service_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The most recent information about fuel options in a gas station. This
      # information is updated regularly.
      class GoogleMapsPlacesV1FuelOptions
        include Google::Apis::Core::Hashable
      
        # The last known fuel price for each type of fuel this station has. There is one
        # entry per fuel type this station has. Order is not important.
        # Corresponds to the JSON property `fuelPrices`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice>]
        attr_accessor :fuel_prices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fuel_prices = args[:fuel_prices] if args.key?(:fuel_prices)
        end
      end
      
      # Fuel price information for a given type.
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::PlacesV1::GoogleTypeMoney]
        attr_accessor :price
      
        # The type of fuel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The time the fuel price was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price = args[:price] if args.key?(:price)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about a photo of a place.
      class GoogleMapsPlacesV1Photo
        include Google::Apis::Core::Hashable
      
        # This photo's authors.
        # Corresponds to the JSON property `authorAttributions`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution>]
        attr_accessor :author_attributions
      
        # A link where users can flag a problem with the photo.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # A link to show the photo on Google Maps.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # The maximum available height, in pixels.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # Identifier. A reference representing this place photo which may be used to
        # look up this place photo again (also called the API "resource" name: `places/`
        # place_id`/photos/`photo``).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The maximum available width, in pixels.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_attributions = args[:author_attributions] if args.key?(:author_attributions)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @height_px = args[:height_px] if args.key?(:height_px)
          @name = args[:name] if args.key?(:name)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # A photo media from Places API.
      class GoogleMapsPlacesV1PhotoMedia
        include Google::Apis::Core::Hashable
      
        # The resource name of a photo media in the format: `places/`place_id`/photos/`
        # photo_reference`/media`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A short-lived uri that can be used to render the photo.
        # Corresponds to the JSON property `photoUri`
        # @return [String]
        attr_accessor :photo_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @photo_uri = args[:photo_uri] if args.key?(:photo_uri)
        end
      end
      
      # All the information representing a Place.
      class GoogleMapsPlacesV1Place
        include Google::Apis::Core::Hashable
      
        # Information about the accessibility options a place offers.
        # Corresponds to the JSON property `accessibilityOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions]
        attr_accessor :accessibility_options
      
        # Repeated components for each locality level. Note the following facts about
        # the address_components[] array: - The array of address components may contain
        # more components than the formatted_address. - The array does not necessarily
        # include all the political entities that contain an address, apart from those
        # included in the formatted_address. To retrieve all the political entities that
        # contain a specific address, you should use reverse geocoding, passing the
        # latitude/longitude of the address as a parameter to the request. - The format
        # of the response is not guaranteed to remain the same between requests. In
        # particular, the number of address_components varies based on the address
        # requested and can change over time for the same address. A component can
        # change position in the array. The type of the component can change. A
        # particular component may be missing in a later response.
        # Corresponds to the JSON property `addressComponents`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent>]
        attr_accessor :address_components
      
        # A relational description of a location. Includes a ranked set of nearby
        # landmarks and precise containing areas and their relationship to the target
        # location.
        # Corresponds to the JSON property `addressDescriptor`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptor]
        attr_accessor :address_descriptor
      
        # The place's address in adr microformat: http://microformats.org/wiki/adr.
        # Corresponds to the JSON property `adrFormatAddress`
        # @return [String]
        attr_accessor :adr_format_address
      
        # Place allows dogs.
        # Corresponds to the JSON property `allowsDogs`
        # @return [Boolean]
        attr_accessor :allows_dogs
        alias_method :allows_dogs?, :allows_dogs
      
        # A set of data provider that must be shown with this result.
        # Corresponds to the JSON property `attributions`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution>]
        attr_accessor :attributions
      
        # The business status for the place.
        # Corresponds to the JSON property `businessStatus`
        # @return [String]
        attr_accessor :business_status
      
        # The consumer alert message for the place when we detect suspicious review
        # activity on a business or a business violates our policies.
        # Corresponds to the JSON property `consumerAlert`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceConsumerAlert]
        attr_accessor :consumer_alert
      
        # List of places in which the current place is located.
        # Corresponds to the JSON property `containingPlaces`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceContainingPlace>]
        attr_accessor :containing_places
      
        # Specifies if the business supports curbside pickup.
        # Corresponds to the JSON property `curbsidePickup`
        # @return [Boolean]
        attr_accessor :curbside_pickup
        alias_method :curbside_pickup?, :curbside_pickup
      
        # Information about business hour of the place.
        # Corresponds to the JSON property `currentOpeningHours`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours]
        attr_accessor :current_opening_hours
      
        # Contains an array of entries for the next seven days including information
        # about secondary hours of a business. Secondary hours are different from a
        # business's main hours. For example, a restaurant can specify drive through
        # hours or delivery hours as its secondary hours. This field populates the type
        # subfield, which draws from a predefined list of opening hours types (such as
        # DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place. This field
        # includes the special_days subfield of all hours, set for dates that have
        # exceptional hours.
        # Corresponds to the JSON property `currentSecondaryOpeningHours`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours>]
        attr_accessor :current_secondary_opening_hours
      
        # Specifies if the business supports delivery.
        # Corresponds to the JSON property `delivery`
        # @return [Boolean]
        attr_accessor :delivery
        alias_method :delivery?, :delivery
      
        # Specifies if the business supports indoor or outdoor seating options.
        # Corresponds to the JSON property `dineIn`
        # @return [Boolean]
        attr_accessor :dine_in
        alias_method :dine_in?, :dine_in
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :display_name
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `editorialSummary`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :editorial_summary
      
        # The summary of amenities near the EV charging station. This only applies to
        # places with type `electric_vehicle_charging_station`. The `overview` field is
        # guaranteed to be provided while the other fields are optional.
        # Corresponds to the JSON property `evChargeAmenitySummary`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceEvChargeAmenitySummary]
        attr_accessor :ev_charge_amenity_summary
      
        # Information about the EV Charge Station hosted in Place. Terminology follows
        # https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
        # charge one car at a time. One port has one or more connectors. One station has
        # one or more ports.
        # Corresponds to the JSON property `evChargeOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions]
        attr_accessor :ev_charge_options
      
        # A full, human-readable address for this place.
        # Corresponds to the JSON property `formattedAddress`
        # @return [String]
        attr_accessor :formatted_address
      
        # The most recent information about fuel options in a gas station. This
        # information is updated regularly.
        # Corresponds to the JSON property `fuelOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions]
        attr_accessor :fuel_options
      
        # AI-generated summary of the place.
        # Corresponds to the JSON property `generativeSummary`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGenerativeSummary]
        attr_accessor :generative_summary
      
        # Place is good for children.
        # Corresponds to the JSON property `goodForChildren`
        # @return [Boolean]
        attr_accessor :good_for_children
        alias_method :good_for_children?, :good_for_children
      
        # Place accommodates groups.
        # Corresponds to the JSON property `goodForGroups`
        # @return [Boolean]
        attr_accessor :good_for_groups
        alias_method :good_for_groups?, :good_for_groups
      
        # Place is suitable for watching sports.
        # Corresponds to the JSON property `goodForWatchingSports`
        # @return [Boolean]
        attr_accessor :good_for_watching_sports
        alias_method :good_for_watching_sports?, :good_for_watching_sports
      
        # Links to trigger different Google Maps actions.
        # Corresponds to the JSON property `googleMapsLinks`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGoogleMapsLinks]
        attr_accessor :google_maps_links
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `googleMapsTypeLabel`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :google_maps_type_label
      
        # A URL providing more information about this place.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # Background color for icon_mask in hex format, e.g. #909CE1.
        # Corresponds to the JSON property `iconBackgroundColor`
        # @return [String]
        attr_accessor :icon_background_color
      
        # A truncated URL to an icon mask. User can access different icon type by
        # appending type suffix to the end (eg, ".svg" or ".png").
        # Corresponds to the JSON property `iconMaskBaseUri`
        # @return [String]
        attr_accessor :icon_mask_base_uri
      
        # The unique identifier of a place.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A human-readable phone number for the place, in international format.
        # Corresponds to the JSON property `internationalPhoneNumber`
        # @return [String]
        attr_accessor :international_phone_number
      
        # Place provides live music.
        # Corresponds to the JSON property `liveMusic`
        # @return [Boolean]
        attr_accessor :live_music
        alias_method :live_music?, :live_music
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :location
      
        # Place has a children's menu.
        # Corresponds to the JSON property `menuForChildren`
        # @return [Boolean]
        attr_accessor :menu_for_children
        alias_method :menu_for_children?, :menu_for_children
      
        # If this Place is permanently closed and has moved to a new Place, this field
        # contains the new Place's resource name, in `places/`place_id`` format. If this
        # Place moved multiple times, this field will represent the first moved place.
        # This field will not be populated if this Place has not moved.
        # Corresponds to the JSON property `movedPlace`
        # @return [String]
        attr_accessor :moved_place
      
        # If this Place is permanently closed and has moved to a new Place, this field
        # contains the new Place's place ID. If this Place moved multiple times, this
        # field will represent the first moved Place. This field will not be populated
        # if this Place has not moved.
        # Corresponds to the JSON property `movedPlaceId`
        # @return [String]
        attr_accessor :moved_place_id
      
        # This Place's resource name, in `places/`place_id`` format. Can be used to look
        # up the Place.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A human-readable phone number for the place, in national format.
        # Corresponds to the JSON property `nationalPhoneNumber`
        # @return [String]
        attr_accessor :national_phone_number
      
        # A summary of points of interest near the place.
        # Corresponds to the JSON property `neighborhoodSummary`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceNeighborhoodSummary]
        attr_accessor :neighborhood_summary
      
        # Place provides outdoor seating.
        # Corresponds to the JSON property `outdoorSeating`
        # @return [Boolean]
        attr_accessor :outdoor_seating
        alias_method :outdoor_seating?, :outdoor_seating
      
        # Information about parking options for the place. A parking lot could support
        # more than one option at the same time.
        # Corresponds to the JSON property `parkingOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions]
        attr_accessor :parking_options
      
        # Payment options the place accepts.
        # Corresponds to the JSON property `paymentOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions]
        attr_accessor :payment_options
      
        # Information (including references) about photos of this place. A maximum of 10
        # photos can be returned.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo>]
        attr_accessor :photos
      
        # Plus code (http://plus.codes) is a location reference with two formats: global
        # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
        # compound code, replacing the prefix with a reference location.
        # Corresponds to the JSON property `plusCode`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode]
        attr_accessor :plus_code
      
        # Represents a postal address, such as for postal delivery or payments addresses.
        # With a postal address, a postal service can deliver items to a premise, P.O.
        # box, or similar. A postal address is not intended to model geographical
        # locations like roads, towns, or mountains. In typical usage, an address would
        # be created by user input or from importing existing data, depending on the
        # type of process. Advice on address input or editing: - Use an
        # internationalization-ready address widget such as https://github.com/google/
        # libaddressinput. - Users should not be presented with UI elements for input or
        # editing of fields outside countries where that field is used. For more
        # guidance on how to use this schema, see: https://support.google.com/business/
        # answer/6397478.
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::PlacesV1::GoogleTypePostalAddress]
        attr_accessor :postal_address
      
        # Price level of the place.
        # Corresponds to the JSON property `priceLevel`
        # @return [String]
        attr_accessor :price_level
      
        # The price range associated with a Place. `end_price` could be unset, which
        # indicates a range without upper bound (e.g. "More than $100").
        # Corresponds to the JSON property `priceRange`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PriceRange]
        attr_accessor :price_range
      
        # The primary type of the given result. This type must be one of the Places API
        # supported types. For example, "restaurant", "cafe", "airport", etc. A place
        # can only have a single primary type. For the complete list of possible values,
        # see Table A and Table B at https://developers.google.com/maps/documentation/
        # places/web-service/place-types. The primary type may be missing if the place's
        # primary type is not a supported type. When a primary type is present, it is
        # always one of the types in the `types` field.
        # Corresponds to the JSON property `primaryType`
        # @return [String]
        attr_accessor :primary_type
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `primaryTypeDisplayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :primary_type_display_name
      
        # Indicates whether the place is a pure service area business. Pure service area
        # business is a business that visits or delivers to customers directly but does
        # not serve customers at their business address. For example, businesses like
        # cleaning services or plumbers. Those businesses may not have a physical
        # address or location on Google Maps.
        # Corresponds to the JSON property `pureServiceAreaBusiness`
        # @return [Boolean]
        attr_accessor :pure_service_area_business
        alias_method :pure_service_area_business?, :pure_service_area_business
      
        # A rating between 1.0 and 5.0, based on user reviews of this place.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # Information about business hour of the place.
        # Corresponds to the JSON property `regularOpeningHours`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours]
        attr_accessor :regular_opening_hours
      
        # Contains an array of entries for information about regular secondary hours of
        # a business. Secondary hours are different from a business's main hours. For
        # example, a restaurant can specify drive through hours or delivery hours as its
        # secondary hours. This field populates the type subfield, which draws from a
        # predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP, or
        # TAKEOUT) based on the types of the place.
        # Corresponds to the JSON property `regularSecondaryOpeningHours`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours>]
        attr_accessor :regular_secondary_opening_hours
      
        # Specifies if the place supports reservations.
        # Corresponds to the JSON property `reservable`
        # @return [Boolean]
        attr_accessor :reservable
        alias_method :reservable?, :reservable
      
        # Place has restroom.
        # Corresponds to the JSON property `restroom`
        # @return [Boolean]
        attr_accessor :restroom
        alias_method :restroom?, :restroom
      
        # AI-generated summary of the place using user reviews.
        # Corresponds to the JSON property `reviewSummary`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceReviewSummary]
        attr_accessor :review_summary
      
        # List of reviews about this place, sorted by relevance. A maximum of 5 reviews
        # can be returned.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Review>]
        attr_accessor :reviews
      
        # Specifies if the place serves beer.
        # Corresponds to the JSON property `servesBeer`
        # @return [Boolean]
        attr_accessor :serves_beer
        alias_method :serves_beer?, :serves_beer
      
        # Specifies if the place serves breakfast.
        # Corresponds to the JSON property `servesBreakfast`
        # @return [Boolean]
        attr_accessor :serves_breakfast
        alias_method :serves_breakfast?, :serves_breakfast
      
        # Specifies if the place serves brunch.
        # Corresponds to the JSON property `servesBrunch`
        # @return [Boolean]
        attr_accessor :serves_brunch
        alias_method :serves_brunch?, :serves_brunch
      
        # Place serves cocktails.
        # Corresponds to the JSON property `servesCocktails`
        # @return [Boolean]
        attr_accessor :serves_cocktails
        alias_method :serves_cocktails?, :serves_cocktails
      
        # Place serves coffee.
        # Corresponds to the JSON property `servesCoffee`
        # @return [Boolean]
        attr_accessor :serves_coffee
        alias_method :serves_coffee?, :serves_coffee
      
        # Place serves dessert.
        # Corresponds to the JSON property `servesDessert`
        # @return [Boolean]
        attr_accessor :serves_dessert
        alias_method :serves_dessert?, :serves_dessert
      
        # Specifies if the place serves dinner.
        # Corresponds to the JSON property `servesDinner`
        # @return [Boolean]
        attr_accessor :serves_dinner
        alias_method :serves_dinner?, :serves_dinner
      
        # Specifies if the place serves lunch.
        # Corresponds to the JSON property `servesLunch`
        # @return [Boolean]
        attr_accessor :serves_lunch
        alias_method :serves_lunch?, :serves_lunch
      
        # Specifies if the place serves vegetarian food.
        # Corresponds to the JSON property `servesVegetarianFood`
        # @return [Boolean]
        attr_accessor :serves_vegetarian_food
        alias_method :serves_vegetarian_food?, :serves_vegetarian_food
      
        # Specifies if the place serves wine.
        # Corresponds to the JSON property `servesWine`
        # @return [Boolean]
        attr_accessor :serves_wine
        alias_method :serves_wine?, :serves_wine
      
        # A short, human-readable address for this place.
        # Corresponds to the JSON property `shortFormattedAddress`
        # @return [String]
        attr_accessor :short_formatted_address
      
        # A list of sub-destinations related to the place.
        # Corresponds to the JSON property `subDestinations`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination>]
        attr_accessor :sub_destinations
      
        # Specifies if the business supports takeout.
        # Corresponds to the JSON property `takeout`
        # @return [Boolean]
        attr_accessor :takeout
        alias_method :takeout?, :takeout
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::PlacesV1::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # A set of type tags for this result. For example, "political" and "locality".
        # For the complete list of possible values, see Table A and Table B at https://
        # developers.google.com/maps/documentation/places/web-service/place-types
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        # The total number of reviews (with or without text) for this place.
        # Corresponds to the JSON property `userRatingCount`
        # @return [Fixnum]
        attr_accessor :user_rating_count
      
        # Number of minutes this place's timezone is currently offset from UTC. This is
        # expressed in minutes to support timezones that are offset by fractions of an
        # hour, e.g. X hours and 15 minutes.
        # Corresponds to the JSON property `utcOffsetMinutes`
        # @return [Fixnum]
        attr_accessor :utc_offset_minutes
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `viewport`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :viewport
      
        # The authoritative website for this place, e.g. a business' homepage. Note that
        # for places that are part of a chain (e.g. an IKEA store), this will usually be
        # the website for the individual store, not the overall chain.
        # Corresponds to the JSON property `websiteUri`
        # @return [String]
        attr_accessor :website_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_options = args[:accessibility_options] if args.key?(:accessibility_options)
          @address_components = args[:address_components] if args.key?(:address_components)
          @address_descriptor = args[:address_descriptor] if args.key?(:address_descriptor)
          @adr_format_address = args[:adr_format_address] if args.key?(:adr_format_address)
          @allows_dogs = args[:allows_dogs] if args.key?(:allows_dogs)
          @attributions = args[:attributions] if args.key?(:attributions)
          @business_status = args[:business_status] if args.key?(:business_status)
          @consumer_alert = args[:consumer_alert] if args.key?(:consumer_alert)
          @containing_places = args[:containing_places] if args.key?(:containing_places)
          @curbside_pickup = args[:curbside_pickup] if args.key?(:curbside_pickup)
          @current_opening_hours = args[:current_opening_hours] if args.key?(:current_opening_hours)
          @current_secondary_opening_hours = args[:current_secondary_opening_hours] if args.key?(:current_secondary_opening_hours)
          @delivery = args[:delivery] if args.key?(:delivery)
          @dine_in = args[:dine_in] if args.key?(:dine_in)
          @display_name = args[:display_name] if args.key?(:display_name)
          @editorial_summary = args[:editorial_summary] if args.key?(:editorial_summary)
          @ev_charge_amenity_summary = args[:ev_charge_amenity_summary] if args.key?(:ev_charge_amenity_summary)
          @ev_charge_options = args[:ev_charge_options] if args.key?(:ev_charge_options)
          @formatted_address = args[:formatted_address] if args.key?(:formatted_address)
          @fuel_options = args[:fuel_options] if args.key?(:fuel_options)
          @generative_summary = args[:generative_summary] if args.key?(:generative_summary)
          @good_for_children = args[:good_for_children] if args.key?(:good_for_children)
          @good_for_groups = args[:good_for_groups] if args.key?(:good_for_groups)
          @good_for_watching_sports = args[:good_for_watching_sports] if args.key?(:good_for_watching_sports)
          @google_maps_links = args[:google_maps_links] if args.key?(:google_maps_links)
          @google_maps_type_label = args[:google_maps_type_label] if args.key?(:google_maps_type_label)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @icon_background_color = args[:icon_background_color] if args.key?(:icon_background_color)
          @icon_mask_base_uri = args[:icon_mask_base_uri] if args.key?(:icon_mask_base_uri)
          @id = args[:id] if args.key?(:id)
          @international_phone_number = args[:international_phone_number] if args.key?(:international_phone_number)
          @live_music = args[:live_music] if args.key?(:live_music)
          @location = args[:location] if args.key?(:location)
          @menu_for_children = args[:menu_for_children] if args.key?(:menu_for_children)
          @moved_place = args[:moved_place] if args.key?(:moved_place)
          @moved_place_id = args[:moved_place_id] if args.key?(:moved_place_id)
          @name = args[:name] if args.key?(:name)
          @national_phone_number = args[:national_phone_number] if args.key?(:national_phone_number)
          @neighborhood_summary = args[:neighborhood_summary] if args.key?(:neighborhood_summary)
          @outdoor_seating = args[:outdoor_seating] if args.key?(:outdoor_seating)
          @parking_options = args[:parking_options] if args.key?(:parking_options)
          @payment_options = args[:payment_options] if args.key?(:payment_options)
          @photos = args[:photos] if args.key?(:photos)
          @plus_code = args[:plus_code] if args.key?(:plus_code)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @price_level = args[:price_level] if args.key?(:price_level)
          @price_range = args[:price_range] if args.key?(:price_range)
          @primary_type = args[:primary_type] if args.key?(:primary_type)
          @primary_type_display_name = args[:primary_type_display_name] if args.key?(:primary_type_display_name)
          @pure_service_area_business = args[:pure_service_area_business] if args.key?(:pure_service_area_business)
          @rating = args[:rating] if args.key?(:rating)
          @regular_opening_hours = args[:regular_opening_hours] if args.key?(:regular_opening_hours)
          @regular_secondary_opening_hours = args[:regular_secondary_opening_hours] if args.key?(:regular_secondary_opening_hours)
          @reservable = args[:reservable] if args.key?(:reservable)
          @restroom = args[:restroom] if args.key?(:restroom)
          @review_summary = args[:review_summary] if args.key?(:review_summary)
          @reviews = args[:reviews] if args.key?(:reviews)
          @serves_beer = args[:serves_beer] if args.key?(:serves_beer)
          @serves_breakfast = args[:serves_breakfast] if args.key?(:serves_breakfast)
          @serves_brunch = args[:serves_brunch] if args.key?(:serves_brunch)
          @serves_cocktails = args[:serves_cocktails] if args.key?(:serves_cocktails)
          @serves_coffee = args[:serves_coffee] if args.key?(:serves_coffee)
          @serves_dessert = args[:serves_dessert] if args.key?(:serves_dessert)
          @serves_dinner = args[:serves_dinner] if args.key?(:serves_dinner)
          @serves_lunch = args[:serves_lunch] if args.key?(:serves_lunch)
          @serves_vegetarian_food = args[:serves_vegetarian_food] if args.key?(:serves_vegetarian_food)
          @serves_wine = args[:serves_wine] if args.key?(:serves_wine)
          @short_formatted_address = args[:short_formatted_address] if args.key?(:short_formatted_address)
          @sub_destinations = args[:sub_destinations] if args.key?(:sub_destinations)
          @takeout = args[:takeout] if args.key?(:takeout)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @types = args[:types] if args.key?(:types)
          @user_rating_count = args[:user_rating_count] if args.key?(:user_rating_count)
          @utc_offset_minutes = args[:utc_offset_minutes] if args.key?(:utc_offset_minutes)
          @viewport = args[:viewport] if args.key?(:viewport)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
        end
      end
      
      # Information about the accessibility options a place offers.
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        include Google::Apis::Core::Hashable
      
        # Places has wheelchair accessible entrance.
        # Corresponds to the JSON property `wheelchairAccessibleEntrance`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_entrance
        alias_method :wheelchair_accessible_entrance?, :wheelchair_accessible_entrance
      
        # Place offers wheelchair accessible parking.
        # Corresponds to the JSON property `wheelchairAccessibleParking`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_parking
        alias_method :wheelchair_accessible_parking?, :wheelchair_accessible_parking
      
        # Place has wheelchair accessible restroom.
        # Corresponds to the JSON property `wheelchairAccessibleRestroom`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_restroom
        alias_method :wheelchair_accessible_restroom?, :wheelchair_accessible_restroom
      
        # Place has wheelchair accessible seating.
        # Corresponds to the JSON property `wheelchairAccessibleSeating`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_seating
        alias_method :wheelchair_accessible_seating?, :wheelchair_accessible_seating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wheelchair_accessible_entrance = args[:wheelchair_accessible_entrance] if args.key?(:wheelchair_accessible_entrance)
          @wheelchair_accessible_parking = args[:wheelchair_accessible_parking] if args.key?(:wheelchair_accessible_parking)
          @wheelchair_accessible_restroom = args[:wheelchair_accessible_restroom] if args.key?(:wheelchair_accessible_restroom)
          @wheelchair_accessible_seating = args[:wheelchair_accessible_seating] if args.key?(:wheelchair_accessible_seating)
        end
      end
      
      # The structured components that form the formatted address, if this information
      # is available.
      class GoogleMapsPlacesV1PlaceAddressComponent
        include Google::Apis::Core::Hashable
      
        # The language used to format this components, in CLDR notation.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The full text description or name of the address component. For example, an
        # address component for the country Australia may have a long_name of "Australia"
        # .
        # Corresponds to the JSON property `longText`
        # @return [String]
        attr_accessor :long_text
      
        # An abbreviated textual name for the address component, if available. For
        # example, an address component for the country of Australia may have a
        # short_name of "AU".
        # Corresponds to the JSON property `shortText`
        # @return [String]
        attr_accessor :short_text
      
        # An array indicating the type(s) of the address component.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @long_text = args[:long_text] if args.key?(:long_text)
          @short_text = args[:short_text] if args.key?(:short_text)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Information about data providers of this place.
      class GoogleMapsPlacesV1PlaceAttribution
        include Google::Apis::Core::Hashable
      
        # Name of the Place's data provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # URI to the Place's data provider.
        # Corresponds to the JSON property `providerUri`
        # @return [String]
        attr_accessor :provider_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider = args[:provider] if args.key?(:provider)
          @provider_uri = args[:provider_uri] if args.key?(:provider_uri)
        end
      end
      
      # The consumer alert message for the place when we detect suspicious review
      # activity on a business or a business violates our policies.
      class GoogleMapsPlacesV1PlaceConsumerAlert
        include Google::Apis::Core::Hashable
      
        # The details of the consumer alert message.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceConsumerAlertDetails]
        attr_accessor :details
      
        # The language code of the consumer alert message. This is a BCP 47 language
        # code.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The overview of the consumer alert message.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @language_code = args[:language_code] if args.key?(:language_code)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # The details of the consumer alert message.
      class GoogleMapsPlacesV1PlaceConsumerAlertDetails
        include Google::Apis::Core::Hashable
      
        # The link to show together with the description to provide more information.
        # Corresponds to the JSON property `aboutLink`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink]
        attr_accessor :about_link
      
        # The description of the consumer alert message.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The title to show together with the description.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @about_link = args[:about_link] if args.key?(:about_link)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The link to show together with the description to provide more information.
      class GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink
        include Google::Apis::Core::Hashable
      
        # The title to show for the link.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The uri of the link.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Info about the place in which this place is located.
      class GoogleMapsPlacesV1PlaceContainingPlace
        include Google::Apis::Core::Hashable
      
        # The place id of the place in which this place is located.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The resource name of the place in which this place is located.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The summary of amenities near the EV charging station. This only applies to
      # places with type `electric_vehicle_charging_station`. The `overview` field is
      # guaranteed to be provided while the other fields are optional.
      class GoogleMapsPlacesV1PlaceEvChargeAmenitySummary
        include Google::Apis::Core::Hashable
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `coffee`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :coffee
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `disclosureText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :disclosure_text
      
        # A link where users can flag a problem with the summary.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :overview
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `restaurant`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :restaurant
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `store`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coffee = args[:coffee] if args.key?(:coffee)
          @disclosure_text = args[:disclosure_text] if args.key?(:disclosure_text)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @overview = args[:overview] if args.key?(:overview)
          @restaurant = args[:restaurant] if args.key?(:restaurant)
          @store = args[:store] if args.key?(:store)
        end
      end
      
      # AI-generated summary of the place.
      class GoogleMapsPlacesV1PlaceGenerativeSummary
        include Google::Apis::Core::Hashable
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `disclosureText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :disclosure_text
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :overview
      
        # A link where users can flag a problem with the overview summary.
        # Corresponds to the JSON property `overviewFlagContentUri`
        # @return [String]
        attr_accessor :overview_flag_content_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disclosure_text = args[:disclosure_text] if args.key?(:disclosure_text)
          @overview = args[:overview] if args.key?(:overview)
          @overview_flag_content_uri = args[:overview_flag_content_uri] if args.key?(:overview_flag_content_uri)
        end
      end
      
      # Links to trigger different Google Maps actions.
      class GoogleMapsPlacesV1PlaceGoogleMapsLinks
        include Google::Apis::Core::Hashable
      
        # A link to show the directions to the place. The link only populates the
        # destination location and uses the default travel mode `DRIVE`.
        # Corresponds to the JSON property `directionsUri`
        # @return [String]
        attr_accessor :directions_uri
      
        # A link to show photos of this place on Google Maps.
        # Corresponds to the JSON property `photosUri`
        # @return [String]
        attr_accessor :photos_uri
      
        # A link to show this place.
        # Corresponds to the JSON property `placeUri`
        # @return [String]
        attr_accessor :place_uri
      
        # A link to show reviews of this place on Google Maps.
        # Corresponds to the JSON property `reviewsUri`
        # @return [String]
        attr_accessor :reviews_uri
      
        # A link to write a review for this place on Google Maps.
        # Corresponds to the JSON property `writeAReviewUri`
        # @return [String]
        attr_accessor :write_a_review_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directions_uri = args[:directions_uri] if args.key?(:directions_uri)
          @photos_uri = args[:photos_uri] if args.key?(:photos_uri)
          @place_uri = args[:place_uri] if args.key?(:place_uri)
          @reviews_uri = args[:reviews_uri] if args.key?(:reviews_uri)
          @write_a_review_uri = args[:write_a_review_uri] if args.key?(:write_a_review_uri)
        end
      end
      
      # A summary of points of interest near the place.
      class GoogleMapsPlacesV1PlaceNeighborhoodSummary
        include Google::Apis::Core::Hashable
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `description`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :description
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `disclosureText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :disclosure_text
      
        # A link where users can flag a problem with the summary.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # A block of content that can be served individually.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disclosure_text = args[:disclosure_text] if args.key?(:disclosure_text)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # Information about business hour of the place.
      class GoogleMapsPlacesV1PlaceOpeningHours
        include Google::Apis::Core::Hashable
      
        # The next time the current opening hours period ends up to 7 days in the future.
        # This field is only populated if the opening hours period is active at the
        # time of serving the request.
        # Corresponds to the JSON property `nextCloseTime`
        # @return [String]
        attr_accessor :next_close_time
      
        # The next time the current opening hours period starts up to 7 days in the
        # future. This field is only populated if the opening hours period is not active
        # at the time of serving the request.
        # Corresponds to the JSON property `nextOpenTime`
        # @return [String]
        attr_accessor :next_open_time
      
        # Whether the opening hours period is currently active. For regular opening
        # hours and current opening hours, this field means whether the place is open.
        # For secondary opening hours and current secondary opening hours, this field
        # means whether the secondary hours of this place is active.
        # Corresponds to the JSON property `openNow`
        # @return [Boolean]
        attr_accessor :open_now
        alias_method :open_now?, :open_now
      
        # The periods that this place is open during the week. The periods are in
        # chronological order, in the place-local timezone. An empty (but not absent)
        # value indicates a place that is never open, e.g. because it is closed
        # temporarily for renovations. The starting day of `periods` is NOT fixed and
        # should not be assumed to be Sunday. The API determines the start day based on
        # a variety of factors. For example, for a 24/7 business, the first period may
        # begin on the day of the request. For other businesses, it might be the first
        # day of the week that they are open. NOTE: The ordering of the `periods` array
        # is independent of the ordering of the `weekday_descriptions` array. Do not
        # assume they will begin on the same day.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod>]
        attr_accessor :periods
      
        # A type string used to identify the type of secondary hours.
        # Corresponds to the JSON property `secondaryHoursType`
        # @return [String]
        attr_accessor :secondary_hours_type
      
        # Structured information for special days that fall within the period that the
        # returned opening hours cover. Special days are days that could impact the
        # business hours of a place, e.g. Christmas day. Set for current_opening_hours
        # and current_secondary_opening_hours if there are exceptional hours.
        # Corresponds to the JSON property `specialDays`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay>]
        attr_accessor :special_days
      
        # Localized strings describing the opening hours of this place, one string for
        # each day of the week. NOTE: The order of the days and the start of the week is
        # determined by the locale (language and region). The ordering of the `periods`
        # array is independent of the ordering of the `weekday_descriptions` array. Do
        # not assume they will begin on the same day. Will be empty if the hours are
        # unknown or could not be converted to localized text. Example: "Sun: 18:00–06:
        # 00"
        # Corresponds to the JSON property `weekdayDescriptions`
        # @return [Array<String>]
        attr_accessor :weekday_descriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_close_time = args[:next_close_time] if args.key?(:next_close_time)
          @next_open_time = args[:next_open_time] if args.key?(:next_open_time)
          @open_now = args[:open_now] if args.key?(:open_now)
          @periods = args[:periods] if args.key?(:periods)
          @secondary_hours_type = args[:secondary_hours_type] if args.key?(:secondary_hours_type)
          @special_days = args[:special_days] if args.key?(:special_days)
          @weekday_descriptions = args[:weekday_descriptions] if args.key?(:weekday_descriptions)
        end
      end
      
      # A period the place remains in open_now status.
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        include Google::Apis::Core::Hashable
      
        # Status changing points.
        # Corresponds to the JSON property `close`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint]
        attr_accessor :close
      
        # Status changing points.
        # Corresponds to the JSON property `open`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint]
        attr_accessor :open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close = args[:close] if args.key?(:close)
          @open = args[:open] if args.key?(:open)
        end
      end
      
      # Status changing points.
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PlacesV1::GoogleTypeDate]
        attr_accessor :date
      
        # A day of the week, as an integer in the range 0-6. 0 is Sunday, 1 is Monday,
        # etc.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # The hour in 24 hour format. Ranges from 0 to 23.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # The minute. Ranges from 0 to 59.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        # Whether or not this endpoint was truncated. Truncation occurs when the real
        # hours are outside the times we are willing to return hours between, so we
        # truncate the hours back to these boundaries. This ensures that at most 24 * 7
        # hours from midnight of the day of the request are returned.
        # Corresponds to the JSON property `truncated`
        # @return [Boolean]
        attr_accessor :truncated
        alias_method :truncated?, :truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @day = args[:day] if args.key?(:day)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @truncated = args[:truncated] if args.key?(:truncated)
        end
      end
      
      # Structured information for special days that fall within the period that the
      # returned opening hours cover. Special days are days that could impact the
      # business hours of a place, e.g. Christmas day.
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PlacesV1::GoogleTypeDate]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Information about parking options for the place. A parking lot could support
      # more than one option at the same time.
      class GoogleMapsPlacesV1PlaceParkingOptions
        include Google::Apis::Core::Hashable
      
        # Place offers free garage parking.
        # Corresponds to the JSON property `freeGarageParking`
        # @return [Boolean]
        attr_accessor :free_garage_parking
        alias_method :free_garage_parking?, :free_garage_parking
      
        # Place offers free parking lots.
        # Corresponds to the JSON property `freeParkingLot`
        # @return [Boolean]
        attr_accessor :free_parking_lot
        alias_method :free_parking_lot?, :free_parking_lot
      
        # Place offers free street parking.
        # Corresponds to the JSON property `freeStreetParking`
        # @return [Boolean]
        attr_accessor :free_street_parking
        alias_method :free_street_parking?, :free_street_parking
      
        # Place offers paid garage parking.
        # Corresponds to the JSON property `paidGarageParking`
        # @return [Boolean]
        attr_accessor :paid_garage_parking
        alias_method :paid_garage_parking?, :paid_garage_parking
      
        # Place offers paid parking lots.
        # Corresponds to the JSON property `paidParkingLot`
        # @return [Boolean]
        attr_accessor :paid_parking_lot
        alias_method :paid_parking_lot?, :paid_parking_lot
      
        # Place offers paid street parking.
        # Corresponds to the JSON property `paidStreetParking`
        # @return [Boolean]
        attr_accessor :paid_street_parking
        alias_method :paid_street_parking?, :paid_street_parking
      
        # Place offers valet parking.
        # Corresponds to the JSON property `valetParking`
        # @return [Boolean]
        attr_accessor :valet_parking
        alias_method :valet_parking?, :valet_parking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_garage_parking = args[:free_garage_parking] if args.key?(:free_garage_parking)
          @free_parking_lot = args[:free_parking_lot] if args.key?(:free_parking_lot)
          @free_street_parking = args[:free_street_parking] if args.key?(:free_street_parking)
          @paid_garage_parking = args[:paid_garage_parking] if args.key?(:paid_garage_parking)
          @paid_parking_lot = args[:paid_parking_lot] if args.key?(:paid_parking_lot)
          @paid_street_parking = args[:paid_street_parking] if args.key?(:paid_street_parking)
          @valet_parking = args[:valet_parking] if args.key?(:valet_parking)
        end
      end
      
      # Payment options the place accepts.
      class GoogleMapsPlacesV1PlacePaymentOptions
        include Google::Apis::Core::Hashable
      
        # Place accepts cash only as payment. Places with this attribute may still
        # accept other payment methods.
        # Corresponds to the JSON property `acceptsCashOnly`
        # @return [Boolean]
        attr_accessor :accepts_cash_only
        alias_method :accepts_cash_only?, :accepts_cash_only
      
        # Place accepts credit cards as payment.
        # Corresponds to the JSON property `acceptsCreditCards`
        # @return [Boolean]
        attr_accessor :accepts_credit_cards
        alias_method :accepts_credit_cards?, :accepts_credit_cards
      
        # Place accepts debit cards as payment.
        # Corresponds to the JSON property `acceptsDebitCards`
        # @return [Boolean]
        attr_accessor :accepts_debit_cards
        alias_method :accepts_debit_cards?, :accepts_debit_cards
      
        # Place accepts NFC payments.
        # Corresponds to the JSON property `acceptsNfc`
        # @return [Boolean]
        attr_accessor :accepts_nfc
        alias_method :accepts_nfc?, :accepts_nfc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepts_cash_only = args[:accepts_cash_only] if args.key?(:accepts_cash_only)
          @accepts_credit_cards = args[:accepts_credit_cards] if args.key?(:accepts_credit_cards)
          @accepts_debit_cards = args[:accepts_debit_cards] if args.key?(:accepts_debit_cards)
          @accepts_nfc = args[:accepts_nfc] if args.key?(:accepts_nfc)
        end
      end
      
      # Plus code (http://plus.codes) is a location reference with two formats: global
      # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
      # compound code, replacing the prefix with a reference location.
      class GoogleMapsPlacesV1PlacePlusCode
        include Google::Apis::Core::Hashable
      
        # Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the
        # suffix of the global code and replacing the prefix with a formatted name of a
        # reference entity.
        # Corresponds to the JSON property `compoundCode`
        # @return [String]
        attr_accessor :compound_code
      
        # Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000 by 1/
        # 8000 degree area (~14 by 14 meters).
        # Corresponds to the JSON property `globalCode`
        # @return [String]
        attr_accessor :global_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compound_code = args[:compound_code] if args.key?(:compound_code)
          @global_code = args[:global_code] if args.key?(:global_code)
        end
      end
      
      # AI-generated summary of the place using user reviews.
      class GoogleMapsPlacesV1PlaceReviewSummary
        include Google::Apis::Core::Hashable
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `disclosureText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :disclosure_text
      
        # A link where users can flag a problem with the summary.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # A link to show reviews of this place on Google Maps.
        # Corresponds to the JSON property `reviewsUri`
        # @return [String]
        attr_accessor :reviews_uri
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disclosure_text = args[:disclosure_text] if args.key?(:disclosure_text)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @reviews_uri = args[:reviews_uri] if args.key?(:reviews_uri)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Sub-destinations are specific places associated with a main place. These
      # provide more specific destinations for users who are searching within a large
      # or complex place, like an airport, national park, university, or stadium. For
      # example, sub-destinations at an airport might include associated terminals and
      # parking lots. Sub-destinations return the place ID and place resource name,
      # which can be used in subsequent Place Details (New) requests to fetch richer
      # details, including the sub-destination's display name and location.
      class GoogleMapsPlacesV1PlaceSubDestination
        include Google::Apis::Core::Hashable
      
        # The place id of the sub-destination.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The resource name of the sub-destination.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A route polyline. Only supports an [encoded polyline](https://developers.
      # google.com/maps/documentation/utilities/polylinealgorithm), which can be
      # passed as a string and includes compression with minimal lossiness. This is
      # the Routes API default output.
      class GoogleMapsPlacesV1Polyline
        include Google::Apis::Core::Hashable
      
        # An [encoded polyline](https://developers.google.com/maps/documentation/
        # utilities/polylinealgorithm), as returned by the [Routes API by default](https:
        # //developers.google.com/maps/documentation/routes/reference/rest/v2/TopLevel/
        # computeRoutes#polylineencoding). See the [encoder](https://developers.google.
        # com/maps/documentation/utilities/polylineutility) and [decoder](https://
        # developers.google.com/maps/documentation/routes/polylinedecoder) tools.
        # Corresponds to the JSON property `encodedPolyline`
        # @return [String]
        attr_accessor :encoded_polyline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_polyline = args[:encoded_polyline] if args.key?(:encoded_polyline)
        end
      end
      
      # The price range associated with a Place. `end_price` could be unset, which
      # indicates a range without upper bound (e.g. "More than $100").
      class GoogleMapsPlacesV1PriceRange
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `endPrice`
        # @return [Google::Apis::PlacesV1::GoogleTypeMoney]
        attr_accessor :end_price
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `startPrice`
        # @return [Google::Apis::PlacesV1::GoogleTypeMoney]
        attr_accessor :start_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_price = args[:end_price] if args.key?(:end_price)
          @start_price = args[:start_price] if args.key?(:start_price)
        end
      end
      
      # Information about a review of a place.
      class GoogleMapsPlacesV1Review
        include Google::Apis::Core::Hashable
      
        # Information about the author of the UGC data. Used in Photo, and Review.
        # Corresponds to the JSON property `authorAttribution`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution]
        attr_accessor :author_attribution
      
        # A link where users can flag a problem with the review.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # A link to show the review on Google Maps.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # A reference representing this place review which may be used to look up this
        # place review again (also called the API "resource" name: `places/`place_id`/
        # reviews/`review``).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `originalText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :original_text
      
        # Timestamp for the review.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # A number between 1.0 and 5.0, also called the number of stars.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # A string of formatted recent time, expressing the review time relative to the
        # current time in a form appropriate for the language and country.
        # Corresponds to the JSON property `relativePublishTimeDescription`
        # @return [String]
        attr_accessor :relative_publish_time_description
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :text
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `visitDate`
        # @return [Google::Apis::PlacesV1::GoogleTypeDate]
        attr_accessor :visit_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_attribution = args[:author_attribution] if args.key?(:author_attribution)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @name = args[:name] if args.key?(:name)
          @original_text = args[:original_text] if args.key?(:original_text)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @rating = args[:rating] if args.key?(:rating)
          @relative_publish_time_description = args[:relative_publish_time_description] if args.key?(:relative_publish_time_description)
          @text = args[:text] if args.key?(:text)
          @visit_date = args[:visit_date] if args.key?(:visit_date)
        end
      end
      
      # Encapsulates a set of optional conditions to satisfy when calculating the
      # routes.
      class GoogleMapsPlacesV1RouteModifiers
        include Google::Apis::Core::Hashable
      
        # Optional. When set to true, avoids ferries where reasonable, giving preference
        # to routes not containing ferries. Applies only to the `DRIVE` and `TWO_WHEELER`
        # `TravelMode`.
        # Corresponds to the JSON property `avoidFerries`
        # @return [Boolean]
        attr_accessor :avoid_ferries
        alias_method :avoid_ferries?, :avoid_ferries
      
        # Optional. When set to true, avoids highways where reasonable, giving
        # preference to routes not containing highways. Applies only to the `DRIVE` and `
        # TWO_WHEELER` `TravelMode`.
        # Corresponds to the JSON property `avoidHighways`
        # @return [Boolean]
        attr_accessor :avoid_highways
        alias_method :avoid_highways?, :avoid_highways
      
        # Optional. When set to true, avoids navigating indoors where reasonable, giving
        # preference to routes not containing indoor navigation. Applies only to the `
        # WALK` `TravelMode`.
        # Corresponds to the JSON property `avoidIndoor`
        # @return [Boolean]
        attr_accessor :avoid_indoor
        alias_method :avoid_indoor?, :avoid_indoor
      
        # Optional. When set to true, avoids toll roads where reasonable, giving
        # preference to routes not containing toll roads. Applies only to the `DRIVE`
        # and `TWO_WHEELER` `TravelMode`.
        # Corresponds to the JSON property `avoidTolls`
        # @return [Boolean]
        attr_accessor :avoid_tolls
        alias_method :avoid_tolls?, :avoid_tolls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_ferries = args[:avoid_ferries] if args.key?(:avoid_ferries)
          @avoid_highways = args[:avoid_highways] if args.key?(:avoid_highways)
          @avoid_indoor = args[:avoid_indoor] if args.key?(:avoid_indoor)
          @avoid_tolls = args[:avoid_tolls] if args.key?(:avoid_tolls)
        end
      end
      
      # Parameters to configure the routing calculations to the places in the response,
      # both along a route (where result ranking will be influenced) and for
      # calculating travel times on results.
      class GoogleMapsPlacesV1RoutingParameters
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :origin
      
        # Encapsulates a set of optional conditions to satisfy when calculating the
        # routes.
        # Corresponds to the JSON property `routeModifiers`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1RouteModifiers]
        attr_accessor :route_modifiers
      
        # Optional. Specifies how to compute the routing summaries. The server attempts
        # to use the selected routing preference to compute the route. The traffic aware
        # routing preference is only available for the `DRIVE` or `TWO_WHEELER` `
        # travelMode`.
        # Corresponds to the JSON property `routingPreference`
        # @return [String]
        attr_accessor :routing_preference
      
        # Optional. The travel mode.
        # Corresponds to the JSON property `travelMode`
        # @return [String]
        attr_accessor :travel_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @origin = args[:origin] if args.key?(:origin)
          @route_modifiers = args[:route_modifiers] if args.key?(:route_modifiers)
          @routing_preference = args[:routing_preference] if args.key?(:routing_preference)
          @travel_mode = args[:travel_mode] if args.key?(:travel_mode)
        end
      end
      
      # The duration and distance from the routing origin to a place in the response,
      # and a second leg from that place to the destination, if requested. **Note:**
      # Adding `routingSummaries` in the field mask without also including either the `
      # routingParameters.origin` parameter or the `searchAlongRouteParameters.
      # polyline.encodedPolyline` parameter in the request causes an error.
      class GoogleMapsPlacesV1RoutingSummary
        include Google::Apis::Core::Hashable
      
        # A link to show directions on Google Maps using the waypoints from the given
        # routing summary. The route generated by this link is not guaranteed to be the
        # same as the route used to generate the routing summary. The link uses
        # information provided in the request, from fields including `routingParameters`
        # and `searchAlongRouteParameters` when applicable, to generate the directions
        # link.
        # Corresponds to the JSON property `directionsUri`
        # @return [String]
        attr_accessor :directions_uri
      
        # The legs of the trip. When you calculate travel duration and distance from a
        # set origin, `legs` contains a single leg containing the duration and distance
        # from the origin to the destination. When you do a search along route, `legs`
        # contains two legs: one from the origin to place, and one from the place to the
        # destination.
        # Corresponds to the JSON property `legs`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummaryLeg>]
        attr_accessor :legs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directions_uri = args[:directions_uri] if args.key?(:directions_uri)
          @legs = args[:legs] if args.key?(:legs)
        end
      end
      
      # A leg is a single portion of a journey from one location to another.
      class GoogleMapsPlacesV1RoutingSummaryLeg
        include Google::Apis::Core::Hashable
      
        # The distance of this leg of the trip.
        # Corresponds to the JSON property `distanceMeters`
        # @return [Fixnum]
        attr_accessor :distance_meters
      
        # The time it takes to complete this leg of the trip.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distance_meters = args[:distance_meters] if args.key?(:distance_meters)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # Request proto for Search Nearby.
      class GoogleMapsPlacesV1SearchNearbyRequest
        include Google::Apis::Core::Hashable
      
        # Excluded primary Place type (e.g. "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If there are any
        # conflicting primary types, i.e. a type appears in both included_primary_types
        # and excluded_primary_types, an INVALID_ARGUMENT error is returned. If a Place
        # type is specified with multiple type restrictions, only places that satisfy
        # all of the restrictions are returned. For example, if we have `included_types =
        # ["restaurant"], excluded_primary_types = ["restaurant"]`, the returned places
        # provide "restaurant" related services but do not operate primarily as "
        # restaurants".
        # Corresponds to the JSON property `excludedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :excluded_primary_types
      
        # Excluded Place type (eg, "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If the client
        # provides both included_types (e.g. restaurant) and excluded_types (e.g. cafe),
        # then the response should include places that are restaurant but not cafe. The
        # response includes places that match at least one of the included_types and
        # none of the excluded_types. If there are any conflicting types, i.e. a type
        # appears in both included_types and excluded_types, an INVALID_ARGUMENT error
        # is returned. If a Place type is specified with multiple type restrictions,
        # only places that satisfy all of the restrictions are returned. For example, if
        # we have `included_types = ["restaurant"], excluded_primary_types = ["
        # restaurant"]`, the returned places provide "restaurant" related services but
        # do not operate primarily as "restaurants".
        # Corresponds to the JSON property `excludedTypes`
        # @return [Array<String>]
        attr_accessor :excluded_types
      
        # Included primary Place type (e.g. "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. A
        # place can only have a single primary type from the supported types table
        # associated with it. Up to 50 types from [Table A](https://developers.google.
        # com/maps/documentation/places/web-service/place-types#table-a) may be
        # specified. If there are any conflicting primary types, i.e. a type appears in
        # both included_primary_types and excluded_primary_types, an INVALID_ARGUMENT
        # error is returned. If a Place type is specified with multiple type
        # restrictions, only places that satisfy all of the restrictions are returned.
        # For example, if we have `included_types = ["restaurant"],
        # excluded_primary_types = ["restaurant"]`, the returned places provide "
        # restaurant" related services but do not operate primarily as "restaurants".
        # Corresponds to the JSON property `includedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :included_primary_types
      
        # Included Place type (eg, "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If there are any
        # conflicting types, i.e. a type appears in both included_types and
        # excluded_types, an INVALID_ARGUMENT error is returned. If a Place type is
        # specified with multiple type restrictions, only places that satisfy all of the
        # restrictions are returned. For example, if we have `included_types = ["
        # restaurant"], excluded_primary_types = ["restaurant"]`, the returned places
        # provide "restaurant" related services but do not operate primarily as "
        # restaurants".
        # Corresponds to the JSON property `includedTypes`
        # @return [Array<String>]
        attr_accessor :included_types
      
        # Place details will be displayed with the preferred language if available. If
        # the language code is unspecified or unrecognized, place details of any
        # language may be returned, with a preference for English if such details exist.
        # Current list of supported languages: https://developers.google.com/maps/faq#
        # languagesupport.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The region to search.
        # Corresponds to the JSON property `locationRestriction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction]
        attr_accessor :location_restriction
      
        # Maximum number of results to return. It must be between 1 and 20 (default),
        # inclusively. If the number is unset, it falls back to the upper limit. If the
        # number is set to negative or exceeds the upper limit, an INVALID_ARGUMENT
        # error is returned.
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        # How results will be ranked in the response.
        # Corresponds to the JSON property `rankPreference`
        # @return [String]
        attr_accessor :rank_preference
      
        # The Unicode country/region code (CLDR) of the location where the request is
        # coming from. This parameter is used to display the place details, like region-
        # specific place name, if available. The parameter can affect results based on
        # applicable law. For more information, see https://www.unicode.org/cldr/charts/
        # latest/supplemental/territory_language_information.html. Note that 3-digit
        # region codes are not currently supported.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Parameters to configure the routing calculations to the places in the response,
        # both along a route (where result ranking will be influenced) and for
        # calculating travel times on results.
        # Corresponds to the JSON property `routingParameters`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters]
        attr_accessor :routing_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_primary_types = args[:excluded_primary_types] if args.key?(:excluded_primary_types)
          @excluded_types = args[:excluded_types] if args.key?(:excluded_types)
          @included_primary_types = args[:included_primary_types] if args.key?(:included_primary_types)
          @included_types = args[:included_types] if args.key?(:included_types)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_restriction = args[:location_restriction] if args.key?(:location_restriction)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
          @rank_preference = args[:rank_preference] if args.key?(:rank_preference)
          @region_code = args[:region_code] if args.key?(:region_code)
          @routing_parameters = args[:routing_parameters] if args.key?(:routing_parameters)
        end
      end
      
      # The region to search.
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
        end
      end
      
      # Response proto for Search Nearby.
      class GoogleMapsPlacesV1SearchNearbyResponse
        include Google::Apis::Core::Hashable
      
        # A list of places that meets user's requirements like places types, number of
        # places and specific location restriction.
        # Corresponds to the JSON property `places`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Place>]
        attr_accessor :places
      
        # A list of routing summaries where each entry associates to the corresponding
        # place in the same index in the `places` field. If the routing summary is not
        # available for one of the places, it will contain an empty entry. This list
        # should have as many entries as the list of places if requested.
        # Corresponds to the JSON property `routingSummaries`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary>]
        attr_accessor :routing_summaries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @places = args[:places] if args.key?(:places)
          @routing_summaries = args[:routing_summaries] if args.key?(:routing_summaries)
        end
      end
      
      # Request proto for SearchText.
      class GoogleMapsPlacesV1SearchTextRequest
        include Google::Apis::Core::Hashable
      
        # Searchable EV options of a place search request.
        # Corresponds to the JSON property `evOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestEvOptions]
        attr_accessor :ev_options
      
        # Optional. Include pure service area businesses if the field is set to true.
        # Pure service area business is a business that visits or delivers to customers
        # directly but does not serve customers at their business address. For example,
        # businesses like cleaning services or plumbers. Those businesses do not have a
        # physical address or location on Google Maps. Places will not return fields
        # including `location`, `plus_code`, and other location related fields for these
        # businesses.
        # Corresponds to the JSON property `includePureServiceAreaBusinesses`
        # @return [Boolean]
        attr_accessor :include_pure_service_area_businesses
        alias_method :include_pure_service_area_businesses?, :include_pure_service_area_businesses
      
        # The requested place type. Full list of types supported: https://developers.
        # google.com/maps/documentation/places/web-service/place-types. Only support one
        # included type.
        # Corresponds to the JSON property `includedType`
        # @return [String]
        attr_accessor :included_type
      
        # Place details will be displayed with the preferred language if available. If
        # the language code is unspecified or unrecognized, place details of any
        # language may be returned, with a preference for English if such details exist.
        # Current list of supported languages: https://developers.google.com/maps/faq#
        # languagesupport.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The region to search. This location serves as a bias which means results
        # around given location might be returned.
        # Corresponds to the JSON property `locationBias`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias]
        attr_accessor :location_bias
      
        # The region to search. This location serves as a restriction which means
        # results outside given location will not be returned.
        # Corresponds to the JSON property `locationRestriction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction]
        attr_accessor :location_restriction
      
        # Deprecated: Use `page_size` instead. The maximum number of results per page
        # that can be returned. If the number of available results is larger than `
        # max_result_count`, a `next_page_token` is returned which can be passed to `
        # page_token` to get the next page of results in subsequent requests. If 0 or no
        # value is provided, a default of 20 is used. The maximum value is 20; values
        # above 20 will be coerced to 20. Negative values will return an
        # INVALID_ARGUMENT error. If both `max_result_count` and `page_size` are
        # specified, `max_result_count` will be ignored.
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        # Filter out results whose average user rating is strictly less than this limit.
        # A valid value must be a float between 0 and 5 (inclusively) at a 0.5 cadence i.
        # e. [0, 0.5, 1.0, ... , 5.0] inclusively. The input rating will round up to the
        # nearest 0.5(ceiling). For instance, a rating of 0.6 will eliminate all results
        # with a less than 1.0 rating.
        # Corresponds to the JSON property `minRating`
        # @return [Float]
        attr_accessor :min_rating
      
        # Used to restrict the search to places that are currently open. The default is
        # false.
        # Corresponds to the JSON property `openNow`
        # @return [Boolean]
        attr_accessor :open_now
        alias_method :open_now?, :open_now
      
        # Optional. The maximum number of results per page that can be returned. If the
        # number of available results is larger than `page_size`, a `next_page_token` is
        # returned which can be passed to `page_token` to get the next page of results
        # in subsequent requests. If 0 or no value is provided, a default of 20 is used.
        # The maximum value is 20; values above 20 will be set to 20. Negative values
        # will return an INVALID_ARGUMENT error. If both `max_result_count` and `
        # page_size` are specified, `max_result_count` will be ignored.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous TextSearch call. Provide this
        # to retrieve the subsequent page. When paginating, all parameters other than `
        # page_token`, `page_size`, and `max_result_count` provided to TextSearch must
        # match the initial call that provided the page token. Otherwise an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Used to restrict the search to places that are marked as certain price levels.
        # Users can choose any combinations of price levels. Default to select all price
        # levels.
        # Corresponds to the JSON property `priceLevels`
        # @return [Array<String>]
        attr_accessor :price_levels
      
        # How results will be ranked in the response.
        # Corresponds to the JSON property `rankPreference`
        # @return [String]
        attr_accessor :rank_preference
      
        # The Unicode country/region code (CLDR) of the location where the request is
        # coming from. This parameter is used to display the place details, like region-
        # specific place name, if available. The parameter can affect results based on
        # applicable law. For more information, see https://www.unicode.org/cldr/charts/
        # latest/supplemental/territory_language_information.html. Note that 3-digit
        # region codes are not currently supported.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Parameters to configure the routing calculations to the places in the response,
        # both along a route (where result ranking will be influenced) and for
        # calculating travel times on results.
        # Corresponds to the JSON property `routingParameters`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters]
        attr_accessor :routing_parameters
      
        # Specifies a precalculated polyline from the [Routes API](https://developers.
        # google.com/maps/documentation/routes) defining the route to search. Searching
        # along a route is similar to using the `locationBias` or `locationRestriction`
        # request option to bias the search results. However, while the `locationBias`
        # and `locationRestriction` options let you specify a region to bias the search
        # results, this option lets you bias the results along a trip route. Results are
        # not guaranteed to be along the route provided, but rather are ranked within
        # the search area defined by the polyline and, optionally, by the `locationBias`
        # or `locationRestriction` based on minimal detour times from origin to
        # destination. The results might be along an alternate route, especially if the
        # provided polyline does not define an optimal route from origin to destination.
        # Corresponds to the JSON property `searchAlongRouteParameters`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters]
        attr_accessor :search_along_route_parameters
      
        # Used to set strict type filtering for included_type. If set to true, only
        # results of the same type will be returned. Default to false.
        # Corresponds to the JSON property `strictTypeFiltering`
        # @return [Boolean]
        attr_accessor :strict_type_filtering
        alias_method :strict_type_filtering?, :strict_type_filtering
      
        # Required. The text query for textual search.
        # Corresponds to the JSON property `textQuery`
        # @return [String]
        attr_accessor :text_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ev_options = args[:ev_options] if args.key?(:ev_options)
          @include_pure_service_area_businesses = args[:include_pure_service_area_businesses] if args.key?(:include_pure_service_area_businesses)
          @included_type = args[:included_type] if args.key?(:included_type)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_bias = args[:location_bias] if args.key?(:location_bias)
          @location_restriction = args[:location_restriction] if args.key?(:location_restriction)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
          @min_rating = args[:min_rating] if args.key?(:min_rating)
          @open_now = args[:open_now] if args.key?(:open_now)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @price_levels = args[:price_levels] if args.key?(:price_levels)
          @rank_preference = args[:rank_preference] if args.key?(:rank_preference)
          @region_code = args[:region_code] if args.key?(:region_code)
          @routing_parameters = args[:routing_parameters] if args.key?(:routing_parameters)
          @search_along_route_parameters = args[:search_along_route_parameters] if args.key?(:search_along_route_parameters)
          @strict_type_filtering = args[:strict_type_filtering] if args.key?(:strict_type_filtering)
          @text_query = args[:text_query] if args.key?(:text_query)
        end
      end
      
      # Searchable EV options of a place search request.
      class GoogleMapsPlacesV1SearchTextRequestEvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The list of preferred EV connector types. A place that does not
        # support any of the listed connector types is filtered out.
        # Corresponds to the JSON property `connectorTypes`
        # @return [Array<String>]
        attr_accessor :connector_types
      
        # Optional. Minimum required charging rate in kilowatts. A place with a charging
        # rate less than the specified rate is filtered out.
        # Corresponds to the JSON property `minimumChargingRateKw`
        # @return [Float]
        attr_accessor :minimum_charging_rate_kw
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_types = args[:connector_types] if args.key?(:connector_types)
          @minimum_charging_rate_kw = args[:minimum_charging_rate_kw] if args.key?(:minimum_charging_rate_kw)
        end
      end
      
      # The region to search. This location serves as a bias which means results
      # around given location might be returned.
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # The region to search. This location serves as a restriction which means
      # results outside given location will not be returned.
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        include Google::Apis::Core::Hashable
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # Specifies a precalculated polyline from the [Routes API](https://developers.
      # google.com/maps/documentation/routes) defining the route to search. Searching
      # along a route is similar to using the `locationBias` or `locationRestriction`
      # request option to bias the search results. However, while the `locationBias`
      # and `locationRestriction` options let you specify a region to bias the search
      # results, this option lets you bias the results along a trip route. Results are
      # not guaranteed to be along the route provided, but rather are ranked within
      # the search area defined by the polyline and, optionally, by the `locationBias`
      # or `locationRestriction` based on minimal detour times from origin to
      # destination. The results might be along an alternate route, especially if the
      # provided polyline does not define an optimal route from origin to destination.
      class GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters
        include Google::Apis::Core::Hashable
      
        # A route polyline. Only supports an [encoded polyline](https://developers.
        # google.com/maps/documentation/utilities/polylinealgorithm), which can be
        # passed as a string and includes compression with minimal lossiness. This is
        # the Routes API default output.
        # Corresponds to the JSON property `polyline`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Polyline]
        attr_accessor :polyline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @polyline = args[:polyline] if args.key?(:polyline)
        end
      end
      
      # Response proto for SearchText.
      class GoogleMapsPlacesV1SearchTextResponse
        include Google::Apis::Core::Hashable
      
        # Experimental: See https://developers.google.com/maps/documentation/places/web-
        # service/experimental/places-generative for more details. A list of contextual
        # contents where each entry associates to the corresponding place in the same
        # index in the places field. The contents that are relevant to the `text_query`
        # in the request are preferred. If the contextual content is not available for
        # one of the places, it will return non-contextual content. It will be empty
        # only when the content is unavailable for this place. This list will have as
        # many entries as the list of places if requested.
        # Corresponds to the JSON property `contextualContents`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContent>]
        attr_accessor :contextual_contents
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted or empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of places that meet the user's text search criteria.
        # Corresponds to the JSON property `places`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Place>]
        attr_accessor :places
      
        # A list of routing summaries where each entry associates to the corresponding
        # place in the same index in the `places` field. If the routing summary is not
        # available for one of the places, it will contain an empty entry. This list
        # will have as many entries as the list of places if requested.
        # Corresponds to the JSON property `routingSummaries`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary>]
        attr_accessor :routing_summaries
      
        # A link allows the user to search with the same text query as specified in the
        # request on Google Maps.
        # Corresponds to the JSON property `searchUri`
        # @return [String]
        attr_accessor :search_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contextual_contents = args[:contextual_contents] if args.key?(:contextual_contents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @places = args[:places] if args.key?(:places)
          @routing_summaries = args[:routing_summaries] if args.key?(:routing_summaries)
          @search_uri = args[:search_uri] if args.key?(:search_uri)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
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
      
      # Localized variant of a text in a particular language.
      class GoogleTypeLocalizedText
        include Google::Apis::Core::Hashable
      
        # The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized string in the language corresponding to language_code below.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents a postal address, such as for postal delivery or payments addresses.
      # With a postal address, a postal service can deliver items to a premise, P.O.
      # box, or similar. A postal address is not intended to model geographical
      # locations like roads, towns, or mountains. In typical usage, an address would
      # be created by user input or from importing existing data, depending on the
      # type of process. Advice on address input or editing: - Use an
      # internationalization-ready address widget such as https://github.com/google/
      # libaddressinput. - Users should not be presented with UI elements for input or
      # editing of fields outside countries where that field is used. For more
      # guidance on how to use this schema, see: https://support.google.com/business/
      # answer/6397478.
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in `address_lines` do not have type information and may sometimes
        # contain multiple values in a single field (for example, "Austin, TX"), it is
        # important that the line order is clear. The order of address lines should be "
        # envelope order" for the country or region of the address. In places where this
        # can vary (for example, Japan), `address_language` is used to make it explicit (
        # for example, "ja" for large-to-small ordering and "ja-Latn" or "en" for small-
        # to-large). In this way, the most specific line of an address can be selected
        # based on the language. The minimum permitted structural representation of an
        # address consists of a `region_code` with all remaining information placed in
        # the `address_lines`. It would be possible to format such an address very
        # approximately without geocoding, but no semantic reasoning could be made about
        # any of the address components until it was at least partially resolved.
        # Creating an address only containing a `region_code` and `address_lines` and
        # then geocoding is the recommended way to handle completely unstructured
        # addresses (as opposed to guessing which parts of the address should be
        # localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. For Spain, this is the province and not the
        # autonomous community (for example, "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. For example,
        # in Switzerland, this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city or town portion of the address.
        # Examples: US city, IT comune, UK post town. In regions of the world where
        # localities are not well defined or do not fit into this structure well, leave `
        # locality` empty and use `address_lines`.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (for example, state or zip code
        # validation in the United States).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (for example, "CEDEX 7"), or just a number
        # alone, representing the "sector code" (Jamaica), "delivery area indicator" (
        # Malawi) or "post office indicator" (Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be a neighborhood,
        # borough, or district.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
