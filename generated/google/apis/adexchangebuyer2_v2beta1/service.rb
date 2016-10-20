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
    module Adexchangebuyer2V2beta1
      # Ad Exchange Buyer API II
      #
      # Accesses the latest features for managing Ad Exchange accounts, Real-Time
      #  Bidding configurations and auction metrics, and Marketplace programmatic deals.
      #
      # @example
      #    require 'google/apis/adexchangebuyer2_v2beta1'
      #
      #    Adexchangebuyer2 = Google::Apis::Adexchangebuyer2V2beta1 # Alias the module
      #    service = Adexchangebuyer2::AdExchangeBuyerIIService.new
      #
      # @see https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/
      class AdExchangeBuyerIIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://adexchangebuyer.googleapis.com/', '')
        end
        
        # Updates an existing client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to update a client for. (required)
        # @param [String] client_account_id
        #   Unique numerical account ID of the client to update. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client(account_id, client_account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a client buyer with a given client account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client(account_id, client_account_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to create a client for. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client(account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the clients for the current sponsor buyer.
        # @param [String] account_id
        #   Unique numerical account ID of the sponsor buyer to list the clients for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.list method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_clients(account_id, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client user.
        # Only the user status can be changed on update.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user to be retrieved
        #   is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] client_user_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client_user(account_id, client_account_id, user_id, client_user_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.request_object = client_user_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer
        #   that the user to be retrieved is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_user(account_id, client_account_id, user_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known client users for a specified
        # sponsor buyer account ID.
        # @param [String] account_id
        #   Numerical account ID of the sponsor buyer of the client to list users for.
        #   (required)
        # @param [String] client_account_id
        #   The account ID of the client buyer to list users for. (required)
        #   You must specify either a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the client users for all the clients
        #   of a given sponsor buyer.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUsersResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.users.list method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_users(account_id, client_account_id, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and sends out an email invitation to access
        # an Ad Exchange client buyer account.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user
        #   should be associated with. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] client_user_invitation_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client_invitation(account_id, client_account_id, client_user_invitation_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.request_object = client_user_invitation_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user invitation.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user invitation
        #   to be retrieved is associated with. (required)
        # @param [String] invitation_id
        #   Numerical identifier of the user invitation to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_invitation(account_id, client_account_id, invitation_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['invitationId'] = invitation_id unless invitation_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the client users invitations for a client
        # with a given account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to list invitations for.
        #   (required)
        #   You must either specify a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the invitations for all the clients
        #   of a given sponsor buyer.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer clients than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUserInvitationsResponse.nextPageToken
        #   returned from the previous call to the
        #   clients.invitations.list
        #   method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_invitations(account_id, client_account_id, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
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
