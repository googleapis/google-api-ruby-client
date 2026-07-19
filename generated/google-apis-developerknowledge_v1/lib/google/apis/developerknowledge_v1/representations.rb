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
    module DeveloperknowledgeV1
      
      class Answer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnswerCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnswerQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnswerQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnswerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchDocumentChunksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Answer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_text, as: 'answerText'
          collection :citations, as: 'citations', class: Google::Apis::DeveloperknowledgeV1::AnswerCitation, decorator: Google::Apis::DeveloperknowledgeV1::AnswerCitation::Representation
      
          collection :references, as: 'references', class: Google::Apis::DeveloperknowledgeV1::AnswerReference, decorator: Google::Apis::DeveloperknowledgeV1::AnswerReference::Representation
      
        end
      end
      
      class AnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DeveloperknowledgeV1::CitationSource, decorator: Google::Apis::DeveloperknowledgeV1::CitationSource::Representation
      
          property :start_index, as: 'startIndex'
        end
      end
      
      class AnswerQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class AnswerQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DeveloperknowledgeV1::Answer, decorator: Google::Apis::DeveloperknowledgeV1::Answer::Representation
      
        end
      end
      
      class AnswerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_reference, as: 'documentReference', class: Google::Apis::DeveloperknowledgeV1::DocumentReference, decorator: Google::Apis::DeveloperknowledgeV1::DocumentReference::Representation
      
        end
      end
      
      class BatchGetDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DeveloperknowledgeV1::Document, decorator: Google::Apis::DeveloperknowledgeV1::Document::Representation
      
        end
      end
      
      class CitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_index, as: 'referenceIndex'
        end
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :content_length_bytes, as: 'contentLengthBytes'
          property :data_source, as: 'dataSource'
          property :description, as: 'description'
          property :name, as: 'name'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
          property :view, as: 'view'
        end
      end
      
      class DocumentChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document, as: 'document', class: Google::Apis::DeveloperknowledgeV1::Document, decorator: Google::Apis::DeveloperknowledgeV1::Document::Representation
      
          property :id, as: 'id'
          property :parent, as: 'parent'
        end
      end
      
      class DocumentReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_chunk, as: 'documentChunk', class: Google::Apis::DeveloperknowledgeV1::DocumentChunk, decorator: Google::Apis::DeveloperknowledgeV1::DocumentChunk::Representation
      
        end
      end
      
      class SearchDocumentChunksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::DeveloperknowledgeV1::DocumentChunk, decorator: Google::Apis::DeveloperknowledgeV1::DocumentChunk::Representation
      
        end
      end
    end
  end
end
