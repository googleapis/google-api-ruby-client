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
    module MerchantapiLfpV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_lfp_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiLfpV1beta # Alias the module
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
                client_name: 'google-apis-merchantapi_lfp_v1beta',
                client_version: Google::Apis::MerchantapiLfpV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Inserts a `LfpInventory` resource for the given target merchant account. If
        # the resource already exists, it will be replaced. The inventory automatically
        # expires after 30 days.
        # @param [String] parent
        #   Required. The LFP provider account. Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiLfpV1beta::LfpInventory] lfp_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::LfpInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::LfpInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_lfp_inventory(parent, lfp_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'lfp/v1beta/{+parent}/lfpInventories:insert', options)
          command.request_representation = Google::Apis::MerchantapiLfpV1beta::LfpInventory::Representation
          command.request_object = lfp_inventory_object
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::LfpInventory::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::LfpInventory
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a `LfpSale` for the given merchant.
        # @param [String] parent
        #   Required. The LFP provider account. Format: `accounts/`lfp_partner``
        # @param [Google::Apis::MerchantapiLfpV1beta::LfpSale] lfp_sale_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::LfpSale] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::LfpSale]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_lfp_sale(parent, lfp_sale_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'lfp/v1beta/{+parent}/lfpSales:insert', options)
          command.request_representation = Google::Apis::MerchantapiLfpV1beta::LfpSale::Representation
          command.request_object = lfp_sale_object
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::LfpSale::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::LfpSale
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a store for a target merchant.
        # @param [String] name
        #   Required. The name of the store to delete for the target merchant account.
        #   Format: `accounts/`account`/lfpStores/`target_merchant`~`store_code``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_lfp_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'lfp/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about a store.
        # @param [String] name
        #   Required. The name of the store to retrieve. Format: `accounts/`account`/
        #   lfpStores/`target_merchant`~`store_code``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::LfpStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::LfpStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_lfp_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'lfp/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::LfpStore::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::LfpStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a store for the target merchant. If the store with the same store code
        # already exists, it will be replaced.
        # @param [String] parent
        #   Required. The LFP provider account Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiLfpV1beta::LfpStore] lfp_store_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::LfpStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::LfpStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_lfp_store(parent, lfp_store_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'lfp/v1beta/{+parent}/lfpStores:insert', options)
          command.request_representation = Google::Apis::MerchantapiLfpV1beta::LfpStore::Representation
          command.request_object = lfp_store_object
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::LfpStore::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::LfpStore
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the stores of the target merchant, specified by the filter in `
        # ListLfpStoresRequest`.
        # @param [String] parent
        #   Required. The LFP partner. Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `LfpStore` resources for the given account to
        #   return. The service returns fewer than this value if the number of stores for
        #   the given account is less than the `pageSize`. The default value is 250. The
        #   maximum value is 1000; If a value higher than the maximum is specified, then
        #   the `pageSize` will default to the maximum.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListLfpStoresRequest` call.
        #   Provide the page token to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `ListLfpStoresRequest` must match the call that
        #   provided the page token. The token returned as nextPageToken in the response
        #   to the previous request.
        # @param [Fixnum] target_account
        #   Required. The Merchant Center id of the merchant to list stores for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiLfpV1beta::ListLfpStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiLfpV1beta::ListLfpStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_lfp_stores(parent, page_size: nil, page_token: nil, target_account: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'lfp/v1beta/{+parent}/lfpStores', options)
          command.response_representation = Google::Apis::MerchantapiLfpV1beta::ListLfpStoresResponse::Representation
          command.response_class = Google::Apis::MerchantapiLfpV1beta::ListLfpStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['targetAccount'] = target_account unless target_account.nil?
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
