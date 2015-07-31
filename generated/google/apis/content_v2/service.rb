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
    module ContentV2
      # Content API for Shopping
      #
      # Manage product items, inventory, and Merchant Center accounts for Google
      #  Shopping.
      #
      # @example
      #    require 'google/apis/content_v2'
      #
      #    Content = Google::Apis::ContentV2 # Alias the module
      #    service = Content::ShoppingContentService.new
      #
      # @see https://developers.google.com/shopping-content/v2/
      class ShoppingContentService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'content/v2/')
        end
        
        # Returns information about the authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountsAuthInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountsAuthInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_authinfo(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/authinfo'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountsAuthInfoResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccountsAuthInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)
        # accounts in a single request.
        # @param [Google::Apis::ContentV2::BatchAccountsRequest] batch_accounts_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account(batch_accounts_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchAccountsRequest::Representation
          command.request_object = batch_accounts_request_object
          command.response_representation = Google::Apis::ContentV2::BatchAccountsResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchAccountsResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Merchant Center sub-account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(merchant_id, account_id, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Merchant Center sub-account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Google::Apis::ContentV2::Account] account_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account(merchant_id, account_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListAccountsResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListAccountsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account. This method supports patch semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2::Account] account_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(merchant_id, account_id, account_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2::Account] account_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(merchant_id, account_id, account_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates the shipping settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2::BatchAccountShippingRequest] batch_account_shipping_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchAccountShippingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchAccountShippingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_shipping(batch_account_shipping_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accountshipping/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchAccountShippingRequest::Representation
          command.request_object = batch_account_shipping_request_object
          command.response_representation = Google::Apis::ContentV2::BatchAccountShippingResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchAccountShippingResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the shipping settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_shipping(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the shipping settings of the sub-accounts in your Merchant Center
        # account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of shipping settings to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListAccountShippingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListAccountShippingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_shippings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListAccountShippingResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListAccountShippingResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account. This method supports patch
        # semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
        # @param [Google::Apis::ContentV2::AccountShipping] account_shipping_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_shipping(merchant_id, account_id, account_shipping_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.request_object = account_shipping_object
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
        # @param [Google::Apis::ContentV2::AccountShipping] account_shipping_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_shipping(merchant_id, account_id, account_shipping_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.request_object = account_shipping_object
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::BatchAccountStatusesRequest] batch_account_statuses_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchAccountStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchAccountStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_status(batch_account_statuses_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accountstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchAccountStatusesRequest::Representation
          command.request_object = batch_account_statuses_request_object
          command.response_representation = Google::Apis::ContentV2::BatchAccountStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchAccountStatusesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_status(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountstatuses/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountStatus::Representation
          command.response_class = Google::Apis::ContentV2::AccountStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of account statuses to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListAccountStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListAccountStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_statuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListAccountStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListAccountStatusesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates tax settings of multiple accounts in a single request.
        # @param [Google::Apis::ContentV2::BatchAccountTaxRequest] batch_account_tax_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchAccountTaxResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchAccountTaxResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_tax(batch_account_tax_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounttax/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchAccountTaxRequest::Representation
          command.request_object = batch_account_tax_request_object
          command.response_representation = Google::Apis::ContentV2::BatchAccountTaxResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchAccountTaxResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the tax settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_tax(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tax settings of the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of tax settings to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListAccountTaxResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListAccountTaxResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_taxes(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListAccountTaxResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListAccountTaxResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account. This method supports patch semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2::AccountTax] account_tax_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_tax(merchant_id, account_id, account_tax_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2::AccountTax] account_tax_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_tax(merchant_id, account_id, account_tax_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::BatchDatafeedsRequest] batch_datafeeds_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchDatafeedsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchDatafeedsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_datafeed(batch_datafeeds_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datafeeds/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchDatafeedsRequest::Representation
          command.request_object = batch_datafeeds_request_object
          command.response_representation = Google::Apis::ContentV2::BatchDatafeedsResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchDatafeedsResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_datafeed(merchant_id, datafeed_id, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a datafeed with your Merchant Center account.
        # @param [String] merchant_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_datafeed(merchant_id, datafeed_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the datafeeds in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListDatafeedsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListDatafeedsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeeds(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListDatafeedsResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListDatafeedsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed of your Merchant Center account. This method supports patch
        # semantics.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_datafeed(merchant_id, datafeed_id, datafeed_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed of your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_datafeed(merchant_id, datafeed_id, datafeed_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::BatchDatafeedStatusesRequest] batch_datafeed_statuses_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchDatafeedStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchDatafeedStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_datafeed_status(batch_datafeed_statuses_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datafeedstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchDatafeedStatusesRequest::Representation
          command.request_object = batch_datafeed_statuses_request_object
          command.response_representation = Google::Apis::ContentV2::BatchDatafeedStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchDatafeedStatusesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::DatafeedStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeed_status(merchant_id, datafeed_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeedstatuses/{datafeedId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::DatafeedStatus::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the datafeeds in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListDatafeedStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListDatafeedStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeed_statuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeedstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListDatafeedStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListDatafeedStatusesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates price and availability for multiple products or stores in a single
        # request. This operation does not update the expiration date of the products.
        # @param [Google::Apis::ContentV2::BatchInventoryRequest] batch_inventory_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchInventoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchInventoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_inventory(batch_inventory_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'inventory/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchInventoryRequest::Representation
          command.request_object = batch_inventory_request_object
          command.response_representation = Google::Apis::ContentV2::BatchInventoryResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchInventoryResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates price and availability of a product in your Merchant Center account.
        # This operation does not update the expiration date of the product.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] store_code
        #   The code of the store for which to update price and availability. Use online
        #   to update price and availability of an online product.
        # @param [String] product_id
        #   The ID of the product for which to update price and availability.
        # @param [Google::Apis::ContentV2::SetInventoryRequest] set_inventory_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::SetInventoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::SetInventoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_inventory(merchant_id, store_code, product_id, set_inventory_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/inventory/{storeCode}/products/{productId}'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::SetInventoryRequest::Representation
          command.request_object = set_inventory_request_object
          command.response_representation = Google::Apis::ContentV2::SetInventoryResponse::Representation
          command.response_class = Google::Apis::ContentV2::SetInventoryResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, and deletes multiple products in a single request.
        # @param [Google::Apis::ContentV2::BatchProductsRequest] batch_products_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_product(batch_products_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'products/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchProductsRequest::Representation
          command.request_object = batch_products_request_object
          command.response_representation = Google::Apis::ContentV2::BatchProductsResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchProductsResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_product(merchant_id, product_id, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products/{productId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(merchant_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products/{productId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Product::Representation
          command.response_class = Google::Apis::ContentV2::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a product to your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Google::Apis::ContentV2::Product] product_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_product(merchant_id, product_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Product::Representation
          command.request_object = product_object
          command.response_representation = Google::Apis::ContentV2::Product::Representation
          command.response_class = Google::Apis::ContentV2::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the products in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_products(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListProductsResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListProductsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the statuses of multiple products in a single request.
        # @param [Google::Apis::ContentV2::BatchProductStatusesRequest] batch_product_statuses_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::BatchProductStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::BatchProductStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_product_status(batch_product_statuses_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'productstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::BatchProductStatusesRequest::Representation
          command.request_object = batch_product_statuses_request_object
          command.response_representation = Google::Apis::ContentV2::BatchProductStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::BatchProductStatusesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ProductStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product_status(merchant_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/productstatuses/{productId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ProductStatus::Representation
          command.response_class = Google::Apis::ContentV2::ProductStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the products in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of product statuses to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2::ListProductStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListProductStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_product_statuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/productstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListProductStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListProductStatusesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
