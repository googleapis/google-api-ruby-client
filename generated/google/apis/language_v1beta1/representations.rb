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
    module LanguageV1beta1
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMention
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
      
      class DependencyEdge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Features
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartOfSpeech
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Token
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :gcs_content_uri, as: 'gcsContentUri'
          property :type, as: 'type'
          property :content, as: 'content'
        end
      end
      
      class TextSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin_offset, as: 'beginOffset'
          property :content, as: 'content'
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
      
      class AnalyzeEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV1beta1::Document, decorator: Google::Apis::LanguageV1beta1::Document::Representation
      
          property :encoding_type, as: 'encodingType'
        end
      end
      
      class EntityMention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text', class: Google::Apis::LanguageV1beta1::TextSpan, decorator: Google::Apis::LanguageV1beta1::TextSpan::Representation
      
        end
      end
      
      class AnalyzeSentimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV1beta1::Document, decorator: Google::Apis::LanguageV1beta1::Document::Representation
      
        end
      end
      
      class AnalyzeSentimentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV1beta1::Sentiment, decorator: Google::Apis::LanguageV1beta1::Sentiment::Representation
      
          property :language, as: 'language'
        end
      end
      
      class DependencyEdge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :head_token_index, as: 'headTokenIndex'
          property :label, as: 'label'
        end
      end
      
      class AnnotateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV1beta1::Document, decorator: Google::Apis::LanguageV1beta1::Document::Representation
      
          property :encoding_type, as: 'encodingType'
          property :features, as: 'features', class: Google::Apis::LanguageV1beta1::Features, decorator: Google::Apis::LanguageV1beta1::Features::Representation
      
        end
      end
      
      class Sentence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text', class: Google::Apis::LanguageV1beta1::TextSpan, decorator: Google::Apis::LanguageV1beta1::TextSpan::Representation
      
        end
      end
      
      class Features
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extract_document_sentiment, as: 'extractDocumentSentiment'
          property :extract_entities, as: 'extractEntities'
          property :extract_syntax, as: 'extractSyntax'
        end
      end
      
      class PartOfSpeech
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
        end
      end
      
      class AnnotateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::LanguageV1beta1::Entity, decorator: Google::Apis::LanguageV1beta1::Entity::Representation
      
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV1beta1::Sentiment, decorator: Google::Apis::LanguageV1beta1::Sentiment::Representation
      
          property :language, as: 'language'
          collection :tokens, as: 'tokens', class: Google::Apis::LanguageV1beta1::Token, decorator: Google::Apis::LanguageV1beta1::Token::Representation
      
          collection :sentences, as: 'sentences', class: Google::Apis::LanguageV1beta1::Sentence, decorator: Google::Apis::LanguageV1beta1::Sentence::Representation
      
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
          property :salience, as: 'salience'
          property :type, as: 'type'
          collection :mentions, as: 'mentions', class: Google::Apis::LanguageV1beta1::EntityMention, decorator: Google::Apis::LanguageV1beta1::EntityMention::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Sentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :polarity, as: 'polarity'
          property :magnitude, as: 'magnitude'
        end
      end
      
      class Token
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text', class: Google::Apis::LanguageV1beta1::TextSpan, decorator: Google::Apis::LanguageV1beta1::TextSpan::Representation
      
          property :part_of_speech, as: 'partOfSpeech', class: Google::Apis::LanguageV1beta1::PartOfSpeech, decorator: Google::Apis::LanguageV1beta1::PartOfSpeech::Representation
      
          property :dependency_edge, as: 'dependencyEdge', class: Google::Apis::LanguageV1beta1::DependencyEdge, decorator: Google::Apis::LanguageV1beta1::DependencyEdge::Representation
      
          property :lemma, as: 'lemma'
        end
      end
      
      class AnalyzeEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::LanguageV1beta1::Entity, decorator: Google::Apis::LanguageV1beta1::Entity::Representation
      
          property :language, as: 'language'
        end
      end
    end
  end
end
