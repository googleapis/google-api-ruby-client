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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DeveloperknowledgeV1
      # Developer Knowledge API
      #
      # The Developer Knowledge API provides access to Google's developer knowledge.
      #
      # @example
      #    require 'google/apis/developerknowledge_v1'
      #
      #    Developerknowledge = Google::Apis::DeveloperknowledgeV1 # Alias the module
      #    service = Developerknowledge::DeveloperKnowledgeService.new
      #
      # @see https://developers.google.com/knowledge
      class DeveloperKnowledgeService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://developerknowledge.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-developerknowledge_v1',
                client_version: Google::Apis::DeveloperknowledgeV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves multiple documents, each with its full Markdown content.
        # @param [Array<String>, String] names
        #   Required. Specifies the names of the documents to retrieve. A maximum of 20
        #   documents can be retrieved in a batch. The documents are returned in the same
        #   order as the `names` in the request. Format: `documents/`uri_without_scheme``
        #   Example: `documents/docs.cloud.google.com/storage/docs/creating-buckets`
        # @param [String] view
        #   Optional. Specifies the DocumentView of the document. If unspecified,
        #   DeveloperKnowledge.BatchGetDocuments defaults to `DOCUMENT_VIEW_CONTENT`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperknowledgeV1::BatchGetDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperknowledgeV1::BatchGetDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_document_get(names: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/documents:batchGet', options)
          command.response_representation = Google::Apis::DeveloperknowledgeV1::BatchGetDocumentsResponse::Representation
          command.response_class = Google::Apis::DeveloperknowledgeV1::BatchGetDocumentsResponse
          command.query['names'] = names unless names.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a single document with its full Markdown content.
        # @param [String] name
        #   Required. Specifies the name of the document to retrieve. Format: `documents/`
        #   uri_without_scheme`` Example: `documents/docs.cloud.google.com/storage/docs/
        #   creating-buckets`
        # @param [String] view
        #   Optional. Specifies the DocumentView of the document. If unspecified,
        #   DeveloperKnowledge.GetDocument defaults to `DOCUMENT_VIEW_CONTENT`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperknowledgeV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperknowledgeV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_document(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperknowledgeV1::Document::Representation
          command.response_class = Google::Apis::DeveloperknowledgeV1::Document
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for developer knowledge across Google's developer documentation.
        # Returns DocumentChunks based on the user's query. There may be many chunks
        # from the same Document. To retrieve full documents, use DeveloperKnowledge.
        # GetDocument or DeveloperKnowledge.BatchGetDocuments with the DocumentChunk.
        # parent returned in the SearchDocumentChunksResponse.results.
        # @param [String] filter
        #   Optional. Applies a strict filter to the search results. The expression
        #   supports a subset of the syntax described at https://google.aip.dev/160. While
        #   `SearchDocumentChunks` returns DocumentChunks, the filter is applied to `
        #   DocumentChunk.document` fields. Supported fields for filtering: * `data_source`
        #   (STRING): The source of the document, e.g. `docs.cloud.google.com`. See https:
        #   //developers.google.com/knowledge/reference/corpus-reference for the complete
        #   list of data sources in the corpus. * `update_time` (TIMESTAMP): The timestamp
        #   of when the document was last meaningfully updated. A meaningful update is one
        #   that changes document's markdown content or metadata. * `uri` (STRING): The
        #   document URI, e.g. `https://docs.cloud.google.com/bigquery/docs/tables`.
        #   STRING fields support `=` (equals) and `!=` (not equals) operators for **exact
        #   match** on the whole string. Partial match, prefix match, and regexp match are
        #   not supported. TIMESTAMP fields support `=`, `<`, `<=`, `>`, and `>=`
        #   operators. Timestamps must be in RFC-3339 format, e.g., `"2025-01-01T00:00:00Z"
        #   `. You can combine expressions using `AND`, `OR`, and `NOT` (or `-`) logical
        #   operators. `OR` has higher precedence than `AND`. Use parentheses for explicit
        #   precedence grouping. Examples: * `data_source = "docs.cloud.google.com" OR
        #   data_source = "firebase.google.com"` * `data_source != "firebase.google.com"` *
        #   `update_time < "2024-01-01T00:00:00Z"` * `update_time >= "2025-01-22T00:00:
        #   00Z" AND (data_source = "developer.chrome.com" OR data_source = "web.dev")` * `
        #   uri = "https://docs.cloud.google.com/release-notes"` The `filter` string must
        #   not exceed 500 characters; values longer than 500 characters will result in an
        #   `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. Specifies the maximum number of results to return. The service may
        #   return fewer than this value. If unspecified, at most 5 results will be
        #   returned. The maximum value is 20; values above 20 will result in an
        #   INVALID_ARGUMENT error.
        # @param [String] page_token
        #   Optional. Contains a page token, received from a previous `
        #   SearchDocumentChunks` call. Provide this to retrieve the subsequent page.
        # @param [String] query
        #   Required. Provides the raw query string provided by the user, such as "How to
        #   create a Cloud Storage bucket?".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperknowledgeV1::SearchDocumentChunksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperknowledgeV1::SearchDocumentChunksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_document_document_chunks(filter: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/documents:searchDocumentChunks', options)
          command.response_representation = Google::Apis::DeveloperknowledgeV1::SearchDocumentChunksResponse::Representation
          command.response_class = Google::Apis::DeveloperknowledgeV1::SearchDocumentChunksResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
