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
    module AirqualityV1
      
      class AdditionalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AirQualityIndex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Concentration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomLocalAqi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthRecommendations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HourInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HourlyForecast
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupCurrentConditionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupCurrentConditionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupForecastRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupForecastResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupHistoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pollutant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effects, as: 'effects'
          property :sources, as: 'sources'
        end
      end
      
      class AirQualityIndex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aqi, as: 'aqi'
          property :aqi_display, as: 'aqiDisplay'
          property :category, as: 'category'
          property :code, as: 'code'
          property :color, as: 'color', class: Google::Apis::AirqualityV1::Color, decorator: Google::Apis::AirqualityV1::Color::Representation
      
          property :display_name, as: 'displayName'
          property :dominant_pollutant, as: 'dominantPollutant'
        end
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
      
      class Concentration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :units, as: 'units'
          property :value, as: 'value'
        end
      end
      
      class CustomLocalAqi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aqi, as: 'aqi'
          property :region_code, as: 'regionCode'
        end
      end
      
      class HealthRecommendations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :athletes, as: 'athletes'
          property :children, as: 'children'
          property :elderly, as: 'elderly'
          property :general_population, as: 'generalPopulation'
          property :heart_disease_population, as: 'heartDiseasePopulation'
          property :lung_disease_population, as: 'lungDiseasePopulation'
          property :pregnant_women, as: 'pregnantWomen'
        end
      end
      
      class HourInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_time, as: 'dateTime'
          property :health_recommendations, as: 'healthRecommendations', class: Google::Apis::AirqualityV1::HealthRecommendations, decorator: Google::Apis::AirqualityV1::HealthRecommendations::Representation
      
          collection :indexes, as: 'indexes', class: Google::Apis::AirqualityV1::AirQualityIndex, decorator: Google::Apis::AirqualityV1::AirQualityIndex::Representation
      
          collection :pollutants, as: 'pollutants', class: Google::Apis::AirqualityV1::Pollutant, decorator: Google::Apis::AirqualityV1::Pollutant::Representation
      
        end
      end
      
      class HourlyForecast
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_time, as: 'dateTime'
          property :health_recommendations, as: 'healthRecommendations', class: Google::Apis::AirqualityV1::HealthRecommendations, decorator: Google::Apis::AirqualityV1::HealthRecommendations::Representation
      
          collection :indexes, as: 'indexes', class: Google::Apis::AirqualityV1::AirQualityIndex, decorator: Google::Apis::AirqualityV1::AirQualityIndex::Representation
      
          collection :pollutants, as: 'pollutants', class: Google::Apis::AirqualityV1::Pollutant, decorator: Google::Apis::AirqualityV1::Pollutant::Representation
      
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
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LookupCurrentConditionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_local_aqis, as: 'customLocalAqis', class: Google::Apis::AirqualityV1::CustomLocalAqi, decorator: Google::Apis::AirqualityV1::CustomLocalAqi::Representation
      
          collection :extra_computations, as: 'extraComputations'
          property :language_code, as: 'languageCode'
          property :location, as: 'location', class: Google::Apis::AirqualityV1::LatLng, decorator: Google::Apis::AirqualityV1::LatLng::Representation
      
          property :uaqi_color_palette, as: 'uaqiColorPalette'
          property :universal_aqi, as: 'universalAqi'
        end
      end
      
      class LookupCurrentConditionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_time, as: 'dateTime'
          property :health_recommendations, as: 'healthRecommendations', class: Google::Apis::AirqualityV1::HealthRecommendations, decorator: Google::Apis::AirqualityV1::HealthRecommendations::Representation
      
          collection :indexes, as: 'indexes', class: Google::Apis::AirqualityV1::AirQualityIndex, decorator: Google::Apis::AirqualityV1::AirQualityIndex::Representation
      
          collection :pollutants, as: 'pollutants', class: Google::Apis::AirqualityV1::Pollutant, decorator: Google::Apis::AirqualityV1::Pollutant::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class LookupForecastRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_local_aqis, as: 'customLocalAqis', class: Google::Apis::AirqualityV1::CustomLocalAqi, decorator: Google::Apis::AirqualityV1::CustomLocalAqi::Representation
      
          property :date_time, as: 'dateTime'
          collection :extra_computations, as: 'extraComputations'
          property :language_code, as: 'languageCode'
          property :location, as: 'location', class: Google::Apis::AirqualityV1::LatLng, decorator: Google::Apis::AirqualityV1::LatLng::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :period, as: 'period', class: Google::Apis::AirqualityV1::Interval, decorator: Google::Apis::AirqualityV1::Interval::Representation
      
          property :uaqi_color_palette, as: 'uaqiColorPalette'
          property :universal_aqi, as: 'universalAqi'
        end
      end
      
      class LookupForecastResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hourly_forecasts, as: 'hourlyForecasts', class: Google::Apis::AirqualityV1::HourlyForecast, decorator: Google::Apis::AirqualityV1::HourlyForecast::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :region_code, as: 'regionCode'
        end
      end
      
      class LookupHistoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_local_aqis, as: 'customLocalAqis', class: Google::Apis::AirqualityV1::CustomLocalAqi, decorator: Google::Apis::AirqualityV1::CustomLocalAqi::Representation
      
          property :date_time, as: 'dateTime'
          collection :extra_computations, as: 'extraComputations'
          property :hours, as: 'hours'
          property :language_code, as: 'languageCode'
          property :location, as: 'location', class: Google::Apis::AirqualityV1::LatLng, decorator: Google::Apis::AirqualityV1::LatLng::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :period, as: 'period', class: Google::Apis::AirqualityV1::Interval, decorator: Google::Apis::AirqualityV1::Interval::Representation
      
          property :uaqi_color_palette, as: 'uaqiColorPalette'
          property :universal_aqi, as: 'universalAqi'
        end
      end
      
      class LookupHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hours_info, as: 'hoursInfo', class: Google::Apis::AirqualityV1::HourInfo, decorator: Google::Apis::AirqualityV1::HourInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :region_code, as: 'regionCode'
        end
      end
      
      class Pollutant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_info, as: 'additionalInfo', class: Google::Apis::AirqualityV1::AdditionalInfo, decorator: Google::Apis::AirqualityV1::AdditionalInfo::Representation
      
          property :code, as: 'code'
          property :concentration, as: 'concentration', class: Google::Apis::AirqualityV1::Concentration, decorator: Google::Apis::AirqualityV1::Concentration::Representation
      
          property :display_name, as: 'displayName'
          property :full_name, as: 'fullName'
        end
      end
    end
  end
end
