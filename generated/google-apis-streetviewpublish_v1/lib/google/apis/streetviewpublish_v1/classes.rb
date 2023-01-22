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
      
      # Request to delete multiple Photos.
      class BatchDeletePhotosRequest
        include Google::Apis::Core::Hashable
      
        # Required. IDs of the Photos. HTTP GET requests require the following syntax
        # for the URL query parameter: `photoIds=&photoIds=&...`.
        # Corresponds to the JSON property `photoIds`
        # @return [Array<String>]
        attr_accessor :photo_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @photo_ids = args[:photo_ids] if args.key?(:photo_ids)
        end
      end
      
      # Response to batch delete of one or more Photos.
      class BatchDeletePhotosResponse
        include Google::Apis::Core::Hashable
      
        # The status for the operation to delete a single Photo in the batch request.
        # Corresponds to the JSON property `status`
        # @return [Array<Google::Apis::StreetviewpublishV1::Status>]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response to batch get of Photos.
      class BatchGetPhotosResponse
        include Google::Apis::Core::Hashable
      
        # List of results for each individual Photo requested, in the same order as the
        # requests in BatchGetPhotos.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::StreetviewpublishV1::PhotoResponse>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Request to update the metadata of photos. Updating the pixels of photos is not
      # supported.
      class BatchUpdatePhotosRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of UpdatePhotoRequests.
        # Corresponds to the JSON property `updatePhotoRequests`
        # @return [Array<Google::Apis::StreetviewpublishV1::UpdatePhotoRequest>]
        attr_accessor :update_photo_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_photo_requests = args[:update_photo_requests] if args.key?(:update_photo_requests)
        end
      end
      
      # Response to batch update of metadata of one or more Photos.
      class BatchUpdatePhotosResponse
        include Google::Apis::Core::Hashable
      
        # List of results for each individual Photo updated, in the same order as the
        # request.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::StreetviewpublishV1::PhotoResponse>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # A connection is the link from a source photo to a destination photo.
      class Connection
        include Google::Apis::Core::Hashable
      
        # Identifier for a Photo.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::StreetviewpublishV1::PhotoId]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details related to ProcessingFailureReason#GPS_DATA_GAP. If there are multiple
      # GPS data gaps, only the one with the largest duration is reported here.
      class GpsDataGapFailureDetails
        include Google::Apis::Core::Hashable
      
        # The duration of the gap in GPS data that was found.
        # Corresponds to the JSON property `gapDuration`
        # @return [String]
        attr_accessor :gap_duration
      
        # Relative time (from the start of the video stream) when the gap started.
        # Corresponds to the JSON property `gapStartTime`
        # @return [String]
        attr_accessor :gap_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gap_duration = args[:gap_duration] if args.key?(:gap_duration)
          @gap_start_time = args[:gap_start_time] if args.key?(:gap_start_time)
        end
      end
      
      # IMU data from the device sensors.
      class Imu
        include Google::Apis::Core::Hashable
      
        # The accelerometer measurements in meters/sec^2 with increasing timestamps from
        # devices.
        # Corresponds to the JSON property `accelMpsps`
        # @return [Array<Google::Apis::StreetviewpublishV1::Measurement3d>]
        attr_accessor :accel_mpsps
      
        # The gyroscope measurements in radians/sec with increasing timestamps from
        # devices.
        # Corresponds to the JSON property `gyroRps`
        # @return [Array<Google::Apis::StreetviewpublishV1::Measurement3d>]
        attr_accessor :gyro_rps
      
        # The magnetometer measurements of the magnetic field in microtesla (uT) with
        # increasing timestamps from devices.
        # Corresponds to the JSON property `magUt`
        # @return [Array<Google::Apis::StreetviewpublishV1::Measurement3d>]
        attr_accessor :mag_ut
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accel_mpsps = args[:accel_mpsps] if args.key?(:accel_mpsps)
          @gyro_rps = args[:gyro_rps] if args.key?(:gyro_rps)
          @mag_ut = args[:mag_ut] if args.key?(:mag_ut)
        end
      end
      
      # Details related to ProcessingFailureReason#IMU_DATA_GAP. If there are multiple
      # IMU data gaps, only the one with the largest duration is reported here.
      class ImuDataGapFailureDetails
        include Google::Apis::Core::Hashable
      
        # The duration of the gap in IMU data that was found.
        # Corresponds to the JSON property `gapDuration`
        # @return [String]
        attr_accessor :gap_duration
      
        # Relative time (from the start of the video stream) when the gap started.
        # Corresponds to the JSON property `gapStartTime`
        # @return [String]
        attr_accessor :gap_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gap_duration = args[:gap_duration] if args.key?(:gap_duration)
          @gap_start_time = args[:gap_start_time] if args.key?(:gap_start_time)
        end
      end
      
      # Details related to ProcessingFailureReason#INSUFFICIENT_GPS.
      class InsufficientGpsFailureDetails
        include Google::Apis::Core::Hashable
      
        # The number of GPS points that were found in the video.
        # Corresponds to the JSON property `gpsPointsFound`
        # @return [Fixnum]
        attr_accessor :gps_points_found
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gps_points_found = args[:gps_points_found] if args.key?(:gps_points_found)
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
      
      # A rectangle in geographical coordinates.
      class LatLngBounds
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `northeast`
        # @return [Google::Apis::StreetviewpublishV1::LatLng]
        attr_accessor :northeast
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `southwest`
        # @return [Google::Apis::StreetviewpublishV1::LatLng]
        attr_accessor :southwest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @northeast = args[:northeast] if args.key?(:northeast)
          @southwest = args[:southwest] if args.key?(:southwest)
        end
      end
      
      # Level information containing level number and its corresponding name.
      class Level
        include Google::Apis::Core::Hashable
      
        # Required. A name assigned to this Level, restricted to 3 characters. Consider
        # how the elevator buttons would be labeled for this level if there was an
        # elevator.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Floor number, used for ordering. 0 indicates the ground level, 1
        # indicates the first level above ground level, -1 indicates the first level
        # under ground level. Non-integer values are OK.
        # Corresponds to the JSON property `number`
        # @return [Float]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Response to list all photo sequences that belong to a user.
      class ListPhotoSequencesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of photo sequences via Operation interface. The maximum number of items
        # returned is based on the pageSize field in the request. Each item in the list
        # can have three possible states, * `Operation.done` = false, if the processing
        # of PhotoSequence is not finished yet. * `Operation.done` = true and `Operation.
        # error` is populated, if there was an error in processing. * `Operation.done` =
        # true and `Operation.response` contains a PhotoSequence message, In each
        # sequence, only Id is populated.
        # Corresponds to the JSON property `photoSequences`
        # @return [Array<Google::Apis::StreetviewpublishV1::Operation>]
        attr_accessor :photo_sequences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @photo_sequences = args[:photo_sequences] if args.key?(:photo_sequences)
        end
      end
      
      # Response to list all photos that belong to a user.
      class ListPhotosResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of photos. The pageSize field in the request determines the number of
        # items returned.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::StreetviewpublishV1::Photo>]
        attr_accessor :photos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @photos = args[:photos] if args.key?(:photos)
        end
      end
      
      # A Generic 3d measurement sample.
      class Measurement3d
        include Google::Apis::Core::Hashable
      
        # The timestamp of the IMU measurement.
        # Corresponds to the JSON property `captureTime`
        # @return [String]
        attr_accessor :capture_time
      
        # The sensor measurement in the x axis.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # The sensor measurement in the y axis.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        # The sensor measurement in the z axis.
        # Corresponds to the JSON property `z`
        # @return [Float]
        attr_accessor :z
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capture_time = args[:capture_time] if args.key?(:capture_time)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
          @z = args[:z] if args.key?(:z)
        end
      end
      
      # Details related to PhotoSequenceProcessingFailureReason#NO_OVERLAP_GPS.
      class NoOverlapGpsFailureDetails
        include Google::Apis::Core::Hashable
      
        # Time of last recorded GPS point.
        # Corresponds to the JSON property `gpsEndTime`
        # @return [String]
        attr_accessor :gps_end_time
      
        # Time of first recorded GPS point.
        # Corresponds to the JSON property `gpsStartTime`
        # @return [String]
        attr_accessor :gps_start_time
      
        # End time of video.
        # Corresponds to the JSON property `videoEndTime`
        # @return [String]
        attr_accessor :video_end_time
      
        # Start time of video.
        # Corresponds to the JSON property `videoStartTime`
        # @return [String]
        attr_accessor :video_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gps_end_time = args[:gps_end_time] if args.key?(:gps_end_time)
          @gps_start_time = args[:gps_start_time] if args.key?(:gps_start_time)
          @video_end_time = args[:video_end_time] if args.key?(:video_end_time)
          @video_start_time = args[:video_start_time] if args.key?(:video_start_time)
        end
      end
      
      # Details related to ProcessingFailureReason#NOT_OUTDOORS. If there are multiple
      # indoor frames found, the first frame is recorded here.
      class NotOutdoorsFailureDetails
        include Google::Apis::Core::Hashable
      
        # Relative time (from the start of the video stream) when an indoor frame was
        # found.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::StreetviewpublishV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Photo is used to store 360 photos along with photo metadata.
      class Photo
        include Google::Apis::Core::Hashable
      
        # Optional. Absolute time when the photo was captured. When the photo has no
        # exif timestamp, this is used to set a timestamp in the photo metadata.
        # Corresponds to the JSON property `captureTime`
        # @return [String]
        attr_accessor :capture_time
      
        # Optional. Connections to other photos. A connection represents the link from
        # this photo to another photo.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::StreetviewpublishV1::Connection>]
        attr_accessor :connections
      
        # Output only. The download URL for the photo bytes. This field is set only when
        # GetPhotoRequest.view is set to PhotoView.INCLUDE_DOWNLOAD_URL.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # Output only. Status in Google Maps, whether this photo was published or
        # rejected.
        # Corresponds to the JSON property `mapsPublishStatus`
        # @return [String]
        attr_accessor :maps_publish_status
      
        # Identifier for a Photo.
        # Corresponds to the JSON property `photoId`
        # @return [Google::Apis::StreetviewpublishV1::PhotoId]
        attr_accessor :photo_id
      
        # Optional. Places where this photo belongs.
        # Corresponds to the JSON property `places`
        # @return [Array<Google::Apis::StreetviewpublishV1::Place>]
        attr_accessor :places
      
        # Raw pose measurement for an entity.
        # Corresponds to the JSON property `pose`
        # @return [Google::Apis::StreetviewpublishV1::Pose]
        attr_accessor :pose
      
        # Output only. The share link for the photo.
        # Corresponds to the JSON property `shareLink`
        # @return [String]
        attr_accessor :share_link
      
        # Output only. The thumbnail URL for showing a preview of the given photo.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Output only. Status of rights transfer on this photo.
        # Corresponds to the JSON property `transferStatus`
        # @return [String]
        attr_accessor :transfer_status
      
        # Upload reference for media files.
        # Corresponds to the JSON property `uploadReference`
        # @return [Google::Apis::StreetviewpublishV1::UploadRef]
        attr_accessor :upload_reference
      
        # Output only. Time when the image was uploaded.
        # Corresponds to the JSON property `uploadTime`
        # @return [String]
        attr_accessor :upload_time
      
        # Output only. View count of the photo.
        # Corresponds to the JSON property `viewCount`
        # @return [Fixnum]
        attr_accessor :view_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capture_time = args[:capture_time] if args.key?(:capture_time)
          @connections = args[:connections] if args.key?(:connections)
          @download_url = args[:download_url] if args.key?(:download_url)
          @maps_publish_status = args[:maps_publish_status] if args.key?(:maps_publish_status)
          @photo_id = args[:photo_id] if args.key?(:photo_id)
          @places = args[:places] if args.key?(:places)
          @pose = args[:pose] if args.key?(:pose)
          @share_link = args[:share_link] if args.key?(:share_link)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @transfer_status = args[:transfer_status] if args.key?(:transfer_status)
          @upload_reference = args[:upload_reference] if args.key?(:upload_reference)
          @upload_time = args[:upload_time] if args.key?(:upload_time)
          @view_count = args[:view_count] if args.key?(:view_count)
        end
      end
      
      # Identifier for a Photo.
      class PhotoId
        include Google::Apis::Core::Hashable
      
        # A unique identifier for a photo.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Response payload for a single Photo in batch operations including
      # BatchGetPhotos and BatchUpdatePhotos.
      class PhotoResponse
        include Google::Apis::Core::Hashable
      
        # Photo is used to store 360 photos along with photo metadata.
        # Corresponds to the JSON property `photo`
        # @return [Google::Apis::StreetviewpublishV1::Photo]
        attr_accessor :photo
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::StreetviewpublishV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @photo = args[:photo] if args.key?(:photo)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A sequence of 360 photos along with metadata.
      class PhotoSequence
        include Google::Apis::Core::Hashable
      
        # Optional. Absolute time when the photo sequence starts to be captured. If the
        # photo sequence is a video, this is the start time of the video. If this field
        # is populated in input, it overrides the capture time in the video or XDM file.
        # Corresponds to the JSON property `captureTimeOverride`
        # @return [String]
        attr_accessor :capture_time_override
      
        # Output only. The computed distance of the photo sequence in meters.
        # Corresponds to the JSON property `distanceMeters`
        # @return [Float]
        attr_accessor :distance_meters
      
        # Additional details to accompany the ProcessingFailureReason enum. This message
        # is always expected to be used in conjunction with ProcessingFailureReason, and
        # the oneof value set in this message should match the FailureReason.
        # Corresponds to the JSON property `failureDetails`
        # @return [Google::Apis::StreetviewpublishV1::ProcessingFailureDetails]
        attr_accessor :failure_details
      
        # Output only. If this sequence has processing_state = FAILED, this will contain
        # the reason why it failed. If the processing_state is any other value, this
        # field will be unset.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Output only. The filename of the upload. Does not include the directory path.
        # Only available if the sequence was uploaded on a platform that provides the
        # filename.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Input only. If both raw_gps_timeline and the Camera Motion Metadata Track (
        # CAMM) contain GPS measurements, indicate which takes precedence.
        # Corresponds to the JSON property `gpsSource`
        # @return [String]
        attr_accessor :gps_source
      
        # Output only. Unique identifier for the photo sequence. This also acts as a
        # long running operation ID if uploading is performed asynchronously.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IMU data from the device sensors.
        # Corresponds to the JSON property `imu`
        # @return [Google::Apis::StreetviewpublishV1::Imu]
        attr_accessor :imu
      
        # Output only. Photos with increasing timestamps.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::StreetviewpublishV1::Photo>]
        attr_accessor :photos
      
        # Output only. The processing state of this sequence.
        # Corresponds to the JSON property `processingState`
        # @return [String]
        attr_accessor :processing_state
      
        # Input only. Raw GPS measurements with increasing timestamps from the device
        # that aren't time synced with each photo. These raw measurements will be used
        # to infer the pose of each frame. Required in input when InputType is VIDEO and
        # raw GPS measurements are not in Camera Motion Metadata Track (CAMM). User can
        # indicate which takes precedence using gps_source if raw GPS measurements are
        # provided in both raw_gps_timeline and Camera Motion Metadata Track (CAMM).
        # Corresponds to the JSON property `rawGpsTimeline`
        # @return [Array<Google::Apis::StreetviewpublishV1::Pose>]
        attr_accessor :raw_gps_timeline
      
        # A rectangle in geographical coordinates.
        # Corresponds to the JSON property `sequenceBounds`
        # @return [Google::Apis::StreetviewpublishV1::LatLngBounds]
        attr_accessor :sequence_bounds
      
        # Upload reference for media files.
        # Corresponds to the JSON property `uploadReference`
        # @return [Google::Apis::StreetviewpublishV1::UploadRef]
        attr_accessor :upload_reference
      
        # Output only. The time this photo sequence was created in uSV Store service.
        # Corresponds to the JSON property `uploadTime`
        # @return [String]
        attr_accessor :upload_time
      
        # Output only. The total number of views that all the published images in this
        # PhotoSequence have received.
        # Corresponds to the JSON property `viewCount`
        # @return [Fixnum]
        attr_accessor :view_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capture_time_override = args[:capture_time_override] if args.key?(:capture_time_override)
          @distance_meters = args[:distance_meters] if args.key?(:distance_meters)
          @failure_details = args[:failure_details] if args.key?(:failure_details)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @filename = args[:filename] if args.key?(:filename)
          @gps_source = args[:gps_source] if args.key?(:gps_source)
          @id = args[:id] if args.key?(:id)
          @imu = args[:imu] if args.key?(:imu)
          @photos = args[:photos] if args.key?(:photos)
          @processing_state = args[:processing_state] if args.key?(:processing_state)
          @raw_gps_timeline = args[:raw_gps_timeline] if args.key?(:raw_gps_timeline)
          @sequence_bounds = args[:sequence_bounds] if args.key?(:sequence_bounds)
          @upload_reference = args[:upload_reference] if args.key?(:upload_reference)
          @upload_time = args[:upload_time] if args.key?(:upload_time)
          @view_count = args[:view_count] if args.key?(:view_count)
        end
      end
      
      # Place metadata for an entity.
      class Place
        include Google::Apis::Core::Hashable
      
        # Output only. The language_code that the name is localized with. This should be
        # the language_code specified in the request, but may be a fallback.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. The name of the place, localized to the language_code.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Place identifier, as described in https://developers.google.com/places/place-
        # id.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Raw pose measurement for an entity.
      class Pose
        include Google::Apis::Core::Hashable
      
        # The estimated horizontal accuracy of this pose in meters with 68% confidence (
        # one standard deviation). For example, on Android, this value is available from
        # this method: https://developer.android.com/reference/android/location/Location#
        # getAccuracy(). Other platforms have different methods of obtaining similar
        # accuracy estimations.
        # Corresponds to the JSON property `accuracyMeters`
        # @return [Float]
        attr_accessor :accuracy_meters
      
        # Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an
        # unmeasured quantity.
        # Corresponds to the JSON property `altitude`
        # @return [Float]
        attr_accessor :altitude
      
        # Time of the GPS record since UTC epoch.
        # Corresponds to the JSON property `gpsRecordTimestampUnixEpoch`
        # @return [String]
        attr_accessor :gps_record_timestamp_unix_epoch
      
        # The following pose parameters pertain to the center of the photo. They match
        # https://developers.google.com/streetview/spherical-metadata. Compass heading,
        # measured at the center of the photo in degrees clockwise from North. Value
        # must be >=0 and <360. NaN indicates an unmeasured quantity.
        # Corresponds to the JSON property `heading`
        # @return [Float]
        attr_accessor :heading
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latLngPair`
        # @return [Google::Apis::StreetviewpublishV1::LatLng]
        attr_accessor :lat_lng_pair
      
        # Level information containing level number and its corresponding name.
        # Corresponds to the JSON property `level`
        # @return [Google::Apis::StreetviewpublishV1::Level]
        attr_accessor :level
      
        # Pitch, measured at the center of the photo in degrees. Value must be >=-90 and
        # <= 90. A value of -90 means looking directly down, and a value of 90 means
        # looking directly up. NaN indicates an unmeasured quantity.
        # Corresponds to the JSON property `pitch`
        # @return [Float]
        attr_accessor :pitch
      
        # Roll, measured in degrees. Value must be >= 0 and <360. A value of 0 means
        # level with the horizon. NaN indicates an unmeasured quantity.
        # Corresponds to the JSON property `roll`
        # @return [Float]
        attr_accessor :roll
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy_meters = args[:accuracy_meters] if args.key?(:accuracy_meters)
          @altitude = args[:altitude] if args.key?(:altitude)
          @gps_record_timestamp_unix_epoch = args[:gps_record_timestamp_unix_epoch] if args.key?(:gps_record_timestamp_unix_epoch)
          @heading = args[:heading] if args.key?(:heading)
          @lat_lng_pair = args[:lat_lng_pair] if args.key?(:lat_lng_pair)
          @level = args[:level] if args.key?(:level)
          @pitch = args[:pitch] if args.key?(:pitch)
          @roll = args[:roll] if args.key?(:roll)
        end
      end
      
      # Additional details to accompany the ProcessingFailureReason enum. This message
      # is always expected to be used in conjunction with ProcessingFailureReason, and
      # the oneof value set in this message should match the FailureReason.
      class ProcessingFailureDetails
        include Google::Apis::Core::Hashable
      
        # Details related to ProcessingFailureReason#GPS_DATA_GAP. If there are multiple
        # GPS data gaps, only the one with the largest duration is reported here.
        # Corresponds to the JSON property `gpsDataGapDetails`
        # @return [Google::Apis::StreetviewpublishV1::GpsDataGapFailureDetails]
        attr_accessor :gps_data_gap_details
      
        # Details related to ProcessingFailureReason#IMU_DATA_GAP. If there are multiple
        # IMU data gaps, only the one with the largest duration is reported here.
        # Corresponds to the JSON property `imuDataGapDetails`
        # @return [Google::Apis::StreetviewpublishV1::ImuDataGapFailureDetails]
        attr_accessor :imu_data_gap_details
      
        # Details related to ProcessingFailureReason#INSUFFICIENT_GPS.
        # Corresponds to the JSON property `insufficientGpsDetails`
        # @return [Google::Apis::StreetviewpublishV1::InsufficientGpsFailureDetails]
        attr_accessor :insufficient_gps_details
      
        # Details related to PhotoSequenceProcessingFailureReason#NO_OVERLAP_GPS.
        # Corresponds to the JSON property `noOverlapGpsDetails`
        # @return [Google::Apis::StreetviewpublishV1::NoOverlapGpsFailureDetails]
        attr_accessor :no_overlap_gps_details
      
        # Details related to ProcessingFailureReason#NOT_OUTDOORS. If there are multiple
        # indoor frames found, the first frame is recorded here.
        # Corresponds to the JSON property `notOutdoorsDetails`
        # @return [Google::Apis::StreetviewpublishV1::NotOutdoorsFailureDetails]
        attr_accessor :not_outdoors_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gps_data_gap_details = args[:gps_data_gap_details] if args.key?(:gps_data_gap_details)
          @imu_data_gap_details = args[:imu_data_gap_details] if args.key?(:imu_data_gap_details)
          @insufficient_gps_details = args[:insufficient_gps_details] if args.key?(:insufficient_gps_details)
          @no_overlap_gps_details = args[:no_overlap_gps_details] if args.key?(:no_overlap_gps_details)
          @not_outdoors_details = args[:not_outdoors_details] if args.key?(:not_outdoors_details)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Request to update the metadata of a Photo. Updating the pixels of a photo is
      # not supported.
      class UpdatePhotoRequest
        include Google::Apis::Core::Hashable
      
        # Photo is used to store 360 photos along with photo metadata.
        # Corresponds to the JSON property `photo`
        # @return [Google::Apis::StreetviewpublishV1::Photo]
        attr_accessor :photo
      
        # Required. Mask that identifies fields on the photo metadata to update. If not
        # present, the old Photo metadata is entirely replaced with the new Photo
        # metadata in this request. The update fails if invalid fields are specified.
        # Multiple fields can be specified in a comma-delimited list. The following
        # fields are valid: * `pose.heading` * `pose.latLngPair` * `pose.pitch` * `pose.
        # roll` * `pose.level` * `pose.altitude` * `connections` * `places` > Note: When
        # updateMask contains repeated fields, the entire set of repeated values get
        # replaced with the new contents. For example, if updateMask contains `
        # connections` and `UpdatePhotoRequest.photo.connections` is empty, all
        # connections are removed.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @photo = args[:photo] if args.key?(:photo)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Upload reference for media files.
      class UploadRef
        include Google::Apis::Core::Hashable
      
        # An upload reference should be unique for each user. It follows the form: "
        # https://streetviewpublish.googleapis.com/media/user/`account_id`/photo/`
        # upload_reference`"
        # Corresponds to the JSON property `uploadUrl`
        # @return [String]
        attr_accessor :upload_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upload_url = args[:upload_url] if args.key?(:upload_url)
        end
      end
    end
  end
end
