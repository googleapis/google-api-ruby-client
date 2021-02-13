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
    module RetailV2alpha
      # Retail API
      #
      # Cloud Retail service enables customers to build end-to-end personalized
      #  recommendation systems without requiring a high level of expertise in machine
      #  learning, recommendation system, or Google Cloud.
      #
      # @example
      #    require 'google/apis/retail_v2alpha'
      #
      #    Retail = Google::Apis::RetailV2alpha # Alias the module
      #    service = Retail::CloudRetailService.new
      #
      # @see https://cloud.google.com/recommendations
      class CloudRetailService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://retail.googleapis.com/', '',
                client_name: 'google-apis-retail_v2alpha',
                client_version: Google::Apis::RetailV2alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists all the Catalogs associated with the project.
        # @param [String] parent
        #   Required. The account resource name with an associated location. If the caller
        #   does not have permission to list Catalogs under this location, regardless of
        #   whether or not this location exists, a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Catalogs to return. If unspecified, defaults to 50. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListCatalogsResponse.next_page_token, received from a previous
        #   CatalogService.ListCatalogs call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to CatalogService.ListCatalogs
        #   must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaListCatalogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaListCatalogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalogs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+parent}/catalogs', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaListCatalogsResponse::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaListCatalogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Catalogs.
        # @param [String] name
        #   Required. Immutable. The fully qualified resource name of the catalog.
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog] google_cloud_retail_v2alpha_catalog_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Catalog to update. If not set, will
        #   only update the Catalog.product_level_config field, which is also the only
        #   currently supported field to update. If an unsupported or unknown field is
        #   provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog(name, google_cloud_retail_v2alpha_catalog_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2alpha/{+name}', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog::Representation
          command.request_object = google_cloud_retail_v2alpha_catalog_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaCatalog
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Product.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/default_branch`.
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct] google_cloud_retail_v2alpha_product_object
        # @param [String] product_id
        #   Required. The ID to use for the Product, which will become the final component
        #   of the Product.name. If the caller does not have permission to create the
        #   Product, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. This field must be unique among all Products with the same parent.
        #   Otherwise, an ALREADY_EXISTS error is returned. This field must be a UTF-8
        #   encoded string with a length limit of 128 characters. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_branch_product(parent, google_cloud_retail_v2alpha_product_object = nil, product_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/products', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
          command.request_object = google_cloud_retail_v2alpha_product_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct
          command.params['parent'] = parent unless parent.nil?
          command.query['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Product.
        # @param [String] name
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to delete the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   Product to delete does not exist, a NOT_FOUND error is returned. The Product
        #   to delete can neither be a Product.Type.COLLECTION Product member nor a
        #   Product.Type.PRIMARY Product with more than one variants. Otherwise, an
        #   INVALID_ARGUMENT error is returned. All inventory information for the named
        #   Product will be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_branch_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2alpha/{+name}', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Product.
        # @param [String] name
        #   Required. Full resource name of Product, such as `projects/*/locations/global/
        #   catalogs/default_catalog/branches/default_branch/products/some_product_id`. If
        #   the caller does not have permission to access the Product, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested Product does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_branch_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Products. Request processing may be synchronous. No
        # partial updating is supported. Non-existing items are created. Note that it is
        # possible for a subset of the Products to be successfully updated.
        # @param [String] parent
        #   Required. `projects/1234/locations/global/catalogs/default_catalog/branches/
        #   default_branch` If no updateMask is specified, requires products.create
        #   permission. If updateMask is specified, requires products.update permission.
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportProductsRequest] google_cloud_retail_v2alpha_import_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_branch_product(parent, google_cloud_retail_v2alpha_import_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/products:import', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportProductsRequest::Representation
          command.request_object = google_cloud_retail_v2alpha_import_products_request_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Product.
        # @param [String] name
        #   Immutable. Full resource name of the product, such as `projects/*/locations/
        #   global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        #   The branch ID must be "default_branch".
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct] google_cloud_retail_v2alpha_product_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Product is not found, a new Product will be created.
        #   In this situation, `update_mask` is ignored.
        # @param [String] update_mask
        #   Indicates which fields in the provided Product to update. The immutable and
        #   output only fields are NOT supported. If not set, all supported fields (the
        #   fields that are neither immutable nor output only) are updated. If an
        #   unsupported or unknown field is provided, an INVALID_ARGUMENT error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_branch_product(name, google_cloud_retail_v2alpha_product_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2alpha/{+name}', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
          command.request_object = google_cloud_retail_v2alpha_product_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaProduct
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation prediction.
        # @param [String] placement
        #   Required. Full resource name of the format: `name=projects/*/locations/global/
        #   catalogs/default_catalog/placements/*` The id of the recommendation engine
        #   placement. This id is used to identify the set of models that will be used to
        #   make the prediction. We currently support three placements with the following
        #   IDs by default: * `shopping_cart`: Predicts products frequently bought
        #   together with one or more products in the same shopping session. Commonly
        #   displayed after `add-to-cart` events, on product detail pages, or on the
        #   shopping cart page. * `home_page`: Predicts the next product that a user will
        #   most likely engage with or purchase based on the shopping or viewing history
        #   of the specified `userId` or `visitorId`. For example - Recommendations for
        #   you. * `product_detail`: Predicts the next product that a user will most
        #   likely engage with or purchase. The prediction is based on the shopping or
        #   viewing history of the specified `userId` or `visitorId` and its relevance to
        #   a specified `CatalogItem`. Typically used on product detail pages. For example
        #   - More products like this. * `recently_viewed_default`: Returns up to 75
        #   products recently viewed by the specified `userId` or `visitorId`, most recent
        #   ones first. Returns nothing if neither of them has viewed any products yet.
        #   For example - Recently viewed. The full list of available placements can be
        #   seen at https://console.cloud.google.com/recommendation/catalogs/
        #   default_catalog/placements
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictRequest] google_cloud_retail_v2alpha_predict_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_project_location_catalog_placement(placement, google_cloud_retail_v2alpha_predict_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+placement}:predict', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictRequest::Representation
          command.request_object = google_cloud_retail_v2alpha_predict_request_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponse::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPredictResponse
          command.params['placement'] = placement unless placement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a 3rd party domain. This method is used
        # only by the Retail API JavaScript pixel and Google Tag Manager. Users should
        # not call this method directly.
        # @param [String] parent
        #   Required. The parent catalog name, such as `projects/1234/locations/global/
        #   catalogs/default_catalog`.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for 3rd party requests.
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_catalog_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleApiHttpBody
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
        #   Required. `projects/1234/locations/global/catalogs/default_catalog`
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportUserEventsRequest] google_cloud_retail_v2alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_catalog_user_event(parent, google_cloud_retail_v2alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2alpha_import_user_events_request_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
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
        #   The format is `projects/$`projectId`/locations/global/catalogs/$`catalogId``
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPurgeUserEventsRequest] google_cloud_retail_v2alpha_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_catalog_user_event(parent, google_cloud_retail_v2alpha_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2alpha_purge_user_events_request_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Triggers a user event rejoin operation with latest product catalog. Events
        # will not be annotated with detailed product information if product is missing
        # from the catalog at the time the user event is ingested, and these events are
        # stored as unjoined events with a limited usage on training and serving. This
        # API can be used to trigger a 'join' operation on specified events with latest
        # version of product catalog. It can also be used to correct events joined with
        # wrong product catalog.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/1234/locations/
        #   global/catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRejoinUserEventsRequest] google_cloud_retail_v2alpha_rejoin_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rejoin_project_location_catalog_user_event(parent, google_cloud_retail_v2alpha_rejoin_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/userEvents:rejoin', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaRejoinUserEventsRequest::Representation
          command.request_object = google_cloud_retail_v2alpha_rejoin_user_events_request_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent catalog resource name, such as `projects/1234/locations/
        #   global/catalogs/default_catalog`.
        # @param [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent] google_cloud_retail_v2alpha_user_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_catalog_user_event(parent, google_cloud_retail_v2alpha_user_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent::Representation
          command.request_object = google_cloud_retail_v2alpha_user_event_object
          command.response_representation = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleCloudRetailV2alphaUserEvent
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RetailV2alpha::GoogleLongrunningListOperationsResponse
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
