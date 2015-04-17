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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CloudsearchV1
      # Google Cloud Search API
      #
      # The Google Cloud Search API defines an application interface to index
      #  documents that contain structured data and to search those indexes. It
      #  supports full text search.
      #
      # @example
      #    require 'google/apis/cloudsearch_v1'
      #
      #    Cloudsearch = Google::Apis::CloudsearchV1 # Alias the module
      #    service = Cloudsearch::CloudsearchService.new
      #
      # @see 
      class CloudsearchService < Google::Apis::Core::BaseService

        # @return [String]
        #  OAuth access token.
        attr_accessor :access_token

        # @return [String]
        #  OAuth bearer token.
        attr_accessor :bearer_token

        # @return [String]
        #  JSONP
        attr_accessor :callback

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [Boolean]
        #  Pretty-print response.
        attr_accessor :pp

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        # @return [String]
        #  V1 error format.
        attr_accessor :__xgafv

        def initialize
          super('https://cloudsearch.googleapis.com/', '')
        end

        # Lists search indexes belonging to the specified project.
        # @param [String] project_id
        #   The project from which to retrieve indexes. It cannot be the empty string.
        # @param [String] index_name_prefix
        #   The prefix of the index name. It is used to list all indexes with names that
        #   have this prefix.
        # @param [Fixnum] page_size
        #   The maximum number of indexes to return per page. If not specified, 100
        #   indexes are returned per page.
        # @param [String] page_token
        #   A `nextPageToken` returned from previous list indexes call as the starting
        #   point for this call. If not specified, list indexes from the beginning.
        # @param [String] view
        #   Specifies which parts of the IndexInfo resource is returned in the response.
        #   If not specified, `ID_ONLY` is used.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::ListIndexesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::ListIndexesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_indexes(project_id, index_name_prefix: nil, page_size: nil, page_token: nil, view: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudsearchV1::ListIndexesResponseRepresentation
          command.response_class = Google::Apis::CloudsearchV1::ListIndexesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['indexNamePrefix'] = index_name_prefix unless index_name_prefix.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists the documents in the named index that match the query.
        # @param [String] project_id
        #   The project associated with the index for searching document. It cannot be the
        #   empty string.
        # @param [String] index_id
        #   The index to search. It cannot be the empty string.
        # @param [String] query
        #   The query string in search query syntax. If the query is missing or empty, all
        #   documents are returned.
        # @param [Array<String>, String] field_expressions
        #   Customized expressions used in `orderBy` or `returnFields`. The expression can
        #   contain fields in `Document`, the built-in fields ( `_rank`, the document rank,
        #   and `_score` if scoring is enabled) and fields defined in `fieldExpressions`.
        #   Each field expression is represented in a json object with the following
        #   fields: * `name`: the name of the field expression in string. * `expression`:
        #   the expression to be computed. It can be a combination of supported functions
        #   encoded in string. Expressions involving number fields can use the
        #   arithmetical operators (`+`, `-`, `*`, `/`) and the built-in numeric functions
        #   (`max`, `min`, `pow`, `count`, `log`, `abs`). Expressions involving geopoint
        #   fields can use the `geopoint` and `distance` functions. Expressions for text
        #   and html fields can use the `snippet` function. For example: ```
        #   fieldExpressions=`name: "TotalPrice", expression: "(Price+Tax)"` ``` ```
        #   fieldExpressions=`name: "snippet", expression: "snippet('good times', content)"
        #   ` ``` The field expression names can be used in `orderBy` and `returnFields`
        #   after they are defined in `fieldExpressions`.
        # @param [Fixnum] page_size
        #   The maximum number of search results to return per page. Searches perform best
        #   when the `pageSize` is kept as small as possible. If not specified, 10 results
        #   are returned per page.
        # @param [String] page_token
        #   A `nextPageToken` returned from previous Search call as the starting point for
        #   this call. Pagination tokens provide better performance and consistency than
        #   offsets, and they cannot be used in combination with offsets.
        # @param [Fixnum] offset
        #   Offset is used to move to an arbitrary result, independent of the previous
        #   results. Offsets are inefficient when compared to `pageToken`. `pageToken` and
        #   `offset` cannot be both set. The default value of `offset` is 0.
        # @param [Fixnum] matched_count_accuracy
        #   Minimum accuracy requirement for `matchedCount` in search response. If
        #   specified, `matchedCount` will be accurate up to at least that number. For
        #   example, when set to 100, any `matchedCount <= 100` is accurate. This option
        #   may add considerable latency/expense. By default (when it is not specified or
        #   set to 0), the accuracy is the same as `pageSize`.
        # @param [String] order_by
        #   Comma-separated list of fields for sorting on the search result, including
        #   fields from `Document`, the built-in fields (`_rank` and `_score`), and fields
        #   defined in `fieldExpressions`. For example: `orderBy="foo,bar"`. The default
        #   sorting order is ascending. To specify descending order for a field, a suffix `
        #   " desc"` should be appended to the field name. For example: `orderBy="foo desc,
        #   bar"`. The default value for text sort is the empty string, and the default
        #   value for numeric sort is 0. If not specified, the search results are
        #   automatically sorted by descending `_rank`. Sorting by ascending `_rank` is
        #   not allowed.
        # @param [String] scorer
        #   The scoring function to invoke on a search result for this query. If `scorer`
        #   is not set, scoring is disabled and `_score` is 0 for all documents in the
        #   search result. To enable document relevancy score based on term frequency, set
        #   `"scorer=generic"`.
        # @param [Fixnum] scorer_size
        #   Maximum number of top retrieved results to score. It is valid only when `
        #   scorer` is set. If not specified, 100 retrieved results are scored.
        # @param [Array<String>, String] return_fields
        #   List of fields to return in `SearchResult` objects. It can be fields from `
        #   Document`, the built-in fields `_rank` and `_score`, and fields defined in `
        #   fieldExpressions`. Use `"*"` to return all fields from `Document`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::SearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::SearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_indexes(project_id, index_id, query: nil, field_expressions: nil, page_size: nil, page_token: nil, offset: nil, matched_count_accuracy: nil, order_by: nil, scorer: nil, scorer_size: nil, return_fields: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes/{indexId}/search'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudsearchV1::SearchResponseRepresentation
          command.response_class = Google::Apis::CloudsearchV1::SearchResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['indexId'] = index_id unless index_id.nil?
          command.query['query'] = query unless query.nil?
          command.query['fieldExpressions'] = field_expressions unless field_expressions.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['offset'] = offset unless offset.nil?
          command.query['matchedCountAccuracy'] = matched_count_accuracy unless matched_count_accuracy.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['scorer'] = scorer unless scorer.nil?
          command.query['scorerSize'] = scorer_size unless scorer_size.nil?
          command.query['returnFields'] = return_fields unless return_fields.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Inserts a document for indexing or updates an indexed document. The returned
        # document contains only the ID of the new document. When `docId` is absent from
        # the document, it is provided by the server.
        # @param [Google::Apis::CloudsearchV1::Document] document_obj
        #   
        # @param [String] project_id
        #   The project associated with the index for adding document. It cannot be the
        #   empty string.
        # @param [String] index_id
        #   The index to add document to. It cannot be the empty string.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_index_document(document_obj, project_id, index_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes/{indexId}/documents'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::CloudsearchV1::DocumentRepresentation
          command.request_object = document_obj
          command.response_representation = Google::Apis::CloudsearchV1::DocumentRepresentation
          command.response_class = Google::Apis::CloudsearchV1::Document
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['indexId'] = index_id unless index_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes a document from an index.
        # @param [String] project_id
        #   The project associated with the index for deleting document. It cannot be the
        #   empty string.
        # @param [String] index_id
        #   The index from which to delete the document. It cannot be the empty string.
        # @param [String] doc_id
        #   The document to be deleted. It cannot be the empty string.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_index_document(project_id, index_id, doc_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes/{indexId}/documents/{docId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::CloudsearchV1::EmptyRepresentation
          command.response_class = Google::Apis::CloudsearchV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['indexId'] = index_id unless index_id.nil?
          command.params['docId'] = doc_id unless doc_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a document from an index.
        # @param [String] project_id
        #   The project associated with the index for retrieving the document. It cannot
        #   be the empty string.
        # @param [String] index_id
        #   The index from which to retrieve the document. It cannot be the empty string.
        # @param [String] doc_id
        #   The identifier of the document to retrieve. It cannot be the empty string.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_index_document(project_id, index_id, doc_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes/{indexId}/documents/{docId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudsearchV1::DocumentRepresentation
          command.response_class = Google::Apis::CloudsearchV1::Document
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['indexId'] = index_id unless index_id.nil?
          command.params['docId'] = doc_id unless doc_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists documents in the specified search index. Intended for batch processing.
        # @param [String] project_id
        #   The project associated with the index for listing documents. It cannot be the
        #   empty string.
        # @param [String] index_id
        #   The index from which to list the documents. It cannot be the empty string.
        # @param [Fixnum] page_size
        #   The maximum number of documents to return per page. If not specified, 100
        #   documents are returned per page.
        # @param [String] page_token
        #   A `nextPageToken` returned from previous list documents call as the starting
        #   point for this call. If not specified, list documents from the beginning.
        # @param [String] view
        #   Specifies which part of the document resource is returned in the response. If
        #   not specified, `ID_ONLY` is used.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsearchV1::ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsearchV1::ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_index_documents(project_id, index_id, page_size: nil, page_token: nil, view: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1/projects/{projectId}/indexes/{indexId}/documents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudsearchV1::ListDocumentsResponseRepresentation
          command.response_class = Google::Apis::CloudsearchV1::ListDocumentsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['indexId'] = index_id unless index_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['key'] = key unless key.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
        end
      end
    end
  end
end
