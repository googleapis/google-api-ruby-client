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
    module DiscoveryengineV1alpha
      # Discovery Engine API
      #
      # Discovery Engine API.
      #
      # @example
      #    require 'google/apis/discoveryengine_v1alpha'
      #
      #    Discoveryengine = Google::Apis::DiscoveryengineV1alpha # Alias the module
      #    service = Discoveryengine::DiscoveryEngineService.new
      #
      # @see https://cloud.google.com/discovery-engine/docs
      class DiscoveryEngineService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://discoveryengine.googleapis.com/', '',
                client_name: 'google-apis-discoveryengine_v1alpha',
                client_version: Google::Apis::DiscoveryengineV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the Widget Config using the uuid.
        # @param [String] location
        #   Required. The location resource where lookup widget will be performed. Format:
        #   `locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigRequest] google_cloud_discoveryengine_v1alpha_lookup_widget_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_location_widget_config(location, google_cloud_discoveryengine_v1alpha_lookup_widget_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}/lookupWidgetConfig', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_lookup_widget_config_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a user input completion with keyword suggestion. Similar to the
        # CompletionService.CompleteQuery method, but a widget version that allows
        # CompleteQuery without API Key. It supports CompleteQuery with or without JWT
        # token.
        # @param [String] location
        #   Required. The location resource where widget complete query will be performed.
        #   Format: `locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryRequest] google_cloud_discoveryengine_v1alpha_widget_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def widget_location_complete_query(location, google_cloud_discoveryengine_v1alpha_widget_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}/widgetCompleteQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converse a conversation with Widget.
        # @param [String] location
        #   Required. The location resource where widget converse conversation will be
        #   performed. Format: `locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationRequest] google_cloud_discoveryengine_v1alpha_widget_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def widget_location_converse_conversation(location, google_cloud_discoveryengine_v1alpha_widget_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}/widgetConverseConversation', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a widget
        # version that allows search without API Key. It supports search with or without
        # JWT token.
        # @param [String] location
        #   Required. The location resource where widget search will be performed. Format:
        #   `locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchRequest] google_cloud_discoveryengine_v1alpha_widget_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def widget_location_search(location, google_cloud_discoveryengine_v1alpha_widget_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}/widgetSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Selects data model of query suggestions for serving. Currently supported
        #   values: * `document` - Using suggestions generated from user-imported
        #   documents. * `search-history` - Using suggestions generated from the past
        #   history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   A unique identifier for tracking visitors. For example, this could be
        #   implemented with an HTTP cookie, which should be able to uniquely identify a
        #   visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which will become the final
        #   component of the Document.name. If the caller does not have permission to
        #   create the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items will be created. Note: It is possible for a subset of the
        # Documents to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest] google_cloud_discoveryengine_v1alpha_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Document is not found, a new Document will be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_branch_document(name, google_cloud_discoveryengine_v1alpha_document_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest] google_cloud_discoveryengine_v1alpha_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project_number`
        #   /locations/`location_id`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest] google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_conversation(parent, google_cloud_discoveryengine_v1alpha_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project_number`/
        #   locations/`location_id`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `project/*/locations/global/collections/`
        #   collection`/dataStore/*/conversations/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which will become the final component
        #   of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_schema(parent, google_cloud_discoveryengine_v1alpha_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema will be created. In
        #   this situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_schema(name, google_cloud_discoveryengine_v1alpha_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schema_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of the format: `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` Before you can request
        #   recommendations from your model, you must create at least one serving config
        #   for it.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest] google_cloud_discoveryengine_v1alpha_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_collection_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/dataStores/default_data_store/
        #   servingConfigs/default_serving_config`. This field is used to identify the
        #   serving configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest] google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_collection_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_target_site_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_target_site_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent DataStore resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_collection_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of User events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest] google_cloud_discoveryengine_v1alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/$`projectId`/locations/global/collections/`$
        #   collectionId`/dataStores/$`dataStoreId``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest] google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent DataStore resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] google_cloud_discoveryengine_v1alpha_user_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_user_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Selects data model of query suggestions for serving. Currently supported
        #   values: * `document` - Using suggestions generated from user-imported
        #   documents. * `search-history` - Using suggestions generated from the past
        #   history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   A unique identifier for tracking visitors. For example, this could be
        #   implemented with an HTTP cookie, which should be able to uniquely identify a
        #   visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which will become the final
        #   component of the Document.name. If the caller does not have permission to
        #   create the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items will be created. Note: It is possible for a subset of the
        # Documents to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest] google_cloud_discoveryengine_v1alpha_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Document is not found, a new Document will be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_branch_document(name, google_cloud_discoveryengine_v1alpha_document_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest] google_cloud_discoveryengine_v1alpha_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project_number`
        #   /locations/`location_id`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest] google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_conversation(parent, google_cloud_discoveryengine_v1alpha_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project_number`/
        #   locations/`location_id`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `project/*/locations/global/collections/`
        #   collection`/dataStore/*/conversations/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which will become the final component
        #   of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_schema(parent, google_cloud_discoveryengine_v1alpha_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema will be created. In
        #   this situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_schema(name, google_cloud_discoveryengine_v1alpha_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of the format: `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` Before you can request
        #   recommendations from your model, you must create at least one serving config
        #   for it.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest] google_cloud_discoveryengine_v1alpha_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/dataStores/default_data_store/
        #   servingConfigs/default_serving_config`. This field is used to identify the
        #   serving configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest] google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent DataStore resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of User events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest] google_cloud_discoveryengine_v1alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/$`projectId`/locations/global/collections/`$
        #   collectionId`/dataStores/$`dataStoreId``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest] google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent DataStore resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] google_cloud_discoveryengine_v1alpha_user_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_user_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
