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
      
      # Response to an batch document processing request. This is returned in
      # the LRO Operation after the operation is complete.
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Responses for each individual document.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Document represents the canonical document resource in Document Understanding
      # AI.
      # It is an interchange format that provides insights into documents and allows
      # for collaboration between users and Document Understanding AI to iterate and
      # optimize for quality.
      class GoogleCloudDocumentaiV1beta1Document
        include Google::Apis::Core::Hashable
      
        # Inline document content, represented as a stream of bytes.
        # Note: As with all `bytes` fields, protobuffers use a pure binary
        # representation, whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards,
        # entities in this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntity>]
        attr_accessor :entities
      
        # Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
        attr_accessor :error
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see
        # https://www.iana.org/assignments/media-types/media-types.xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPage>]
        attr_accessor :pages
      
        # For a large document, sharding may be performed to produce several
        # document shards. Each document shard contains this field to detail which
        # shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentShardInfo]
        attr_accessor :shard_info
      
        # UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyle>]
        attr_accessor :text_styles
      
        # A list of translations on Document.text. For document shards,
        # translations in this list may cross shard boundaries.
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTranslation>]
        attr_accessor :translations
      
        # Currently supports Google Cloud Storage URI of the form
        # `gs://bucket_name/object_name`. Object versioning is not supported.
        # See [Google Cloud Storage Request
        # URIs](https://cloud.google.com/storage/docs/reference-uris) for more
        # info.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @translations = args[:translations] if args.key?(:translations)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A phrase in the text that is a known entity type, such as a person, an
      # organization, or location.
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Deprecated.  Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Text value in the document e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1beta1DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page.
        # A block has a set of lines (collected into paragraphs) that have a common
        # line-spacing and orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page.
        # A collection of tokens that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document.
        # Useful when a page is taken out of a Document for individual
        # processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page.
        # A collection of lines that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageToken>]
        attr_accessor :tokens
      
        # A list of detected non-text visual elements e.g. checkbox,
        # signature etc. on the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a
      # common line-spacing and orientation.
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see
        # http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this
        # layout is for. e.g. confidence can be for a single token, a table,
        # a visual element, etc. depending on context. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line.
      # Does not cross column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the
      # page.
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # For a large document, sharding may be performed to produce several
      # document shards. Each document shard contains this field to detail which
      # shard it is.
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall
        # document global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS
      # conventions as much as possible.
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well.
        # Note: this proto does not carry information about the absolute color space
        # that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
        # DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB color
        # space.
        # Note: when color equality needs to be decided, implementations, unless
        # documented otherwise, will treat two colors to be equal if all their red,
        # green, blue and alpha values each differ by at most 1e-5.
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [[Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well.
        # Note: this proto does not carry information about the absolute color space
        # that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
        # DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB color
        # space.
        # Note: when color equality needs to be decided, implementations, unless
        # documented otherwise, will treat two colors to be equal if all their red,
        # green, blue and alpha values each differ by at most 1e-5.
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [[Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :color
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter.
        # https://www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard.
        # <text-decoration-line> <text-decoration-color> <text-decoration-style>
        # https://www.w3schools.com/cssref/pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique.
        # https://www.w3schools.com/cssref/pr_font_font-style.asp
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (in, px, pt, etc.).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds
      # which indicate that the text extends into another document shard for
      # large sharded documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the
        # Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # A translation of the text segment.
      class GoogleCloudDocumentaiV1beta1DocumentTranslation
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see
        # http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text translated into the target language.
        # Corresponds to the JSON property `translatedText`
        # @return [String]
        attr_accessor :translated_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @translated_text = args[:translated_text] if args.key?(:translated_text)
        end
      end
      
      # The Google Cloud Storage location where the output file will be written to.
      class GoogleCloudDocumentaiV1beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The Google Cloud Storage location where the input file will be read from.
      class GoogleCloudDocumentaiV1beta1GcsSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The desired input location and metadata.
      class GoogleCloudDocumentaiV1beta1InputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the input file will be read from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsSource]
        attr_accessor :gcs_source
      
        # Required. Mimetype of the input. Current supported mimetypes are application/
        # pdf,
        # image/tiff, and image/gif.
        # In addition, application/json type is supported for requests with
        # ProcessDocumentRequest.automl_params field set. The JSON file needs to
        # be in Document format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A vertex represents a 2D point in the image.
      # NOTE: the normalized vertex coordinates are relative to the original image
      # and range from 0 to 1.
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Contains metadata for the BatchProcessDocuments operation.
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The desired output location and metadata.
      class GoogleCloudDocumentaiV1beta1OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the output file will be written to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1GcsDestination]
        attr_accessor :gcs_destination
      
        # The max number of pages to include into each output Document shard JSON on
        # Google Cloud Storage.
        # The valid range is [1, 100]. If not specified, the default value is 20.
        # For example, for one pdf file with 100 pages, 100 parsed pages will be
        # produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each
        # containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where
        # x and y are 1-indexed page numbers.
        # Example GCS outputs with 157 pages and pages_per_shard = 50:
        # <prefix>pages-001-to-050.json
        # <prefix>pages-051-to-100.json
        # <prefix>pages-101-to-150.json
        # <prefix>pages-151-to-157.json
        # Corresponds to the JSON property `pagesPerShard`
        # @return [Fixnum]
        attr_accessor :pages_per_shard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @pages_per_shard = args[:pages_per_shard] if args.key?(:pages_per_shard)
        end
      end
      
      # Response to a single document processing request.
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The desired input location and metadata.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1InputConfig]
        attr_accessor :input_config
      
        # The desired output location and metadata.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1OutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # A vertex represents a 2D point in the image.
      # NOTE: the vertex coordinates are in the same scale as the original image.
      class GoogleCloudDocumentaiV1beta1Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Parameters to control AutoML model prediction behavior.
      class GoogleCloudDocumentaiV1beta2AutoMlParams
        include Google::Apis::Core::Hashable
      
        # Resource name of the AutoML model.
        # Format: `projects/`project-id`/locations/`location-id`/models/`model-id``.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Request to batch process documents as an asynchronous operation. The output
      # is written to Cloud Storage as JSON in the [Document] format.
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Individual requests for each document.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response to an batch document processing request. This is returned in
      # the LRO Operation after the operation is complete.
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Responses for each individual document.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Document represents the canonical document resource in Document Understanding
      # AI.
      # It is an interchange format that provides insights into documents and allows
      # for collaboration between users and Document Understanding AI to iterate and
      # optimize for quality.
      class GoogleCloudDocumentaiV1beta2Document
        include Google::Apis::Core::Hashable
      
        # Inline document content, represented as a stream of bytes.
        # Note: As with all `bytes` fields, protobuffers use a pure binary
        # representation, whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards,
        # entities in this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntity>]
        attr_accessor :entities
      
        # Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
        attr_accessor :error
      
        # Labels for this document.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentLabel>]
        attr_accessor :labels
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see
        # https://www.iana.org/assignments/media-types/media-types.xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPage>]
        attr_accessor :pages
      
        # For a large document, sharding may be performed to produce several
        # document shards. Each document shard contains this field to detail which
        # shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentShardInfo]
        attr_accessor :shard_info
      
        # UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyle>]
        attr_accessor :text_styles
      
        # A list of translations on Document.text. For document shards,
        # translations in this list may cross shard boundaries.
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTranslation>]
        attr_accessor :translations
      
        # Currently supports Google Cloud Storage URI of the form
        # `gs://bucket_name/object_name`. Object versioning is not supported.
        # See [Google Cloud Storage Request
        # URIs](https://cloud.google.com/storage/docs/reference-uris) for more
        # info.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @translations = args[:translations] if args.key?(:translations)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A phrase in the text that is a known entity type, such as a person, an
      # organization, or location.
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Deprecated.  Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Text value in the document e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # Label attaches schema information and/or other metadata to segments within
      # a Document. Multiple Labels on a single field can denote either
      # different labels, different instances of the same label created at
      # different times, or some combination of both.
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        include Google::Apis::Core::Hashable
      
        # Label is generated AutoML model. This field stores the full resource
        # name of the AutoML model.
        # Format:
        # `projects/`project-id`/locations/`location-id`/models/`model-id``
        # Corresponds to the JSON property `automlModel`
        # @return [String]
        attr_accessor :automl_model
      
        # Confidence score between 0 and 1 for label assignment.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the label.
        # When the label is generated from AutoML Text Classification model, this
        # field represents the name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automl_model = args[:automl_model] if args.key?(:automl_model)
          @confidence = args[:confidence] if args.key?(:confidence)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1beta2DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page.
        # A block has a set of lines (collected into paragraphs) that have a common
        # line-spacing and orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page.
        # A collection of tokens that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document.
        # Useful when a page is taken out of a Document for individual
        # processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page.
        # A collection of lines that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageToken>]
        attr_accessor :tokens
      
        # A list of detected non-text visual elements e.g. checkbox,
        # signature etc. on the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a
      # common line-spacing and orientation.
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see
        # http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        # If the value is non-textual, this field represents the type. Current
        # valid values are:
        # - blank (this indicates the field_value is normal text)
        # - "unfilled_checkbox"
        # - "filled_checkbox"
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this
        # layout is for. e.g. confidence can be for a single token, a table,
        # a visual element, etc. depending on context. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line.
      # Does not cross column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the
      # page.
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # For a large document, sharding may be performed to produce several
      # document shards. Each document shard contains this field to detail which
      # shard it is.
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall
        # document global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS
      # conventions as much as possible.
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well.
        # Note: this proto does not carry information about the absolute color space
        # that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
        # DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB color
        # space.
        # Note: when color equality needs to be decided, implementations, unless
        # documented otherwise, will treat two colors to be equal if all their red,
        # green, blue and alpha values each differ by at most 1e-5.
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [[Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well.
        # Note: this proto does not carry information about the absolute color space
        # that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
        # DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB color
        # space.
        # Note: when color equality needs to be decided, implementations, unless
        # documented otherwise, will treat two colors to be equal if all their red,
        # green, blue and alpha values each differ by at most 1e-5.
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [[Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :color
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter.
        # https://www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard.
        # <text-decoration-line> <text-decoration-color> <text-decoration-style>
        # https://www.w3schools.com/cssref/pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique.
        # https://www.w3schools.com/cssref/pr_font_font-style.asp
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (in, px, pt, etc.).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds
      # which indicate that the text extends into another document shard for
      # large sharded documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the
        # Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # A translation of the text segment.
      class GoogleCloudDocumentaiV1beta2DocumentTranslation
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see
        # http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text translated into the target language.
        # Corresponds to the JSON property `translatedText`
        # @return [String]
        attr_accessor :translated_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @translated_text = args[:translated_text] if args.key?(:translated_text)
        end
      end
      
      # Parameters to control entity extraction behavior.
      class GoogleCloudDocumentaiV1beta2EntityExtractionParams
        include Google::Apis::Core::Hashable
      
        # Whether to enable entity extraction.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Model version of the entity extraction. Default is
        # "builtin/stable". Specify "builtin/latest" for the latest model.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @model_version = args[:model_version] if args.key?(:model_version)
        end
      end
      
      # Parameters to control form extraction behavior.
      class GoogleCloudDocumentaiV1beta2FormExtractionParams
        include Google::Apis::Core::Hashable
      
        # Whether to enable form extraction.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Reserved for future use.
        # Corresponds to the JSON property `keyValuePairHints`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2KeyValuePairHint>]
        attr_accessor :key_value_pair_hints
      
        # Model version of the form extraction system. Default is
        # "builtin/stable". Specify "builtin/latest" for the latest model.
        # For custom form models, specify: “custom/`model_name`". Model name
        # format is "bucket_name/path/to/modeldir" corresponding to
        # "gs://bucket_name/path/to/modeldir" where annotated examples are stored.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @key_value_pair_hints = args[:key_value_pair_hints] if args.key?(:key_value_pair_hints)
          @model_version = args[:model_version] if args.key?(:model_version)
        end
      end
      
      # The Google Cloud Storage location where the output file will be written to.
      class GoogleCloudDocumentaiV1beta2GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The Google Cloud Storage location where the input file will be read from.
      class GoogleCloudDocumentaiV1beta2GcsSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The desired input location and metadata.
      class GoogleCloudDocumentaiV1beta2InputConfig
        include Google::Apis::Core::Hashable
      
        # Content in bytes, represented as a stream of bytes.
        # Note: As with all `bytes` fields, proto buffer messages use a pure binary
        # representation, whereas JSON representations use base64.
        # This field only works for synchronous ProcessDocument method.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # The Google Cloud Storage location where the input file will be read from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsSource]
        attr_accessor :gcs_source
      
        # Required. Mimetype of the input. Current supported mimetypes are application/
        # pdf,
        # image/tiff, and image/gif.
        # In addition, application/json type is supported for requests with
        # ProcessDocumentRequest.automl_params field set. The JSON file needs to
        # be in Document format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Reserved for future use.
      class GoogleCloudDocumentaiV1beta2KeyValuePairHint
        include Google::Apis::Core::Hashable
      
        # The key text for the hint.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Type of the value. This is case-insensitive, and could be one of:
        # ADDRESS, LOCATION, ORGANIZATION, PERSON, PHONE_NUMBER,
        # ID, NUMBER, EMAIL, PRICE, TERMS, DATE, NAME. Types not in this list will
        # be ignored.
        # Corresponds to the JSON property `valueTypes`
        # @return [Array<String>]
        attr_accessor :value_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value_types = args[:value_types] if args.key?(:value_types)
        end
      end
      
      # A vertex represents a 2D point in the image.
      # NOTE: the normalized vertex coordinates are relative to the original image
      # and range from 0 to 1.
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Parameters to control Optical Character Recognition (OCR) behavior.
      class GoogleCloudDocumentaiV1beta2OcrParams
        include Google::Apis::Core::Hashable
      
        # List of languages to use for OCR. In most cases, an empty value
        # yields the best results since it enables automatic language detection. For
        # languages based on the Latin alphabet, setting `language_hints` is not
        # needed. In rare cases, when the language of the text in the image is known,
        # setting a hint will help get better results (although it will be a
        # significant hindrance if the hint is wrong). Document processing returns an
        # error if one or more of the specified languages is not one of the
        # supported languages.
        # Corresponds to the JSON property `languageHints`
        # @return [Array<String>]
        attr_accessor :language_hints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_hints = args[:language_hints] if args.key?(:language_hints)
        end
      end
      
      # Contains metadata for the BatchProcessDocuments operation.
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The desired output location and metadata.
      class GoogleCloudDocumentaiV1beta2OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the output file will be written to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsDestination]
        attr_accessor :gcs_destination
      
        # The max number of pages to include into each output Document shard JSON on
        # Google Cloud Storage.
        # The valid range is [1, 100]. If not specified, the default value is 20.
        # For example, for one pdf file with 100 pages, 100 parsed pages will be
        # produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each
        # containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where
        # x and y are 1-indexed page numbers.
        # Example GCS outputs with 157 pages and pages_per_shard = 50:
        # <prefix>pages-001-to-050.json
        # <prefix>pages-051-to-100.json
        # <prefix>pages-101-to-150.json
        # <prefix>pages-151-to-157.json
        # Corresponds to the JSON property `pagesPerShard`
        # @return [Fixnum]
        attr_accessor :pages_per_shard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @pages_per_shard = args[:pages_per_shard] if args.key?(:pages_per_shard)
        end
      end
      
      # Request to process one document.
      class GoogleCloudDocumentaiV1beta2ProcessDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Parameters to control AutoML model prediction behavior.
        # Corresponds to the JSON property `automlParams`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2AutoMlParams]
        attr_accessor :automl_params
      
        # Specifies a known document type for deeper structure detection. Valid
        # values are currently "general" and "invoice". If not provided, "general"\
        # is used as default. If any other value is given, the request is rejected.
        # Corresponds to the JSON property `documentType`
        # @return [String]
        attr_accessor :document_type
      
        # Parameters to control entity extraction behavior.
        # Corresponds to the JSON property `entityExtractionParams`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2EntityExtractionParams]
        attr_accessor :entity_extraction_params
      
        # Parameters to control form extraction behavior.
        # Corresponds to the JSON property `formExtractionParams`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2FormExtractionParams]
        attr_accessor :form_extraction_params
      
        # The desired input location and metadata.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig]
        attr_accessor :input_config
      
        # Parameters to control Optical Character Recognition (OCR) behavior.
        # Corresponds to the JSON property `ocrParams`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OcrParams]
        attr_accessor :ocr_params
      
        # The desired output location and metadata.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig]
        attr_accessor :output_config
      
        # Target project and location to make a call.
        # Format: `projects/`project-id`/locations/`location-id``.
        # If no location is specified, a region will be chosen automatically.
        # This field is only populated when used in ProcessDocument method.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Parameters to control table extraction behavior.
        # Corresponds to the JSON property `tableExtractionParams`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableExtractionParams]
        attr_accessor :table_extraction_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automl_params = args[:automl_params] if args.key?(:automl_params)
          @document_type = args[:document_type] if args.key?(:document_type)
          @entity_extraction_params = args[:entity_extraction_params] if args.key?(:entity_extraction_params)
          @form_extraction_params = args[:form_extraction_params] if args.key?(:form_extraction_params)
          @input_config = args[:input_config] if args.key?(:input_config)
          @ocr_params = args[:ocr_params] if args.key?(:ocr_params)
          @output_config = args[:output_config] if args.key?(:output_config)
          @parent = args[:parent] if args.key?(:parent)
          @table_extraction_params = args[:table_extraction_params] if args.key?(:table_extraction_params)
        end
      end
      
      # Response to a single document processing request.
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The desired input location and metadata.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2InputConfig]
        attr_accessor :input_config
      
        # The desired output location and metadata.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2OutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # A hint for a table bounding box on the page for table parsing.
      class GoogleCloudDocumentaiV1beta2TableBoundHint
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingBox`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_box
      
        # Optional. Page number for multi-paged inputs this hint applies to. If not
        # provided, this hint will apply to all pages by default. This value is
        # 1-based.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_box = args[:bounding_box] if args.key?(:bounding_box)
          @page_number = args[:page_number] if args.key?(:page_number)
        end
      end
      
      # Parameters to control table extraction behavior.
      class GoogleCloudDocumentaiV1beta2TableExtractionParams
        include Google::Apis::Core::Hashable
      
        # Whether to enable table extraction.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. Reserved for future use.
        # Corresponds to the JSON property `headerHints`
        # @return [Array<String>]
        attr_accessor :header_hints
      
        # Model version of the table extraction system. Default is "builtin/stable".
        # Specify "builtin/latest" for the latest model.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        # Optional. Table bounding box hints that can be provided to complex cases
        # which our algorithm cannot locate the table(s) in.
        # Corresponds to the JSON property `tableBoundHints`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2TableBoundHint>]
        attr_accessor :table_bound_hints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @header_hints = args[:header_hints] if args.key?(:header_hints)
          @model_version = args[:model_version] if args.key?(:model_version)
          @table_bound_hints = args[:table_bound_hints] if args.key?(:table_bound_hints)
        end
      end
      
      # A vertex represents a 2D point in the image.
      # NOTE: the vertex coordinates are in the same scale as the original image.
      class GoogleCloudDocumentaiV1beta2Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
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
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
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
        # `name` should be a resource name ending with `operations/`unique_id``.
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
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
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
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness; for example, the fields of this representation
      # can be trivially provided to the constructor of "java.awt.Color" in Java; it
      # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
      # method in iOS; and, with just a little work, it can be easily formatted into
      # a CSS "rgba()" string in JavaScript, as well.
      # Note: this proto does not carry information about the absolute color space
      # that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
      # DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB color
      # space.
      # Note: when color equality needs to be decided, implementations, unless
      # documented otherwise, will treat two colors to be equal if all their red,
      # green, blue and alpha values each differ by at most 1e-5.
      # Example (Java):
      # import com.google.type.Color;
      # // ...
      # public static java.awt.Color fromProto(Color protocolor) `
      # float alpha = protocolor.hasAlpha()
      # ? protocolor.getAlpha().getValue()
      # : 1.0;
      # return new java.awt.Color(
      # protocolor.getRed(),
      # protocolor.getGreen(),
      # protocolor.getBlue(),
      # alpha);
      # `
      # public static Color toProto(java.awt.Color color) `
      # float red = (float) color.getRed();
      # float green = (float) color.getGreen();
      # float blue = (float) color.getBlue();
      # float denominator = 255.0;
      # Color.Builder resultBuilder =
      # Color
      # .newBuilder()
      # .setRed(red / denominator)
      # .setGreen(green / denominator)
      # .setBlue(blue / denominator);
      # int alpha = color.getAlpha();
      # if (alpha != 255) `
      # result.setAlpha(
      # FloatValue
      # .newBuilder()
      # .setValue(((float) alpha) / denominator)
      # .build());
      # `
      # return resultBuilder.build();
      # `
      # // ...
      # Example (iOS / Obj-C):
      # // ...
      # static UIColor* fromProto(Color* protocolor) `
      # float red = [protocolor red];
      # float green = [protocolor green];
      # float blue = [protocolor blue];
      # FloatValue* alpha_wrapper = [protocolor alpha];
      # float alpha = 1.0;
      # if (alpha_wrapper != nil) `
      # alpha = [alpha_wrapper value];
      # `
      # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
      # `
      # static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha;
      # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
      # return nil;
      # `
      # Color* result = [[Color alloc] init];
      # [result setRed:red];
      # [result setGreen:green];
      # [result setBlue:blue];
      # if (alpha <= 0.9999) `
      # [result setAlpha:floatWrapperWithValue(alpha)];
      # `
      # [result autorelease];
      # return result;
      # `
      # // ...
      # Example (JavaScript):
      # // ...
      # var protoToCssColor = function(rgb_color) `
      # var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0;
      # var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255);
      # var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255);
      # if (!('alpha' in rgb_color)) `
      # return rgbToCssColor_(red, green, blue);
      # `
      # var alphaFrac = rgb_color.alpha.value || 0.0;
      # var rgbParams = [red, green, blue].join(',');
      # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
      # `;
      # var rgbToCssColor_ = function(red, green, blue) `
      # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
      # var hexString = rgbNumber.toString(16);
      # var missingZeros = 6 - hexString.length;
      # var resultBuilder = ['#'];
      # for (var i = 0; i < missingZeros; i++) `
      # resultBuilder.push('0');
      # `
      # resultBuilder.push(hexString);
      # return resultBuilder.join('');
      # `;
      # // ...
      class GoogleTypeColor
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is,
        # the final pixel color is defined by the equation:
        # pixel color = alpha * (this color) + (1.0 - alpha) * (background color)
        # This means that a value of 1.0 corresponds to a solid color, whereas
        # a value of 0.0 corresponds to a completely transparent color. This
        # uses a wrapper message rather than a simple float scalar so that it is
        # possible to distinguish between a default value and the value being unset.
        # If omitted, this color object is to be rendered as a solid color
        # (as if the alpha value had been explicitly given with a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
    end
  end
end
