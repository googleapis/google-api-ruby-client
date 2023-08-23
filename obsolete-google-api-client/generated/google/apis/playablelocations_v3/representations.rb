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
      
      class GoogleMapsPlayablelocationsV3Impression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3LogImpressionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3LogImpressionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3LogPlayerReportsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3PlayerReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SampleAreaFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SampleCriterion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SampleFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3SampleSpacingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsUnityClientInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlayablelocationsV3Impression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :game_object_type, as: 'gameObjectType'
          property :impression_type, as: 'impressionType'
          property :location_name, as: 'locationName'
        end
      end
      
      class GoogleMapsPlayablelocationsV3LogImpressionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_info, as: 'clientInfo', class: Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo::Representation
      
          collection :impressions, as: 'impressions', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3Impression, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3Impression::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleMapsPlayablelocationsV3LogImpressionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleMapsPlayablelocationsV3LogPlayerReportsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_info, as: 'clientInfo', class: Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsUnityClientInfo::Representation
      
          collection :player_reports, as: 'playerReports', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3PlayerReport, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3PlayerReport::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleMapsPlayablelocationsV3PlayerReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :location_name, as: 'locationName'
          property :reason_details, as: 'reasonDetails'
          collection :reasons, as: 'reasons'
        end
      end
      
      class GoogleMapsPlayablelocationsV3SampleAreaFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :s2_cell_id, :numeric_string => true, as: 's2CellId'
        end
      end
      
      class GoogleMapsPlayablelocationsV3SampleCriterion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields_to_return, as: 'fieldsToReturn'
          property :filter, as: 'filter', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleFilter, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleFilter::Representation
      
          property :game_object_type, as: 'gameObjectType'
        end
      end
      
      class GoogleMapsPlayablelocationsV3SampleFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_types, as: 'includedTypes'
          property :max_location_count, as: 'maxLocationCount'
          property :spacing, as: 'spacing', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleSpacingOptions, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleSpacingOptions::Representation
      
        end
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :center_point, as: 'centerPoint', class: Google::Apis::PlayablelocationsV3::GoogleTypeLatLng, decorator: Google::Apis::PlayablelocationsV3::GoogleTypeLatLng::Representation
      
          property :name, as: 'name'
          property :place_id, as: 'placeId'
          property :plus_code, as: 'plusCode'
          property :snapped_point, as: 'snappedPoint', class: Google::Apis::PlayablelocationsV3::GoogleTypeLatLng, decorator: Google::Apis::PlayablelocationsV3::GoogleTypeLatLng::Representation
      
          collection :types, as: 'types'
        end
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocation, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocation::Representation
      
        end
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :area_filter, as: 'areaFilter', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleAreaFilter, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleAreaFilter::Representation
      
          collection :criteria, as: 'criteria', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleCriterion, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SampleCriterion::Representation
      
        end
      end
      
      class GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations_per_game_object_type, as: 'locationsPerGameObjectType', class: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationList, decorator: Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationList::Representation
      
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleMapsPlayablelocationsV3SampleSpacingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_spacing_meters, as: 'minSpacingMeters'
          property :point_type, as: 'pointType'
        end
      end
      
      class GoogleMapsUnityClientInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_client, as: 'apiClient'
          property :application_id, as: 'applicationId'
          property :application_version, as: 'applicationVersion'
          property :device_model, as: 'deviceModel'
          property :language_code, as: 'languageCode'
          property :operating_system, as: 'operatingSystem'
          property :operating_system_build, as: 'operatingSystemBuild'
          property :platform, as: 'platform'
        end
      end
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
    end
  end
end
