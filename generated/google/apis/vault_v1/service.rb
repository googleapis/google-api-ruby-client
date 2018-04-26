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
    module VaultV1
      # G Suite Vault API
      #
      # Archiving and eDiscovery for G Suite.
      #
      # @example
      #    require 'google/apis/vault_v1'
      #
      #    Vault = Google::Apis::VaultV1 # Alias the module
      #    service = Vault::VaultService.new
      #
      # @see https://developers.google.com/vault
      class VaultService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://vault.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Adds an account as a matter collaborator.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::AddMatterPermissionsRequest] add_matter_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::MatterPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::MatterPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_matter_permissions(matter_id, add_matter_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}:addPermissions', options)
          command.request_representation = Google::Apis::VaultV1::AddMatterPermissionsRequest::Representation
          command.request_object = add_matter_permissions_request_object
          command.response_representation = Google::Apis::VaultV1::MatterPermission::Representation
          command.response_class = Google::Apis::VaultV1::MatterPermission
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Closes the specified matter. Returns matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::CloseMatterRequest] close_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::CloseMatterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::CloseMatterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_matter(matter_id, close_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}:close', options)
          command.request_representation = Google::Apis::VaultV1::CloseMatterRequest::Representation
          command.request_object = close_matter_request_object
          command.response_representation = Google::Apis::VaultV1::CloseMatterResponse::Representation
          command.response_class = Google::Apis::VaultV1::CloseMatterResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new matter with the given name and description. The initial state
        # is open, and the owner is the method caller. Returns the created matter
        # with default view.
        # @param [Google::Apis::VaultV1::Matter] matter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter(matter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters', options)
          command.request_representation = Google::Apis::VaultV1::Matter::Representation
          command.request_object = matter_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified matter. Returns matter with updated state.
        # @param [String] matter_id
        #   The matter ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter(matter_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/matters/{matterId}', options)
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] view
        #   Specifies which parts of the Matter to return in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter(matter_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/matters/{matterId}', options)
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matters the user has access to.
        # @param [Fixnum] page_size
        #   The number of matters to return in the response.
        #   Default and maximum are 100.
        # @param [String] page_token
        #   The pagination token as returned in the response.
        # @param [String] state
        #   If set, list only matters with that specific state. The default is listing
        #   matters of all states.
        # @param [String] view
        #   Specifies which parts of the matter to return in response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListMattersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListMattersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matters(page_size: nil, page_token: nil, state: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/matters', options)
          command.response_representation = Google::Apis::VaultV1::ListMattersResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListMattersResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['state'] = state unless state.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an account as a matter collaborator.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::RemoveMatterPermissionsRequest] remove_matter_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_matter_permissions(matter_id, remove_matter_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}:removePermissions', options)
          command.request_representation = Google::Apis::VaultV1::RemoveMatterPermissionsRequest::Representation
          command.request_object = remove_matter_permissions_request_object
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reopens the specified matter. Returns matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::ReopenMatterRequest] reopen_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ReopenMatterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ReopenMatterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reopen_matter(matter_id, reopen_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}:reopen', options)
          command.request_representation = Google::Apis::VaultV1::ReopenMatterRequest::Representation
          command.request_object = reopen_matter_request_object
          command.response_representation = Google::Apis::VaultV1::ReopenMatterResponse::Representation
          command.response_class = Google::Apis::VaultV1::ReopenMatterResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes the specified matter. Returns matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::UndeleteMatterRequest] undelete_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_matter(matter_id, undelete_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}:undelete', options)
          command.request_representation = Google::Apis::VaultV1::UndeleteMatterRequest::Representation
          command.request_object = undelete_matter_request_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified matter.
        # This updates only the name and description of the matter, identified by
        # matter id. Changes to any other fields are ignored.
        # Returns the default view of the matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::Matter] matter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_matter(matter_id, matter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/matters/{matterId}', options)
          command.request_representation = Google::Apis::VaultV1::Matter::Representation
          command.request_object = matter_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a hold in the given matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::Hold] hold_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_hold(matter_id, hold_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}/holds', options)
          command.request_representation = Google::Apis::VaultV1::Hold::Representation
          command.request_object = hold_object
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a hold by ID. This will release any HeldAccounts on this Hold.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_hold(matter_id, hold_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a hold by ID.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] view
        #   Specifies which parts of the Hold to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter_hold(matter_id, hold_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists holds within a matter. An empty page token in ListHoldsResponse
        # denotes no more holds to list.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Fixnum] page_size
        #   The number of holds to return in the response, between 0 and 100 inclusive.
        #   Leaving this empty, or as 0, is the same as page_size = 100.
        # @param [String] page_token
        #   The pagination token as returned in the response.
        #   An empty token means start from the beginning.
        # @param [String] view
        #   Specifies which parts of the Hold to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListHoldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListHoldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_holds(matter_id, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/matters/{matterId}/holds', options)
          command.response_representation = Google::Apis::VaultV1::ListHoldsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListHoldsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the OU and/or query parameters of a hold. You cannot add accounts
        # to a hold that covers an OU, nor can you add OUs to a hold that covers
        # individual accounts. Accounts listed in the hold will be ignored.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The ID of the hold.
        # @param [Google::Apis::VaultV1::Hold] hold_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_matter_hold(matter_id, hold_id, hold_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.request_representation = Google::Apis::VaultV1::Hold::Representation
          command.request_object = hold_object
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a HeldAccount to a hold. Accounts can only be added to a hold that
        # has no held_org_unit set. Attempting to add an account to an OU-based
        # hold will result in an error.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [Google::Apis::VaultV1::HeldAccount] held_account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::HeldAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::HeldAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_hold_account(matter_id, hold_id, held_account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/matters/{matterId}/holds/{holdId}/accounts', options)
          command.request_representation = Google::Apis::VaultV1::HeldAccount::Representation
          command.request_object = held_account_object
          command.response_representation = Google::Apis::VaultV1::HeldAccount::Representation
          command.response_class = Google::Apis::VaultV1::HeldAccount
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a HeldAccount from a hold. If this request leaves the hold with
        # no held accounts, the hold will not apply to any accounts.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] account_id
        #   The ID of the account to remove from the hold.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_hold_account(matter_id, hold_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists HeldAccounts for a hold. This will only list individually specified
        # held accounts. If the hold is on an OU, then use
        # <a href="https://developers.google.com/admin-sdk/">Admin SDK</a>
        # to enumerate its members.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListHeldAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListHeldAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_hold_accounts(matter_id, hold_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/matters/{matterId}/holds/{holdId}/accounts', options)
          command.response_representation = Google::Apis::VaultV1::ListHeldAccountsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListHeldAccountsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
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
