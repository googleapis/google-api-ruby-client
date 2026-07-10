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
      
      # Response message for DeveloperKnowledge.BatchGetDocuments.
      class BatchGetDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Contains the documents requested.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DeveloperknowledgeV1::Document>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # A Document represents a piece of content from the Developer Knowledge corpus.
      class Document
        include Google::Apis::Core::Hashable
      
        # Output only. Contains the full content of the document in Markdown format.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
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
      
        # A Document represents a piece of content from the Developer Knowledge corpus.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::DeveloperknowledgeV1::Document]
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @document = args[:document] if args.key?(:document)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response message for DeveloperKnowledge.SearchDocumentChunks.
      class SearchDocumentChunksResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Provides a token that can be sent as `page_token` to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Contains the search results for the given query. Each DocumentChunk in this
        # list contains a snippet of content relevant to the search query. Use the
        # DocumentChunk.parent field of each result with DeveloperKnowledge.GetDocument
        # or DeveloperKnowledge.BatchGetDocuments to retrieve the full document content.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DeveloperknowledgeV1::DocumentChunk>]
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
