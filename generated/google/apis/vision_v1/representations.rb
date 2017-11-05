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
    module VisionV1
      
      class GoogleCloudVisionV1AnnotateImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1AnnotateImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1BatchAnnotateImagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1BatchAnnotateImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Block
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1ColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1CropHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1CropHintsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1CropHintsParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1DominantColorsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1EntityAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1FaceAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1FaceAnnotationLandmark
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1ImageContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1ImageProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1ImageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1LatLongRect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1LocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Paragraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1SafeSearchAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Symbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1TextAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1TextAnnotationDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1TextAnnotationDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1TextAnnotationTextProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1WebDetection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1WebDetectionWebEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1WebDetectionWebImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1WebDetectionWebPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1Word
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVisionV1AnnotateImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::VisionV1::GoogleCloudVisionV1Feature, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Feature::Representation
      
          property :image, as: 'image', class: Google::Apis::VisionV1::GoogleCloudVisionV1Image, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Image::Representation
      
          property :image_context, as: 'imageContext', class: Google::Apis::VisionV1::GoogleCloudVisionV1ImageContext, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1ImageContext::Representation
      
        end
      end
      
      class GoogleCloudVisionV1AnnotateImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crop_hints_annotation, as: 'cropHintsAnnotation', class: Google::Apis::VisionV1::GoogleCloudVisionV1CropHintsAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1CropHintsAnnotation::Representation
      
          property :error, as: 'error', class: Google::Apis::VisionV1::GoogleRpcStatus, decorator: Google::Apis::VisionV1::GoogleRpcStatus::Representation
      
          collection :face_annotations, as: 'faceAnnotations', class: Google::Apis::VisionV1::GoogleCloudVisionV1FaceAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1FaceAnnotation::Representation
      
          property :full_text_annotation, as: 'fullTextAnnotation', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotation::Representation
      
          property :image_properties_annotation, as: 'imagePropertiesAnnotation', class: Google::Apis::VisionV1::GoogleCloudVisionV1ImageProperties, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1ImageProperties::Representation
      
          collection :label_annotations, as: 'labelAnnotations', class: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation::Representation
      
          collection :landmark_annotations, as: 'landmarkAnnotations', class: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation::Representation
      
          collection :logo_annotations, as: 'logoAnnotations', class: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation::Representation
      
          property :safe_search_annotation, as: 'safeSearchAnnotation', class: Google::Apis::VisionV1::GoogleCloudVisionV1SafeSearchAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1SafeSearchAnnotation::Representation
      
          collection :text_annotations, as: 'textAnnotations', class: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1EntityAnnotation::Representation
      
          property :web_detection, as: 'webDetection', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetection, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetection::Representation
      
        end
      end
      
      class GoogleCloudVisionV1BatchAnnotateImagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::VisionV1::GoogleCloudVisionV1AnnotateImageRequest, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1AnnotateImageRequest::Representation
      
        end
      end
      
      class GoogleCloudVisionV1BatchAnnotateImagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::VisionV1::GoogleCloudVisionV1AnnotateImageResponse, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1AnnotateImageResponse::Representation
      
        end
      end
      
      class GoogleCloudVisionV1Block
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_type, as: 'blockType'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::VisionV1::GoogleCloudVisionV1Paragraph, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Paragraph::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty::Representation
      
        end
      end
      
      class GoogleCloudVisionV1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::VisionV1::GoogleCloudVisionV1Vertex, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Vertex::Representation
      
        end
      end
      
      class GoogleCloudVisionV1ColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color', class: Google::Apis::VisionV1::GoogleTypeColor, decorator: Google::Apis::VisionV1::GoogleTypeColor::Representation
      
          property :pixel_fraction, as: 'pixelFraction'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudVisionV1CropHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :importance_fraction, as: 'importanceFraction'
        end
      end
      
      class GoogleCloudVisionV1CropHintsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crop_hints, as: 'cropHints', class: Google::Apis::VisionV1::GoogleCloudVisionV1CropHint, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1CropHint::Representation
      
        end
      end
      
      class GoogleCloudVisionV1CropHintsParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_ratios, as: 'aspectRatios'
        end
      end
      
      class GoogleCloudVisionV1DominantColorsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :colors, as: 'colors', class: Google::Apis::VisionV1::GoogleCloudVisionV1ColorInfo, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1ColorInfo::Representation
      
        end
      end
      
      class GoogleCloudVisionV1EntityAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :description, as: 'description'
          property :locale, as: 'locale'
          collection :locations, as: 'locations', class: Google::Apis::VisionV1::GoogleCloudVisionV1LocationInfo, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1LocationInfo::Representation
      
          property :mid, as: 'mid'
          collection :properties, as: 'properties', class: Google::Apis::VisionV1::GoogleCloudVisionV1Property, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Property::Representation
      
          property :score, as: 'score'
          property :topicality, as: 'topicality'
        end
      end
      
      class GoogleCloudVisionV1FaceAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anger_likelihood, as: 'angerLikelihood'
          property :blurred_likelihood, as: 'blurredLikelihood'
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :detection_confidence, as: 'detectionConfidence'
          property :fd_bounding_poly, as: 'fdBoundingPoly', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :headwear_likelihood, as: 'headwearLikelihood'
          property :joy_likelihood, as: 'joyLikelihood'
          property :landmarking_confidence, as: 'landmarkingConfidence'
          collection :landmarks, as: 'landmarks', class: Google::Apis::VisionV1::GoogleCloudVisionV1FaceAnnotationLandmark, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1FaceAnnotationLandmark::Representation
      
          property :pan_angle, as: 'panAngle'
          property :roll_angle, as: 'rollAngle'
          property :sorrow_likelihood, as: 'sorrowLikelihood'
          property :surprise_likelihood, as: 'surpriseLikelihood'
          property :tilt_angle, as: 'tiltAngle'
          property :under_exposed_likelihood, as: 'underExposedLikelihood'
        end
      end
      
      class GoogleCloudVisionV1FaceAnnotationLandmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::VisionV1::GoogleCloudVisionV1Position, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Position::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_results, as: 'maxResults'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :source, as: 'source', class: Google::Apis::VisionV1::GoogleCloudVisionV1ImageSource, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1ImageSource::Representation
      
        end
      end
      
      class GoogleCloudVisionV1ImageContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crop_hints_params, as: 'cropHintsParams', class: Google::Apis::VisionV1::GoogleCloudVisionV1CropHintsParams, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1CropHintsParams::Representation
      
          collection :language_hints, as: 'languageHints'
          property :lat_long_rect, as: 'latLongRect', class: Google::Apis::VisionV1::GoogleCloudVisionV1LatLongRect, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1LatLongRect::Representation
      
        end
      end
      
      class GoogleCloudVisionV1ImageProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dominant_colors, as: 'dominantColors', class: Google::Apis::VisionV1::GoogleCloudVisionV1DominantColorsAnnotation, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1DominantColorsAnnotation::Representation
      
        end
      end
      
      class GoogleCloudVisionV1ImageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_image_uri, as: 'gcsImageUri'
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleCloudVisionV1LatLongRect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_lat_lng, as: 'maxLatLng', class: Google::Apis::VisionV1::GoogleTypeLatLng, decorator: Google::Apis::VisionV1::GoogleTypeLatLng::Representation
      
          property :min_lat_lng, as: 'minLatLng', class: Google::Apis::VisionV1::GoogleTypeLatLng, decorator: Google::Apis::VisionV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleCloudVisionV1LocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::VisionV1::GoogleTypeLatLng, decorator: Google::Apis::VisionV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleCloudVisionV1Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::VisionV1::GoogleCloudVisionV1Block, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Block::Representation
      
          property :height, as: 'height'
          property :property, as: 'property', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty::Representation
      
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudVisionV1Paragraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty::Representation
      
          collection :words, as: 'words', class: Google::Apis::VisionV1::GoogleCloudVisionV1Word, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Word::Representation
      
        end
      end
      
      class GoogleCloudVisionV1Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
          property :z, as: 'z'
        end
      end
      
      class GoogleCloudVisionV1Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :uint64_value, :numeric_string => true, as: 'uint64Value'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudVisionV1SafeSearchAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult, as: 'adult'
          property :medical, as: 'medical'
          property :spoof, as: 'spoof'
          property :violence, as: 'violence'
        end
      end
      
      class GoogleCloudVisionV1Symbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudVisionV1TextAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pages, as: 'pages', class: Google::Apis::VisionV1::GoogleCloudVisionV1Page, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Page::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudVisionV1TextAnnotationDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_prefix, as: 'isPrefix'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudVisionV1TextAnnotationDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVisionV1TextAnnotationTextProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationDetectedBreak, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationDetectedLanguage, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationDetectedLanguage::Representation
      
        end
      end
      
      class GoogleCloudVisionV1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudVisionV1WebDetection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :full_matching_images, as: 'fullMatchingImages', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage::Representation
      
          collection :pages_with_matching_images, as: 'pagesWithMatchingImages', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebPage, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebPage::Representation
      
          collection :partial_matching_images, as: 'partialMatchingImages', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage::Representation
      
          collection :visually_similar_images, as: 'visuallySimilarImages', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebImage::Representation
      
          collection :web_entities, as: 'webEntities', class: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebEntity, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1WebDetectionWebEntity::Representation
      
        end
      end
      
      class GoogleCloudVisionV1WebDetectionWebEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudVisionV1WebDetectionWebImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudVisionV1WebDetectionWebPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudVisionV1Word
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1BoundingPoly::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1TextAnnotationTextProperty::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::VisionV1::GoogleCloudVisionV1Symbol, decorator: Google::Apis::VisionV1::GoogleCloudVisionV1Symbol::Representation
      
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
      
      class GoogleTypeColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
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
