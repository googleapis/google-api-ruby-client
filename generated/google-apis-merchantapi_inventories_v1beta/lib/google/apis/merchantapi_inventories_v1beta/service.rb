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
    module MerchantapiInventoriesV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_inventories_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiInventoriesV1beta # Alias the module
      #    service = Merchantapi::MerchantService.new
      #
      # @see https://developers.devsite.corp.google.com/merchant/api
      class MerchantService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://merchantapi.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-merchantapi_inventories_v1beta',
                client_version: Google::Apis::MerchantapiInventoriesV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes the specified `LocalInventory` from the given product in your merchant
        # account. It might take a up to an hour for the `LocalInventory` to be deleted
        # from the specific product. Once you have received a successful delete response,
        # wait for that period before attempting a delete again.
        # @param [String] name
        #   Required. The name of the local inventory for the given product to delete.
        #   Format: `accounts/`account`/products/`product`/localInventories/`store_code``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_product_local_inventory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'inventories/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a `LocalInventory` resource to a product in your merchant account.
        # Replaces the full `LocalInventory` resource if an entry with the same `
        # storeCode` already exists for the product. It might take up to 30 minutes for
        # the new or updated `LocalInventory` resource to appear in products.
        # @param [String] parent
        #   Required. The account and product where this inventory will be inserted.
        #   Format: `accounts/`account`/products/`product``
        # @param [Google::Apis::MerchantapiInventoriesV1beta::LocalInventory] local_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::LocalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::LocalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_product_local_inventory(parent, local_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'inventories/v1beta/{+parent}/localInventories:insert', options)
          command.request_representation = Google::Apis::MerchantapiInventoriesV1beta::LocalInventory::Representation
          command.request_object = local_inventory_object
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::LocalInventory::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::LocalInventory
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `LocalInventory` resources for the given product in your merchant
        # account. The response might contain fewer items than specified by `pageSize`.
        # If `pageToken` was returned in previous request, it can be used to obtain
        # additional results. `LocalInventory` resources are listed per product for a
        # given account.
        # @param [String] parent
        #   Required. The `name` of the parent product to list local inventories for.
        #   Format: `accounts/`account`/products/`product``
        # @param [Fixnum] page_size
        #   The maximum number of `LocalInventory` resources for the given product to
        #   return. The service returns fewer than this value if the number of inventories
        #   for the given product is less that than the `pageSize`. The default value is
        #   25000. The maximum value is 25000; If a value higher than the maximum is
        #   specified, then the `pageSize` will default to the maximum
        # @param [String] page_token
        #   A page token, received from a previous `ListLocalInventories` call. Provide
        #   the page token to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLocalInventories` must match the call that
        #   provided the page token. The token returned as nextPageToken in the response
        #   to the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::ListLocalInventoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::ListLocalInventoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_product_local_inventories(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'inventories/v1beta/{+parent}/localInventories', options)
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::ListLocalInventoriesResponse::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::ListLocalInventoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified `RegionalInventory` resource from the given product in
        # your merchant account. It might take up to an hour for the `RegionalInventory`
        # to be deleted from the specific product. Once you have received a successful
        # delete response, wait for that period before attempting a delete again.
        # @param [String] name
        #   Required. The name of the `RegionalInventory` resource to delete. Format: `
        #   accounts/`account`/products/`product`/regionalInventories/`region``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_product_regional_inventory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'inventories/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a `RegionalInventory` to a given product in your merchant account.
        # Replaces the full `RegionalInventory` resource if an entry with the same `
        # region` already exists for the product. It might take up to 30 minutes for the
        # new or updated `RegionalInventory` resource to appear in products.
        # @param [String] parent
        #   Required. The account and product where this inventory will be inserted.
        #   Format: `accounts/`account`/products/`product``
        # @param [Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory] regional_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_product_regional_inventory(parent, regional_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'inventories/v1beta/{+parent}/regionalInventories:insert', options)
          command.request_representation = Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory::Representation
          command.request_object = regional_inventory_object
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `RegionalInventory` resources for the given product in your merchant
        # account. The response might contain fewer items than specified by `pageSize`.
        # If `pageToken` was returned in previous request, it can be used to obtain
        # additional results. `RegionalInventory` resources are listed per product for a
        # given account.
        # @param [String] parent
        #   Required. The `name` of the parent product to list `RegionalInventory`
        #   resources for. Format: `accounts/`account`/products/`product``
        # @param [Fixnum] page_size
        #   The maximum number of `RegionalInventory` resources for the given product to
        #   return. The service returns fewer than this value if the number of inventories
        #   for the given product is less that than the `pageSize`. The default value is
        #   25000. The maximum value is 100000; If a value higher than the maximum is
        #   specified, then the `pageSize` will default to the maximum.
        # @param [String] page_token
        #   A page token, received from a previous `ListRegionalInventories` call. Provide
        #   the page token to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListRegionalInventories` must match the call that
        #   provided the page token. The token returned as nextPageToken in the response
        #   to the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiInventoriesV1beta::ListRegionalInventoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiInventoriesV1beta::ListRegionalInventoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_product_regional_inventories(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'inventories/v1beta/{+parent}/regionalInventories', options)
          command.response_representation = Google::Apis::MerchantapiInventoriesV1beta::ListRegionalInventoriesResponse::Representation
          command.response_class = Google::Apis::MerchantapiInventoriesV1beta::ListRegionalInventoriesResponse
          command.params['parent'] = parent unless parent.nil?
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
