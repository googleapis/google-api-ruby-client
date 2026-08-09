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
    module DeveloperknowledgeV1alpha
      
      # An answer to a query.
      class Answer
        include Google::Apis::Core::Hashable
      
        # Contains the text of the answer.
        # Corresponds to the JSON property `answerText`
        # @return [String]
        attr_accessor :answer_text
      
        # Output only. Contains citations for the answer.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::DeveloperknowledgeV1alpha::AnswerCitation>]
        attr_accessor :citations
      
        # Output only. Contains references for the answer.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::DeveloperknowledgeV1alpha::AnswerReference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_text = args[:answer_text] if args.key?(:answer_text)
          @citations = args[:citations] if args.key?(:citations)
          @references = args[:references] if args.key?(:references)
        end
      end
      
      # Citation info for a segment.
      class AnswerCitation
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates the end of the segment, measured in bytes (UTF-8
        # unicode), exclusive. If there are multi-byte characters, such as non-ASCII
        # characters, the index measurement is longer than the string length.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. Contains citation sources for the attributed segment.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::DeveloperknowledgeV1alpha::CitationSource>]
        attr_accessor :sources
      
        # Output only. Indicates the start of the segment, measured in bytes (UTF-8
        # unicode), inclusive. If there are multi-byte characters, such as non-ASCII
        # characters, the index measurement is longer than the string length.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @sources = args[:sources] if args.key?(:sources)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # Request message for DeveloperKnowledge.AnswerQuery.
      class AnswerQueryRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Applies a strict filter to the search results used to ground the
        # answer. The expression supports a subset of the syntax described at https://
        # google.aip.dev/160. Supported fields for filtering: * `content_length_bytes` (
        # INTEGER): The length of the `Document.content` field in bytes. * `data_source`
        # (STRING): The source of the document, e.g. `docs.cloud.google.com`. See https:/
        # /developers.google.com/knowledge/reference/corpus-reference for the complete
        # list of data sources in the corpus. * `update_time` (TIMESTAMP): The timestamp
        # of when the document was last meaningfully updated. A meaningful update is one
        # that changes document's markdown content or metadata. * `uri` (STRING): The
        # document URI, e.g. `https://docs.cloud.google.com/bigquery/docs/tables`.
        # INTEGER fields support `=`, `<`, `<=`, `>`, and `>=` operators. STRING fields
        # support `=` (equals) and `!=` (not equals) operators for **exact match** on
        # the whole string. Partial match, prefix match, and regexp match are not
        # supported. TIMESTAMP fields support `=`, `<`, `<=`, `>`, and `>=` operators.
        # Timestamps must be in RFC-3339 format, e.g., `"2025-01-01T00:00:00Z"`. You can
        # combine expressions using `AND`, `OR`, and `NOT` (or `-`) logical operators. `
        # OR` has higher precedence than `AND`. Use parentheses for explicit precedence
        # grouping. Examples: * Filter by `Document.content_length_bytes`: `
        # content_length_bytes < 50000` * `data_source = "docs.cloud.google.com" OR
        # data_source = "firebase.google.com"` * `data_source != "firebase.google.com"` *
        # `update_time < "2024-01-01T00:00:00Z"` * `update_time >= "2025-01-22T00:00:
        # 00Z" AND (data_source = "developer.chrome.com" OR data_source = "web.dev")` * `
        # uri = "https://docs.cloud.google.com/release-notes"` The `filter` string must
        # not exceed 500 characters; values longer than 500 characters will result in an
        # `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The query to answer.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for DeveloperKnowledge.AnswerQuery.
      class AnswerQueryResponse
        include Google::Apis::Core::Hashable
      
        # An answer to a query.
        # Corresponds to the JSON property `answer`
        # @return [Google::Apis::DeveloperknowledgeV1alpha::Answer]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # Represents a reference to a source.
      class AnswerReference
        include Google::Apis::Core::Hashable
      
        # Represents a reference to a document.
        # Corresponds to the JSON property `documentReference`
        # @return [Google::Apis::DeveloperknowledgeV1alpha::DocumentReference]
        attr_accessor :document_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_reference = args[:document_reference] if args.key?(:document_reference)
        end
      end
      
      # Response message for DeveloperKnowledge.BatchGetDocuments.
      class BatchGetDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Contains the documents requested.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DeveloperknowledgeV1alpha::Document>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # Citation source.
      class CitationSource
        include Google::Apis::Core::Hashable
      
        # Output only. Contains the index of the Answer.AnswerReference in the `
        # references` repeated field.
        # Corresponds to the JSON property `referenceIndex`
        # @return [Fixnum]
        attr_accessor :reference_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_index = args[:reference_index] if args.key?(:reference_index)
        end
      end
      
      # A Document represents a page of documentation in the Developer Knowledge
      # corpus, like the page at https://docs.cloud.google.com/storage/docs/creating-
      # buckets.
      class Document
        include Google::Apis::Core::Hashable
      
        # Output only. Contains the full content of the document in Markdown format.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Output only. The length of the `content` field in bytes.
        # Corresponds to the JSON property `contentLengthBytes`
        # @return [Fixnum]
        attr_accessor :content_length_bytes
      
        # Output only. Specifies the data source of the document. Example data source: `
        # firebase.google.com`
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Output only. Provides a description of the document.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. Contains the resource name of the document. Format: `documents/`
        # uri_without_scheme`` Example: `documents/docs.cloud.google.com/storage/docs/
        # creating-buckets`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Provides the title of the document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Represents the timestamp when the content or metadata of the
        # document was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Provides the URI of the content, such as `docs.cloud.google.com/
        # storage/docs/creating-buckets`.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Output only. Specifies the DocumentView of the document.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @content_length_bytes = args[:content_length_bytes] if args.key?(:content_length_bytes)
          @data_source = args[:data_source] if args.key?(:data_source)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # A DocumentChunk represents a piece of content from a Document in the
      # DeveloperKnowledge corpus. To fetch the entire document content, pass the `
      # parent` to DeveloperKnowledge.GetDocument or DeveloperKnowledge.
      # BatchGetDocuments.
      class DocumentChunk
        include Google::Apis::Core::Hashable
      
        # Output only. Contains the content of the document chunk.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A Document represents a page of documentation in the Developer Knowledge
        # corpus, like the page at https://docs.cloud.google.com/storage/docs/creating-
        # buckets.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::DeveloperknowledgeV1alpha::Document]
        attr_accessor :document
      
        # Output only. Specifies the ID of this chunk within the document. The chunk ID
        # is unique within a document, but not globally unique across documents. The
        # chunk ID is not stable and may change over time.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Contains the resource name of the document this chunk is from.
        # Format: `documents/`uri_without_scheme`` Example: `documents/docs.cloud.google.
        # com/storage/docs/creating-buckets`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. Represents the relevance score of the chunk to the search query.
        # Higher score indicates higher chunk relevance. The score is in range [0.0, 1.0]
        # .
        # Corresponds to the JSON property `relevanceScore`
        # @return [Float]
        attr_accessor :relevance_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @document = args[:document] if args.key?(:document)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @relevance_score = args[:relevance_score] if args.key?(:relevance_score)
        end
      end
      
      # Represents a reference to a document.
      class DocumentReference
        include Google::Apis::Core::Hashable
      
        # A DocumentChunk represents a piece of content from a Document in the
        # DeveloperKnowledge corpus. To fetch the entire document content, pass the `
        # parent` to DeveloperKnowledge.GetDocument or DeveloperKnowledge.
        # BatchGetDocuments.
        # Corresponds to the JSON property `documentChunk`
        # @return [Google::Apis::DeveloperknowledgeV1alpha::DocumentChunk]
        attr_accessor :document_chunk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_chunk = args[:document_chunk] if args.key?(:document_chunk)
        end
      end
      
      # Response message for DeveloperKnowledge.SearchDocumentChunks.
      class SearchDocumentChunksResponse
        include Google::Apis::Core::Hashable
      
        # Provides a token that can be sent as `page_token` to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Contains the search results for the given query. Each DocumentChunk in this
        # list contains a snippet of content relevant to the search query. Use the
        # DocumentChunk.parent field of each result with DeveloperKnowledge.GetDocument
        # or DeveloperKnowledge.BatchGetDocuments to retrieve the full document content.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DeveloperknowledgeV1alpha::DocumentChunk>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
    end
  end
end
