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
      
      class Circle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInsightsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Polygon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RatingFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Circle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::AreainsightsV1::LatLng, decorator: Google::Apis::AreainsightsV1::LatLng::Representation
      
          property :place, as: 'place'
          property :radius, as: 'radius'
        end
      end
      
      class ComputeInsightsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::AreainsightsV1::Filter, decorator: Google::Apis::AreainsightsV1::Filter::Representation
      
          collection :insights, as: 'insights'
        end
      end
      
      class ComputeInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          collection :place_insights, as: 'placeInsights', class: Google::Apis::AreainsightsV1::PlaceInsight, decorator: Google::Apis::AreainsightsV1::PlaceInsight::Representation
      
        end
      end
      
      class CustomArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :polygon, as: 'polygon', class: Google::Apis::AreainsightsV1::Polygon, decorator: Google::Apis::AreainsightsV1::Polygon::Representation
      
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_filter, as: 'locationFilter', class: Google::Apis::AreainsightsV1::LocationFilter, decorator: Google::Apis::AreainsightsV1::LocationFilter::Representation
      
          collection :operating_status, as: 'operatingStatus'
          collection :price_levels, as: 'priceLevels'
          property :rating_filter, as: 'ratingFilter', class: Google::Apis::AreainsightsV1::RatingFilter, decorator: Google::Apis::AreainsightsV1::RatingFilter::Representation
      
          property :type_filter, as: 'typeFilter', class: Google::Apis::AreainsightsV1::TypeFilter, decorator: Google::Apis::AreainsightsV1::TypeFilter::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LocationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::AreainsightsV1::Circle, decorator: Google::Apis::AreainsightsV1::Circle::Representation
      
          property :custom_area, as: 'customArea', class: Google::Apis::AreainsightsV1::CustomArea, decorator: Google::Apis::AreainsightsV1::CustomArea::Representation
      
          property :region, as: 'region', class: Google::Apis::AreainsightsV1::Region, decorator: Google::Apis::AreainsightsV1::Region::Representation
      
        end
      end
      
      class PlaceInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place, as: 'place'
        end
      end
      
      class Polygon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', class: Google::Apis::AreainsightsV1::LatLng, decorator: Google::Apis::AreainsightsV1::LatLng::Representation
      
        end
      end
      
      class RatingFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_rating, as: 'maxRating'
          property :min_rating, as: 'minRating'
        end
      end
      
      class Region
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place, as: 'place'
        end
      end
      
      class TypeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_primary_types, as: 'excludedPrimaryTypes'
          collection :excluded_types, as: 'excludedTypes'
          collection :included_primary_types, as: 'includedPrimaryTypes'
          collection :included_types, as: 'includedTypes'
        end
      end
    end
  end
end
