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
      
      class AnalyzeEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeSentimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeSentimentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassificationCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassifyTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassifyTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Features
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModerateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModerateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
        end
      end
      
      class AnalyzeEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::LanguageV2::Entity, decorator: Google::Apis::LanguageV2::Entity::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
        end
      end
      
      class AnalyzeSentimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
        end
      end
      
      class AnalyzeSentimentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :sentences, as: 'sentences', class: Google::Apis::LanguageV2::Sentence, decorator: Google::Apis::LanguageV2::Sentence::Representation
      
        end
      end
      
      class AnnotateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
          property :features, as: 'features', class: Google::Apis::LanguageV2::Features, decorator: Google::Apis::LanguageV2::Features::Representation
      
        end
      end
      
      class AnnotateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::LanguageV2::Entity, decorator: Google::Apis::LanguageV2::Entity::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :moderation_categories, as: 'moderationCategories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          collection :sentences, as: 'sentences', class: Google::Apis::LanguageV2::Sentence, decorator: Google::Apis::LanguageV2::Sentence::Representation
      
        end
      end
      
      class ClassificationCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :name, as: 'name'
        end
      end
      
      class ClassifyTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
        end
      end
      
      class ClassifyTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
        end
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :gcs_content_uri, as: 'gcsContentUri'
          property :language_code, as: 'languageCode'
          property :type, as: 'type'
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mentions, as: 'mentions', class: Google::Apis::LanguageV2::EntityMention, decorator: Google::Apis::LanguageV2::EntityMention::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :type, as: 'type'
        end
      end
      
      class EntityMention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :probability, as: 'probability'
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :text, as: 'text', class: Google::Apis::LanguageV2::TextSpan, decorator: Google::Apis::LanguageV2::TextSpan::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Features
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classify_text, as: 'classifyText'
          property :extract_document_sentiment, as: 'extractDocumentSentiment'
          property :extract_entities, as: 'extractEntities'
          property :moderate_text, as: 'moderateText'
        end
      end
      
      class ModerateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
        end
      end
      
      class ModerateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :moderation_categories, as: 'moderationCategories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
        end
      end
      
      class Sentence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :text, as: 'text', class: Google::Apis::LanguageV2::TextSpan, decorator: Google::Apis::LanguageV2::TextSpan::Representation
      
        end
      end
      
      class Sentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
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
      
      class TextSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin_offset, as: 'beginOffset'
          property :content, as: 'content'
        end
      end
    end
  end
end
