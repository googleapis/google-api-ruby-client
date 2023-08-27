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
    module LanguageV2
      
      # The entity analysis request message.
      class AnalyzeEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV2::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The entity analysis response message.
      class AnalyzeEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # The recognized entities in the input document.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV2::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the language is officially supported. The API may still return a
        # response when the language is not supported, but it is on a best effort basis.
        # Corresponds to the JSON property `languageSupported`
        # @return [Boolean]
        attr_accessor :language_supported
        alias_method :language_supported?, :language_supported
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_supported = args[:language_supported] if args.key?(:language_supported)
        end
      end
      
      # The sentiment analysis request message.
      class AnalyzeSentimentRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV2::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate sentence offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The sentiment analysis response message.
      class AnalyzeSentimentResponse
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV2::Sentiment]
        attr_accessor :document_sentiment
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the language is officially supported. The API may still return a
        # response when the language is not supported, but it is on a best effort basis.
        # Corresponds to the JSON property `languageSupported`
        # @return [Boolean]
        attr_accessor :language_supported
        alias_method :language_supported?, :language_supported
      
        # The sentiment for all the sentences in the document.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV2::Sentence>]
        attr_accessor :sentences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_supported = args[:language_supported] if args.key?(:language_supported)
          @sentences = args[:sentences] if args.key?(:sentences)
        end
      end
      
      # The request message for the text annotation API, which can perform multiple
      # analysis types in one call.
      class AnnotateTextRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV2::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        # All available features. Setting each one to true will enable that specific
        # analysis for the input.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::LanguageV2::Features]
        attr_accessor :features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
          @features = args[:features] if args.key?(:features)
        end
      end
      
      # The text annotations response message.
      class AnnotateTextResponse
        include Google::Apis::Core::Hashable
      
        # Categories identified in the input document.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::LanguageV2::ClassificationCategory>]
        attr_accessor :categories
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV2::Sentiment]
        attr_accessor :document_sentiment
      
        # Entities, along with their semantic information, in the input document.
        # Populated if the user enables AnnotateTextRequest.Features.extract_entities or
        # AnnotateTextRequest.Features.extract_entity_sentiment.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV2::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the language is officially supported by all requested features. The
        # API may still return a response when the language is not supported, but it is
        # on a best effort basis.
        # Corresponds to the JSON property `languageSupported`
        # @return [Boolean]
        attr_accessor :language_supported
        alias_method :language_supported?, :language_supported
      
        # Harmful and sensitive categories identified in the input document.
        # Corresponds to the JSON property `moderationCategories`
        # @return [Array<Google::Apis::LanguageV2::ClassificationCategory>]
        attr_accessor :moderation_categories
      
        # Sentences in the input document. Populated if the user enables
        # AnnotateTextRequest.Features.extract_document_sentiment.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV2::Sentence>]
        attr_accessor :sentences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_supported = args[:language_supported] if args.key?(:language_supported)
          @moderation_categories = args[:moderation_categories] if args.key?(:moderation_categories)
          @sentences = args[:sentences] if args.key?(:sentences)
        end
      end
      
      # Represents a category returned from the text classifier.
      class ClassificationCategory
        include Google::Apis::Core::Hashable
      
        # The classifier's confidence of the category. Number represents how certain the
        # classifier is that this category represents the given text.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The name of the category representing the document.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The document classification request message.
      class ClassifyTextRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV2::Document]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # The document classification response message.
      class ClassifyTextResponse
        include Google::Apis::Core::Hashable
      
        # Categories representing the input document.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::LanguageV2::ClassificationCategory>]
        attr_accessor :categories
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the language is officially supported. The API may still return a
        # response when the language is not supported, but it is on a best effort basis.
        # Corresponds to the JSON property `languageSupported`
        # @return [Boolean]
        attr_accessor :language_supported
        alias_method :language_supported?, :language_supported
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_supported = args[:language_supported] if args.key?(:language_supported)
        end
      end
      
      # Represents the input to API methods.
      class Document
        include Google::Apis::Core::Hashable
      
        # The content of the input in string format. Cloud audit logging exempt since it
        # is based on user data.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The Google Cloud Storage URI where the file content is located. This URI must
        # be of the form: gs://bucket_name/object_name. For more details, see https://
        # cloud.google.com/storage/docs/reference-uris. NOTE: Cloud Storage object
        # versioning is not supported.
        # Corresponds to the JSON property `gcsContentUri`
        # @return [String]
        attr_accessor :gcs_content_uri
      
        # Optional. The language of the document (if not specified, the language is
        # automatically detected). Both ISO and BCP-47 language codes are accepted. [
        # Language Support](https://cloud.google.com/natural-language/docs/languages)
        # lists currently supported languages for each API method. If the language (
        # either specified by the caller or automatically detected) is not supported by
        # the called API method, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. If the type is not set or is `TYPE_UNSPECIFIED`, returns an `
        # INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @gcs_content_uri = args[:gcs_content_uri] if args.key?(:gcs_content_uri)
          @language_code = args[:language_code] if args.key?(:language_code)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a phrase in the text that is a known entity, such as a person, an
      # organization, or location. The API associates information, such as probability
      # and mentions, with entities.
      class Entity
        include Google::Apis::Core::Hashable
      
        # The mentions of this entity in the input document. The API currently supports
        # proper noun mentions.
        # Corresponds to the JSON property `mentions`
        # @return [Array<Google::Apis::LanguageV2::EntityMention>]
        attr_accessor :mentions
      
        # Metadata associated with the entity. For most entity types, the metadata is a
        # Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`), if they are
        # available. For the metadata associated with other entity types, see the Type
        # table below.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The representative name for the entity.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV2::Sentiment]
        attr_accessor :sentiment
      
        # The entity type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mentions = args[:mentions] if args.key?(:mentions)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a mention for an entity in the text. Currently, proper noun
      # mentions are supported.
      class EntityMention
        include Google::Apis::Core::Hashable
      
        # Probability score associated with the entity. The score shows the probability
        # of the entity mention being the entity type. The score is in (0, 1] range.
        # Corresponds to the JSON property `probability`
        # @return [Float]
        attr_accessor :probability
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV2::Sentiment]
        attr_accessor :sentiment
      
        # Represents a text span in the input document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV2::TextSpan]
        attr_accessor :text
      
        # The type of the entity mention.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @probability = args[:probability] if args.key?(:probability)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # All available features. Setting each one to true will enable that specific
      # analysis for the input.
      class Features
        include Google::Apis::Core::Hashable
      
        # Optional. Classify the full document into categories.
        # Corresponds to the JSON property `classifyText`
        # @return [Boolean]
        attr_accessor :classify_text
        alias_method :classify_text?, :classify_text
      
        # Optional. Extract document-level sentiment.
        # Corresponds to the JSON property `extractDocumentSentiment`
        # @return [Boolean]
        attr_accessor :extract_document_sentiment
        alias_method :extract_document_sentiment?, :extract_document_sentiment
      
        # Optional. Extract entities.
        # Corresponds to the JSON property `extractEntities`
        # @return [Boolean]
        attr_accessor :extract_entities
        alias_method :extract_entities?, :extract_entities
      
        # Optional. Moderate the document for harmful and sensitive categories.
        # Corresponds to the JSON property `moderateText`
        # @return [Boolean]
        attr_accessor :moderate_text
        alias_method :moderate_text?, :moderate_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classify_text = args[:classify_text] if args.key?(:classify_text)
          @extract_document_sentiment = args[:extract_document_sentiment] if args.key?(:extract_document_sentiment)
          @extract_entities = args[:extract_entities] if args.key?(:extract_entities)
          @moderate_text = args[:moderate_text] if args.key?(:moderate_text)
        end
      end
      
      # The document moderation request message.
      class ModerateTextRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV2::Document]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # The document moderation response message.
      class ModerateTextResponse
        include Google::Apis::Core::Hashable
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the language is officially supported. The API may still return a
        # response when the language is not supported, but it is on a best effort basis.
        # Corresponds to the JSON property `languageSupported`
        # @return [Boolean]
        attr_accessor :language_supported
        alias_method :language_supported?, :language_supported
      
        # Harmful and sensitive categories representing the input document.
        # Corresponds to the JSON property `moderationCategories`
        # @return [Array<Google::Apis::LanguageV2::ClassificationCategory>]
        attr_accessor :moderation_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_supported = args[:language_supported] if args.key?(:language_supported)
          @moderation_categories = args[:moderation_categories] if args.key?(:moderation_categories)
        end
      end
      
      # Represents a sentence in the input document.
      class Sentence
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV2::Sentiment]
        attr_accessor :sentiment
      
        # Represents a text span in the input document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV2::TextSpan]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents the feeling associated with the entire text or entities in the text.
      class Sentiment
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
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
      
      # Represents a text span in the input document.
      class TextSpan
        include Google::Apis::Core::Hashable
      
        # The API calculates the beginning offset of the content in the original
        # document according to the EncodingType specified in the API request.
        # Corresponds to the JSON property `beginOffset`
        # @return [Fixnum]
        attr_accessor :begin_offset
      
        # The content of the text span, which is a substring of the document.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin_offset = args[:begin_offset] if args.key?(:begin_offset)
          @content = args[:content] if args.key?(:content)
        end
      end
    end
  end
end
