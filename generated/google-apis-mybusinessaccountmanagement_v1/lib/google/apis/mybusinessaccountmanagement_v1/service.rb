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
    module MybusinessaccountmanagementV1
      # My Business Account Management API
      #
      # The My Business Account Management API provides an interface for managing
      #  access to a location on Google. Note - If you have a quota of 0 after enabling
      #  the API, please request for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinessaccountmanagement_v1'
      #
      #    Mybusinessaccountmanagement = Google::Apis::MybusinessaccountmanagementV1 # Alias the module
      #    service = Mybusinessaccountmanagement::MyBusinessAccountManagementService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessAccountManagementService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessaccountmanagement.googleapis.com/', '',
                client_name: 'google-apis-mybusinessaccountmanagement_v1',
                client_version: Google::Apis::MybusinessaccountmanagementV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates an account with the specified name and type under the given parent. -
        # Personal accounts and Organizations cannot be created. - User Groups cannot be
        # created with a Personal account as primary owner. - Location Groups cannot be
        # created with a primary owner of a Personal account if the Personal account is
        # in an Organization. - Location Groups cannot own Location Groups.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account(account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Account::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Account
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified account. Returns `NOT_FOUND` if the account does not exist
        # or if the caller does not have access rights to it.
        # @param [String] name
        #   Required. The name of the account to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Account::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the accounts for the authenticated user. This includes all
        # accounts that the user owns, as well as any accounts for which the user has
        # management rights.
        # @param [String] filter
        #   Optional. A filter constraining the accounts to return. The response includes
        #   only entries that match the filter. If `filter` is empty, then no constraints
        #   are applied and all accounts (paginated) are retrieved for the requested
        #   account. For example, a request with the filter `type=USER_GROUP` will only
        #   return user groups. The `type` field is the only supported filter.
        # @param [Fixnum] page_size
        #   Optional. How many accounts to fetch per page. The default and maximum is 20.
        # @param [String] page_token
        #   Optional. If specified, the next page of accounts is retrieved. The `pageToken`
        #   is returned when a call to `accounts.list` returns more results than can fit
        #   into the requested page size.
        # @param [String] parent_account
        #   Optional. The resource name of the account for which the list of directly
        #   accessible accounts is to be retrieved. This only makes sense for
        #   Organizations and User Groups. If empty, will return `ListAccounts` for the
        #   authenticated user. `accounts/`account_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(filter: nil, page_size: nil, page_token: nil, parent_account: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/accounts', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::ListAccountsResponse::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::ListAccountsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parentAccount'] = parent_account unless parent_account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified business account. Personal accounts cannot be updated
        # using this method.
        # @param [String] name
        #   Immutable. The resource name, in the format `accounts/`account_id``.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Account] account_object
        # @param [String] update_mask
        #   Required. The specific fields that should be updated. The only editable field
        #   is `accountName`.
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated without actually updating the
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
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(name, account_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Account::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Account
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator for the specified
        # account. The invitee must accept the invitation in order to be granted access
        # to the account. See AcceptInvitation to programmatically accept an invitation.
        # @param [String] parent
        #   Required. The resource name of the account this admin is created for. `
        #   accounts/`account_id``.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_admin(parent, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/admins', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Admin
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin from the specified account.
        # @param [String] name
        #   Required. The resource name of the admin to remove from the account. `accounts/
        #   `account_id`/admins/`admin_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the admins for the specified account.
        # @param [String] parent
        #   Required. The name of the account from which to retrieve a list of admins. `
        #   accounts/`account_id`/admins`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::ListAccountAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::ListAccountAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_admins(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/admins', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::ListAccountAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::ListAccountAdminsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Admin for the specified Account Admin.
        # @param [String] name
        #   Immutable. The resource name. For account admins, this is in the form: `
        #   accounts/`account_id`/admins/`admin_id`` For location admins, this is in the
        #   form: `locations/`location_id`/admins/`admin_id`` This field will be ignored
        #   if set during admin creation.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Admin] admin_object
        # @param [String] update_mask
        #   Required. The specific fields that should be updated. The only editable field
        #   is role.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_admin(name, admin_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Admin
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts the specified invitation.
        # @param [String] name
        #   Required. The name of the invitation that is being accepted. `accounts/`
        #   account_id`/invitations/`invitation_id``
        # @param [Google::Apis::MybusinessaccountmanagementV1::AcceptInvitationRequest] accept_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_invitation(name, accept_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:accept', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::AcceptInvitationRequest::Representation
          command.request_object = accept_invitation_request_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Declines the specified invitation.
        # @param [String] name
        #   Required. The name of the account invitation that is being declined. `accounts/
        #   `account_id`/invitations/`invitation_id``
        # @param [Google::Apis::MybusinessaccountmanagementV1::DeclineInvitationRequest] decline_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def decline_invitation(name, decline_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:decline', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::DeclineInvitationRequest::Representation
          command.request_object = decline_invitation_request_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pending invitations for the specified account.
        # @param [String] parent
        #   Required. The name of the account from which the list of invitations is being
        #   retrieved. `accounts/`account_id`/invitations`
        # @param [String] filter
        #   Optional. Filtering the response is supported via the Invitation.target_type
        #   field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::ListInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::ListInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_invitations(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/invitations', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::ListInvitationsResponse::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::ListInvitationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a location from an account that the user owns to another account that
        # the same user administers. The user must be an owner of the account the
        # location is currently associated with and must also be at least a manager of
        # the destination account.
        # @param [String] name
        #   Required. The name of the location to transfer. `locations/`location_id``.
        # @param [Google::Apis::MybusinessaccountmanagementV1::TransferLocationRequest] transfer_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transfer_location(name, transfer_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:transfer', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::TransferLocationRequest::Representation
          command.request_object = transfer_location_request_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator for the specified
        # location. The invitee must accept the invitation in order to be granted access
        # to the location. See AcceptInvitation to programmatically accept an invitation.
        # @param [String] parent
        #   Required. The resource name of the location this admin is created for. `
        #   locations/`location_id`/admins`.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_admin(parent, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/admins', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Admin
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin as a manager of the specified location.
        # @param [String] name
        #   Required. The resource name of the admin to remove from the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the admins for the specified location.
        # @param [String] parent
        #   Required. The name of the location to list admins of. `locations/`location_id`/
        #   admins`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::ListLocationAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::ListLocationAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_admins(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/admins', options)
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::ListLocationAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::ListLocationAdminsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Admin for the specified location. Only the AdminRole of the Admin
        # can be updated.
        # @param [String] name
        #   Immutable. The resource name. For account admins, this is in the form: `
        #   accounts/`account_id`/admins/`admin_id`` For location admins, this is in the
        #   form: `locations/`location_id`/admins/`admin_id`` This field will be ignored
        #   if set during admin creation.
        # @param [Google::Apis::MybusinessaccountmanagementV1::Admin] admin_object
        # @param [String] update_mask
        #   Required. The specific fields that should be updated. The only editable field
        #   is role.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessaccountmanagementV1::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessaccountmanagementV1::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location_admin(name, admin_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
          command.response_class = Google::Apis::MybusinessaccountmanagementV1::Admin
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
