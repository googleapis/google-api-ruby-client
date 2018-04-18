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
    module VideointelligenceV1
      
      class GoogleCloudVideointelligenceV1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1LabelLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1EmotionAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features'
          property :input_content, :base64 => true, as: 'inputContent'
          property :input_uri, as: 'inputUri'
          property :location_id, as: 'locationId'
          property :output_uri, as: 'outputUri'
          property :video_context, as: 'videoContext', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoContext, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoContext::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_detection_mode, as: 'labelDetectionMode'
          property :model, as: 'model'
          property :stationary_camera, as: 'stationaryCamera'
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_content_detection_config, as: 'explicitContentDetectionConfig', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig::Representation
      
          property :label_detection_config, as: 'labelDetectionConfig', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelDetectionConfig, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1LabelDetectionConfig::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1VideoSegment::Representation
      
          property :shot_change_detection_config, as: 'shotChangeDetectionConfig', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ShotChangeDetectionConfig, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1ShotChangeDetectionConfig::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :language_code, as: 'languageCode'
          collection :locations, as: 'locations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1LabelLocation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1LabelLocation::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1LabelLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :level, as: 'level'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult, as: 'adult'
          property :medical, as: 'medical'
          property :racy, as: 'racy'
          property :spoof, as: 'spoof'
          property :time_offset, :numeric_string => true, as: 'timeOffset'
          property :violent, as: 'violent'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1::GoogleRpcStatus::Representation
      
          property :input_uri, as: 'inputUri'
          collection :label_annotations, as: 'labelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1LabelAnnotation::Representation
      
          collection :safe_search_annotations, as: 'safeSearchAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, :numeric_string => true, as: 'endTimeOffset'
          property :start_time_offset, :numeric_string => true, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1EmotionAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emotion, as: 'emotion'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :emotions, as: 'emotions', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1EmotionAttribute, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1EmotionAttribute::Representation
      
          property :normalized_bounding_box, as: 'normalizedBoundingBox', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceDetectionFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionAttribute, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionAttribute::Representation
      
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1FaceSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1Entity, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelFrame, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom, as: 'bottom'
          property :left, as: 'left'
          property :right, as: 'right'
          property :top, as: 'top'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1WordInfo, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1WordInfo::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation::Representation
      
          collection :face_detection_annotations, as: 'faceDetectionAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          collection :speech_transcriptions, as: 'speechTranscriptions', class: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1SpeechTranscription, decorator: Google::Apis::VideointelligenceV1::GoogleCloudVideointelligenceV1p1beta1SpeechTranscription::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::VideointelligenceV1::GoogleLongrunningOperation, decorator: Google::Apis::VideointelligenceV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
