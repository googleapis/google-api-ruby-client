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
      # @see https://developers.google.com/merchant/api
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
        
        # Creates a Merchant Center account with additional configuration. Adds the user
        # that makes the request as an admin for the new account.
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
        
        # Deletes the specified account regardless of its type: standalone, advanced
        # account or sub-account. Deleting an advanced account leads to the deletion of
        # all of its sub-accounts. This also deletes the account's [developer
        # registration entity](/merchant/api/reference/rest/accounts_v1beta/accounts.
        # developerRegistration) and any associated GCP project to the account.
        # Executing this method requires admin access. The deletion succeeds only if the
        # account does not provide services to any other account and has no processed
        # offers. You can use the `force` parameter to override this.
        # @param [String] name
        #   Required. The name of the account to delete. Format: `accounts/`account``
        # @param [Boolean] force
        #   Optional. If set to `true`, the account is deleted even if it provides
        #   services to other accounts or has processed offers.
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
        def delete_account(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
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
        
        # Note: For the `accounts.list` method, quota and limits usage are charged for
        # each user, and not for the Merchant Center ID or the advanced account ID. To
        # list several sub-accounts, you should use the `accounts.listSubaccounts`
        # method, which is more suitable for advanced accounts use case.
        # @param [String] filter
        #   Optional. Returns only accounts that match the [filter](https://developers.
        #   google.com/merchant/api/guides/accounts/filter). For more details, see the [
        #   filter syntax reference](https://developers.google.com/merchant/api/guides/
        #   accounts/filter-syntax).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service may return
        #   fewer than this value. If unspecified, at most 250 accounts are returned. The
        #   maximum value is 500; values above 500 are coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `accounts.list` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided in the `accounts.list` request must match the call that provided the
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
        
        # List all sub-accounts for a given advanced account. This is a convenience
        # wrapper for the more powerful `accounts.list` method. This method will produce
        # the same results as calling `ListsAccounts` with the following filter: `
        # relationship(providerId=`parent` AND service(type="ACCOUNT_AGGREGATION"))`
        # @param [String] provider
        #   Required. The aggregation service provider. Format: `accounts/`accountId``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service may return
        #   fewer than this value. If unspecified, at most 250 accounts are returned. The
        #   maximum value is 500; values above 500 are coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `accounts.list` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided in the `accounts.list` request must match the call that provided the
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
        
        # Updates an account regardless of its type: standalone, advanced account or sub-
        # account. Executing this method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the account. Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::Account] account_object
        # @param [String] update_mask
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `account_name` - `adult_content` - `
        #   language_code` - `time_zone`
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
        
        # Retrieves the autofeed settings of an account.
        # @param [String] name
        #   Required. The resource name of the autofeed settings. Format: `accounts/`
        #   account`/autofeedSettings`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_autofeed_setting_autofeed_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the autofeed settings of an account.
        # @param [String] name
        #   Identifier. The resource name of the autofeed settings. Format: `accounts/`
        #   account`/autofeedSettings`.
        # @param [Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings] autofeed_settings_object
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
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_autofeed_setting_autofeed_settings(name, autofeed_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings::Representation
          command.request_object = autofeed_settings_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AutofeedSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the automatic improvements of an account.
        # @param [String] name
        #   Required. The resource name of the automatic improvements. Format: `accounts/`
        #   account`/automaticImprovements`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_automatic_improvement_automatic_improvements(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the automatic improvements of an account.
        # @param [String] name
        #   Identifier. The resource name of the automatic improvements. Format: `accounts/
        #   `account`/automaticImprovements`.
        # @param [Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements] automatic_improvements_object
        # @param [String] update_mask
        #   Required. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `item_updates` - `item_updates.
        #   account_level_settings` - `image_improvements` - `image_improvements.
        #   account_level_settings` - `shipping_improvements` - `shipping_improvements.
        #   allow_shipping_improvements`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_automatic_improvement_automatic_improvements(name, automatic_improvements_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements::Representation
          command.request_object = automatic_improvements_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AutomaticImprovements
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the business identity of an account.
        # @param [String] name
        #   Required. The resource name of the business identity. Format: `accounts/`
        #   account`/businessIdentity`. For example, `accounts/123456/businessIdentity`.
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
        def get_account_business_identity_business_identity(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessIdentity
          command.params['name'] = name unless name.nil?
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
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `black_owned` - `latino_owned` - `
        #   promotions_consent` - `small_business` - `veteran_owned` - `women_owned`
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
        def update_account_business_identity_business_identity(name, business_identity_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Retrieves the business info of an account.
        # @param [String] name
        #   Required. The resource name of the business info. Format: `accounts/`account`/
        #   businessInfo`. For example, `accounts/123456/businessInfo`.
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
        def get_account_business_info_business_info(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::BusinessInfo
          command.params['name'] = name unless name.nil?
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
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `address` - `customer_service` - `
        #   korean_business_registration_number`
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
        def update_account_business_info_business_info(name, business_info_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Retrieves the merchant account that the calling GCP is registered with.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::GetAccountForGcpRegistrationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::GetAccountForGcpRegistrationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_developer_registration_account_for_gcp_registration(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/accounts:getAccountForGcpRegistration', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::GetAccountForGcpRegistrationResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::GetAccountForGcpRegistrationResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a developer registration for a merchant.
        # @param [String] name
        #   Required. The `name` (ID) of the developer registration.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_developer_registration_developer_registration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers the GCP used for the API call to the shopping account passed in the
        # request. Will create a user with an "API developer" and add the "
        # developer_email" as a contact with "API notifications" email preference on.
        # @param [String] name
        #   Required. The name of the developer registration to be created for the
        #   merchant account that the GCP will be registered with. Format: `accounts/`
        #   account`/developerRegistration`
        # @param [Google::Apis::MerchantapiAccountsV1beta::RegisterGcpRequest] register_gcp_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_developer_registration_gcp(name, register_gcp_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:registerGcp', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::RegisterGcpRequest::Representation
          command.request_object = register_gcp_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::DeveloperRegistration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unregister the calling GCP from the calling shopping account. Note that the
        # GCP will still be able to access the API for at most 1 day from the unregister
        # succussful call.
        # @param [String] name
        #   Required. The name of the developer registration to be created for the
        #   merchant account that the GCP will be registered with. Format: `accounts/`
        #   account`/developerRegistration`
        # @param [Google::Apis::MerchantapiAccountsV1beta::UnregisterGcpRequest] unregister_gcp_request_object
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
        def unregister_developer_registration_gcp(name, unregister_gcp_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:unregisterGcp', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::UnregisterGcpRequest::Representation
          command.request_object = unregister_gcp_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the email preferences for a Merchant Center account user. This service
        # only permits retrieving and updating email preferences for the authenticated
        # user. Use the name=accounts/*/users/me/emailPreferences alias to get
        # preferences for the authenticated user.
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
        def get_account_email_preference_email_preferences(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::EmailPreferences
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the email preferences for a Merchant Center account user. Advanced
        # account users should specify the advanced account rather than a sub-account of
        # the advanced account. Preferences which are not explicitly selected in the
        # update mask will not be updated. It is invalid for updates to specify an
        # UNCONFIRMED opt-in status value. Use the name=accounts/*/users/me/
        # emailPreferences alias to update preferences for the authenticated user.
        # @param [String] name
        #   Identifier. The name of the EmailPreferences. The endpoint is only supported
        #   for the authenticated user.
        # @param [Google::Apis::MerchantapiAccountsV1beta::EmailPreferences] email_preferences_object
        # @param [String] update_mask
        #   Required. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `news_and_tips`
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
        def update_account_email_preference_email_preferences(name, email_preferences_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Link the specified merchant to a GBP account for all countries. To run this
        # method, you must have admin access to the Merchant Center account. If you don'
        # t have admin access, the request fails with the error message `User is not an
        # administrator of account `ACCOUNT_ID``.
        # @param [String] parent
        #   Required. The name of the parent resource to which the GBP account is linked.
        #   Format: `accounts/`account``.
        # @param [Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountRequest] link_gbp_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_gbp_account(parent, link_gbp_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/gbpAccounts:linkGbpAccount', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountRequest::Representation
          command.request_object = link_gbp_account_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::LinkGbpAccountResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the GBP accounts for a given merchant.
        # @param [String] parent
        #   Required. The name of the parent resource under which the GBP accounts are
        #   listed. Format: `accounts/`account``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `GbpAccount` resources to return. The service
        #   returns fewer than this value if the number of gbp accounts is less that than
        #   the `pageSize`. The default value is 50. The maximum value is 1000; If a value
        #   higher than the maximum is specified, then the `pageSize` will default to the
        #   maximum.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListGbpAccounts` call.
        #   Provide the page token to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `ListGbpAccounts` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListGbpAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListGbpAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_gbp_accounts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/gbpAccounts', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListGbpAccountsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListGbpAccountsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claims a store's homepage. Executing this method requires admin access. If the
        # homepage is already claimed, this will recheck the verification (unless the
        # business is exempted from claiming, which also exempts from verification) and
        # return a successful response. If ownership can no longer be verified, it will
        # return an error, but it won't clear the claim. In case of failure, a canonical
        # error message is returned: * PERMISSION_DENIED: User doesn't have the
        # necessary permissions on this Merchant Center account. * FAILED_PRECONDITION: -
        # The account is not a Merchant Center account. - Merchant Center account doesn'
        # t have a homepage. - Claiming failed (in this case the error message contains
        # more details).
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
        def get_account_homepage_homepage(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
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
        
        # Updates a store's homepage. Executing this method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the store's homepage. Format: `accounts/`
        #   account`/homepage`
        # @param [Google::Apis::MerchantapiAccountsV1beta::Homepage] homepage_object
        # @param [String] update_mask
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `uri`
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
        def update_account_homepage_homepage(name, homepage_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Lists all account issues of a Merchant Center account. When called on a multi-
        # client account, this method only returns issues belonging to that account, not
        # its sub-accounts. To retrieve issues for sub-accounts, you must first call the
        # accounts.listSubaccounts method to obtain a list of sub-accounts, and then
        # call `accounts.issues.list` for each sub-account individually.
        # @param [String] parent
        #   Required. The parent, which owns this collection of issues. Format: `accounts/`
        #   account``
        # @param [String] language_code
        #   Optional. The issues in the response will have human-readable fields in the
        #   given language. The format is [BCP-47](https://tools.ietf.org/html/bcp47),
        #   such as `en-US` or `sr-Latn`. If not value is provided, `en-US` will be used.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of issues to return. The service may return fewer
        #   than this value. If unspecified, at most 50 issues will be returned. The
        #   maximum value is 100; values above 100 will be coerced to 100
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAccountIssues` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAccountIssues` must match the call that provided
        #   the page token.
        # @param [String] time_zone
        #   Optional. The [IANA](https://www.iana.org/time-zones) timezone used to
        #   localize times in human-readable fields. For example 'America/Los_Angeles'. If
        #   not set, 'America/Los_Angeles' will be used.
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
        def list_account_issues(parent, language_code: nil, page_size: nil, page_token: nil, time_zone: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/issues', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timeZone'] = time_zone unless time_zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create the omnichannel settings for a given merchant.
        # @param [String] parent
        #   Required. The parent resource where this omnichannel setting will be created.
        #   Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting] omnichannel_setting_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_omnichannel_setting(parent, omnichannel_setting_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/omnichannelSettings', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting::Representation
          command.request_object = omnichannel_setting_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the omnichannel settings for a given merchant.
        # @param [String] name
        #   Required. The name of the omnichannel setting to retrieve. Format: `accounts/`
        #   account`/omnichannelSettings/`omnichannel_setting``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_omnichannel_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the omnichannel settings for a given merchant.
        # @param [String] parent
        #   Required. The parent, which owns this collection of omnichannel settings.
        #   Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of omnichannel settings to return. The service
        #   may return fewer than this value. If unspecified, at most 50 omnichannel
        #   settings will be returned. The maximum value is 1000; values above 1000 will
        #   be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListOmnichannelSettings`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListOmnichannelSettings` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListOmnichannelSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListOmnichannelSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_omnichannel_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/omnichannelSettings', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListOmnichannelSettingsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListOmnichannelSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the omnichannel setting for a given merchant in a given country.
        # @param [String] name
        #   Identifier. The resource name of the omnichannel setting. Format: `accounts/`
        #   account`/omnichannelSettings/`omnichannel_setting``
        # @param [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting] omnichannel_setting_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. The following fields are supported
        #   in snake_case only: - `lsf_type` - `in_stock` - `pickup` - `odo` - `about` - `
        #   inventory_verification` Full replacement with wildcard `*`is supported, while
        #   empty/implied update mask is not.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_omnichannel_setting(name, omnichannel_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting::Representation
          command.request_object = omnichannel_setting_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests inventory verification for a given merchant in a given country.
        # @param [String] name
        #   Required. The name of the omnichannel setting to request inventory
        #   verification. Format: `accounts/`account`/omnichannelSettings/`
        #   omnichannel_setting``
        # @param [Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationRequest] request_inventory_verification_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def request_omnichannel_setting_inventory_verification(name, request_inventory_verification_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:requestInventoryVerification', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationRequest::Representation
          command.request_object = request_inventory_verification_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::RequestInventoryVerificationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Find the LFP provider candidates in a given country.
        # @param [String] parent
        #   Required. The name of the parent resource under which the LFP providers are
        #   found. Format: `accounts/`account`/omnichannelSettings/`omnichannel_setting``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `LfpProvider` resources to return. The service
        #   returns fewer than this value if the number of lfp providers is less that than
        #   the `pageSize`. The default value is 50. The maximum value is 1000; If a value
        #   higher than the maximum is specified, then the `pageSize` will default to the
        #   maximum.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `FindLfpProviders` call.
        #   Provide the page token to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `FindLfpProviders` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::FindLfpProvidersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::FindLfpProvidersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_account_omnichannel_setting_lfp_provider(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/lfpProviders:find', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::FindLfpProvidersResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::FindLfpProvidersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Link the specified merchant to a LFP provider for the specified country.
        # @param [String] name
        #   Required. The name of the LFP provider resource to link. Format: `accounts/`
        #   account`/omnichannelSettings/`omnichannel_setting`/lfpProviders/`lfp_provider``
        #   . The `lfp_provider` is the LFP provider ID.
        # @param [Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderRequest] link_lfp_provider_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_lfp_provider(name, link_lfp_provider_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:linkLfpProvider', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderRequest::Representation
          command.request_object = link_lfp_provider_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::LinkLfpProviderResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new return policy for a given business.
        # @param [String] parent
        #   Required. The Merchant Center account for which the return policy will be
        #   created. Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy] online_return_policy_object
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
        def create_account_online_return_policy(parent, online_return_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/onlineReturnPolicies', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
          command.request_object = online_return_policy_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing return policy.
        # @param [String] name
        #   Required. The name of the return policy to delete. Format: `accounts/`account`/
        #   onlineReturnPolicies/`return_policy``
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
        def delete_account_online_return_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an existing return policy for a given business.
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
        
        # Lists all existing return policies for a given business.
        # @param [String] parent
        #   Required. The Merchant Center account for which to list return policies.
        #   Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `OnlineReturnPolicy` resources to return. The
        #   service returns fewer than this value if the number of return policies for the
        #   given business is less that than the `pageSize`. The default value is 10. The
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
        
        # Updates an existing return policy for a given business.
        # @param [String] name
        #   Identifier. The name of the `OnlineReturnPolicy` resource. Format: `accounts/`
        #   account`/onlineReturnPolicies/`return_policy``
        # @param [Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy] online_return_policy_object
        # @param [String] update_mask
        #   Optional. Only support updating the entire OnlineReturnPolicy message. For
        #   update_mask, always use `*`.
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
        def patch_account_online_return_policy(name, online_return_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
          command.request_object = online_return_policy_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable participation in the specified program for the account.
        # @param [String] name
        #   Required. The name of the program for which to disable participation for the
        #   given account. Format: `accounts/`account`/programs/`program``. For example, `
        #   accounts/123456/programs/free-listings`.
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
        
        # Enable participation in the specified program for the account.
        # @param [String] name
        #   Required. The name of the program for which to enable participation for the
        #   given account. Format: `accounts/`account`/programs/`program``. For example, `
        #   accounts/123456/programs/free-listings`.
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
        #   programs/`program``. For example, `accounts/123456/programs/free-listings`.
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
        
        # Creates `CheckoutSettings` for the given merchant.
        # @param [String] parent
        #   Required. The merchant account for which the `CheckoutSettings` will be
        #   created.
        # @param [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings] checkout_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_program_checkout_setting(parent, checkout_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/checkoutSettings', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings::Representation
          command.request_object = checkout_settings_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes `CheckoutSettings` and unenrolls merchant from `Checkout` program.
        # @param [String] name
        #   Required. The name/identifier of the merchant account. Format: `accounts/`
        #   account`/programs/`program`/checkoutSettings`
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
        def delete_account_program_checkout_setting_checkout_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets `CheckoutSettings` for the given merchant. This includes information
        # about review state, enrollment state and URL settings.
        # @param [String] name
        #   Required. The name/identifier of the merchant account. Format: `accounts/`
        #   account`/programs/`program`/checkoutSettings`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_program_checkout_setting_checkout_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates `CheckoutSettings` for the given merchant.
        # @param [String] name
        #   Identifier. The resource name of the program configuration settings. Format: `
        #   accounts/`account`/programs/`program`/checkoutSettings`
        # @param [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings] checkout_settings_object
        # @param [String] update_mask
        #   Required. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `eligible_destinations` - `
        #   uri_settings`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_program_checkout_setting_checkout_settings(name, checkout_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings::Representation
          command.request_object = checkout_settings_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::CheckoutSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        
        # Retrieve an account relationship.
        # @param [String] name
        #   Required. The resource name of the account relationship to get. Format: `
        #   accounts/`account`/relationships/`relationship``. For example, `accounts/
        #   123456/relationships/567890`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountRelationship] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountRelationship]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_relationship(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountRelationship::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountRelationship
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List account relationships for the specified account.
        # @param [String] parent
        #   Required. The parent account of the account relationship to filter by. Format:
        #   `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of elements to return in the response. Use for
        #   paging. If no `page_size` is specified, `100` is used as the default value.
        #   The maximum allowed value is `1000`.
        # @param [String] page_token
        #   Optional. The token returned by the previous `list` request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListAccountRelationshipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListAccountRelationshipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_relationships(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/relationships', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountRelationshipsResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountRelationshipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the account relationship. Executing this method requires admin access.
        # @param [String] name
        #   Identifier. The resource name of the account relationship. Format: `accounts/`
        #   account`/relationships/`relationship``. For example, `accounts/123456/
        #   relationships/567890`.
        # @param [Google::Apis::MerchantapiAccountsV1beta::AccountRelationship] account_relationship_object
        # @param [String] update_mask
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `account_id_alias`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountRelationship] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountRelationship]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_relationship(name, account_relationship_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::AccountRelationship::Representation
          command.request_object = account_relationship_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountRelationship::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountRelationship
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approve an account service proposal.
        # @param [String] name
        #   Required. The resource name of the account service to approve. Format: `
        #   accounts/`account`/services/`service``
        # @param [Google::Apis::MerchantapiAccountsV1beta::ApproveAccountServiceRequest] approve_account_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_account_service(name, approve_account_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:approve', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::ApproveAccountServiceRequest::Representation
          command.request_object = approve_account_service_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountService::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an account service.
        # @param [String] name
        #   Required. The resource name of the account service to get. Format: `accounts/`
        #   account`/services/`service``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountService::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List account services for the specified accounts. Supports filtering.
        # @param [String] parent
        #   Required. The parent account of the account service to filter by. Format: `
        #   accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of elements to return in the response. Use for
        #   paging. If no `page_size` is specified, `100` is used as the default value.
        #   The maximum allowed value is `1000`.
        # @param [String] page_token
        #   Optional. The token returned by the previous `list` request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::ListAccountServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::ListAccountServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_services(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+parent}/services', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ListAccountServicesResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ListAccountServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Propose an account service.
        # @param [String] parent
        #   Required. The resource name of the parent account for the service. Format: `
        #   accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::ProposeAccountServiceRequest] propose_account_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AccountService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def propose_account_service(parent, propose_account_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+parent}/services:propose', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::ProposeAccountServiceRequest::Representation
          command.request_object = propose_account_service_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AccountService::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AccountService
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reject an account service (both proposed and approve services can be rejected).
        # @param [String] name
        #   Required. The resource name of the account service to reject. Format: `
        #   accounts/`account`/services/`service``
        # @param [Google::Apis::MerchantapiAccountsV1beta::RejectAccountServiceRequest] reject_account_service_request_object
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
        def reject_account_service(name, reject_account_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:reject', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::RejectAccountServiceRequest::Representation
          command.request_object = reject_account_service_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve shipping setting information.
        # @param [String] name
        #   Required. The name of the shipping setting to retrieve. Format: `accounts/`
        #   account`/shippingsettings`
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
        def get_account_shipping_setting_shipping_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::ShippingSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replace the shipping setting of a business with the request shipping setting.
        # Executing this method requires admin access.
        # @param [String] parent
        #   Required. The account for which this shipping setting will be inserted. If you
        #   are using an advanced account, you must specify the unique identifier of the
        #   sub-account for which you want to insert the shipping setting. Format: `
        #   accounts/`ACCOUNT_ID``
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
        #   `account`/termsOfServiceAgreementStates/`identifier`` The identifier format is:
        #   ``TermsOfServiceKind`-`country``
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
        # Application terms of service covers permissions related to the usage of data
        # provided through Merchant Center, CSS Center, Manufacturer Center, and more.
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
        # access. The user to be deleted can't be the last admin user of that account.
        # Also a user is protected from deletion if it is managed by Business Manager"
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
        #   Optional. List of fields being updated. The following fields are supported (in
        #   both `snake_case` and `lowerCamelCase`): - `access_rights`
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
        
        # Updates the user that is represented by the caller from pending to verified.
        # @param [String] account
        #   Required. The name of the account under which the caller is a user. Format: `
        #   accounts/`account``
        # @param [Google::Apis::MerchantapiAccountsV1beta::VerifySelfRequest] verify_self_request_object
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
        def verify_me_self(account, verify_self_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/v1beta/{+account}/users/me:verifySelf', options)
          command.request_representation = Google::Apis::MerchantapiAccountsV1beta::VerifySelfRequest::Representation
          command.request_object = verify_self_request_object
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::User::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::User
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a `TermsOfService`. Executing this method requires admin access.
        # @param [String] name
        #   Required. The resource name of the terms of service version. Format: `
        #   termsOfService/`version``
        # @param [String] account
        #   Required. The account for which to accept the ToS. Format: `accounts/`account``
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
        # @yieldparam result [Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfServiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfServiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_terms_of_service(name, account: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/v1beta/{+name}:accept', options)
          command.response_representation = Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfServiceResponse::Representation
          command.response_class = Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfServiceResponse
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
        #   Required. The Kind this terms of service version applies to.
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
