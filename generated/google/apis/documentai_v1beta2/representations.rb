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
    module DocumentaiV1beta2
      
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTranslation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2AutoMlParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTranslation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2EntityExtractionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2FormExtractionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2KeyValuePairHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2OcrParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2TableBoundHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2TableExtractionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
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
      
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1NormalizedVertex, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1Vertex, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1Vertex::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntity, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntity::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntityRelation::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPage::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentShardInfo, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyle, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyle::Representation
      
          collection :translations, as: 'translations', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTranslation, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTranslation::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageBlock, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageBlock::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDimension, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageFormField, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageFormField::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLine, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageParagraph::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTable, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageToken, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageToken::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1BoundingPoly, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1beta2::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta2::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1beta2::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta2::GoogleTypeColor::Representation
      
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTranslation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
          property :translated_text, as: 'translatedText'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsSource, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsDestination, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsDestination::Representation
      
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1InputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1InputConfig::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1OutputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1OutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2AutoMlParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2NormalizedVertex, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Vertex, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Vertex::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntity, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntity::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntityRelation::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentLabel, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentLabel::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPage::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentShardInfo, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyle, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyle::Representation
      
          collection :translations, as: 'translations', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTranslation, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTranslation::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automl_model, as: 'automlModel'
          property :confidence, as: 'confidence'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageBlock, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageBlock::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDimension, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageFormField, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageFormField::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLine, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageParagraph::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTable, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageToken, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageToken::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1beta2::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta2::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1beta2::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta2::GoogleTypeColor::Representation
      
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTranslation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
          property :translated_text, as: 'translatedText'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2EntityExtractionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2FormExtractionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          collection :key_value_pair_hints, as: 'keyValuePairHints', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2KeyValuePairHint, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2KeyValuePairHint::Representation
      
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsSource, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2KeyValuePairHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :value_types, as: 'valueTypes'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2OcrParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :language_hints, as: 'languageHints'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsDestination, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsDestination::Representation
      
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automl_params, as: 'automlParams', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2AutoMlParams, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2AutoMlParams::Representation
      
          property :document_type, as: 'documentType'
          property :entity_extraction_params, as: 'entityExtractionParams', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2EntityExtractionParams, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2EntityExtractionParams::Representation
      
          property :form_extraction_params, as: 'formExtractionParams', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2FormExtractionParams, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2FormExtractionParams::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig::Representation
      
          property :ocr_params, as: 'ocrParams', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OcrParams, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OcrParams::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig::Representation
      
          property :parent, as: 'parent'
          property :table_extraction_params, as: 'tableExtractionParams', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableExtractionParams, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableExtractionParams::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2TableBoundHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly::Representation
      
          property :page_number, as: 'pageNumber'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2TableExtractionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          collection :header_hints, as: 'headerHints'
          property :model_version, as: 'modelVersion'
          collection :table_bound_hints, as: 'tableBoundHints', class: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableBoundHint, decorator: Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableBoundHint::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
    end
  end
end
