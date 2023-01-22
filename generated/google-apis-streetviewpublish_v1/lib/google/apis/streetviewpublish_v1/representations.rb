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
    module StreetviewpublishV1
      
      class BatchDeletePhotosRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeletePhotosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetPhotosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdatePhotosRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdatePhotosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpsDataGapFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Imu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImuDataGapFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsufficientGpsFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLngBounds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Level
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPhotoSequencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPhotosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Measurement3d
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NoOverlapGpsFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotOutdoorsFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhotoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhotoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhotoSequence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Place
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pose
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessingFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePhotoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeletePhotosRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :photo_ids, as: 'photoIds'
        end
      end
      
      class BatchDeletePhotosResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :status, as: 'status', class: Google::Apis::StreetviewpublishV1::Status, decorator: Google::Apis::StreetviewpublishV1::Status::Representation
      
        end
      end
      
      class BatchGetPhotosResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::StreetviewpublishV1::PhotoResponse, decorator: Google::Apis::StreetviewpublishV1::PhotoResponse::Representation
      
        end
      end
      
      class BatchUpdatePhotosRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :update_photo_requests, as: 'updatePhotoRequests', class: Google::Apis::StreetviewpublishV1::UpdatePhotoRequest, decorator: Google::Apis::StreetviewpublishV1::UpdatePhotoRequest::Representation
      
        end
      end
      
      class BatchUpdatePhotosResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::StreetviewpublishV1::PhotoResponse, decorator: Google::Apis::StreetviewpublishV1::PhotoResponse::Representation
      
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target, as: 'target', class: Google::Apis::StreetviewpublishV1::PhotoId, decorator: Google::Apis::StreetviewpublishV1::PhotoId::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GpsDataGapFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gap_duration, as: 'gapDuration'
          property :gap_start_time, as: 'gapStartTime'
        end
      end
      
      class Imu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accel_mpsps, as: 'accelMpsps', class: Google::Apis::StreetviewpublishV1::Measurement3d, decorator: Google::Apis::StreetviewpublishV1::Measurement3d::Representation
      
          collection :gyro_rps, as: 'gyroRps', class: Google::Apis::StreetviewpublishV1::Measurement3d, decorator: Google::Apis::StreetviewpublishV1::Measurement3d::Representation
      
          collection :mag_ut, as: 'magUt', class: Google::Apis::StreetviewpublishV1::Measurement3d, decorator: Google::Apis::StreetviewpublishV1::Measurement3d::Representation
      
        end
      end
      
      class ImuDataGapFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gap_duration, as: 'gapDuration'
          property :gap_start_time, as: 'gapStartTime'
        end
      end
      
      class InsufficientGpsFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gps_points_found, as: 'gpsPointsFound'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LatLngBounds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :northeast, as: 'northeast', class: Google::Apis::StreetviewpublishV1::LatLng, decorator: Google::Apis::StreetviewpublishV1::LatLng::Representation
      
          property :southwest, as: 'southwest', class: Google::Apis::StreetviewpublishV1::LatLng, decorator: Google::Apis::StreetviewpublishV1::LatLng::Representation
      
        end
      end
      
      class Level
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :number, as: 'number'
        end
      end
      
      class ListPhotoSequencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :photo_sequences, as: 'photoSequences', class: Google::Apis::StreetviewpublishV1::Operation, decorator: Google::Apis::StreetviewpublishV1::Operation::Representation
      
        end
      end
      
      class ListPhotosResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :photos, as: 'photos', class: Google::Apis::StreetviewpublishV1::Photo, decorator: Google::Apis::StreetviewpublishV1::Photo::Representation
      
        end
      end
      
      class Measurement3d
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capture_time, as: 'captureTime'
          property :x, as: 'x'
          property :y, as: 'y'
          property :z, as: 'z'
        end
      end
      
      class NoOverlapGpsFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gps_end_time, as: 'gpsEndTime'
          property :gps_start_time, as: 'gpsStartTime'
          property :video_end_time, as: 'videoEndTime'
          property :video_start_time, as: 'videoStartTime'
        end
      end
      
      class NotOutdoorsFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::StreetviewpublishV1::Status, decorator: Google::Apis::StreetviewpublishV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capture_time, as: 'captureTime'
          collection :connections, as: 'connections', class: Google::Apis::StreetviewpublishV1::Connection, decorator: Google::Apis::StreetviewpublishV1::Connection::Representation
      
          property :download_url, as: 'downloadUrl'
          property :maps_publish_status, as: 'mapsPublishStatus'
          property :photo_id, as: 'photoId', class: Google::Apis::StreetviewpublishV1::PhotoId, decorator: Google::Apis::StreetviewpublishV1::PhotoId::Representation
      
          collection :places, as: 'places', class: Google::Apis::StreetviewpublishV1::Place, decorator: Google::Apis::StreetviewpublishV1::Place::Representation
      
          property :pose, as: 'pose', class: Google::Apis::StreetviewpublishV1::Pose, decorator: Google::Apis::StreetviewpublishV1::Pose::Representation
      
          property :share_link, as: 'shareLink'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :transfer_status, as: 'transferStatus'
          property :upload_reference, as: 'uploadReference', class: Google::Apis::StreetviewpublishV1::UploadRef, decorator: Google::Apis::StreetviewpublishV1::UploadRef::Representation
      
          property :upload_time, as: 'uploadTime'
          property :view_count, :numeric_string => true, as: 'viewCount'
        end
      end
      
      class PhotoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class PhotoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :photo, as: 'photo', class: Google::Apis::StreetviewpublishV1::Photo, decorator: Google::Apis::StreetviewpublishV1::Photo::Representation
      
          property :status, as: 'status', class: Google::Apis::StreetviewpublishV1::Status, decorator: Google::Apis::StreetviewpublishV1::Status::Representation
      
        end
      end
      
      class PhotoSequence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capture_time_override, as: 'captureTimeOverride'
          property :distance_meters, as: 'distanceMeters'
          property :failure_details, as: 'failureDetails', class: Google::Apis::StreetviewpublishV1::ProcessingFailureDetails, decorator: Google::Apis::StreetviewpublishV1::ProcessingFailureDetails::Representation
      
          property :failure_reason, as: 'failureReason'
          property :filename, as: 'filename'
          property :gps_source, as: 'gpsSource'
          property :id, as: 'id'
          property :imu, as: 'imu', class: Google::Apis::StreetviewpublishV1::Imu, decorator: Google::Apis::StreetviewpublishV1::Imu::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::StreetviewpublishV1::Photo, decorator: Google::Apis::StreetviewpublishV1::Photo::Representation
      
          property :processing_state, as: 'processingState'
          collection :raw_gps_timeline, as: 'rawGpsTimeline', class: Google::Apis::StreetviewpublishV1::Pose, decorator: Google::Apis::StreetviewpublishV1::Pose::Representation
      
          property :sequence_bounds, as: 'sequenceBounds', class: Google::Apis::StreetviewpublishV1::LatLngBounds, decorator: Google::Apis::StreetviewpublishV1::LatLngBounds::Representation
      
          property :upload_reference, as: 'uploadReference', class: Google::Apis::StreetviewpublishV1::UploadRef, decorator: Google::Apis::StreetviewpublishV1::UploadRef::Representation
      
          property :upload_time, as: 'uploadTime'
          property :view_count, :numeric_string => true, as: 'viewCount'
        end
      end
      
      class Place
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :place_id, as: 'placeId'
        end
      end
      
      class Pose
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accuracy_meters, as: 'accuracyMeters'
          property :altitude, as: 'altitude'
          property :gps_record_timestamp_unix_epoch, as: 'gpsRecordTimestampUnixEpoch'
          property :heading, as: 'heading'
          property :lat_lng_pair, as: 'latLngPair', class: Google::Apis::StreetviewpublishV1::LatLng, decorator: Google::Apis::StreetviewpublishV1::LatLng::Representation
      
          property :level, as: 'level', class: Google::Apis::StreetviewpublishV1::Level, decorator: Google::Apis::StreetviewpublishV1::Level::Representation
      
          property :pitch, as: 'pitch'
          property :roll, as: 'roll'
        end
      end
      
      class ProcessingFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gps_data_gap_details, as: 'gpsDataGapDetails', class: Google::Apis::StreetviewpublishV1::GpsDataGapFailureDetails, decorator: Google::Apis::StreetviewpublishV1::GpsDataGapFailureDetails::Representation
      
          property :imu_data_gap_details, as: 'imuDataGapDetails', class: Google::Apis::StreetviewpublishV1::ImuDataGapFailureDetails, decorator: Google::Apis::StreetviewpublishV1::ImuDataGapFailureDetails::Representation
      
          property :insufficient_gps_details, as: 'insufficientGpsDetails', class: Google::Apis::StreetviewpublishV1::InsufficientGpsFailureDetails, decorator: Google::Apis::StreetviewpublishV1::InsufficientGpsFailureDetails::Representation
      
          property :no_overlap_gps_details, as: 'noOverlapGpsDetails', class: Google::Apis::StreetviewpublishV1::NoOverlapGpsFailureDetails, decorator: Google::Apis::StreetviewpublishV1::NoOverlapGpsFailureDetails::Representation
      
          property :not_outdoors_details, as: 'notOutdoorsDetails', class: Google::Apis::StreetviewpublishV1::NotOutdoorsFailureDetails, decorator: Google::Apis::StreetviewpublishV1::NotOutdoorsFailureDetails::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class UpdatePhotoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :photo, as: 'photo', class: Google::Apis::StreetviewpublishV1::Photo, decorator: Google::Apis::StreetviewpublishV1::Photo::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UploadRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upload_url, as: 'uploadUrl'
        end
      end
    end
  end
end
