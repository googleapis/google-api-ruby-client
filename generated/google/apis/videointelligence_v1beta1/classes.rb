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
    module VideointelligenceV1beta1
      
      # Video annotation progress. Included in the `metadata`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1AnnotateVideoProgress
        include Google::Apis::Core::Hashable
      
        # Progress metadata for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationProgress`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1VideoAnnotationProgress>]
        attr_accessor :annotation_progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_progress = args[:annotation_progress] if args.key?(:annotation_progress)
        end
      end
      
      # Video annotation response. Included in the `response`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1AnnotateVideoResponse
        include Google::Apis::Core::Hashable
      
        # Annotation results for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationResults`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1VideoAnnotationResults>]
        attr_accessor :annotation_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_results = args[:annotation_results] if args.key?(:annotation_results)
        end
      end
      
      # Label annotation.
      class GoogleCloudVideointelligenceV1LabelAnnotation
        include Google::Apis::Core::Hashable
      
        # Textual description, e.g. `Fixed-gear bicycle`.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Language code for `description` in BCP-47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Where the label was detected and with what confidence.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1LabelLocation>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # Label location.
      class GoogleCloudVideointelligenceV1LabelLocation
        include Google::Apis::Core::Hashable
      
        # Confidence that the label is accurate. Range: [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Label level.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Video segment.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1VideoSegment]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @level = args[:level] if args.key?(:level)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # Safe search annotation (based on per-frame visual signals only).
      # If no unsafe content has been detected in a frame, no annotations
      # are present for that frame.
      class GoogleCloudVideointelligenceV1SafeSearchAnnotation
        include Google::Apis::Core::Hashable
      
        # Likelihood of adult content.
        # Corresponds to the JSON property `adult`
        # @return [String]
        attr_accessor :adult
      
        # Time-offset, relative to the beginning of the video,
        # corresponding to the video frame for this annotation.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult = args[:adult] if args.key?(:adult)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Annotation progress for a single video.
      class GoogleCloudVideointelligenceV1VideoAnnotationProgress
        include Google::Apis::Core::Hashable
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Approximate percentage processed thus far.
        # Guaranteed to be 100 when fully processed.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time when the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Time of the most recent update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Annotation results for a single video.
      class GoogleCloudVideointelligenceV1VideoAnnotationResults
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Label annotations. There is exactly one element for each unique label.
        # Corresponds to the JSON property `labelAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1LabelAnnotation>]
        attr_accessor :label_annotations
      
        # Safe search annotations.
        # Corresponds to the JSON property `safeSearchAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1SafeSearchAnnotation>]
        attr_accessor :safe_search_annotations
      
        # Shot annotations. Each shot is represented as a video segment.
        # Corresponds to the JSON property `shotAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1VideoSegment>]
        attr_accessor :shot_annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @label_annotations = args[:label_annotations] if args.key?(:label_annotations)
          @safe_search_annotations = args[:safe_search_annotations] if args.key?(:safe_search_annotations)
          @shot_annotations = args[:shot_annotations] if args.key?(:shot_annotations)
        end
      end
      
      # Video segment.
      class GoogleCloudVideointelligenceV1VideoSegment
        include Google::Apis::Core::Hashable
      
        # Time-offset, relative to the beginning of the video,
        # corresponding to the end of the segment (inclusive).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Time-offset, relative to the beginning of the video,
        # corresponding to the start of the segment (inclusive).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Video annotation progress. Included in the `metadata`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress
        include Google::Apis::Core::Hashable
      
        # Progress metadata for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationProgress`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress>]
        attr_accessor :annotation_progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_progress = args[:annotation_progress] if args.key?(:annotation_progress)
        end
      end
      
      # Video annotation request.
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest
        include Google::Apis::Core::Hashable
      
        # Requested video annotation features.
        # Corresponds to the JSON property `features`
        # @return [Array<String>]
        attr_accessor :features
      
        # The video data bytes. Encoding: base64. If unset, the input video(s)
        # should be specified via `input_uri`. If set, `input_uri` should be unset.
        # Corresponds to the JSON property `inputContent`
        # @return [String]
        attr_accessor :input_content
      
        # Input video location. Currently, only
        # [Google Cloud Storage](https://cloud.google.com/storage/) URIs are
        # supported, which must be specified in the following format:
        # `gs://bucket-id/object-id` (other URI formats return
        # google.rpc.Code.INVALID_ARGUMENT). For more information, see
        # [Request URIs](/storage/docs/reference-uris).
        # A video URI may include wildcards in `object-id`, and thus identify
        # multiple videos. Supported wildcards: '*' to match 0 or more characters;
        # '?' to match 1 character. If unset, the input video should be embedded
        # in the request as `input_content`. If set, `input_content` should be unset.
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Optional cloud region where annotation should take place. Supported cloud
        # regions: `us-east1`, `us-west1`, `europe-west1`, `asia-east1`. If no region
        # is specified, a region will be determined based on video file location.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Optional location where the output (in JSON format) should be stored.
        # Currently, only [Google Cloud Storage](https://cloud.google.com/storage/)
        # URIs are supported, which must be specified in the following format:
        # `gs://bucket-id/object-id` (other URI formats return
        # google.rpc.Code.INVALID_ARGUMENT). For more information, see
        # [Request URIs](/storage/docs/reference-uris).
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        # Video context and/or feature-specific parameters.
        # Corresponds to the JSON property `videoContext`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoContext]
        attr_accessor :video_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @features = args[:features] if args.key?(:features)
          @input_content = args[:input_content] if args.key?(:input_content)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @location_id = args[:location_id] if args.key?(:location_id)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
          @video_context = args[:video_context] if args.key?(:video_context)
        end
      end
      
      # Video annotation response. Included in the `response`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse
        include Google::Apis::Core::Hashable
      
        # Annotation results for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationResults`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoAnnotationResults>]
        attr_accessor :annotation_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_results = args[:annotation_results] if args.key?(:annotation_results)
        end
      end
      
      # Label annotation.
      class GoogleCloudVideointelligenceV1beta1LabelAnnotation
        include Google::Apis::Core::Hashable
      
        # Textual description, e.g. `Fixed-gear bicycle`.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Language code for `description` in BCP-47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Where the label was detected and with what confidence.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1LabelLocation>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # Label location.
      class GoogleCloudVideointelligenceV1beta1LabelLocation
        include Google::Apis::Core::Hashable
      
        # Confidence that the label is accurate. Range: [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Label level.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Video segment.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoSegment]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @level = args[:level] if args.key?(:level)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # Safe search annotation (based on per-frame visual signals only).
      # If no unsafe content has been detected in a frame, no annotations
      # are present for that frame. If only some types of unsafe content
      # have been detected in a frame, the likelihood is set to `UNKNOWN`
      # for all other types of unsafe content.
      class GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation
        include Google::Apis::Core::Hashable
      
        # Likelihood of adult content.
        # Corresponds to the JSON property `adult`
        # @return [String]
        attr_accessor :adult
      
        # Likelihood of medical content.
        # Corresponds to the JSON property `medical`
        # @return [String]
        attr_accessor :medical
      
        # Likelihood of racy content.
        # Corresponds to the JSON property `racy`
        # @return [String]
        attr_accessor :racy
      
        # Likelihood that an obvious modification was made to the original
        # version to make it appear funny or offensive.
        # Corresponds to the JSON property `spoof`
        # @return [String]
        attr_accessor :spoof
      
        # Video time offset in microseconds.
        # Corresponds to the JSON property `timeOffset`
        # @return [Fixnum]
        attr_accessor :time_offset
      
        # Likelihood of violent content.
        # Corresponds to the JSON property `violent`
        # @return [String]
        attr_accessor :violent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult = args[:adult] if args.key?(:adult)
          @medical = args[:medical] if args.key?(:medical)
          @racy = args[:racy] if args.key?(:racy)
          @spoof = args[:spoof] if args.key?(:spoof)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
          @violent = args[:violent] if args.key?(:violent)
        end
      end
      
      # Annotation progress for a single video.
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress
        include Google::Apis::Core::Hashable
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Approximate percentage processed thus far.
        # Guaranteed to be 100 when fully processed.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time when the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Time of the most recent update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Annotation results for a single video.
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationResults
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Label annotations. There is exactly one element for each unique label.
        # Corresponds to the JSON property `labelAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1LabelAnnotation>]
        attr_accessor :label_annotations
      
        # Safe search annotations.
        # Corresponds to the JSON property `safeSearchAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation>]
        attr_accessor :safe_search_annotations
      
        # Shot annotations. Each shot is represented as a video segment.
        # Corresponds to the JSON property `shotAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoSegment>]
        attr_accessor :shot_annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @label_annotations = args[:label_annotations] if args.key?(:label_annotations)
          @safe_search_annotations = args[:safe_search_annotations] if args.key?(:safe_search_annotations)
          @shot_annotations = args[:shot_annotations] if args.key?(:shot_annotations)
        end
      end
      
      # Video context and/or feature-specific parameters.
      class GoogleCloudVideointelligenceV1beta1VideoContext
        include Google::Apis::Core::Hashable
      
        # If label detection has been requested, what labels should be detected
        # in addition to video-level labels or segment-level labels. If unspecified,
        # defaults to `SHOT_MODE`.
        # Corresponds to the JSON property `labelDetectionMode`
        # @return [String]
        attr_accessor :label_detection_mode
      
        # Model to use for label detection.
        # Supported values: "latest" and "stable" (the default).
        # Corresponds to the JSON property `labelDetectionModel`
        # @return [String]
        attr_accessor :label_detection_model
      
        # Model to use for safe search detection.
        # Supported values: "latest" and "stable" (the default).
        # Corresponds to the JSON property `safeSearchDetectionModel`
        # @return [String]
        attr_accessor :safe_search_detection_model
      
        # Video segments to annotate. The segments may overlap and are not required
        # to be contiguous or span the whole video. If unspecified, each video
        # is treated as a single segment.
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta1VideoSegment>]
        attr_accessor :segments
      
        # Model to use for shot change detection.
        # Supported values: "latest" and "stable" (the default).
        # Corresponds to the JSON property `shotChangeDetectionModel`
        # @return [String]
        attr_accessor :shot_change_detection_model
      
        # Whether the video has been shot from a stationary (i.e. non-moving) camera.
        # When set to true, might improve detection accuracy for moving objects.
        # Corresponds to the JSON property `stationaryCamera`
        # @return [Boolean]
        attr_accessor :stationary_camera
        alias_method :stationary_camera?, :stationary_camera
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_detection_mode = args[:label_detection_mode] if args.key?(:label_detection_mode)
          @label_detection_model = args[:label_detection_model] if args.key?(:label_detection_model)
          @safe_search_detection_model = args[:safe_search_detection_model] if args.key?(:safe_search_detection_model)
          @segments = args[:segments] if args.key?(:segments)
          @shot_change_detection_model = args[:shot_change_detection_model] if args.key?(:shot_change_detection_model)
          @stationary_camera = args[:stationary_camera] if args.key?(:stationary_camera)
        end
      end
      
      # Video segment.
      class GoogleCloudVideointelligenceV1beta1VideoSegment
        include Google::Apis::Core::Hashable
      
        # End offset in microseconds (inclusive). Unset means 0.
        # Corresponds to the JSON property `endTimeOffset`
        # @return [Fixnum]
        attr_accessor :end_time_offset
      
        # Start offset in microseconds (inclusive). Unset means 0.
        # Corresponds to the JSON property `startTimeOffset`
        # @return [Fixnum]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # Video annotation progress. Included in the `metadata`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
        include Google::Apis::Core::Hashable
      
        # Progress metadata for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationProgress`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>]
        attr_accessor :annotation_progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_progress = args[:annotation_progress] if args.key?(:annotation_progress)
        end
      end
      
      # Video annotation response. Included in the `response`
      # field of the `Operation` returned by the `GetOperation`
      # call of the `google::longrunning::Operations` service.
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
        include Google::Apis::Core::Hashable
      
        # Annotation results for all videos specified in `AnnotateVideoRequest`.
        # Corresponds to the JSON property `annotationResults`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>]
        attr_accessor :annotation_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_results = args[:annotation_results] if args.key?(:annotation_results)
        end
      end
      
      # Detected entity from video analysis.
      class GoogleCloudVideointelligenceV1beta2Entity
        include Google::Apis::Core::Hashable
      
        # Textual description, e.g. `Fixed-gear bicycle`.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Opaque entity ID. Some IDs may be available in
        # [Google Knowledge Graph Search
        # API](https://developers.google.com/knowledge-graph/).
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # Language code for `description` in BCP-47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Explicit content annotation (based on per-frame visual signals only).
      # If no explicit content has been detected in a frame, no annotations are
      # present for that frame.
      class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
        include Google::Apis::Core::Hashable
      
        # All video frames where explicit content was detected.
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2ExplicitContentFrame>]
        attr_accessor :frames
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frames = args[:frames] if args.key?(:frames)
        end
      end
      
      # Video frame level annotation results for explicit content.
      class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
        include Google::Apis::Core::Hashable
      
        # Likelihood of the pornography content..
        # Corresponds to the JSON property `pornographyLikelihood`
        # @return [String]
        attr_accessor :pornography_likelihood
      
        # Time-offset, relative to the beginning of the video, corresponding to the
        # video frame for this location.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pornography_likelihood = args[:pornography_likelihood] if args.key?(:pornography_likelihood)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
        end
      end
      
      # Label annotation.
      class GoogleCloudVideointelligenceV1beta2LabelAnnotation
        include Google::Apis::Core::Hashable
      
        # Common categories for the detected entity.
        # E.g. when the label is `Terrier` the category is likely `dog`. And in some
        # cases there might be more than one categories e.g. `Terrier` could also be
        # a `pet`.
        # Corresponds to the JSON property `categoryEntities`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2Entity>]
        attr_accessor :category_entities
      
        # Detected entity from video analysis.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2Entity]
        attr_accessor :entity
      
        # All video frames where a label was detected.
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2LabelFrame>]
        attr_accessor :frames
      
        # All video segments where a label was detected.
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2LabelSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_entities = args[:category_entities] if args.key?(:category_entities)
          @entity = args[:entity] if args.key?(:entity)
          @frames = args[:frames] if args.key?(:frames)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # Video frame level annotation results for label detection.
      class GoogleCloudVideointelligenceV1beta2LabelFrame
        include Google::Apis::Core::Hashable
      
        # Confidence that the label is accurate. Range: [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Time-offset, relative to the beginning of the video, corresponding to the
        # video frame for this location.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
        end
      end
      
      # Video segment level annotation results for label detection.
      class GoogleCloudVideointelligenceV1beta2LabelSegment
        include Google::Apis::Core::Hashable
      
        # Confidence that the label is accurate. Range: [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Video segment.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2VideoSegment]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # Annotation progress for a single video.
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
        include Google::Apis::Core::Hashable
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Approximate percentage processed thus far.
        # Guaranteed to be 100 when fully processed.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time when the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Time of the most recent update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Annotation results for a single video.
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Explicit content annotation (based on per-frame visual signals only).
        # If no explicit content has been detected in a frame, no annotations are
        # present for that frame.
        # Corresponds to the JSON property `explicitAnnotation`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation]
        attr_accessor :explicit_annotation
      
        # Label annotations on frame level.
        # There is exactly one element for each unique label.
        # Corresponds to the JSON property `frameLabelAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2LabelAnnotation>]
        attr_accessor :frame_label_annotations
      
        # Video file location in
        # [Google Cloud Storage](https://cloud.google.com/storage/).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Label annotations on video level or user specified segment level.
        # There is exactly one element for each unique label.
        # Corresponds to the JSON property `segmentLabelAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2LabelAnnotation>]
        attr_accessor :segment_label_annotations
      
        # Shot annotations. Each shot is represented as a video segment.
        # Corresponds to the JSON property `shotAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2VideoSegment>]
        attr_accessor :shot_annotations
      
        # Label annotations on shot level.
        # There is exactly one element for each unique label.
        # Corresponds to the JSON property `shotLabelAnnotations`
        # @return [Array<Google::Apis::VideointelligenceV1beta1::GoogleCloudVideointelligenceV1beta2LabelAnnotation>]
        attr_accessor :shot_label_annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @explicit_annotation = args[:explicit_annotation] if args.key?(:explicit_annotation)
          @frame_label_annotations = args[:frame_label_annotations] if args.key?(:frame_label_annotations)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @segment_label_annotations = args[:segment_label_annotations] if args.key?(:segment_label_annotations)
          @shot_annotations = args[:shot_annotations] if args.key?(:shot_annotations)
          @shot_label_annotations = args[:shot_label_annotations] if args.key?(:shot_label_annotations)
        end
      end
      
      # Video segment.
      class GoogleCloudVideointelligenceV1beta2VideoSegment
        include Google::Apis::Core::Hashable
      
        # Time-offset, relative to the beginning of the video,
        # corresponding to the end of the segment (inclusive).
        # Corresponds to the JSON property `endTimeOffset`
        # @return [String]
        attr_accessor :end_time_offset
      
        # Time-offset, relative to the beginning of the video,
        # corresponding to the start of the segment (inclusive).
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VideointelligenceV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
    end
  end
end
