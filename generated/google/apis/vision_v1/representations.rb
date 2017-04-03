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
      
      class CropHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Landmark
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Word
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Paragraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FaceAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchAnnotateImagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLongRect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Symbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CropHintsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SafeSearchAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DominantColorsAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CropHintsParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Block
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchAnnotateImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebDetection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CropHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :importance_fraction, as: 'importanceFraction'
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
        end
      end
      
      class Landmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :position, as: 'position', class: Google::Apis::VisionV1::Position, decorator: Google::Apis::VisionV1::Position::Representation
      
        end
      end
      
      class WebImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class Word
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::VisionV1::TextProperty, decorator: Google::Apis::VisionV1::TextProperty::Representation
      
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::VisionV1::Symbol, decorator: Google::Apis::VisionV1::Symbol::Representation
      
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :source, as: 'source', class: Google::Apis::VisionV1::ImageSource, decorator: Google::Apis::VisionV1::ImageSource::Representation
      
        end
      end
      
      class Paragraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::VisionV1::TextProperty, decorator: Google::Apis::VisionV1::TextProperty::Representation
      
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          collection :words, as: 'words', class: Google::Apis::VisionV1::Word, decorator: Google::Apis::VisionV1::Word::Representation
      
        end
      end
      
      class FaceAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sorrow_likelihood, as: 'sorrowLikelihood'
          property :tilt_angle, as: 'tiltAngle'
          property :fd_bounding_poly, as: 'fdBoundingPoly', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          property :surprise_likelihood, as: 'surpriseLikelihood'
          collection :landmarks, as: 'landmarks', class: Google::Apis::VisionV1::Landmark, decorator: Google::Apis::VisionV1::Landmark::Representation
      
          property :anger_likelihood, as: 'angerLikelihood'
          property :joy_likelihood, as: 'joyLikelihood'
          property :landmarking_confidence, as: 'landmarkingConfidence'
          property :detection_confidence, as: 'detectionConfidence'
          property :pan_angle, as: 'panAngle'
          property :under_exposed_likelihood, as: 'underExposedLikelihood'
          property :blurred_likelihood, as: 'blurredLikelihood'
          property :headwear_likelihood, as: 'headwearLikelihood'
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          property :roll_angle, as: 'rollAngle'
        end
      end
      
      class BatchAnnotateImagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::VisionV1::AnnotateImageRequest, decorator: Google::Apis::VisionV1::AnnotateImageRequest::Representation
      
        end
      end
      
      class DetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_prefix, as: 'isPrefix'
          property :type, as: 'type'
        end
      end
      
      class ImageContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :language_hints, as: 'languageHints'
          property :lat_long_rect, as: 'latLongRect', class: Google::Apis::VisionV1::LatLongRect, decorator: Google::Apis::VisionV1::LatLongRect::Representation
      
          property :crop_hints_params, as: 'cropHintsParams', class: Google::Apis::VisionV1::CropHintsParams, decorator: Google::Apis::VisionV1::CropHintsParams::Representation
      
        end
      end
      
      class Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::VisionV1::Block, decorator: Google::Apis::VisionV1::Block::Representation
      
          property :property, as: 'property', class: Google::Apis::VisionV1::TextProperty, decorator: Google::Apis::VisionV1::TextProperty::Representation
      
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end
      
      class AnnotateImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::VisionV1::Image, decorator: Google::Apis::VisionV1::Image::Representation
      
          collection :features, as: 'features', class: Google::Apis::VisionV1::Feature, decorator: Google::Apis::VisionV1::Feature::Representation
      
          property :image_context, as: 'imageContext', class: Google::Apis::VisionV1::ImageContext, decorator: Google::Apis::VisionV1::ImageContext::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class LatLongRect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_lat_lng, as: 'minLatLng', class: Google::Apis::VisionV1::LatLng, decorator: Google::Apis::VisionV1::LatLng::Representation
      
          property :max_lat_lng, as: 'maxLatLng', class: Google::Apis::VisionV1::LatLng, decorator: Google::Apis::VisionV1::LatLng::Representation
      
        end
      end
      
      class Symbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::VisionV1::TextProperty, decorator: Google::Apis::VisionV1::TextProperty::Representation
      
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          property :text, as: 'text'
        end
      end
      
      class CropHintsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crop_hints, as: 'cropHints', class: Google::Apis::VisionV1::CropHint, decorator: Google::Apis::VisionV1::CropHint::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :red, as: 'red'
          property :green, as: 'green'
          property :blue, as: 'blue'
          property :alpha, as: 'alpha'
        end
      end
      
      class ImageProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dominant_colors, as: 'dominantColors', class: Google::Apis::VisionV1::DominantColorsAnnotation, decorator: Google::Apis::VisionV1::DominantColorsAnnotation::Representation
      
        end
      end
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :max_results, as: 'maxResults'
        end
      end
      
      class SafeSearchAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult, as: 'adult'
          property :spoof, as: 'spoof'
          property :medical, as: 'medical'
          property :violence, as: 'violence'
        end
      end
      
      class DominantColorsAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :colors, as: 'colors', class: Google::Apis::VisionV1::ColorInfo, decorator: Google::Apis::VisionV1::ColorInfo::Representation
      
        end
      end
      
      class TextAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pages, as: 'pages', class: Google::Apis::VisionV1::Page, decorator: Google::Apis::VisionV1::Page::Representation
      
          property :text, as: 'text'
        end
      end
      
      class Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :y, as: 'y'
          property :x, as: 'x'
        end
      end
      
      class DetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :confidence, as: 'confidence'
        end
      end
      
      class TextProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::VisionV1::DetectedBreak, decorator: Google::Apis::VisionV1::DetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::VisionV1::DetectedLanguage, decorator: Google::Apis::VisionV1::DetectedLanguage::Representation
      
        end
      end
      
      class BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::VisionV1::Vertex, decorator: Google::Apis::VisionV1::Vertex::Representation
      
        end
      end
      
      class WebEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          property :description, as: 'description'
          property :score, as: 'score'
        end
      end
      
      class AnnotateImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text_annotations, as: 'textAnnotations', class: Google::Apis::VisionV1::EntityAnnotation, decorator: Google::Apis::VisionV1::EntityAnnotation::Representation
      
          property :image_properties_annotation, as: 'imagePropertiesAnnotation', class: Google::Apis::VisionV1::ImageProperties, decorator: Google::Apis::VisionV1::ImageProperties::Representation
      
          collection :face_annotations, as: 'faceAnnotations', class: Google::Apis::VisionV1::FaceAnnotation, decorator: Google::Apis::VisionV1::FaceAnnotation::Representation
      
          collection :logo_annotations, as: 'logoAnnotations', class: Google::Apis::VisionV1::EntityAnnotation, decorator: Google::Apis::VisionV1::EntityAnnotation::Representation
      
          property :crop_hints_annotation, as: 'cropHintsAnnotation', class: Google::Apis::VisionV1::CropHintsAnnotation, decorator: Google::Apis::VisionV1::CropHintsAnnotation::Representation
      
          property :web_detection, as: 'webDetection', class: Google::Apis::VisionV1::WebDetection, decorator: Google::Apis::VisionV1::WebDetection::Representation
      
          collection :label_annotations, as: 'labelAnnotations', class: Google::Apis::VisionV1::EntityAnnotation, decorator: Google::Apis::VisionV1::EntityAnnotation::Representation
      
          property :safe_search_annotation, as: 'safeSearchAnnotation', class: Google::Apis::VisionV1::SafeSearchAnnotation, decorator: Google::Apis::VisionV1::SafeSearchAnnotation::Representation
      
          property :error, as: 'error', class: Google::Apis::VisionV1::Status, decorator: Google::Apis::VisionV1::Status::Representation
      
          property :full_text_annotation, as: 'fullTextAnnotation', class: Google::Apis::VisionV1::TextAnnotation, decorator: Google::Apis::VisionV1::TextAnnotation::Representation
      
          collection :landmark_annotations, as: 'landmarkAnnotations', class: Google::Apis::VisionV1::EntityAnnotation, decorator: Google::Apis::VisionV1::EntityAnnotation::Representation
      
        end
      end
      
      class CropHintsParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_ratios, as: 'aspectRatios'
        end
      end
      
      class Block
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::VisionV1::TextProperty, decorator: Google::Apis::VisionV1::TextProperty::Representation
      
          property :block_type, as: 'blockType'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::VisionV1::Paragraph, decorator: Google::Apis::VisionV1::Paragraph::Representation
      
        end
      end
      
      class Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :uint64_value, :numeric_string => true, as: 'uint64Value'
          property :name, as: 'name'
        end
      end
      
      class LocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::VisionV1::LatLng, decorator: Google::Apis::VisionV1::LatLng::Representation
      
        end
      end
      
      class ImageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_image_uri, as: 'gcsImageUri'
          property :image_uri, as: 'imageUri'
        end
      end
      
      class BatchAnnotateImagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::VisionV1::AnnotateImageResponse, decorator: Google::Apis::VisionV1::AnnotateImageResponse::Representation
      
        end
      end
      
      class WebDetection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :full_matching_images, as: 'fullMatchingImages', class: Google::Apis::VisionV1::WebImage, decorator: Google::Apis::VisionV1::WebImage::Representation
      
          collection :web_entities, as: 'webEntities', class: Google::Apis::VisionV1::WebEntity, decorator: Google::Apis::VisionV1::WebEntity::Representation
      
          collection :pages_with_matching_images, as: 'pagesWithMatchingImages', class: Google::Apis::VisionV1::WebPage, decorator: Google::Apis::VisionV1::WebPage::Representation
      
          collection :partial_matching_images, as: 'partialMatchingImages', class: Google::Apis::VisionV1::WebImage, decorator: Google::Apis::VisionV1::WebImage::Representation
      
          collection :visually_similar_images, as: 'visuallySimilarImages', class: Google::Apis::VisionV1::WebImage, decorator: Google::Apis::VisionV1::WebImage::Representation
      
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :y, as: 'y'
          property :x, as: 'x'
          property :z, as: 'z'
        end
      end
      
      class WebPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :url, as: 'url'
        end
      end
      
      class ColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
          property :pixel_fraction, as: 'pixelFraction'
          property :color, as: 'color', class: Google::Apis::VisionV1::Color, decorator: Google::Apis::VisionV1::Color::Representation
      
        end
      end
      
      class EntityAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::VisionV1::BoundingPoly, decorator: Google::Apis::VisionV1::BoundingPoly::Representation
      
          property :locale, as: 'locale'
          property :topicality, as: 'topicality'
          property :description, as: 'description'
          collection :properties, as: 'properties', class: Google::Apis::VisionV1::Property, decorator: Google::Apis::VisionV1::Property::Representation
      
          property :score, as: 'score'
          collection :locations, as: 'locations', class: Google::Apis::VisionV1::LocationInfo, decorator: Google::Apis::VisionV1::LocationInfo::Representation
      
          property :mid, as: 'mid'
          property :confidence, as: 'confidence'
        end
      end
    end
  end
end
