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
    module VisionV1p1beta1
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1AnnotateImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1AnnotateImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1BatchAnnotateImagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1BatchAnnotateImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Block
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1ColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1CropHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1CropHintsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1CropHintsParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1DominantColorsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1EntityAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1FaceAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1ImageContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1ImageProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1ImageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1LatLongRect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1LocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Paragraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1SafeSearchAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Symbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1p1beta1Word
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
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
      
      class GoogleCloudVisionV1p1beta1AnnotateImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Feature, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Feature::Representation
      
          property :image, as: 'image', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Image, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Image::Representation
      
          property :image_context, as: 'imageContext', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageContext, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageContext::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1AnnotateImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crop_hints_annotation, as: 'cropHintsAnnotation', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHintsAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHintsAnnotation::Representation
      
          property :error, as: 'error', class: Google::Apis::VisionV1p1beta1::Status, decorator: Google::Apis::VisionV1p1beta1::Status::Representation
      
          collection :face_annotations, as: 'faceAnnotations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1FaceAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1FaceAnnotation::Representation
      
          property :full_text_annotation, as: 'fullTextAnnotation', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotation::Representation
      
          property :image_properties_annotation, as: 'imagePropertiesAnnotation', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageProperties, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageProperties::Representation
      
          collection :label_annotations, as: 'labelAnnotations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation::Representation
      
          collection :landmark_annotations, as: 'landmarkAnnotations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation::Representation
      
          collection :logo_annotations, as: 'logoAnnotations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation::Representation
      
          property :safe_search_annotation, as: 'safeSearchAnnotation', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1SafeSearchAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1SafeSearchAnnotation::Representation
      
          collection :text_annotations, as: 'textAnnotations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1EntityAnnotation::Representation
      
          property :web_detection, as: 'webDetection', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetection, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetection::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1BatchAnnotateImagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1AnnotateImageRequest, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1AnnotateImageRequest::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1BatchAnnotateImagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1AnnotateImageResponse, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1AnnotateImageResponse::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1Block
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_type, as: 'blockType'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Paragraph, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Paragraph::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Vertex, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Vertex::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1ColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color', class: Google::Apis::VisionV1p1beta1::Color, decorator: Google::Apis::VisionV1p1beta1::Color::Representation
      
          property :pixel_fraction, as: 'pixelFraction'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudVisionV1p1beta1CropHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :importance_fraction, as: 'importanceFraction'
        end
      end
      
      class GoogleCloudVisionV1p1beta1CropHintsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crop_hints, as: 'cropHints', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHint, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHint::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1CropHintsParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_ratios, as: 'aspectRatios'
        end
      end
      
      class GoogleCloudVisionV1p1beta1DominantColorsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :colors, as: 'colors', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ColorInfo, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ColorInfo::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1EntityAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :description, as: 'description'
          property :locale, as: 'locale'
          collection :locations, as: 'locations', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1LocationInfo, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1LocationInfo::Representation
      
          property :mid, as: 'mid'
          collection :properties, as: 'properties', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Property, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Property::Representation
      
          property :score, as: 'score'
          property :topicality, as: 'topicality'
        end
      end
      
      class GoogleCloudVisionV1p1beta1FaceAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anger_likelihood, as: 'angerLikelihood'
          property :blurred_likelihood, as: 'blurredLikelihood'
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :detection_confidence, as: 'detectionConfidence'
          property :fd_bounding_poly, as: 'fdBoundingPoly', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :headwear_likelihood, as: 'headwearLikelihood'
          property :joy_likelihood, as: 'joyLikelihood'
          property :landmarking_confidence, as: 'landmarkingConfidence'
          collection :landmarks, as: 'landmarks', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1FaceAnnotationLandmark, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1FaceAnnotationLandmark::Representation
      
          property :pan_angle, as: 'panAngle'
          property :roll_angle, as: 'rollAngle'
          property :sorrow_likelihood, as: 'sorrowLikelihood'
          property :surprise_likelihood, as: 'surpriseLikelihood'
          property :tilt_angle, as: 'tiltAngle'
          property :under_exposed_likelihood, as: 'underExposedLikelihood'
        end
      end
      
      class GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Position, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Position::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_results, as: 'maxResults'
          property :model, as: 'model'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :source, as: 'source', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageSource, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1ImageSource::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1ImageContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crop_hints_params, as: 'cropHintsParams', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHintsParams, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1CropHintsParams::Representation
      
          collection :language_hints, as: 'languageHints'
          property :lat_long_rect, as: 'latLongRect', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1LatLongRect, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1LatLongRect::Representation
      
          property :web_detection_params, as: 'webDetectionParams', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionParams, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionParams::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1ImageProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dominant_colors, as: 'dominantColors', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1DominantColorsAnnotation, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1DominantColorsAnnotation::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1ImageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_image_uri, as: 'gcsImageUri'
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleCloudVisionV1p1beta1LatLongRect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_lat_lng, as: 'maxLatLng', class: Google::Apis::VisionV1p1beta1::LatLng, decorator: Google::Apis::VisionV1p1beta1::LatLng::Representation
      
          property :min_lat_lng, as: 'minLatLng', class: Google::Apis::VisionV1p1beta1::LatLng, decorator: Google::Apis::VisionV1p1beta1::LatLng::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1LocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::VisionV1p1beta1::LatLng, decorator: Google::Apis::VisionV1p1beta1::LatLng::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Block, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Block::Representation
      
          property :confidence, as: 'confidence'
          property :height, as: 'height'
          property :property, as: 'property', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty::Representation
      
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Paragraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :property, as: 'property', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty::Representation
      
          collection :words, as: 'words', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Word, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Word::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
          property :z, as: 'z'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :uint64_value, :numeric_string => true, as: 'uint64Value'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudVisionV1p1beta1SafeSearchAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult, as: 'adult'
          property :medical, as: 'medical'
          property :racy, as: 'racy'
          property :spoof, as: 'spoof'
          property :violence, as: 'violence'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Symbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :property, as: 'property', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pages, as: 'pages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Page, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Page::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_prefix, as: 'isPrefix'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :best_guess_labels, as: 'bestGuessLabels', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebLabel, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebLabel::Representation
      
          collection :full_matching_images, as: 'fullMatchingImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage::Representation
      
          collection :pages_with_matching_images, as: 'pagesWithMatchingImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebPage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebPage::Representation
      
          collection :partial_matching_images, as: 'partialMatchingImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage::Representation
      
          collection :visually_similar_images, as: 'visuallySimilarImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage::Representation
      
          collection :web_entities, as: 'webEntities', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebEntity, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebEntity::Representation
      
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_geo_results, as: 'includeGeoResults'
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVisionV1p1beta1WebDetectionWebPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :full_matching_images, as: 'fullMatchingImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage::Representation
      
          property :page_title, as: 'pageTitle'
          collection :partial_matching_images, as: 'partialMatchingImages', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1WebDetectionWebImage::Representation
      
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudVisionV1p1beta1Word
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :property, as: 'property', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1TextAnnotationTextProperty::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Symbol, decorator: Google::Apis::VisionV1p1beta1::GoogleCloudVisionV1p1beta1Symbol::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
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
    end
  end
end
