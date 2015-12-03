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
    module ProximitybeaconV1beta1
      
      class Beacon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdvertisedId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class IndoorLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListBeaconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BeaconAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListBeaconAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeleteAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListNamespacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Namespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDiagnosticsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Diagnostics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetInfoForObservedBeaconsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Observation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetInfoForObservedBeaconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BeaconInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AttachmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Beacon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beacon_name, as: 'beaconName'
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          property :status, as: 'status'
          property :place_id, as: 'placeId'
          property :lat_lng, as: 'latLng', class: Google::Apis::ProximitybeaconV1beta1::LatLng, decorator: Google::Apis::ProximitybeaconV1beta1::LatLng::Representation
      
          property :indoor_level, as: 'indoorLevel', class: Google::Apis::ProximitybeaconV1beta1::IndoorLevel, decorator: Google::Apis::ProximitybeaconV1beta1::IndoorLevel::Representation
      
          property :expected_stability, as: 'expectedStability'
          property :description, as: 'description'
          hash :properties, as: 'properties'
        end
      end
      
      class AdvertisedId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :id, :base64 => true, as: 'id'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class IndoorLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListBeaconsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :beacons, as: 'beacons', class: Google::Apis::ProximitybeaconV1beta1::Beacon, decorator: Google::Apis::ProximitybeaconV1beta1::Beacon::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_count, as: 'totalCount'
        end
      end
      
      class BeaconAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_name, as: 'attachmentName'
          property :namespaced_type, as: 'namespacedType'
          property :data, :base64 => true, as: 'data'
        end
      end
      
      class ListBeaconAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::ProximitybeaconV1beta1::BeaconAttachment, decorator: Google::Apis::ProximitybeaconV1beta1::BeaconAttachment::Representation
      
        end
      end
      
      class DeleteAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_deleted, as: 'numDeleted'
        end
      end
      
      class ListNamespacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :namespaces, as: 'namespaces', class: Google::Apis::ProximitybeaconV1beta1::Namespace, decorator: Google::Apis::ProximitybeaconV1beta1::Namespace::Representation
      
        end
      end
      
      class Namespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_name, as: 'namespaceName'
          property :serving_visibility, as: 'servingVisibility'
        end
      end
      
      class ListDiagnosticsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :diagnostics, as: 'diagnostics', class: Google::Apis::ProximitybeaconV1beta1::Diagnostics, decorator: Google::Apis::ProximitybeaconV1beta1::Diagnostics::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Diagnostics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beacon_name, as: 'beaconName'
          property :estimated_low_battery_date, as: 'estimatedLowBatteryDate', class: Google::Apis::ProximitybeaconV1beta1::Date, decorator: Google::Apis::ProximitybeaconV1beta1::Date::Representation
      
          collection :alerts, as: 'alerts'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :month, as: 'month'
          property :day, as: 'day'
        end
      end
      
      class GetInfoForObservedBeaconsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :observations, as: 'observations', class: Google::Apis::ProximitybeaconV1beta1::Observation, decorator: Google::Apis::ProximitybeaconV1beta1::Observation::Representation
      
          collection :namespaced_types, as: 'namespacedTypes'
        end
      end
      
      class Observation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          property :telemetry, :base64 => true, as: 'telemetry'
          property :timestamp_ms, as: 'timestampMs'
        end
      end
      
      class GetInfoForObservedBeaconsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :beacons, as: 'beacons', class: Google::Apis::ProximitybeaconV1beta1::BeaconInfo, decorator: Google::Apis::ProximitybeaconV1beta1::BeaconInfo::Representation
      
        end
      end
      
      class BeaconInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          property :beacon_name, as: 'beaconName'
          property :description, as: 'description'
          collection :attachments, as: 'attachments', class: Google::Apis::ProximitybeaconV1beta1::AttachmentInfo, decorator: Google::Apis::ProximitybeaconV1beta1::AttachmentInfo::Representation
      
        end
      end
      
      class AttachmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespaced_type, as: 'namespacedType'
          property :data, :base64 => true, as: 'data'
        end
      end
    end
  end
end
