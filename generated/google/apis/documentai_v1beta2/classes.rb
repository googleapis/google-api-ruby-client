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
      
      # The long running operation metadata for CreateLabelerPool.
      class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Used only when Operation.done is false.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # The metadata that represents a processor version being created.
      class GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current disable processor operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
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
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The long running operation metadata for DeleteLabelerPool.
      class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Used only when Operation.done is false.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # The long running operation metadata for delete processor method.
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current delete processor operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # The long running operation metadata for disable processor method.
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current disable processor operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # Response message for the disable processor method. Intentionally empty proto
      # for adding fields in future.
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long running operation metadata for enable processor method.
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current enable processor operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # Response message for the enable processor method. Intentionally empty proto
      # for adding fields in future.
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long running operation metadata for UpdateLabelerPool.
      class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Used only when Operation.done is false.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # Response to an batch document processing request. This is returned in the LRO
      # Operation after the operation is complete.
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
      # AI. It is an interchange format that provides insights into documents and
      # allows for collaboration between users and Document Understanding AI to
      # iterate and optimize for quality.
      class GoogleCloudDocumentaiV1beta1Document
        include Google::Apis::Core::Hashable
      
        # Inline document content, represented as a stream of bytes. Note: As with all `
        # bytes` fields, protobuffers use a pure binary representation, whereas JSON
        # representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntity>]
        attr_accessor :entities
      
        # Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
        attr_accessor :error
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPage>]
        attr_accessor :pages
      
        # Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentShardInfo]
        attr_accessor :shard_info
      
        # UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A list of text corrections made to [Document.text]. This is usually used for
        # annotating corrections to OCR mistakes. Text changes for a given revision may
        # not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyle>]
        attr_accessor :text_styles
      
        # A list of translations on Document.text. For document shards, translations in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTranslation>]
        attr_accessor :translations
      
        # Currently supports Google Cloud Storage URI of the form `gs://bucket_name/
        # object_name`. Object versioning is not supported. See [Google Cloud Storage
        # Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more
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
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
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
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Text value in the document e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
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
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent: * A full
        # date, with non-zero year, month and day values * A month and day value, with a
        # zero year, e.g. an anniversary * A year on its own, with zero month and day
        # values * A year and month value, with a zero day, e.g. a credit card
        # expiration date Related types are google.type.TimeOfDay and `google.protobuf.
        # Timestamp`.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time in one of a few possible ways: * When utc_offset is set
        # and time_zone is unset: a civil time on a calendar day with a particular
        # offset from UTC. * When time_zone is set and utc_offset is unset: a civil time
        # on a calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year is 0, the DateTime is
        # considered not to have a specific year. month and day must have valid, non-
        # zero values. This type is more flexible than some applications may want. Make
        # sure to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Required. Normalized entity value stored as a string. This field is populated
        # for supported document type (e.g. Invoice). For some entity types, one of
        # respective 'structured_value' fields may also be populated. - Money/Currency
        # type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`)
        # is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the
        # ISO 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
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
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
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
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageImage]
        attr_accessor :image
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
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
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
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
          @image = args[:image] if args.key?(:image)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
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
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the field_value is normal text) - "
        # unfilled_checkbox" - "filled_checkbox"
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
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1beta1DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding mime type for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range [0, 1].
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
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1beta1DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
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
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
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
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1beta1DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure for referencing parent provenances. When an element replaces one of
      # more other elements parent references identify the elements that are replaced.
      class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the [Document.revisions] identifying the parent revision.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1beta1DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision. Unique within the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
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
      
        # The index of the first character in Document.text in the overall document
        # global text.
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
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation can
        # be trivially provided to the constructor of "java.awt.Color" in Java; it can
        # also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS "rgba()" string in JavaScript, as well. Note: this proto does not carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications SHOULD assume the sRGB color space. Note: when color equality
        # needs to be decided, implementations, unless documented otherwise, will treat
        # two colors to be equal if all their red, green, blue and alpha values each
        # differ by at most 1e-5. Example (Java): import com.google.type.Color; // ...
        # public static java.awt.Color fromProto(Color protocolor) ` float alpha =
        # protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
        # java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(
        # ), alpha); ` public static Color toProto(java.awt.Color color) ` float red = (
        # float) color.getRed(); float green = (float) color.getGreen(); float blue = (
        # float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
        # = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator)
        # .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255)
        # ` result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) /
        # denominator) .build()); ` return resultBuilder.build(); ` // ... Example (iOS /
        # Obj-C): // ... static UIColor* fromProto(Color* protocolor) ` float red = [
        # protocolor red]; float green = [protocolor green]; float blue = [protocolor
        # blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (
        # alpha_wrapper != nil) ` alpha = [alpha_wrapper value]; ` return [UIColor
        # colorWithRed:red green:green blue:blue alpha:alpha]; ` static Color* toProto(
        # UIColor* color) ` CGFloat red, green, blue, alpha; if (![color getRed:&red
        # green:&green blue:&blue alpha:&alpha]) ` return nil; ` Color* result = [[Color
        # alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:
        # blue]; if (alpha <= 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; `
        # [result autorelease]; return result; ` // ... Example (JavaScript): // ...
        # var protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor_(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor_ = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var
        # hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0'); ` resultBuilder.push(hexString); return resultBuilder.
        # join(''); `; // ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation can
        # be trivially provided to the constructor of "java.awt.Color" in Java; it can
        # also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS "rgba()" string in JavaScript, as well. Note: this proto does not carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications SHOULD assume the sRGB color space. Note: when color equality
        # needs to be decided, implementations, unless documented otherwise, will treat
        # two colors to be equal if all their red, green, blue and alpha values each
        # differ by at most 1e-5. Example (Java): import com.google.type.Color; // ...
        # public static java.awt.Color fromProto(Color protocolor) ` float alpha =
        # protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
        # java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(
        # ), alpha); ` public static Color toProto(java.awt.Color color) ` float red = (
        # float) color.getRed(); float green = (float) color.getGreen(); float blue = (
        # float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
        # = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator)
        # .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255)
        # ` result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) /
        # denominator) .build()); ` return resultBuilder.build(); ` // ... Example (iOS /
        # Obj-C): // ... static UIColor* fromProto(Color* protocolor) ` float red = [
        # protocolor red]; float green = [protocolor green]; float blue = [protocolor
        # blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (
        # alpha_wrapper != nil) ` alpha = [alpha_wrapper value]; ` return [UIColor
        # colorWithRed:red green:green blue:blue alpha:alpha]; ` static Color* toProto(
        # UIColor* color) ` CGFloat red, green, blue, alpha; if (![color getRed:&red
        # green:&green blue:&blue alpha:&alpha]) ` return nil; ` Color* result = [[Color
        # alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:
        # blue]; if (alpha <= 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; `
        # [result autorelease]; return result; ` // ... Example (JavaScript): // ...
        # var protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor_(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor_ = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var
        # hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0'); ` resultBuilder.push(hexString); return resultBuilder.
        # join(''); `; // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :color
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter. https://
        # www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/
        # pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique. https://www.
        # w3schools.com/cssref/pr_font_font-style.asp
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
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
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
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1beta1DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A translation of the text segment.
      class GoogleCloudDocumentaiV1beta1DocumentTranslation
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta1DocumentProvenance>]
        attr_accessor :provenance
      
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
          @provenance = args[:provenance] if args.key?(:provenance)
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
        # pdf, image/tiff, and image/gif. In addition, application/json type is
        # supported for requests with ProcessDocumentRequest.automl_params field set.
        # The JSON file needs to be in Document format.
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
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
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
        # Google Cloud Storage. The valid range is [1, 100]. If not specified, the
        # default value is 20. For example, for one pdf file with 100 pages, 100 parsed
        # pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON
        # files each containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y
        # are 1-indexed page numbers. Example GCS outputs with 157 pages and
        # pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-
        # 150.json pages-151-to-157.json
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
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
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
      
        # Resource name of the AutoML model. Format: `projects/`project-id`/locations/`
        # location-id`/models/`model-id``.
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
      
      # Request to batch process documents as an asynchronous operation. The output is
      # written to Cloud Storage as JSON in the [Document] format.
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
      
      # Response to an batch document processing request. This is returned in the LRO
      # Operation after the operation is complete.
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
      # AI. It is an interchange format that provides insights into documents and
      # allows for collaboration between users and Document Understanding AI to
      # iterate and optimize for quality.
      class GoogleCloudDocumentaiV1beta2Document
        include Google::Apis::Core::Hashable
      
        # Inline document content, represented as a stream of bytes. Note: As with all `
        # bytes` fields, protobuffers use a pure binary representation, whereas JSON
        # representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntity>]
        attr_accessor :entities
      
        # Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
        attr_accessor :error
      
        # Labels for this document.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentLabel>]
        attr_accessor :labels
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPage>]
        attr_accessor :pages
      
        # Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentShardInfo]
        attr_accessor :shard_info
      
        # UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A list of text corrections made to [Document.text]. This is usually used for
        # annotating corrections to OCR mistakes. Text changes for a given revision may
        # not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyle>]
        attr_accessor :text_styles
      
        # A list of translations on Document.text. For document shards, translations in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTranslation>]
        attr_accessor :translations
      
        # Currently supports Google Cloud Storage URI of the form `gs://bucket_name/
        # object_name`. Object versioning is not supported. See [Google Cloud Storage
        # Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more
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
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
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
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Text value in the document e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
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
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent: * A full
        # date, with non-zero year, month and day values * A month and day value, with a
        # zero year, e.g. an anniversary * A year on its own, with zero month and day
        # values * A year and month value, with a zero day, e.g. a credit card
        # expiration date Related types are google.type.TimeOfDay and `google.protobuf.
        # Timestamp`.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time in one of a few possible ways: * When utc_offset is set
        # and time_zone is unset: a civil time on a calendar day with a particular
        # offset from UTC. * When time_zone is set and utc_offset is unset: a civil time
        # on a calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year is 0, the DateTime is
        # considered not to have a specific year. month and day must have valid, non-
        # zero values. This type is more flexible than some applications may want. Make
        # sure to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Required. Normalized entity value stored as a string. This field is populated
        # for supported document type (e.g. Invoice). For some entity types, one of
        # respective 'structured_value' fields may also be populated. - Money/Currency
        # type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`)
        # is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the
        # ISO 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
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
      
      # Label attaches schema information and/or other metadata to segments within a
      # Document. Multiple Labels on a single field can denote either different labels,
      # different instances of the same label created at different times, or some
      # combination of both.
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        include Google::Apis::Core::Hashable
      
        # Label is generated AutoML model. This field stores the full resource name of
        # the AutoML model. Format: `projects/`project-id`/locations/`location-id`/
        # models/`model-id``
        # Corresponds to the JSON property `automlModel`
        # @return [String]
        attr_accessor :automl_model
      
        # Confidence score between 0 and 1 for label assignment.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the label. When the label is generated from AutoML Text Classification
        # model, this field represents the name of the category.
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
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
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
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageImage]
        attr_accessor :image
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
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
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
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
          @image = args[:image] if args.key?(:image)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
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
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the field_value is normal text) - "
        # unfilled_checkbox" - "filled_checkbox"
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
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1beta2DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding mime type for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range [0, 1].
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
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1beta2DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
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
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
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
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
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
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1beta2DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure for referencing parent provenances. When an element replaces one of
      # more other elements parent references identify the elements that are replaced.
      class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the [Document.revisions] identifying the parent revision.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1beta2DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision. Unique within the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
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
      
        # The index of the first character in Document.text in the overall document
        # global text.
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
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation can
        # be trivially provided to the constructor of "java.awt.Color" in Java; it can
        # also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS "rgba()" string in JavaScript, as well. Note: this proto does not carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications SHOULD assume the sRGB color space. Note: when color equality
        # needs to be decided, implementations, unless documented otherwise, will treat
        # two colors to be equal if all their red, green, blue and alpha values each
        # differ by at most 1e-5. Example (Java): import com.google.type.Color; // ...
        # public static java.awt.Color fromProto(Color protocolor) ` float alpha =
        # protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
        # java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(
        # ), alpha); ` public static Color toProto(java.awt.Color color) ` float red = (
        # float) color.getRed(); float green = (float) color.getGreen(); float blue = (
        # float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
        # = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator)
        # .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255)
        # ` result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) /
        # denominator) .build()); ` return resultBuilder.build(); ` // ... Example (iOS /
        # Obj-C): // ... static UIColor* fromProto(Color* protocolor) ` float red = [
        # protocolor red]; float green = [protocolor green]; float blue = [protocolor
        # blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (
        # alpha_wrapper != nil) ` alpha = [alpha_wrapper value]; ` return [UIColor
        # colorWithRed:red green:green blue:blue alpha:alpha]; ` static Color* toProto(
        # UIColor* color) ` CGFloat red, green, blue, alpha; if (![color getRed:&red
        # green:&green blue:&blue alpha:&alpha]) ` return nil; ` Color* result = [[Color
        # alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:
        # blue]; if (alpha <= 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; `
        # [result autorelease]; return result; ` // ... Example (JavaScript): // ...
        # var protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor_(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor_ = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var
        # hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0'); ` resultBuilder.push(hexString); return resultBuilder.
        # join(''); `; // ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation can
        # be trivially provided to the constructor of "java.awt.Color" in Java; it can
        # also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS "rgba()" string in JavaScript, as well. Note: this proto does not carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications SHOULD assume the sRGB color space. Note: when color equality
        # needs to be decided, implementations, unless documented otherwise, will treat
        # two colors to be equal if all their red, green, blue and alpha values each
        # differ by at most 1e-5. Example (Java): import com.google.type.Color; // ...
        # public static java.awt.Color fromProto(Color protocolor) ` float alpha =
        # protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
        # java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(
        # ), alpha); ` public static Color toProto(java.awt.Color color) ` float red = (
        # float) color.getRed(); float green = (float) color.getGreen(); float blue = (
        # float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
        # = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator)
        # .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255)
        # ` result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) /
        # denominator) .build()); ` return resultBuilder.build(); ` // ... Example (iOS /
        # Obj-C): // ... static UIColor* fromProto(Color* protocolor) ` float red = [
        # protocolor red]; float green = [protocolor green]; float blue = [protocolor
        # blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (
        # alpha_wrapper != nil) ` alpha = [alpha_wrapper value]; ` return [UIColor
        # colorWithRed:red green:green blue:blue alpha:alpha]; ` static Color* toProto(
        # UIColor* color) ` CGFloat red, green, blue, alpha; if (![color getRed:&red
        # green:&green blue:&blue alpha:&alpha]) ` return nil; ` Color* result = [[Color
        # alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:
        # blue]; if (alpha <= 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; `
        # [result autorelease]; return result; ` // ... Example (JavaScript): // ...
        # var protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor_(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor_ = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var
        # hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0'); ` resultBuilder.push(hexString); return resultBuilder.
        # join(''); `; // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeColor]
        attr_accessor :color
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter. https://
        # www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/
        # pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique. https://www.
        # w3schools.com/cssref/pr_font_font-style.asp
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
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
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
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1beta2DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A translation of the text segment.
      class GoogleCloudDocumentaiV1beta2DocumentTranslation
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2DocumentProvenance>]
        attr_accessor :provenance
      
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
          @provenance = args[:provenance] if args.key?(:provenance)
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
      
        # Model version of the entity extraction. Default is "builtin/stable". Specify "
        # builtin/latest" for the latest model.
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
      
        # Model version of the form extraction system. Default is "builtin/stable".
        # Specify "builtin/latest" for the latest model. For custom form models, specify:
        # “custom/`model_name`". Model name format is "bucket_name/path/to/modeldir"
        # corresponding to "gs://bucket_name/path/to/modeldir" where annotated examples
        # are stored.
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
      
        # Content in bytes, represented as a stream of bytes. Note: As with all `bytes`
        # fields, proto buffer messages use a pure binary representation, whereas JSON
        # representations use base64. This field only works for synchronous
        # ProcessDocument method.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # The Google Cloud Storage location where the input file will be read from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2GcsSource]
        attr_accessor :gcs_source
      
        # Required. Mimetype of the input. Current supported mimetypes are application/
        # pdf, image/tiff, and image/gif. In addition, application/json type is
        # supported for requests with ProcessDocumentRequest.automl_params field set.
        # The JSON file needs to be in Document format.
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
      
        # Type of the value. This is case-insensitive, and could be one of: ADDRESS,
        # LOCATION, ORGANIZATION, PERSON, PHONE_NUMBER, ID, NUMBER, EMAIL, PRICE, TERMS,
        # DATE, NAME. Types not in this list will be ignored.
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
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
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
      
        # List of languages to use for OCR. In most cases, an empty value yields the
        # best results since it enables automatic language detection. For languages
        # based on the Latin alphabet, setting `language_hints` is not needed. In rare
        # cases, when the language of the text in the image is known, setting a hint
        # will help get better results (although it will be a significant hindrance if
        # the hint is wrong). Document processing returns an error if one or more of the
        # specified languages is not one of the supported languages.
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
        # Google Cloud Storage. The valid range is [1, 100]. If not specified, the
        # default value is 20. For example, for one pdf file with 100 pages, 100 parsed
        # pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON
        # files each containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y
        # are 1-indexed page numbers. Example GCS outputs with 157 pages and
        # pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-
        # 150.json pages-151-to-157.json
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
      
        # Specifies a known document type for deeper structure detection. Valid values
        # are currently "general" and "invoice". If not provided, "general"\ is used as
        # default. If any other value is given, the request is rejected.
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
      
        # Target project and location to make a call. Format: `projects/`project-id`/
        # locations/`location-id``. If no location is specified, a region will be chosen
        # automatically. This field is only populated when used in ProcessDocument
        # method.
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
        # provided, this hint will apply to all pages by default. This value is 1-based.
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
      
        # Optional. Table bounding box hints that can be provided to complex cases which
        # our algorithm cannot locate the table(s) in.
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
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
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
      
      # The long running operation metadata for batch process method.
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualProcessStatuses`
        # @return [Array<Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>]
        attr_accessor :individual_process_statuses
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
          @individual_process_statuses = args[:individual_process_statuses] if args.key?(:individual_process_statuses)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The status of a each individual document in the batch process.
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        include Google::Apis::Core::Hashable
      
        # The name of the operation triggered by the processed document. If the human
        # review process is not triggered, this field will be empty. It has the same
        # response type and metadata as the long running operation returned by
        # ReviewDocument method.
        # Corresponds to the JSON property `humanReviewOperation`
        # @return [String]
        attr_accessor :human_review_operation
      
        # The source of the document, same as the [input_gcs_source] field in the
        # request when the batch process started. The batch process is started by take
        # snapshot of that document, since a user can move or change that document
        # during the process.
        # Corresponds to the JSON property `inputGcsSource`
        # @return [String]
        attr_accessor :input_gcs_source
      
        # The output_gcs_destination (in the request as 'output_gcs_destination') of the
        # processed document if it was successful, otherwise empty.
        # Corresponds to the JSON property `outputGcsDestination`
        # @return [String]
        attr_accessor :output_gcs_destination
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_review_operation = args[:human_review_operation] if args.key?(:human_review_operation)
          @input_gcs_source = args[:input_gcs_source] if args.key?(:input_gcs_source)
          @output_gcs_destination = args[:output_gcs_destination] if args.key?(:output_gcs_destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response message for batch process document method.
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long running operation metadata for review document method.
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Used only when Operation.done is false.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
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
      
      # Response message for review document method.
      class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage uri for the human reviewed document.
        # Corresponds to the JSON property `gcsDestination`
        # @return [String]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::DocumentaiV1beta2::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness; for example, the fields of this representation can
      # be trivially provided to the constructor of "java.awt.Color" in Java; it can
      # also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS "rgba()" string in JavaScript, as well. Note: this proto does not carry
      # information about the absolute color space that should be used to interpret
      # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
      # applications SHOULD assume the sRGB color space. Note: when color equality
      # needs to be decided, implementations, unless documented otherwise, will treat
      # two colors to be equal if all their red, green, blue and alpha values each
      # differ by at most 1e-5. Example (Java): import com.google.type.Color; // ...
      # public static java.awt.Color fromProto(Color protocolor) ` float alpha =
      # protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
      # java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(
      # ), alpha); ` public static Color toProto(java.awt.Color color) ` float red = (
      # float) color.getRed(); float green = (float) color.getGreen(); float blue = (
      # float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
      # = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator)
      # .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255)
      # ` result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) /
      # denominator) .build()); ` return resultBuilder.build(); ` // ... Example (iOS /
      # Obj-C): // ... static UIColor* fromProto(Color* protocolor) ` float red = [
      # protocolor red]; float green = [protocolor green]; float blue = [protocolor
      # blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (
      # alpha_wrapper != nil) ` alpha = [alpha_wrapper value]; ` return [UIColor
      # colorWithRed:red green:green blue:blue alpha:alpha]; ` static Color* toProto(
      # UIColor* color) ` CGFloat red, green, blue, alpha; if (![color getRed:&red
      # green:&green blue:&blue alpha:&alpha]) ` return nil; ` Color* result = [[Color
      # alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:
      # blue]; if (alpha <= 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; `
      # [result autorelease]; return result; ` // ... Example (JavaScript): // ...
      # var protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor_(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor_ = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var
      # hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length;
      # var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) `
      # resultBuilder.push('0'); ` resultBuilder.push(hexString); return resultBuilder.
      # join(''); `; // ...
      class GoogleTypeColor
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color) This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is to be rendered as a
        # solid color (as if the alpha value had been explicitly given with a value of 1.
        # 0).
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
      
      # Represents a whole or partial calendar date, e.g. a birthday. The time of day
      # and time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. This can represent: * A full
      # date, with non-zero year, month and day values * A month and day value, with a
      # zero year, e.g. an anniversary * A year on its own, with zero month and day
      # values * A year and month value, with a zero day, e.g. a credit card
      # expiration date Related types are google.type.TimeOfDay and `google.protobuf.
      # Timestamp`.
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if
        # specifying a year by itself or a year and month where the day is not
        # significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12, or 0 if specifying a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents civil time in one of a few possible ways: * When utc_offset is set
      # and time_zone is unset: a civil time on a calendar day with a particular
      # offset from UTC. * When time_zone is set and utc_offset is unset: a civil time
      # on a calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year is 0, the DateTime is
      # considered not to have a specific year. month and day must have valid, non-
      # zero values. This type is more flexible than some applications may want. Make
      # sure to document and validate your application's limitations.
      class GoogleTypeDateTime
        include Google::Apis::Core::Hashable
      
        # Required. Day of month. Must be from 1 to 31 and valid for the year and month.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Required. Hours of day in 24 hour format. Should be from 0 to 23. An API may
        # choose to allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Required. Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Required. Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Required. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Required. Seconds of minutes of the time. Must normally be from 0 to 59. An
        # API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::DocumentaiV1beta2::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an i18n-ready address widget such as https://
      # github.com/google/libaddressinput) - Users should not be presented with UI
      # elements for input or editing of fields outside countries where that field is
      # used. For more guidance on how to use this schema, please see: https://support.
      # google.com/business/answer/6397478
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See http://
        # cldr.unicode.org/ and http://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
