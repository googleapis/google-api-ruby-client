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
    module PollenV1
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupForecastResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlantDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlantInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollenTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::PollenV1::Date, decorator: Google::Apis::PollenV1::Date::Representation
      
          collection :plant_info, as: 'plantInfo', class: Google::Apis::PollenV1::PlantInfo, decorator: Google::Apis::PollenV1::PlantInfo::Representation
      
          collection :pollen_type_info, as: 'pollenTypeInfo', class: Google::Apis::PollenV1::PollenTypeInfo, decorator: Google::Apis::PollenV1::PollenTypeInfo::Representation
      
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class IndexInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :code, as: 'code'
          property :color, as: 'color', class: Google::Apis::PollenV1::Color, decorator: Google::Apis::PollenV1::Color::Representation
      
          property :display_name, as: 'displayName'
          property :index_description, as: 'indexDescription'
          property :value, as: 'value'
        end
      end
      
      class LookupForecastResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :daily_info, as: 'dailyInfo', class: Google::Apis::PollenV1::DayInfo, decorator: Google::Apis::PollenV1::DayInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :region_code, as: 'regionCode'
        end
      end
      
      class PlantDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cross_reaction, as: 'crossReaction'
          property :family, as: 'family'
          property :picture, as: 'picture'
          property :picture_closeup, as: 'pictureCloseup'
          property :season, as: 'season'
          property :special_colors, as: 'specialColors'
          property :special_shapes, as: 'specialShapes'
          property :type, as: 'type'
        end
      end
      
      class PlantInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :display_name, as: 'displayName'
          property :in_season, as: 'inSeason'
          property :index_info, as: 'indexInfo', class: Google::Apis::PollenV1::IndexInfo, decorator: Google::Apis::PollenV1::IndexInfo::Representation
      
          property :plant_description, as: 'plantDescription', class: Google::Apis::PollenV1::PlantDescription, decorator: Google::Apis::PollenV1::PlantDescription::Representation
      
        end
      end
      
      class PollenTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :display_name, as: 'displayName'
          collection :health_recommendations, as: 'healthRecommendations'
          property :in_season, as: 'inSeason'
          property :index_info, as: 'indexInfo', class: Google::Apis::PollenV1::IndexInfo, decorator: Google::Apis::PollenV1::IndexInfo::Representation
      
        end
      end
    end
  end
end
