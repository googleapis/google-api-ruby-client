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
    module AreainsightsV1
      
      # A circle is defined by a center point and radius in meters.
      class Circle
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::AreainsightsV1::LatLng]
        attr_accessor :lat_lng
      
        # The Place resource name of the center of the circle. Only point places are
        # supported.
        # Corresponds to the JSON property `place`
        # @return [String]
        attr_accessor :place
      
        # Optional. The radius of the circle in meters
        # Corresponds to the JSON property `radius`
        # @return [Fixnum]
        attr_accessor :radius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @place = args[:place] if args.key?(:place)
          @radius = args[:radius] if args.key?(:radius)
        end
      end
      
      # Request for the ComputeInsights RPC.
      class ComputeInsightsRequest
        include Google::Apis::Core::Hashable
      
        # Filters for the ComputeInsights RPC.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::AreainsightsV1::Filter]
        attr_accessor :filter
      
        # Required. Insights to compute. Currently only INSIGHT_COUNT and INSIGHT_PLACES
        # are supported.
        # Corresponds to the JSON property `insights`
        # @return [Array<String>]
        attr_accessor :insights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @insights = args[:insights] if args.key?(:insights)
        end
      end
      
      # Response for the ComputeInsights RPC.
      class ComputeInsightsResponse
        include Google::Apis::Core::Hashable
      
        # Result for Insights.INSIGHT_COUNT.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Result for Insights.INSIGHT_PLACES.
        # Corresponds to the JSON property `placeInsights`
        # @return [Array<Google::Apis::AreainsightsV1::PlaceInsight>]
        attr_accessor :place_insights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @place_insights = args[:place_insights] if args.key?(:place_insights)
        end
      end
      
      # Custom Area.
      class CustomArea
        include Google::Apis::Core::Hashable
      
        # A polygon is represented by a series of connected coordinates in an
        # counterclockwise ordered sequence. The coordinates form a closed loop and
        # define a filled region. The first and last coordinates are equivalent, and
        # they must contain identical values. The format is a simplified version of
        # GeoJSON polygons (we only support one counterclockwise exterior ring).
        # Corresponds to the JSON property `polygon`
        # @return [Google::Apis::AreainsightsV1::Polygon]
        attr_accessor :polygon
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @polygon = args[:polygon] if args.key?(:polygon)
        end
      end
      
      # Filters for the ComputeInsights RPC.
      class Filter
        include Google::Apis::Core::Hashable
      
        # Location filters. Specifies the area of interest for the insight.
        # Corresponds to the JSON property `locationFilter`
        # @return [Google::Apis::AreainsightsV1::LocationFilter]
        attr_accessor :location_filter
      
        # Optional. Restricts results to places whose operating status is included on
        # this list. If operating_status is not set, OPERATING_STATUS_OPERATIONAL is
        # used as default.
        # Corresponds to the JSON property `operatingStatus`
        # @return [Array<String>]
        attr_accessor :operating_status
      
        # Optional. Restricts results to places whose price level is included on this
        # list. If price_level is not set, all price levels are included in the results.
        # Corresponds to the JSON property `priceLevels`
        # @return [Array<String>]
        attr_accessor :price_levels
      
        # Average user rating filters.
        # Corresponds to the JSON property `ratingFilter`
        # @return [Google::Apis::AreainsightsV1::RatingFilter]
        attr_accessor :rating_filter
      
        # Place type filters. Only Place types from [Table a](https://developers.google.
        # com/maps/documentation/places/web-service/place-types#table-a) are supported.
        # A place can only have a single primary type associated with it. For example,
        # the primary type might be "mexican_restaurant" or "steak_house". Use
        # included_primary_types and excluded_primary_types to filter the results on a
        # place's primary type. A place can also have multiple type values associated
        # with it. For example a restaurant might have the following types: "
        # seafood_restaurant", "restaurant", "food", "point_of_interest", "establishment"
        # . Use included_types and excluded_types to filter the results on the list of
        # types associated with a place. If a search is specified with multiple type
        # restrictions, only places that satisfy all of the restrictions are returned.
        # For example, if you specify `"included_types": ["restaurant"], "
        # excluded_primary_types": ["steak_house"]`, the returned places provide "
        # restaurant" related services but do not operate primarily as a "steak_house".
        # If there are any conflicting types, i.e. a type appears in both included_types
        # and excluded_types types or included_primary_types and excluded_primary_types,
        # an INVALID_ARGUMENT error is returned. One of included_types or
        # included_primary_types must be set.
        # Corresponds to the JSON property `typeFilter`
        # @return [Google::Apis::AreainsightsV1::TypeFilter]
        attr_accessor :type_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_filter = args[:location_filter] if args.key?(:location_filter)
          @operating_status = args[:operating_status] if args.key?(:operating_status)
          @price_levels = args[:price_levels] if args.key?(:price_levels)
          @rating_filter = args[:rating_filter] if args.key?(:rating_filter)
          @type_filter = args[:type_filter] if args.key?(:type_filter)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
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
      
      # Location filters. Specifies the area of interest for the insight.
      class LocationFilter
        include Google::Apis::Core::Hashable
      
        # A circle is defined by a center point and radius in meters.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::AreainsightsV1::Circle]
        attr_accessor :circle
      
        # Custom Area.
        # Corresponds to the JSON property `customArea`
        # @return [Google::Apis::AreainsightsV1::CustomArea]
        attr_accessor :custom_area
      
        # A region is a geographic boundary such as: cities, postal codes, counties,
        # states, etc.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::AreainsightsV1::Region]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
          @custom_area = args[:custom_area] if args.key?(:custom_area)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Holds information about a place
      class PlaceInsight
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the place. This resource name can be used to retrieve
        # details about the place using the [Places API](https://developers.google.com/
        # maps/documentation/places/web-service/reference/rest/v1/places/get).
        # Corresponds to the JSON property `place`
        # @return [String]
        attr_accessor :place
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place = args[:place] if args.key?(:place)
        end
      end
      
      # A polygon is represented by a series of connected coordinates in an
      # counterclockwise ordered sequence. The coordinates form a closed loop and
      # define a filled region. The first and last coordinates are equivalent, and
      # they must contain identical values. The format is a simplified version of
      # GeoJSON polygons (we only support one counterclockwise exterior ring).
      class Polygon
        include Google::Apis::Core::Hashable
      
        # Optional. The coordinates that define the polygon.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Google::Apis::AreainsightsV1::LatLng>]
        attr_accessor :coordinates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] if args.key?(:coordinates)
        end
      end
      
      # Average user rating filters.
      class RatingFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Restricts results to places whose average user rating is strictly
        # less than or equal to max_rating. Values must be between 1.0 and 5.0.
        # Corresponds to the JSON property `maxRating`
        # @return [Float]
        attr_accessor :max_rating
      
        # Optional. Restricts results to places whose average user rating is greater
        # than or equal to min_rating. Values must be between 1.0 and 5.0.
        # Corresponds to the JSON property `minRating`
        # @return [Float]
        attr_accessor :min_rating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_rating = args[:max_rating] if args.key?(:max_rating)
          @min_rating = args[:min_rating] if args.key?(:min_rating)
        end
      end
      
      # A region is a geographic boundary such as: cities, postal codes, counties,
      # states, etc.
      class Region
        include Google::Apis::Core::Hashable
      
        # The unique identifier of a specific geographic region.
        # Corresponds to the JSON property `place`
        # @return [String]
        attr_accessor :place
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place = args[:place] if args.key?(:place)
        end
      end
      
      # Place type filters. Only Place types from [Table a](https://developers.google.
      # com/maps/documentation/places/web-service/place-types#table-a) are supported.
      # A place can only have a single primary type associated with it. For example,
      # the primary type might be "mexican_restaurant" or "steak_house". Use
      # included_primary_types and excluded_primary_types to filter the results on a
      # place's primary type. A place can also have multiple type values associated
      # with it. For example a restaurant might have the following types: "
      # seafood_restaurant", "restaurant", "food", "point_of_interest", "establishment"
      # . Use included_types and excluded_types to filter the results on the list of
      # types associated with a place. If a search is specified with multiple type
      # restrictions, only places that satisfy all of the restrictions are returned.
      # For example, if you specify `"included_types": ["restaurant"], "
      # excluded_primary_types": ["steak_house"]`, the returned places provide "
      # restaurant" related services but do not operate primarily as a "steak_house".
      # If there are any conflicting types, i.e. a type appears in both included_types
      # and excluded_types types or included_primary_types and excluded_primary_types,
      # an INVALID_ARGUMENT error is returned. One of included_types or
      # included_primary_types must be set.
      class TypeFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Excluded primary Place types.
        # Corresponds to the JSON property `excludedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :excluded_primary_types
      
        # Optional. Excluded Place types.
        # Corresponds to the JSON property `excludedTypes`
        # @return [Array<String>]
        attr_accessor :excluded_types
      
        # Optional. Included primary Place types.
        # Corresponds to the JSON property `includedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :included_primary_types
      
        # Optional. Included Place types.
        # Corresponds to the JSON property `includedTypes`
        # @return [Array<String>]
        attr_accessor :included_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_primary_types = args[:excluded_primary_types] if args.key?(:excluded_primary_types)
          @excluded_types = args[:excluded_types] if args.key?(:excluded_types)
          @included_primary_types = args[:included_primary_types] if args.key?(:included_primary_types)
          @included_types = args[:included_types] if args.key?(:included_types)
        end
      end
    end
  end
end
