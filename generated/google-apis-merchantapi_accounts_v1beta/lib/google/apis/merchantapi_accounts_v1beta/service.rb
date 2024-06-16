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
    module MerchantapiAccountsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_accounts_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiAccountsV1beta # Alias the module
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
                client_name: 'google-apis-merchantapi_accounts_v1beta',
                client_version: Google::Apis::MerchantapiAccountsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a standalone Merchant Center account with additional configuration.
        # Adds the user that makes the request as an admin for the new account.
        # @param [Google::Apis::MerchantapiAccountsV1beta::CreateAndConfigureAccountRequest] create_and_configure_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_and_configure_account(create_and_configure_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/accounts:createAndConfigure', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::CreateAndConfigureAccountRequest::Representation
          command.request_object = create_and_configure_account_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Account::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Account
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified account regardless of its type: standalone, MCA or sub-
        # account. Deleting an MCA leads to the deletion of all of its sub-accounts.
        # Executing this method requires admin access.
        # @param [String] name
        #   Required. The name of the account to delete. Format: `accounts/`account``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an account from your Merchant Center account. After inserting,
        # updating, or deleting an account, it may take several minutes before changes
        # take effect.
        # @param [String] name
        #   Required. The name of the account to retrieve. Format: `accounts/`account``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Account::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the business identity of an account.
        # @param [String] name
        #   Required. The resource name of the business identity. Format: `accounts/`
        #   account`/businessIdentity`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_business_identity(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the business info of an account.
        # @param [String] name
        #   Required. The resource name of the business info. Format: `accounts/`account`/
        #   businessInfo`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::BusinessInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_business_info(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a store's homepage.
        # @param [String] name
        #   Required. The name of the homepage to retrieve. Format: `accounts/`account`/
        #   homepage`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Homepage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Homepage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_homepage(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Homepage::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Homepage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve shipping setting information.
        # @param [String] name
        #   Required. The name of the shipping setting to retrieve. Format: `accounts/`
        #   account`/shippingsetting`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_shipping_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists accounts accessible to the calling user and matching the constraints of
        # the request such as page size or filters. This is not just listing the sub-
        # accounts of an MCA, but all accounts the calling user has access to including
        # other MCAs, linked accounts, standalone accounts and so on.
        # @param [String] filter
        #   Optional. Returns only accounts that match the [filter](/merchant/api/guides/
        #   accounts/filter). For more details, see the [filter syntax reference](/
        #   merchant/api/guides/accounts/filter-syntax).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service may return
        #   fewer than this value. If unspecified, at most 250 accounts are returned. The
        #   maximum value is 500; values above 500 are coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAccounts` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccounts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/accounts', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all sub-accounts for a given multi client account. This is a convenience
        # wrapper for the more powerful `ListAccounts` method. This method will produce
        # the same results as calling `ListsAccounts` with the following filter: `
        # relationship(providerId=`parent` AND service(type="ACCOUNT_AGGREGATION"))`
        # @param [String] provider
        #   Required. The parent account. Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service may return
        #   fewer than this value. If unspecified, at most 250 accounts are returned. The
        #   maximum value is 500; values above 500 are coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAccounts` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccounts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListSubAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListSubAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_subaccounts(provider, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+provider}:listSubaccounts', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListSubAccountsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListSubAccountsResponse
          command.params['provider'] = provider unless provider.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an account regardless of its type: standalone, MCA or sub-account.
        # Executing this method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the account. Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::Account] account_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(name, account_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Account::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Account
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the business identity of an account. Executing this method requires
        # admin access.
        # @param [String] name
        #   Identifier. The resource name of the business identity. Format: `accounts/`
        #   account`/businessIdentity`
        # @param [Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity] business_identity_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_business_identity(name, business_identity_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity::Representation
          command.request_object = business_identity_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the business info of an account. Executing this method requires admin
        # access.
        # @param [String] name
        #   Identifier. The resource name of the business info. Format: `accounts/`account`
        #   /businessInfo`
        # @param [Google::Apis::MerchantapiAccountsV1beta::BusinessInfo] business_info_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::BusinessInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_business_info(name, business_info_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo::Representation
          command.request_object = business_info_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a store's homepage. Executing this method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the store's homepage. Format: `accounts/`
        #   account`/homepage`
        # @param [Google::Apis::MerchantapiAccountsV1beta::Homepage] homepage_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Homepage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Homepage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_homepage(name, homepage_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::Homepage::Representation
          command.request_object = homepage_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Homepage::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Homepage
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the tax rules that match the conditions of GetAccountTaxRequest
        # @param [String] name
        #   Required. The name from which tax settings will be retrieved
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_accounttax(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountTax::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountTax
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tax settings of the sub-accounts only in your Merchant Center
        # account. This method can only be called on a multi-client account, otherwise
        # it'll return an error.
        # @param [String] parent
        #   Required. The parent, which owns this collection of account tax. Format:
        #   accounts/`account`
        # @param [Fixnum] page_size
        #   The maximum number of tax settings to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListAccountTaxResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListAccountTaxResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_accounttaxes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/accounttax', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountTaxResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountTaxResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account.
        # @param [String] name
        #   Identifier. The name of the tax setting. Format: "`account_tax.name=accounts/`
        #   account``"
        # @param [Google::Apis::MerchantapiAccountsV1beta::AccountTax] account_tax_object
        # @param [String] update_mask
        #   The list of fields to be updated
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_accounttax(name, account_tax_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountTax::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountTax
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claims a store's homepage. Executing this method requires admin access. If the
        # homepage is already claimed, this will recheck the verification (unless the
        # merchant is exempted from claiming, which also exempts from verification) and
        # return a successful response. If ownership can no longer be verified, it will
        # return an error, but it won't clear the claim. In case of failure, a canonical
        # error message will be returned: * PERMISSION_DENIED: user doesn't have the
        # necessary permissions on this MC account; * FAILED_PRECONDITION: - The account
        # is not a Merchant Center account; - MC account doesn't have a homepage; -
        # claiming failed (in this case the error message will contain more details).
        # @param [String] name
        #   Required. The name of the homepage to claim. Format: `accounts/`account`/
        #   homepage`
        # @param [Google::Apis::MerchantapiAccountsV1beta::ClaimHomepageRequest] claim_homepage_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Homepage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Homepage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claim_homepage(name, claim_homepage_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:claim', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::ClaimHomepageRequest::Representation
          command.request_object = claim_homepage_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Homepage::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Homepage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unclaims a store's homepage. Executing this method requires admin access.
        # @param [String] name
        #   Required. The name of the homepage to unclaim. Format: `accounts/`account`/
        #   homepage`
        # @param [Google::Apis::MerchantapiAccountsV1beta::UnclaimHomepageRequest] unclaim_homepage_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Homepage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Homepage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unclaim_homepage(name, unclaim_homepage_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:unclaim', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::UnclaimHomepageRequest::Representation
          command.request_object = unclaim_homepage_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Homepage::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Homepage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all account issues of a Merchant Center account.
        # @param [String] parent
        #   Required. The parent, which owns this collection of issues. Format: `accounts/`
        #   account``
        # @param [String] language_code
        #   Optional. The issues in the response will have human-readable fields in the
        #   given language. The format is [BCP-47](https://tools.ietf.org/html/bcp47),
        #   such as `en-US` or `sr-Latn`. If not value is provided, `en-US` will be used.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of issues to return. The service may return fewer
        #   than this value. If unspecified, at most 50 users will be returned. The
        #   maximum value is 100; values above 100 will be coerced to 100
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAccountIssues` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAccountIssues` must match the call that provided
        #   the page token.
        # @param [String] time_zone_id
        #   IANA Time Zone Database time zone, e.g. "America/New_York".
        # @param [String] time_zone_version
        #   Optional. IANA Time Zone Database version number, e.g. "2019a".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_issues(parent, language_code: nil, page_size: nil, page_token: nil, time_zone_id: nil, time_zone_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/issues', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timeZone.id'] = time_zone_id unless time_zone_id.nil?
          command.query['timeZone.version'] = time_zone_version unless time_zone_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an existing return policy.
        # @param [String] name
        #   Required. The name of the return policy to retrieve. Format: `accounts/`
        #   account`/onlineReturnPolicies/`return_policy``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_online_return_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all existing return policies.
        # @param [String] parent
        #   Required. The merchant account for which to list return policies. Format: `
        #   accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `OnlineReturnPolicy` resources to return. The
        #   service returns fewer than this value if the number of return policies for the
        #   given merchant is less that than the `pageSize`. The default value is 10. The
        #   maximum value is 100; If a value higher than the maximum is specified, then
        #   the `pageSize` will default to the maximum
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListOnlineReturnPolicies`
        #   call. Provide the page token to retrieve the subsequent page. When paginating,
        #   all other parameters provided to `ListOnlineReturnPolicies` must match the
        #   call that provided the page token. The token returned as nextPageToken in the
        #   response to the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListOnlineReturnPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListOnlineReturnPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_online_return_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/onlineReturnPolicies', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListOnlineReturnPoliciesResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListOnlineReturnPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable participation in the specified program for the account. Executing this
        # method requires admin access.
        # @param [String] name
        #   Required. The name of the program for which to disable participation for the
        #   given account. Format: `accounts/`account`/programs/`program``
        # @param [Google::Apis::MerchantapiAccountsV1beta::DisableProgramRequest] disable_program_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Program] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Program]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_program(name, disable_program_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:disable', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::DisableProgramRequest::Representation
          command.request_object = disable_program_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Program::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Program
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable participation in the specified program for the account. Executing this
        # method requires admin access.
        # @param [String] name
        #   Required. The name of the program for which to enable participation for the
        #   given account. Format: `accounts/`account`/programs/`program``
        # @param [Google::Apis::MerchantapiAccountsV1beta::EnableProgramRequest] enable_program_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Program] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Program]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_program(name, enable_program_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:enable', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::EnableProgramRequest::Representation
          command.request_object = enable_program_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Program::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Program
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified program for the account.
        # @param [String] name
        #   Required. The name of the program to retrieve. Format: `accounts/`account`/
        #   programs/`program``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Program] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Program]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_program(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Program::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Program
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all programs for the account.
        # @param [String] parent
        #   Required. The name of the account for which to retrieve all programs. Format: `
        #   accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of programs to return in a single response. If
        #   unspecified (or 0), a default size of 1000 is used. The maximum value is 1000;
        #   values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A continuation token, received from a previous `ListPrograms` call.
        #   Provide this to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListProgramsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListProgramsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_programs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/programs', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListProgramsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListProgramsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a region definition in your Merchant Center account. Executing this
        # method requires admin access.
        # @param [String] parent
        #   Required. The account to create a region for. Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::Region] region_object
        # @param [String] region_id
        #   Required. The identifier for the region, unique over all regions of the same
        #   account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_region(parent, region_object = nil, region_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/regions', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::Region::Representation
          command.request_object = region_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Region::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Region
          command.params['parent'] = parent unless parent.nil?
          command.query['regionId'] = region_id unless region_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a region definition from your Merchant Center account. Executing this
        # method requires admin access.
        # @param [String] name
        #   Required. The name of the region to delete. Format: `accounts/`account`/
        #   regions/`region``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_region(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a region defined in your Merchant Center account.
        # @param [String] name
        #   Required. The name of the region to retrieve. Format: `accounts/`account`/
        #   regions/`region``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_region(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Region::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Region
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the regions in your Merchant Center account.
        # @param [String] parent
        #   Required. The account to list regions for. Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of regions to return. The service may return
        #   fewer than this value. If unspecified, at most 50 regions will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListRegions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListRegions` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListRegionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListRegionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_regions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/regions', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListRegionsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListRegionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a region definition in your Merchant Center account. Executing this
        # method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the region. Format: `accounts/`account`/
        #   regions/`region``
        # @param [Google::Apis::MerchantapiAccountsV1beta::Region] region_object
        # @param [String] update_mask
        #   Optional. The comma-separated field mask indicating the fields to update.
        #   Example: `"displayName,postalCodeArea.regionCode"`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_region(name, region_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::Region::Representation
          command.request_object = region_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Region::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Region
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replace the shipping setting of a merchant with the request shipping setting.
        # Executing this method requires admin access.
        # @param [String] parent
        #   Required. The account where this product will be inserted. Format: accounts/`
        #   account`
        # @param [Google::Apis::MerchantapiAccountsV1beta::ShippingSettings] shipping_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_shipping_setting(parent, shipping_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/shippingSettings:insert', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings::Representation
          command.request_object = shipping_settings_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the state of a terms of service agreement.
        # @param [String] name
        #   Required. The resource name of the terms of service version. Format: `accounts/
        #   `account`/termsOfServiceAgreementState/`identifier``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_terms_of_service_agreement_state(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the state of the agreement for the application terms of service.
        # @param [String] parent
        #   Required. The account for which to get a TermsOfServiceAgreementState Format: `
        #   accounts/`account``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_account_terms_of_service_agreement_state_for_application(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/termsOfServiceAgreementStates:retrieveForApplication', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Merchant Center account user. Executing this method requires admin
        # access.
        # @param [String] parent
        #   Required. The resource name of the account for which a user will be created.
        #   Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::User] user_object
        # @param [String] user_id
        #   Required. The email address of the user (for example, `john.doe@gmail.com`).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_user(parent, user_object = nil, user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/users', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::User
          command.params['parent'] = parent unless parent.nil?
          command.query['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Merchant Center account user. Executing this method requires admin
        # access.
        # @param [String] name
        #   Required. The name of the user to delete. Format: `accounts/`account`/users/`
        #   email`` It is also possible to delete the user corresponding to the caller by
        #   using `me` rather than an email address as in `accounts/`account`/users/me`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account user.
        # @param [String] name
        #   Required. The name of the user to retrieve. Format: `accounts/`account`/users/`
        #   email`` It is also possible to retrieve the user corresponding to the caller
        #   by using `me` rather than an email address as in `accounts/`account`/users/me`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::User
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the email preferences for a Merchant Center account user. Use the name=
        # accounts/*/users/me/emailPreferences alias to get preferences for the
        # authenticated user.
        # @param [String] name
        #   Required. The name of the `EmailPreferences` resource. Format: `accounts/`
        #   account`/users/`email`/emailPreferences`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_user_email_preferences(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all users of a Merchant Center account.
        # @param [String] parent
        #   Required. The parent, which owns this collection of users. Format: `accounts/`
        #   account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of users to return. The service may return fewer
        #   than this value. If unspecified, at most 50 users will be returned. The
        #   maximum value is 100; values above 100 will be coerced to 100
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUsers` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListUsers` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_users(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/users', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListUsersResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account user. Executing this method requires admin
        # access.
        # @param [String] name
        #   Identifier. The resource name of the user. Format: `accounts/`account`/user/`
        #   email`` Use `me` to refer to your own email address, for example `accounts/`
        #   account`/users/me`.
        # @param [Google::Apis::MerchantapiAccountsV1beta::User] user_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_user(name, user_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::User
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the email preferences for a Merchant Center account user. MCA users
        # should specify the MCA account rather than a sub-account of the MCA.
        # Preferences which are not explicitly selected in the update mask will not be
        # updated. It is invalid for updates to specify an UNCONFIRMED opt-in status
        # value. Use the name=accounts/*/users/me/emailPreferences alias to update
        # preferences for the authenticated user.
        # @param [String] name
        #   Identifier. The name of the EmailPreferences. The endpoint is only supported
        #   for the authenticated user.
        # @param [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences] email_preferences_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_user_email_preferences(name, email_preferences_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences::Representation
          command.request_object = email_preferences_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a `TermsOfService`. Executing this method requires admin access.
        # @param [String] name
        #   Required. The resource name of the terms of service version. Format: `
        #   termsOfService/`version``
        # @param [String] account
        #   Required. The account for which to accept the ToS.
        # @param [String] region_code
        #   Required. Region code as defined by [CLDR](https://cldr.unicode.org/). This is
        #   either a country when the ToS applies specifically to that country or 001 when
        #   it applies globally.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_terms_of_service(name, account: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}:accept', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['account'] = account unless account.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the `TermsOfService` associated with the provided version.
        # @param [String] name
        #   Required. The resource name of the terms of service version. Format: `
        #   termsOfService/`version``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::TermsOfService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::TermsOfService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_terms_of_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::TermsOfService::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::TermsOfService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the latest version of the `TermsOfService` for a given `kind` and `
        # region_code`.
        # @param [String] kind
        #   The Kind this terms of service version applies to.
        # @param [String] region_code
        #   Region code as defined by [CLDR](https://cldr.unicode.org/). This is either a
        #   country when the ToS applies specifically to that country or 001 when it
        #   applies globally.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::TermsOfService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::TermsOfService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_terms_of_service_latest(kind: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/termsOfService:retrieveLatest', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::TermsOfService::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::TermsOfService
          command.query['kind'] = kind unless kind.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
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
