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
    module CssV1
      # CSS API
      #
      # Programmatically manage your Comparison Shopping Service (CSS) account data at
      #  scale.
      #
      # @example
      #    require 'google/apis/css_v1'
      #
      #    Css = Google::Apis::CssV1 # Alias the module
      #    service = Css::CssService.new
      #
      # @see https://developers.google.com/comparison-shopping-services/api/overview
      class CssService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://css.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-css_v1',
                client_version: Google::Apis::CssV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves a single CSS/MC account by ID.
        # @param [String] name
        #   Required. The name of the managed CSS/MC account. Format: accounts/`account`
        # @param [String] parent
        #   Optional. Only required when retrieving MC account information. The CSS domain
        #   that is the parent resource of the MC account. Format: accounts/`account`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CssV1::Account::Representation
          command.response_class = Google::Apis::CssV1::Account
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the accounts under the specified CSS account ID, and optionally
        # filters by label ID and account name.
        # @param [String] parent
        #   Required. The parent account. Must be a CSS group or domain. Format: accounts/`
        #   account`
        # @param [String] full_name
        #   If set, only the MC accounts with the given name (case sensitive) will be
        #   returned.
        # @param [Fixnum] label_id
        #   If set, only the MC accounts with the given label ID will be returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service may return
        #   fewer than this value. If unspecified, at most 50 accounts will be returned.
        #   The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListChildAccounts` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListChildAccounts` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::ListChildAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::ListChildAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_child_accounts(parent, full_name: nil, label_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:listChildAccounts', options)
          command.response_representation = Google::Apis::CssV1::ListChildAccountsResponse::Representation
          command.response_class = Google::Apis::CssV1::ListChildAccountsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fullName'] = full_name unless full_name.nil?
          command.query['labelId'] = label_id unless label_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates labels assigned to CSS/MC accounts by a CSS domain.
        # @param [String] name
        #   Required. The label resource name. Format: accounts/`account`
        # @param [Google::Apis::CssV1::UpdateAccountLabelsRequest] update_account_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_labels(name, update_account_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:updateLabels', options)
          command.request_representation = Google::Apis::CssV1::UpdateAccountLabelsRequest::Representation
          command.request_object = update_account_labels_request_object
          command.response_representation = Google::Apis::CssV1::Account::Representation
          command.response_class = Google::Apis::CssV1::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a CSS Product input from your CSS Center account. After a delete it
        # may take several minutes until the input is no longer available.
        # @param [String] name
        #   Required. The name of the CSS product input resource to delete. Format:
        #   accounts/`account`/cssProductInputs/`css_product_input`
        # @param [Fixnum] supplemental_feed_id
        #   The Content API Supplemental Feed ID. The field must not be set if the action
        #   applies to a primary feed. If the field is set, then product action applies to
        #   a supplemental feed instead of primary Content API feed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_css_product_input(name, supplemental_feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CssV1::Empty::Representation
          command.response_class = Google::Apis::CssV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['supplementalFeedId'] = supplemental_feed_id unless supplemental_feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a CssProductInput to your CSS Center account. If an input with the
        # same contentLanguage, identity, feedLabel and feedId already exists, this
        # method replaces that entry. After inserting, updating, or deleting a CSS
        # Product input, it may take several minutes before the processed CSS Product
        # can be retrieved.
        # @param [String] parent
        #   Required. The account where this CSS Product will be inserted. Format:
        #   accounts/`account`
        # @param [Google::Apis::CssV1::CssProductInput] css_product_input_object
        # @param [Fixnum] feed_id
        #   Optional. DEPRECATED. Feed id is not required for CSS Products. The primary or
        #   supplemental feed id. If CSS Product already exists and feed id provided is
        #   different, then the CSS Product will be moved to a new feed. Note: For now,
        #   CSSs do not need to provide feed ids as we create feeds on the fly. We do not
        #   have supplemental feed support for CSS Products yet.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::CssProductInput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::CssProductInput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_css_product_input(parent, css_product_input_object = nil, feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/cssProductInputs:insert', options)
          command.request_representation = Google::Apis::CssV1::CssProductInput::Representation
          command.request_object = css_product_input_object
          command.response_representation = Google::Apis::CssV1::CssProductInput::Representation
          command.response_class = Google::Apis::CssV1::CssProductInput
          command.params['parent'] = parent unless parent.nil?
          command.query['feedId'] = feed_id unless feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the existing Css Product input in your CSS Center account. After
        # inserting, updating, or deleting a CSS Product input, it may take several
        # minutes before the processed Css Product can be retrieved.
        # @param [String] name
        #   The name of the CSS Product input. Format: `accounts/`account`/
        #   cssProductInputs/`css_product_input``
        # @param [Google::Apis::CssV1::CssProductInput] css_product_input_object
        # @param [String] update_mask
        #   The list of CSS product attributes to be updated. If the update mask is
        #   omitted, then it is treated as implied field mask equivalent to all fields
        #   that are populated (have a non-empty value). Attributes specified in the
        #   update mask without a value specified in the body will be deleted from the CSS
        #   product. Update mask can only be specified for top level fields in attributes
        #   and custom attributes. To specify the update mask for custom attributes you
        #   need to add the `custom_attribute.` prefix. Providing special "*" value for
        #   full CSS product replacement is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::CssProductInput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::CssProductInput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_css_product_input(name, css_product_input_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CssV1::CssProductInput::Representation
          command.request_object = css_product_input_object
          command.response_representation = Google::Apis::CssV1::CssProductInput::Representation
          command.response_class = Google::Apis::CssV1::CssProductInput
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the processed CSS Product from your CSS Center account. After
        # inserting, updating, or deleting a product input, it may take several minutes
        # before the updated final product can be retrieved.
        # @param [String] name
        #   Required. The name of the CSS product to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::CssProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::CssProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_css_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CssV1::CssProduct::Representation
          command.response_class = Google::Apis::CssV1::CssProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the processed CSS Products in your CSS Center account. The response
        # might contain fewer items than specified by pageSize. Rely on pageToken to
        # determine if there are more items to be requested. After inserting, updating,
        # or deleting a CSS product input, it may take several minutes before the
        # updated processed CSS product can be retrieved.
        # @param [String] parent
        #   Required. The account/domain to list processed CSS Products for. Format:
        #   accounts/`account`
        # @param [Fixnum] page_size
        #   The maximum number of CSS Products to return. The service may return fewer
        #   than this value. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000. If unspecified, the maximum number of CSS products will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListCssProducts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListCssProducts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::ListCssProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::ListCssProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_css_products(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/cssProducts', options)
          command.response_representation = Google::Apis::CssV1::ListCssProductsResponse::Representation
          command.response_class = Google::Apis::CssV1::ListCssProductsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new label, not assigned to any account.
        # @param [String] parent
        #   Required. The parent account. Format: accounts/`account`
        # @param [Google::Apis::CssV1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_label(parent, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/labels', options)
          command.request_representation = Google::Apis::CssV1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::CssV1::AccountLabel::Representation
          command.response_class = Google::Apis::CssV1::AccountLabel
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a label and removes it from all accounts to which it was assigned.
        # @param [String] name
        #   Required. The name of the label to delete. Format: accounts/`account`/labels/`
        #   label`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CssV1::Empty::Representation
          command.response_class = Google::Apis::CssV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the labels owned by an account.
        # @param [String] parent
        #   Required. The parent account. Format: accounts/`account`
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
        # @yieldparam result [Google::Apis::CssV1::ListAccountLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::ListAccountLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_labels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/labels', options)
          command.response_representation = Google::Apis::CssV1::ListAccountLabelsResponse::Representation
          command.response_class = Google::Apis::CssV1::ListAccountLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a label.
        # @param [String] name
        #   The resource name of the label. Format: accounts/`account`/labels/`label`
        # @param [Google::Apis::CssV1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CssV1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CssV1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_label(name, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CssV1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::CssV1::AccountLabel::Representation
          command.response_class = Google::Apis::CssV1::AccountLabel
          command.params['name'] = name unless name.nil?
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
