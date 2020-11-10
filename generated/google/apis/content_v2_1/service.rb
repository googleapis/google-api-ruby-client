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
    module ContentV2_1
      # Content API for Shopping
      #
      # Manage your product listings and accounts for Google Shopping
      #
      # @example
      #    require 'google/apis/content_v2_1'
      #
      #    Content = Google::Apis::ContentV2_1 # Alias the module
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
        attr_accessor :quota_user

        def initialize
          super('https://shoppingcontent.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns information about the authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsAuthInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsAuthInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def authinfo_account(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/accounts/authinfo', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsAuthInfoResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsAuthInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claims the website of a Merchant Center sub-account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account whose website is claimed.
        # @param [Boolean] overwrite
        #   Only available to selected merchants. When set to `True`, this flag removes
        #   any existing claim on the requested website by another account and replaces it
        #   with a claim from this account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claimwebsite_account(merchant_id, account_id, overwrite: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/accounts/{accountId}/claimwebsite', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['overwrite'] = overwrite unless overwrite.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)
        # accounts in a single request.
        # @param [Google::Apis::ContentV2_1::AccountsCustomBatchRequest] accounts_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_account(accounts_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/accounts/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsCustomBatchRequest::Representation
          command.request_object = accounts_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Merchant Center sub-account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account, and
        #   accountId must be the ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Boolean] force
        #   Flag to delete sub-accounts with products. The default value is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_account(merchant_id, account_id, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/accounts/{accountId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [String] view
        #   Controls which fields will be populated. Acceptable values are: "merchant" and
        #   "css". The default value is "merchant".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(merchant_id, account_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accounts/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Merchant Center sub-account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Google::Apis::ContentV2_1::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account(merchant_id, account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/accounts', options)
          command.request_representation = Google::Apis::ContentV2_1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs an action on a link between two Merchant Center accounts, namely
        # accountId and linkedAccountId.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that should be linked.
        # @param [Google::Apis::ContentV2_1::AccountsLinkRequest] accounts_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_account(merchant_id, account_id, accounts_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/accounts/{accountId}/link', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsLinkRequest::Representation
          command.request_object = accounts_link_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsLinkResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsLinkResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] label
        #   If view is set to "css", only return accounts that are assigned label with
        #   given ID.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] view
        #   Controls which fields will be populated. Acceptable values are: "merchant" and
        #   "css". The default value is "merchant".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(merchant_id, label: nil, max_results: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accounts', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['label'] = label unless label.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of accounts linked to your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to list links.
        # @param [Fixnum] max_results
        #   The maximum number of links to return in the response, used for pagination.
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
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listlinks_account(merchant_id, account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accounts/{accountId}/listlinks', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsListLinksResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsListLinksResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2_1::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(merchant_id, account_id, account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/accounts/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates labels that are assigned to the Merchant Center account by CSS user.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] account_id
        #   The ID of the account whose labels are updated.
        # @param [Google::Apis::ContentV2_1::AccountsUpdateLabelsRequest] accounts_update_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelabels_account(merchant_id, account_id, accounts_update_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/accounts/{accountId}/updatelabels', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsUpdateLabelsRequest::Representation
          command.request_object = accounts_update_labels_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new label, not assigned to any account.
        # @param [Fixnum] account_id
        #   Required. The id of the account this label belongs to.
        # @param [Google::Apis::ContentV2_1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_label(account_id, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/accounts/{accountId}/labels', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountLabel
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a label and removes it from all accounts to which it was assigned.
        # @param [Fixnum] account_id
        #   Required. The id of the account that owns the label.
        # @param [Fixnum] label_id
        #   Required. The id of the label to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_account_label(account_id, label_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/accounts/{accountId}/labels/{labelId}', options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['labelId'] = label_id unless label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the labels assigned to an account.
        # @param [Fixnum] account_id
        #   Required. The account id for whose labels are to be listed.
        # @param [Fixnum] page_size
        #   The maximum number of labels to return. The service may return fewer than this
        #   value. If unspecified, at most 50 labels will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccountLabels` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccountLabels` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListAccountLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListAccountLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_labels(account_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/accounts/{accountId}/labels', options)
          command.response_representation = Google::Apis::ContentV2_1::ListAccountLabelsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListAccountLabelsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a label.
        # @param [Fixnum] account_id
        #   Required. The id of the account this label belongs to.
        # @param [Fixnum] label_id
        #   Required. The id of the label to update.
        # @param [Google::Apis::ContentV2_1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_label(account_id, label_id, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'content/v2.1/accounts/{accountId}/labels/{labelId}', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountLabel
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['labelId'] = label_id unless label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves multiple Merchant Center account statuses in a single request.
        # @param [Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequest] accountstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accountstatus(accountstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/accountstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequest::Representation
          command.request_object = accountstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a Merchant Center account. No itemLevelIssues are
        # returned for multi-client accounts.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accountstatus(merchant_id, account_id, destinations: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accountstatuses/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accountstatuses(merchant_id, destinations: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accountstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates tax settings of multiple accounts in a single request.
        # @param [Google::Apis::ContentV2_1::AccounttaxCustomBatchRequest] accounttax_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accounttax(accounttax_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/accounttax/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccounttaxCustomBatchRequest::Representation
          command.request_object = accounttax_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the tax settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accounttax(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accounttax/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tax settings of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] max_results
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
        # @yieldparam result [Google::Apis::ContentV2_1::AccounttaxListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccounttaxListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounttaxes(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/accounttax', options)
          command.response_representation = Google::Apis::ContentV2_1::AccounttaxListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccounttaxListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2_1::AccountTax] account_tax_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_accounttax(merchant_id, account_id, account_tax_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/accounttax/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a single CSS domain by ID.
        # @param [Fixnum] css_group_id
        #   Required. The ID of the managing account. If this parameter is not the same as
        #   [cssDomainId](#cssDomainId), then this ID must be a CSS group ID and `
        #   cssDomainId` must be the ID of a CSS domain affiliated with this group.
        # @param [Fixnum] css_domain_id
        #   Required. The ID of the CSS domain to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Css] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Css]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_css(css_group_id, css_domain_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{cssGroupId}/csses/{cssDomainId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Css::Representation
          command.response_class = Google::Apis::ContentV2_1::Css
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.params['cssDomainId'] = css_domain_id unless css_domain_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CSS domains affiliated with a CSS group.
        # @param [Fixnum] css_group_id
        #   Required. The CSS group ID of CSS domains to be listed.
        # @param [Fixnum] page_size
        #   The maximum number of CSS domains to return. The service may return fewer than
        #   this value. If unspecified, at most 50 CSS domains will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListCsses` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListCsses` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListCssesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListCssesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_csses(css_group_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{cssGroupId}/csses', options)
          command.response_representation = Google::Apis::ContentV2_1::ListCssesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListCssesResponse
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates labels that are assigned to a CSS domain by its CSS group.
        # @param [Fixnum] css_group_id
        #   Required. The CSS group ID of the updated CSS domain.
        # @param [Fixnum] css_domain_id
        #   Required. The ID of the updated CSS domain.
        # @param [Google::Apis::ContentV2_1::LabelIds] label_ids_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Css] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Css]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelabels_css(css_group_id, css_domain_id, label_ids_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{cssGroupId}/csses/{cssDomainId}/updatelabels', options)
          command.request_representation = Google::Apis::ContentV2_1::LabelIds::Representation
          command.request_object = label_ids_object
          command.response_representation = Google::Apis::ContentV2_1::Css::Representation
          command.response_class = Google::Apis::ContentV2_1::Css
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.params['cssDomainId'] = css_domain_id unless css_domain_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes, fetches, gets, inserts and updates multiple datafeeds in a single
        # request.
        # @param [Google::Apis::ContentV2_1::DatafeedsCustomBatchRequest] datafeeds_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeed(datafeeds_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/datafeeds/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::DatafeedsCustomBatchRequest::Representation
          command.request_object = datafeeds_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a datafeed configuration from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/datafeeds/{datafeedId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invokes a fetch for the datafeed in your Merchant Center account. If you need
        # to call this method more than once per day, we recommend you use the Products
        # service to update your product data.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed to be fetched.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsFetchNowResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsFetchNowResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetchnow_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/datafeeds/{datafeedId}/fetchNow', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsFetchNowResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsFetchNowResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a datafeed configuration from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/datafeeds/{datafeedId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a datafeed configuration with your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Google::Apis::ContentV2_1::Datafeed] datafeed_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_datafeed(merchant_id, datafeed_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/datafeeds', options)
          command.request_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the configurations for datafeeds in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeeds. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeeds(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/datafeeds', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed configuration of your Merchant Center account. Any fields
        # that are not provided are deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [Google::Apis::ContentV2_1::Datafeed] datafeed_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_datafeed(merchant_id, datafeed_id, datafeed_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/datafeeds/{datafeedId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets multiple Merchant Center datafeed statuses in a single request.
        # @param [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequest] datafeedstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeedstatus(datafeedstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/datafeedstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequest::Representation
          command.request_object = datafeedstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a datafeed from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [String] country
        #   The country for which to get the datafeed status. If this parameter is
        #   provided then language must also be provided. Note that this parameter is
        #   required for feeds targeting multiple countries and languages, since a feed
        #   may have a different status for each target.
        # @param [String] language
        #   The language for which to get the datafeed status. If this parameter is
        #   provided then country must also be provided. Note that this parameter is
        #   required for feeds targeting multiple countries and languages, since a feed
        #   may have a different status for each target.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeedstatus(merchant_id, datafeed_id, country: nil, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/datafeedstatuses/{datafeedId}', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the datafeeds in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeeds. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeedstatuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/datafeedstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and/or updates the LIA settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2_1::LiasettingsCustomBatchRequest] liasettings_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_liasetting(liasettings_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/liasettings/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::LiasettingsCustomBatchRequest::Representation
          command.request_object = liasettings_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the LIA settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get or update LIA settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiaSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_liasetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/liasettings/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::LiaSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of accessible Google My Business accounts.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to retrieve accessible Google My Business
        #   accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getaccessiblegmbaccounts_liasetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/liasettings/{accountId}/accessiblegmbaccounts', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the LIA settings of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of LIA settings to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_liasettings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/liasettings', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of POS data providers that have active settings for the all
        # eiligible countries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listposdataproviders_liasetting(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/liasettings/posdataproviders', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests access to a specified Google My Business account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which GMB access is requested.
        # @param [String] gmb_email
        #   The email of the Google My Business account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def requestgmbaccess_liasetting(merchant_id, account_id, gmb_email, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/liasettings/{accountId}/requestgmbaccess', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['gmbEmail'] = gmb_email unless gmb_email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests inventory validation for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] country
        #   The country for which inventory validation is requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def requestinventoryverification_liasetting(merchant_id, account_id, country, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['country'] = country unless country.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the inventory verification contract for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] country
        #   The country for which inventory verification is requested.
        # @param [String] language
        #   The language for which inventory verification is requested.
        # @param [String] contact_name
        #   The name of the inventory verification contact.
        # @param [String] contact_email
        #   The email of the inventory verification contact.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setinventoryverificationcontact_liasetting(merchant_id, account_id, country, language, contact_name, contact_email, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/liasettings/{accountId}/setinventoryverificationcontact', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['contactEmail'] = contact_email unless contact_email.nil?
          command.query['contactName'] = contact_name unless contact_name.nil?
          command.query['country'] = country unless country.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the POS data provider for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to retrieve accessible Google My Business
        #   accounts.
        # @param [String] country
        #   The country for which the POS data provider is selected.
        # @param [Fixnum] pos_data_provider_id
        #   The ID of POS data provider.
        # @param [String] pos_external_account_id
        #   The account ID by which this merchant is known to the POS data provider.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setposdataprovider_liasetting(merchant_id, account_id, country, pos_data_provider_id: nil, pos_external_account_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/liasettings/{accountId}/setposdataprovider', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['posDataProviderId'] = pos_data_provider_id unless pos_data_provider_id.nil?
          command.query['posExternalAccountId'] = pos_external_account_id unless pos_external_account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the LIA settings of the account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get or update LIA settings.
        # @param [Google::Apis::ContentV2_1::LiaSettings] lia_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiaSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_liasetting(merchant_id, account_id, lia_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/liasettings/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.request_object = lia_settings_object
          command.response_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::LiaSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates local inventory for multiple products or stores in a single request.
        # @param [Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequest] localinventory_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_localinventory(localinventory_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/localinventory/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequest::Representation
          command.request_object = localinventory_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the local inventory of a product in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product for which to update local inventory.
        # @param [Google::Apis::ContentV2_1::LocalInventory] local_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LocalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LocalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_localinventory(merchant_id, product_id, local_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/products/{productId}/localinventory', options)
          command.request_representation = Google::Apis::ContentV2_1::LocalInventory::Representation
          command.request_object = local_inventory_object
          command.response_representation = Google::Apis::ContentV2_1::LocalInventory::Representation
          command.response_class = Google::Apis::ContentV2_1::LocalInventory
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a charge invoice for a shipment group, and triggers a charge capture
        # for orderinvoice enabled orders.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceRequest] orderinvoices_create_charge_invoice_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createchargeinvoice_orderinvoice(merchant_id, order_id, orderinvoices_create_charge_invoice_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orderinvoices/{orderId}/createChargeInvoice', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceRequest::Representation
          command.request_object = orderinvoices_create_charge_invoice_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderinvoicesCreateChargeInvoiceResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a refund invoice for one or more shipment groups, and triggers a
        # refund for orderinvoice enabled orders. This can only be used for line items
        # that have previously been charged using `createChargeInvoice`. All amounts (
        # except for the summary) are incremental with respect to the previous invoice.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceRequest] orderinvoices_create_refund_invoice_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createrefundinvoice_orderinvoice(merchant_id, order_id, orderinvoices_create_refund_invoice_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orderinvoices/{orderId}/createRefundInvoice', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceRequest::Representation
          command.request_object = orderinvoices_create_refund_invoice_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderinvoicesCreateRefundInvoiceResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report for disbursements from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] disbursement_end_date
        #   The last date which disbursements occurred. In ISO 8601 format. Default:
        #   current date.
        # @param [String] disbursement_start_date
        #   The first date which disbursements occurred. In ISO 8601 format.
        # @param [Fixnum] max_results
        #   The maximum number of disbursements to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreportsListDisbursementsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreportsListDisbursementsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listdisbursements_orderreport(merchant_id, disbursement_end_date: nil, disbursement_start_date: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orderreports/disbursements', options)
          command.response_representation = Google::Apis::ContentV2_1::OrderreportsListDisbursementsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreportsListDisbursementsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['disbursementEndDate'] = disbursement_end_date unless disbursement_end_date.nil?
          command.query['disbursementStartDate'] = disbursement_start_date unless disbursement_start_date.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of transactions for a disbursement from your Merchant Center
        # account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] disbursement_id
        #   The Google-provided ID of the disbursement (found in Wallet).
        # @param [Fixnum] max_results
        #   The maximum number of disbursements to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] transaction_end_date
        #   The last date in which transaction occurred. In ISO 8601 format. Default:
        #   current date.
        # @param [String] transaction_start_date
        #   The first date in which transaction occurred. In ISO 8601 format.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreportsListTransactionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreportsListTransactionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listtransactions_orderreport(merchant_id, disbursement_id, max_results: nil, page_token: nil, transaction_end_date: nil, transaction_start_date: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orderreports/disbursements/{disbursementId}/transactions', options)
          command.response_representation = Google::Apis::ContentV2_1::OrderreportsListTransactionsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreportsListTransactionsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['disbursementId'] = disbursement_id unless disbursement_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['transactionEndDate'] = transaction_end_date unless transaction_end_date.nil?
          command.query['transactionStartDate'] = transaction_start_date unless transaction_start_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acks an order return in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] return_id
        #   The ID of the return.
        # @param [Google::Apis::ContentV2_1::OrderreturnsAcknowledgeRequest] orderreturns_acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreturnsAcknowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreturnsAcknowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_orderreturn(merchant_id, return_id, orderreturns_acknowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orderreturns/{returnId}/acknowledge', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderreturnsAcknowledgeRequest::Representation
          command.request_object = orderreturns_acknowledge_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrderreturnsAcknowledgeResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreturnsAcknowledgeResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnId'] = return_id unless return_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create return in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnRequest] orderreturns_create_order_return_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createorderreturn_orderreturn(merchant_id, orderreturns_create_order_return_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orderreturns/createOrderReturn', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnRequest::Representation
          command.request_object = orderreturns_create_order_return_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreturnsCreateOrderReturnResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an order return from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] return_id
        #   Merchant order return ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::MerchantOrderReturn] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::MerchantOrderReturn]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_orderreturn(merchant_id, return_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orderreturns/{returnId}', options)
          command.response_representation = Google::Apis::ContentV2_1::MerchantOrderReturn::Representation
          command.response_class = Google::Apis::ContentV2_1::MerchantOrderReturn
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnId'] = return_id unless return_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists order returns in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [Boolean] acknowledged
        #   Obtains order returns that match the acknowledgement status. When set to true,
        #   obtains order returns that have been acknowledged. When false, obtains order
        #   returns that have not been acknowledged. When not provided, obtains order
        #   returns regardless of their acknowledgement status. We recommend using this
        #   filter set to `false`, in conjunction with the `acknowledge` call, such that
        #   only un-acknowledged order returns are returned.
        # @param [String] created_end_date
        #   Obtains order returns created before this date (inclusively), in ISO 8601
        #   format.
        # @param [String] created_start_date
        #   Obtains order returns created after this date (inclusively), in ISO 8601
        #   format.
        # @param [Array<String>, String] google_order_ids
        #   Obtains order returns with the specified order ids. If this parameter is
        #   provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus,
        #   shipmentState and acknowledged parameters must be not set. Note: if
        #   googleOrderId and shipmentTrackingNumber parameters are provided, the obtained
        #   results will include all order returns that either match the specified order
        #   id or the specified tracking number.
        # @param [Fixnum] max_results
        #   The maximum number of order returns to return in the response, used for paging.
        #   The default value is 25 returns per page, and the maximum allowed value is
        #   250 returns per page.
        # @param [String] order_by
        #   Return the results in the specified order.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [Array<String>, String] shipment_states
        #   Obtains order returns that match any shipment state provided in this parameter.
        #   When this parameter is not provided, order returns are obtained regardless of
        #   their shipment states.
        # @param [Array<String>, String] shipment_status
        #   Obtains order returns that match any shipment status provided in this
        #   parameter. When this parameter is not provided, order returns are obtained
        #   regardless of their shipment statuses.
        # @param [Array<String>, String] shipment_tracking_numbers
        #   Obtains order returns with the specified tracking numbers. If this parameter
        #   is provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus,
        #   shipmentState and acknowledged parameters must be not set. Note: if
        #   googleOrderId and shipmentTrackingNumber parameters are provided, the obtained
        #   results will include all order returns that either match the specified order
        #   id or the specified tracking number.
        # @param [Array<String>, String] shipment_types
        #   Obtains order returns that match any shipment type provided in this parameter.
        #   When this parameter is not provided, order returns are obtained regardless of
        #   their shipment types.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreturnsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreturnsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_orderreturns(merchant_id, acknowledged: nil, created_end_date: nil, created_start_date: nil, google_order_ids: nil, max_results: nil, order_by: nil, page_token: nil, shipment_states: nil, shipment_status: nil, shipment_tracking_numbers: nil, shipment_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orderreturns', options)
          command.response_representation = Google::Apis::ContentV2_1::OrderreturnsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreturnsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['acknowledged'] = acknowledged unless acknowledged.nil?
          command.query['createdEndDate'] = created_end_date unless created_end_date.nil?
          command.query['createdStartDate'] = created_start_date unless created_start_date.nil?
          command.query['googleOrderIds'] = google_order_ids unless google_order_ids.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['shipmentStates'] = shipment_states unless shipment_states.nil?
          command.query['shipmentStatus'] = shipment_status unless shipment_status.nil?
          command.query['shipmentTrackingNumbers'] = shipment_tracking_numbers unless shipment_tracking_numbers.nil?
          command.query['shipmentTypes'] = shipment_types unless shipment_types.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes return in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] return_id
        #   The ID of the return.
        # @param [Google::Apis::ContentV2_1::OrderreturnsProcessRequest] orderreturns_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderreturnsProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderreturnsProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_orderreturn(merchant_id, return_id, orderreturns_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orderreturns/{returnId}/process', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderreturnsProcessRequest::Representation
          command.request_object = orderreturns_process_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrderreturnsProcessResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderreturnsProcessResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnId'] = return_id unless return_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an order as acknowledged.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersAcknowledgeRequest] orders_acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersAcknowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersAcknowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_order(merchant_id, order_id, orders_acknowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/acknowledge', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersAcknowledgeRequest::Representation
          command.request_object = orders_acknowledge_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersAcknowledgeResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersAcknowledgeResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Moves a test order from state "`inProgress`" to state "`
        # pendingShipment`".
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the test order to modify.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersAdvanceTestOrderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersAdvanceTestOrderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def advancetestorder_order(merchant_id, order_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/testorders/{orderId}/advance', options)
          command.response_representation = Google::Apis::ContentV2_1::OrdersAdvanceTestOrderResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersAdvanceTestOrderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels all line items in an order, making a full refund.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order to cancel.
        # @param [Google::Apis::ContentV2_1::OrdersCancelRequest] orders_cancel_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersCancelResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersCancelResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_order(merchant_id, order_id, orders_cancel_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/cancel', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersCancelRequest::Representation
          command.request_object = orders_cancel_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersCancelResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersCancelResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a line item, making a full refund.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersCancelLineItemRequest] orders_cancel_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersCancelLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersCancelLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancellineitem_order(merchant_id, order_id, orders_cancel_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/cancelLineItem', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersCancelLineItemRequest::Representation
          command.request_object = orders_cancel_line_item_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersCancelLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersCancelLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Cancels a test order for customer-initiated cancellation.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the test order to cancel.
        # @param [Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerRequest] orders_cancel_test_order_by_customer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def canceltestorderbycustomer_order(merchant_id, order_id, orders_cancel_test_order_by_customer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/testorders/{orderId}/cancelByCustomer', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerRequest::Representation
          command.request_object = orders_cancel_test_order_by_customer_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersCancelTestOrderByCustomerResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Creates a test order.
        # @param [Fixnum] merchant_id
        #   The ID of the account that should manage the order. This cannot be a multi-
        #   client account.
        # @param [Google::Apis::ContentV2_1::OrdersCreateTestOrderRequest] orders_create_test_order_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersCreateTestOrderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersCreateTestOrderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createtestorder_order(merchant_id, orders_create_test_order_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/testorders', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersCreateTestOrderRequest::Representation
          command.request_object = orders_create_test_order_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersCreateTestOrderResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersCreateTestOrderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Creates a test return.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersCreateTestReturnRequest] orders_create_test_return_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersCreateTestReturnResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersCreateTestReturnResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createtestreturn_order(merchant_id, order_id, orders_create_test_return_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/testreturn', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersCreateTestReturnRequest::Representation
          command.request_object = orders_create_test_return_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersCreateTestReturnResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersCreateTestReturnResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an order from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Order] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Order]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_order(merchant_id, order_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orders/{orderId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Order::Representation
          command.response_class = Google::Apis::ContentV2_1::Order
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an order using merchant order ID.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] merchant_order_id
        #   The merchant order ID to be looked for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersGetByMerchantOrderIdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersGetByMerchantOrderIdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getbymerchantorderid_order(merchant_id, merchant_order_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/ordersbymerchantid/{merchantOrderId}', options)
          command.response_representation = Google::Apis::ContentV2_1::OrdersGetByMerchantOrderIdResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersGetByMerchantOrderIdResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['merchantOrderId'] = merchant_order_id unless merchant_order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Retrieves an order template that can be used to quickly create a
        # new order in sandbox.
        # @param [Fixnum] merchant_id
        #   The ID of the account that should manage the order. This cannot be a multi-
        #   client account.
        # @param [String] template_name
        #   The name of the template to retrieve.
        # @param [String] country
        #   The country of the template to retrieve. Defaults to `US`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersGetTestOrderTemplateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersGetTestOrderTemplateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def gettestordertemplate_order(merchant_id, template_name, country: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/testordertemplates/{templateName}', options)
          command.response_representation = Google::Apis::ContentV2_1::OrdersGetTestOrderTemplateResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersGetTestOrderTemplateResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['templateName'] = template_name unless template_name.nil?
          command.query['country'] = country unless country.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated. Notifies that item return and refund was handled directly by
        # merchant outside of Google payments processing (e.g. cash refund done in store)
        # . Note: We recommend calling the returnrefundlineitem method to refund in-
        # store returns. We will issue the refund directly to the customer. This helps
        # to prevent possible differences arising between merchant and Google
        # transaction records. We also recommend having the point of sale system
        # communicate with Google to ensure that customers do not receive a double
        # refund by first refunding via Google then via an in-store return.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemRequest] orders_in_store_refund_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instorerefundlineitem_order(merchant_id, order_id, orders_in_store_refund_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/inStoreRefundLineItem', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemRequest::Representation
          command.request_object = orders_in_store_refund_line_item_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersInStoreRefundLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the orders in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [Boolean] acknowledged
        #   Obtains orders that match the acknowledgement status. When set to true,
        #   obtains orders that have been acknowledged. When false, obtains orders that
        #   have not been acknowledged. We recommend using this filter set to `false`, in
        #   conjunction with the `acknowledge` call, such that only un-acknowledged orders
        #   are returned.
        # @param [Fixnum] max_results
        #   The maximum number of orders to return in the response, used for paging. The
        #   default value is 25 orders per page, and the maximum allowed value is 250
        #   orders per page.
        # @param [String] order_by
        #   Order results by placement date in descending or ascending order. Acceptable
        #   values are: - placedDateAsc - placedDateDesc
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] placed_date_end
        #   Obtains orders placed before this date (exclusively), in ISO 8601 format.
        # @param [String] placed_date_start
        #   Obtains orders placed after this date (inclusively), in ISO 8601 format.
        # @param [Array<String>, String] statuses
        #   Obtains orders that match any of the specified statuses. Please note that `
        #   active` is a shortcut for `pendingShipment` and `partiallyShipped`, and `
        #   completed` is a shortcut for `shipped`, `partiallyDelivered`, `delivered`, `
        #   partiallyReturned`, `returned`, and `canceled`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_orders(merchant_id, acknowledged: nil, max_results: nil, order_by: nil, page_token: nil, placed_date_end: nil, placed_date_start: nil, statuses: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/orders', options)
          command.response_representation = Google::Apis::ContentV2_1::OrdersListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['acknowledged'] = acknowledged unless acknowledged.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['placedDateEnd'] = placed_date_end unless placed_date_end.nil?
          command.query['placedDateStart'] = placed_date_start unless placed_date_start.nil?
          command.query['statuses'] = statuses unless statuses.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Issues a partial or total refund for items and shipment.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order to refund.
        # @param [Google::Apis::ContentV2_1::OrdersRefundItemRequest] orders_refund_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersRefundItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersRefundItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refunditem_order(merchant_id, order_id, orders_refund_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/refunditem', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersRefundItemRequest::Representation
          command.request_object = orders_refund_item_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersRefundItemResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersRefundItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Issues a partial or total refund for an order.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order to refund.
        # @param [Google::Apis::ContentV2_1::OrdersRefundOrderRequest] orders_refund_order_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersRefundOrderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersRefundOrderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refundorder_order(merchant_id, order_id, orders_refund_order_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/refundorder', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersRefundOrderRequest::Representation
          command.request_object = orders_refund_order_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersRefundOrderResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersRefundOrderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects return on an line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersRejectReturnLineItemRequest] orders_reject_return_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersRejectReturnLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersRejectReturnLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rejectreturnlineitem_order(merchant_id, order_id, orders_reject_return_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/rejectReturnLineItem', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersRejectReturnLineItemRequest::Representation
          command.request_object = orders_reject_return_line_item_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersRejectReturnLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersRejectReturnLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns and refunds a line item. Note that this method can only be called on
        # fully shipped orders. Please also note that the Orderreturns API is the
        # preferred way to handle returns after you receive a return from a customer.
        # You can use Orderreturns.list or Orderreturns.get to search for the return,
        # and then use Orderreturns.processreturn to issue the refund. If the return
        # cannot be found, then we recommend using this API to issue a refund.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersReturnRefundLineItemRequest] orders_return_refund_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersReturnRefundLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersReturnRefundLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def returnrefundlineitem_order(merchant_id, order_id, orders_return_refund_line_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/returnRefundLineItem', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersReturnRefundLineItemRequest::Representation
          command.request_object = orders_return_refund_line_item_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersReturnRefundLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersReturnRefundLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets (or overrides if it already exists) merchant provided annotations in the
        # form of key-value pairs. A common use case would be to supply us with
        # additional structured information about a line item that cannot be provided
        # via other methods. Submitted key-value pairs can be retrieved as part of the
        # orders resource.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersSetLineItemMetadataRequest] orders_set_line_item_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersSetLineItemMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersSetLineItemMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setlineitemmetadata_order(merchant_id, order_id, orders_set_line_item_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/setLineItemMetadata', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersSetLineItemMetadataRequest::Representation
          command.request_object = orders_set_line_item_metadata_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersSetLineItemMetadataResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersSetLineItemMetadataResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks line item(s) as shipped.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersShipLineItemsRequest] orders_ship_line_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersShipLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersShipLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def shiplineitems_order(merchant_id, order_id, orders_ship_line_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/shipLineItems', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersShipLineItemsRequest::Representation
          command.request_object = orders_ship_line_items_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersShipLineItemsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersShipLineItemsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates ship by and delivery by dates for a line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsRequest] orders_update_line_item_shipping_details_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelineitemshippingdetails_order(merchant_id, order_id, orders_update_line_item_shipping_details_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/updateLineItemShippingDetails', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsRequest::Representation
          command.request_object = orders_update_line_item_shipping_details_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersUpdateLineItemShippingDetailsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the merchant order ID for a given order.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdRequest] orders_update_merchant_order_id_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatemerchantorderid_order(merchant_id, order_id, orders_update_merchant_order_id_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/updateMerchantOrderId', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdRequest::Representation
          command.request_object = orders_update_merchant_order_id_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersUpdateMerchantOrderIdResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a shipment's status, carrier, and/or tracking ID.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2_1::OrdersUpdateShipmentRequest] orders_update_shipment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrdersUpdateShipmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrdersUpdateShipmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updateshipment_order(merchant_id, order_id, orders_update_shipment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/orders/{orderId}/updateShipment', options)
          command.request_representation = Google::Apis::ContentV2_1::OrdersUpdateShipmentRequest::Representation
          command.request_object = orders_update_shipment_request_object
          command.response_representation = Google::Apis::ContentV2_1::OrdersUpdateShipmentResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::OrdersUpdateShipmentResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new order tracking signal.
        # @param [Fixnum] merchant_id
        #   The ID of the merchant for which the order signal is created.
        # @param [Google::Apis::ContentV2_1::OrderTrackingSignal] order_tracking_signal_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderTrackingSignal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderTrackingSignal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_ordertrackingsignal(merchant_id, order_tracking_signal_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/ordertrackingsignals', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderTrackingSignal::Representation
          command.request_object = order_tracking_signal_object
          command.response_representation = Google::Apis::ContentV2_1::OrderTrackingSignal::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderTrackingSignal
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple POS-related calls in a single request.
        # @param [Google::Apis::ContentV2_1::PosCustomBatchRequest] pos_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_po(pos_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/pos/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::PosCustomBatchRequest::Representation
          command.request_object = pos_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a store for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] store_code
        #   A store code that is unique per merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_po(merchant_id, target_merchant_id, store_code, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/store/{storeCode}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about the given store.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] store_code
        #   A store code that is unique per merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_po(merchant_id, target_merchant_id, store_code, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/store/{storeCode}', options)
          command.response_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.response_class = Google::Apis::ContentV2_1::PosStore
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a store for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosStore] pos_store_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_po(merchant_id, target_merchant_id, pos_store_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/store', options)
          command.request_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.request_object = pos_store_object
          command.response_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.response_class = Google::Apis::ContentV2_1::PosStore
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit inventory for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosInventoryRequest] pos_inventory_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosInventoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosInventoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inventory_po(merchant_id, target_merchant_id, pos_inventory_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/inventory', options)
          command.request_representation = Google::Apis::ContentV2_1::PosInventoryRequest::Representation
          command.request_object = pos_inventory_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosInventoryResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosInventoryResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the stores of the target merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_pos(merchant_id, target_merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/store', options)
          command.response_representation = Google::Apis::ContentV2_1::PosListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a sale event for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosSaleRequest] pos_sale_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosSaleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosSaleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sale_po(merchant_id, target_merchant_id, pos_sale_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/pos/{targetMerchantId}/sale', options)
          command.request_representation = Google::Apis::ContentV2_1::PosSaleRequest::Representation
          command.request_object = pos_sale_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosSaleResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosSaleResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, and deletes multiple products in a single request.
        # @param [Google::Apis::ContentV2_1::ProductsCustomBatchRequest] products_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_product(products_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/products/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ProductsCustomBatchRequest::Representation
          command.request_object = products_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ProductsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [Fixnum] feed_id
        #   The Content API Supplemental Feed ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_product(merchant_id, product_id, feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/products/{productId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['feedId'] = feed_id unless feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(merchant_id, product_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/products/{productId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Product::Representation
          command.response_class = Google::Apis::ContentV2_1::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a product to your Merchant Center account. If an item with the same
        # channel, contentLanguage, offerId, and targetCountry already exists, this
        # method updates that entry.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [Google::Apis::ContentV2_1::Product] product_object
        # @param [Fixnum] feed_id
        #   The Content API Supplemental Feed ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_product(merchant_id, product_object = nil, feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/products', options)
          command.request_representation = Google::Apis::ContentV2_1::Product::Representation
          command.request_object = product_object
          command.response_representation = Google::Apis::ContentV2_1::Product::Representation
          command.response_class = Google::Apis::ContentV2_1::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['feedId'] = feed_id unless feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the products in your Merchant Center account. The response might contain
        # fewer items than specified by maxResults. Rely on nextPageToken to determine
        # if there are more items to be requested.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the products. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ProductsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_products(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/products', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the statuses of multiple products in a single request.
        # @param [Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequest] productstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_productstatus(productstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/productstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequest::Representation
          command.request_object = productstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_productstatus(merchant_id, product_id, destinations: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/productstatuses/{productId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the products in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the products. This account cannot be a
        #   multi-client account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_productstatuses(merchant_id, destinations: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/productstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account's pubsub notification settings.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to get pubsub notification settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PubsubNotificationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PubsubNotificationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_pubsubnotificationsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/pubsubnotificationsettings', options)
          command.response_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::PubsubNotificationSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register a Merchant Center account for pubsub notifications. Note that cloud
        # topic name should not be provided as part of the request.
        # @param [Fixnum] merchant_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2_1::PubsubNotificationSettings] pubsub_notification_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PubsubNotificationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PubsubNotificationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_pubsubnotificationsetting(merchant_id, pubsub_notification_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/pubsubnotificationsettings', options)
          command.request_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.request_object = pubsub_notification_settings_object
          command.response_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::PubsubNotificationSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates regional inventory for multiple products or regions in a single
        # request.
        # @param [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequest] regionalinventory_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_regionalinventory(regionalinventory_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/regionalinventory/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequest::Representation
          command.request_object = regionalinventory_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the regional inventory of a product in your Merchant Center account. If
        # a regional inventory with the same region ID already exists, this method
        # updates that entry.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product for which to update the regional inventory.
        # @param [Google::Apis::ContentV2_1::RegionalInventory] regional_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RegionalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_regionalinventory(merchant_id, product_id, regional_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/products/{productId}/regionalinventory', options)
          command.request_representation = Google::Apis::ContentV2_1::RegionalInventory::Representation
          command.request_object = regional_inventory_object
          command.response_representation = Google::Apis::ContentV2_1::RegionalInventory::Representation
          command.response_class = Google::Apis::ContentV2_1::RegionalInventory
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a repricing rule for your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant who owns the repricing rule.
        # @param [Google::Apis::ContentV2_1::RepricingRule] repricing_rule_object
        # @param [String] rule_id
        #   Required. The id of the rule to create.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RepricingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RepricingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_repricingrule(merchant_id, repricing_rule_object = nil, rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/repricingrules', options)
          command.request_representation = Google::Apis::ContentV2_1::RepricingRule::Representation
          command.request_object = repricing_rule_object
          command.response_representation = Google::Apis::ContentV2_1::RepricingRule::Representation
          command.response_class = Google::Apis::ContentV2_1::RepricingRule
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a repricing rule in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant who owns the repricing rule.
        # @param [String] rule_id
        #   Required. The id of the rule to Delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_repricingrule(merchant_id, rule_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/repricingrules/{ruleId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a repricing rule from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant who owns the repricing rule.
        # @param [String] rule_id
        #   Required. The id of the rule to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RepricingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RepricingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_repricingrule(merchant_id, rule_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/repricingrules/{ruleId}', options)
          command.response_representation = Google::Apis::ContentV2_1::RepricingRule::Representation
          command.response_class = Google::Apis::ContentV2_1::RepricingRule
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the repricing rules in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant who owns the repricing rule.
        # @param [String] country_code
        #   CLDR country code (e.g. "US"), used as a filter on repricing rules.
        # @param [String] language_code
        #   The two-letter ISO 639-1 language code associated with the repricing rule,
        #   used as a filter.
        # @param [Fixnum] page_size
        #   The maximum number of repricing rules to return. The service may return fewer
        #   than this value. If unspecified, at most 50 rules will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListRepricingRules` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListRepricingRules` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListRepricingRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListRepricingRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_repricingrules(merchant_id, country_code: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/repricingrules', options)
          command.response_representation = Google::Apis::ContentV2_1::ListRepricingRulesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListRepricingRulesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['countryCode'] = country_code unless country_code.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a repricing rule in your Merchant Center account. All mutable fields
        # will be overwritten in each update request. In each update, you must provide
        # all required mutable fields, or an error will be thrown. If you do not provide
        # an optional field in the update request, if that field currently exists, it
        # will be deleted from the rule.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant who owns the repricing rule.
        # @param [String] rule_id
        #   Required. The id of the rule to update.
        # @param [Google::Apis::ContentV2_1::RepricingRule] repricing_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RepricingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RepricingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_repricingrule(merchant_id, rule_id, repricing_rule_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'content/v2.1/{merchantId}/repricingrules/{ruleId}', options)
          command.request_representation = Google::Apis::ContentV2_1::RepricingRule::Representation
          command.request_object = repricing_rule_object
          command.response_representation = Google::Apis::ContentV2_1::RepricingRule::Representation
          command.response_class = Google::Apis::ContentV2_1::RepricingRule
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple return address related calls in a single request.
        # @param [Google::Apis::ContentV2_1::ReturnaddressCustomBatchRequest] returnaddress_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_returnaddress(returnaddress_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/returnaddress/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnaddressCustomBatchRequest::Representation
          command.request_object = returnaddress_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a return address for the given Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account from which to delete the given return address.
        # @param [String] return_address_id
        #   Return address ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_returnaddress(merchant_id, return_address_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/returnaddress/{returnAddressId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnAddressId'] = return_address_id unless return_address_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a return address of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to get a return address for.
        # @param [String] return_address_id
        #   Return address ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_returnaddress(merchant_id, return_address_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/returnaddress/{returnAddressId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnAddress
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnAddressId'] = return_address_id unless return_address_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a return address for the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to insert a return address for.
        # @param [Google::Apis::ContentV2_1::ReturnAddress] return_address_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_returnaddress(merchant_id, return_address_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/returnaddress', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.request_object = return_address_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnAddress
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the return addresses of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list return addresses for.
        # @param [String] country
        #   List only return addresses applicable to the given country of sale. When
        #   omitted, all return addresses are listed.
        # @param [Fixnum] max_results
        #   The maximum number of addresses in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnaddressListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnaddressListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_returnaddresses(merchant_id, country: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/returnaddress', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnaddressListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnaddressListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple return policy related calls in a single request.
        # @param [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchRequest] returnpolicy_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_returnpolicy(returnpolicy_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/returnpolicy/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchRequest::Representation
          command.request_object = returnpolicy_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a return policy for the given Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account from which to delete the given return policy.
        # @param [String] return_policy_id
        #   Return policy ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_returnpolicy(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'content/v2.1/{merchantId}/returnpolicy/{returnPolicyId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a return policy of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to get a return policy for.
        # @param [String] return_policy_id
        #   Return policy ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_returnpolicy(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/returnpolicy/{returnPolicyId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicy
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a return policy for the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to insert a return policy for.
        # @param [Google::Apis::ContentV2_1::ReturnPolicy] return_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_returnpolicy(merchant_id, return_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/{merchantId}/returnpolicy', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.request_object = return_policy_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicy
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the return policies of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list return policies for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnpolicyListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnpolicyListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_returnpolicies(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/returnpolicy', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnpolicyListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnpolicyListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a settlement report from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account of the settlement report.
        # @param [String] settlement_id
        #   The Google-provided ID of the settlement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::SettlementReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::SettlementReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_settlementreport(merchant_id, settlement_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/settlementreports/{settlementId}', options)
          command.response_representation = Google::Apis::ContentV2_1::SettlementReport::Representation
          command.response_class = Google::Apis::ContentV2_1::SettlementReport
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['settlementId'] = settlement_id unless settlement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of settlement reports from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list settlements for.
        # @param [Fixnum] max_results
        #   The maximum number of settlements to return in the response, used for paging.
        #   The default value is 200 returns per page, and the maximum allowed value is
        #   5000 returns per page.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] transfer_end_date
        #   Obtains settlements which have transactions before this date (inclusively), in
        #   ISO 8601 format.
        # @param [String] transfer_start_date
        #   Obtains settlements which have transactions after this date (inclusively), in
        #   ISO 8601 format.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::SettlementreportsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::SettlementreportsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_settlementreports(merchant_id, max_results: nil, page_token: nil, transfer_end_date: nil, transfer_start_date: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/settlementreports', options)
          command.response_representation = Google::Apis::ContentV2_1::SettlementreportsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::SettlementreportsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['transferEndDate'] = transfer_end_date unless transfer_end_date.nil?
          command.query['transferStartDate'] = transfer_start_date unless transfer_start_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of transactions for the settlement.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list transactions for.
        # @param [String] settlement_id
        #   The Google-provided ID of the settlement.
        # @param [Fixnum] max_results
        #   The maximum number of transactions to return in the response, used for paging.
        #   The default value is 200 transactions per page, and the maximum allowed value
        #   is 5000 transactions per page.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [Array<String>, String] transaction_ids
        #   The list of transactions to return. If not set, all transactions will be
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
        # @yieldparam result [Google::Apis::ContentV2_1::SettlementtransactionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::SettlementtransactionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_settlementtransactions(merchant_id, settlement_id, max_results: nil, page_token: nil, transaction_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/settlementreports/{settlementId}/transactions', options)
          command.response_representation = Google::Apis::ContentV2_1::SettlementtransactionsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::SettlementtransactionsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['settlementId'] = settlement_id unless settlement_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['transactionIds'] = transaction_ids unless transaction_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates the shipping settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequest] shippingsettings_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_shippingsetting(shippingsettings_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'content/v2.1/shippingsettings/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequest::Representation
          command.request_object = shippingsettings_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the shipping settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update shipping settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_shippingsetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/shippingsettings/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported carriers and carrier services for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported carriers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedcarriers_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/supportedCarriers', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported holidays for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported holidays.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedholidays_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/supportedHolidays', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported pickup services for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported pickup services.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedpickupservices_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/supportedPickupServices', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the shipping settings of the sub-accounts in your Merchant Center
        # account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_shippingsettings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'content/v2.1/{merchantId}/shippingsettings', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account. Any fields that are not provided
        # are deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update shipping settings.
        # @param [Google::Apis::ContentV2_1::ShippingSettings] shipping_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_shippingsetting(merchant_id, account_id, shipping_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'content/v2.1/{merchantId}/shippingsettings/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.request_object = shipping_settings_object
          command.response_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
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
