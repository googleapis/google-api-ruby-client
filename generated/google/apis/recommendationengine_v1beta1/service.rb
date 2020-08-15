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
    module RecommendationengineV1beta1
      # Recommendations AI
      #
      # Recommendations AI service enables customers to build end-to-end personalized
      #  recommendation systems without requiring a high level of expertise in machine
      #  learning, recommendation system, or Google Cloud.
      #
      # @example
      #    require 'google/apis/recommendationengine_v1beta1'
      #
      #    Recommendationengine = Google::Apis::RecommendationengineV1beta1 # Alias the module
      #    service = Recommendationengine::RecommendationsAIService.new
      #
      # @see https://cloud.google.com/recommendations-ai/docs
      class RecommendationsAIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://recommendationengine.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Lists all the catalog configurations associated with the project.
        # @param [String] parent
        #   Required. The account resource name with an associated location.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCatalogs` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalogs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/catalogs', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the catalog configuration.
        # @param [String] name
        #   The fully qualified resource name of the catalog.
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog] google_cloud_recommendationengine_v1beta1_catalog_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided 'catalog' to update. If not
        #   set, will only update the catalog_item_level_config field. Currently only
        #   fields that can be updated are catalog_item_level_config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog(name, google_cloud_recommendationengine_v1beta1_catalog_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_catalog_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a catalog item.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as "projects/*/locations/
        #   global/catalogs/default_catalog".
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem] google_cloud_recommendationengine_v1beta1_catalog_item_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_catalog_item(parent, google_cloud_recommendationengine_v1beta1_catalog_item_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/catalogItems', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_catalog_item_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a catalog item.
        # @param [String] name
        #   Required. Full resource name of catalog item, such as "projects/*/locations/
        #   global/catalogs/default_catalog/catalogItems/some_catalog_item_id".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_catalog_item(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific catalog item.
        # @param [String] name
        #   Required. Full resource name of catalog item, such as "projects/*/locations/
        #   global/catalogs/default_catalog/catalogitems/some_catalog_item_id".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_catalog_item(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple catalog items. Request processing may be synchronous.
        # No partial updating supported. Non-existing items will be created. Operation.
        # response is of type ImportResponse. Note that it is possible for a subset of
        # the items to be successfully updated.
        # @param [String] parent
        #   Required. "projects/1234/locations/global/catalogs/default_catalog" If no
        #   updateMask is specified, requires catalogItems.create permission. If
        #   updateMask is specified, requires catalogItems.update permission.
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest] google_cloud_recommendationengine_v1beta1_import_catalog_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_catalog_item(parent, google_cloud_recommendationengine_v1beta1_import_catalog_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/catalogItems:import', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_import_catalog_items_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of catalog items.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as "projects/*/locations/
        #   global/catalogs/default_catalog".
        # @param [String] filter
        #   Optional. A filter to apply on the list results.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return per page. If zero, the service
        #   will choose a reasonable default.
        # @param [String] page_token
        #   Optional. The previous ListCatalogItemsResponse.next_page_token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_catalog_items(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/catalogItems', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a catalog item. Partial updating is supported. Non-existing items will
        # be created.
        # @param [String] name
        #   Required. Full resource name of catalog item, such as "projects/*/locations/
        #   global/catalogs/default_catalog/catalogItems/some_catalog_item_id".
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem] google_cloud_recommendationengine_v1beta1_catalog_item_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided 'item' to update. If not set,
        #   will by default update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_catalog_item(name, google_cloud_recommendationengine_v1beta1_catalog_item_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_catalog_item_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem
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
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_event_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
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
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_event_store_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation prediction. If using API Key based authentication, the
        # API Key must be registered using the PredictionApiKeyRegistry service. [Learn
        # more](/recommendations-ai/docs/setting-up#register-key).
        # @param [String] name
        #   Required. Full resource name of the format: `name=projects/*/locations/global/
        #   catalogs/default_catalog/eventStores/default_event_store/placements/*` The id
        #   of the recommendation engine placement. This id is used to identify the set of
        #   models that will be used to make the prediction. We currently support three
        #   placements with the following IDs by default: * `shopping_cart`: Predicts
        #   items frequently bought together with one or more catalog items in the same
        #   shopping session. Commonly displayed after `add-to-cart` events, on product
        #   detail pages, or on the shopping cart page. * `home_page`: Predicts the next
        #   product that a user will most likely engage with or purchase based on the
        #   shopping or viewing history of the specified `userId` or `visitorId`. For
        #   example - Recommendations for you. * `product_detail`: Predicts the next
        #   product that a user will most likely engage with or purchase. The prediction
        #   is based on the shopping or viewing history of the specified `userId` or `
        #   visitorId` and its relevance to a specified `CatalogItem`. Typically used on
        #   product detail pages. For example - More items like this. * `
        #   recently_viewed_default`: Returns up to 75 items recently viewed by the
        #   specified `userId` or `visitorId`, most recent ones first. Returns nothing if
        #   neither of them has viewed any items yet. For example - Recently viewed. The
        #   full list of available placements can be seen at https://console.cloud.google.
        #   com/recommendation/datafeeds/default_catalog/dashboard
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictRequest] google_cloud_recommendationengine_v1beta1_predict_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_project_location_catalog_event_store_placement(name, google_cloud_recommendationengine_v1beta1_predict_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:predict', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_predict_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register an API key for use with predict method.
        # @param [String] parent
        #   Required. The parent resource path. "projects/*/locations/global/catalogs/
        #   default_catalog/eventStores/default_event_store".
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest] google_cloud_recommendationengine_v1beta1_create_prediction_api_key_registration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_event_store_prediction_api_key_registration(parent, google_cloud_recommendationengine_v1beta1_create_prediction_api_key_registration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/predictionApiKeyRegistrations', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_create_prediction_api_key_registration_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unregister an apiKey from using for predict method.
        # @param [String] name
        #   Required. The API key to unregister including full resource path. "projects/*/
        #   locations/global/catalogs/default_catalog/eventStores/default_event_store/
        #   predictionApiKeyRegistrations/"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_event_store_prediction_api_key_registration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the registered apiKeys for use with predict method.
        # @param [String] parent
        #   Required. The parent placement resource name such as "projects/1234/locations/
        #   global/catalogs/default_catalog/eventStores/default_event_store"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return per page. If unset, the service
        #   will choose a reasonable default.
        # @param [String] page_token
        #   Optional. The previous `ListPredictionApiKeyRegistration.nextPageToken`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_event_store_prediction_api_key_registrations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/predictionApiKeyRegistrations', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a 3rd party domain. This method is used
        # only by the Recommendations AI JavaScript pixel. Users should not call this
        # method directly.
        # @param [String] parent
        #   Required. The parent eventStore name, such as "projects/1234/locations/global/
        #   catalogs/default_catalog/eventStores/default_event_store".
        # @param [Fixnum] ets
        #   Optional. The event timestamp in milliseconds. This prevents browser caching
        #   of otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   Optional. The url including cgi-parameters but excluding the hash fragment.
        #   The URL must be truncated to 1.5K bytes to conservatively be under the 2K
        #   bytes. This is often more useful than the referer url, because many browsers
        #   only send the domain for 3rd party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_catalog_event_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleApiHttpBody
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
        #   Required. "projects/1234/locations/global/catalogs/default_catalog/eventStores/
        #   default_event_store"
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest] google_cloud_recommendationengine_v1beta1_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_event_store_user_event(parent, google_cloud_recommendationengine_v1beta1_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_import_user_events_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of user events within a time range, with potential filtering. The
        # method does not list unjoined user events. Unjoined user event definition:
        # when a user event is ingested from Recommendations AI User Event APIs, the
        # catalog item included in the user event is connected with the current catalog.
        # If a catalog item of the ingested event is not in the current catalog, it
        # could lead to degraded model quality. This is called an unjoined event.
        # @param [String] parent
        #   Required. The parent eventStore resource name, such as "projects/*/locations/*/
        #   catalogs/default_catalog/eventStores/default_event_store".
        # @param [String] filter
        #   Optional. Filtering expression to specify restrictions over returned events.
        #   This is a sequence of terms, where each term applies some kind of a
        #   restriction to the returned user events. Use this expression to restrict
        #   results to a specific time range, or filter events by eventType. eg: eventTime
        #   > "2012-04-23T18:25:43.511Z" eventsMissingCatalogItems eventTime<"2012-04-
        #   23T18:25:43.511Z" eventType=search We expect only 3 types of fields: *
        #   eventTime: this can be specified a maximum of 2 times, once with a less than
        #   operator and once with a greater than operator. The eventTime restrict should
        #   result in one contiguous valid eventTime range. * eventType: only 1 eventType
        #   restriction can be specified. * eventsMissingCatalogItems: specififying this
        #   will restrict results to events for which catalog items were not found in the
        #   catalog. The default behavior is to return only those events for which catalog
        #   items were found. Some examples of valid filters expressions: * Example 1:
        #   eventTime > "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z" *
        #   Example 2: eventTime > "2012-04-23T18:25:43.511Z" eventType = detail-page-
        #   view * Example 3: eventsMissingCatalogItems eventType = search eventTime < "
        #   2018-04-23T18:30:43.511Z" * Example 4: eventTime > "2012-04-23T18:25:43.511Z" *
        #   Example 5: eventType = search * Example 6: eventsMissingCatalogItems
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return per page. If zero, the service
        #   will choose a reasonable default.
        # @param [String] page_token
        #   Optional. The previous ListUserEventsResponse.next_page_token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListUserEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListUserEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_event_store_user_events(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userEvents', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListUserEventsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the event_store under which the events are
        #   created. The format is "projects/$`projectId`/locations/global/catalogs/$`
        #   catalogId`/eventStores/$`eventStoreId`"
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest] google_cloud_recommendationengine_v1beta1_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_catalog_event_store_user_event(parent, google_cloud_recommendationengine_v1beta1_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_purge_user_events_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Triggers a user event rejoin operation with latest catalog data. Events will
        # not be annotated with detailed catalog information if catalog item is missing
        # at the time the user event is ingested, and these events are stored as
        # unjoined events with a limited usage on training and serving. This API can be
        # used to trigger a 'join' operation on specified events with latest version of
        # catalog items. It can also be used to correct events joined with wrong catalog
        # items.
        # @param [String] parent
        #   Required. Full resource name of user event, such as "projects/*/locations/*/
        #   catalogs/default_catalog/eventStores/default_event_store".
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest] google_cloud_recommendationengine_v1beta1_rejoin_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rejoin_project_location_catalog_event_store_user_event(parent, google_cloud_recommendationengine_v1beta1_rejoin_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userEvents:rejoin', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_rejoin_user_events_request_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent eventStore resource name, such as "projects/1234/
        #   locations/global/catalogs/default_catalog/eventStores/default_event_store".
        # @param [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent] google_cloud_recommendationengine_v1beta1_user_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_catalog_event_store_user_event(parent, google_cloud_recommendationengine_v1beta1_user_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
          command.request_object = google_cloud_recommendationengine_v1beta1_user_event_object
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent
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
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
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
        # @yieldparam result [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RecommendationengineV1beta1::GoogleLongrunningListOperationsResponse
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
