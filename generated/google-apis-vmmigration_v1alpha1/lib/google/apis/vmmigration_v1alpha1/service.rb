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
    module VmmigrationV1alpha1
      # VM Migration API
      #
      # Use the Migrate to Virtual Machines API to programmatically migrate workloads.
      #
      # @example
      #    require 'google/apis/vmmigration_v1alpha1'
      #
      #    Vmmigration = Google::Apis::VmmigrationV1alpha1 # Alias the module
      #    service = Vmmigration::VMMigrationServiceService.new
      #
      # @see https://cloud.google.com/migrate/virtual-machines
      class VMMigrationServiceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://vmmigration.googleapis.com/', '',
                client_name: 'google-apis-vmmigration_v1alpha1',
                client_version: Google::Apis::VmmigrationV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Location::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}/locations', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a MigratingVm to a Group.
        # @param [String] group
        #   Required. The full path name of the Group to add to.
        # @param [Google::Apis::VmmigrationV1alpha1::AddGroupMigrationRequest] add_group_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_group_migration(group, add_group_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+group}:addGroupMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::AddGroupMigrationRequest::Representation
          command.request_object = add_group_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['group'] = group unless group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Group in a given project and location.
        # @param [String] parent
        #   Required. The Group's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::Group] group_object
        # @param [String] group_id
        #   Required. The group identifier.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_group(parent, group_object = nil, group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/groups', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['groupId'] = group_id unless group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Group.
        # @param [String] name
        #   Required. The Group name.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and t he request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Group.
        # @param [String] name
        #   Required. The group name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Group::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Groups in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of groups.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of groups to return. The service may return fewer
        #   than this value. If unspecified, at most 500 groups will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListGroups` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListGroups` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/groups', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListGroupsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Group.
        # @param [String] name
        #   Output only. The Group name.
        # @param [Google::Apis::VmmigrationV1alpha1::Group] group_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the Group
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_group(name, group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a MigratingVm from a Group.
        # @param [String] group
        #   Required. The name of the Group.
        # @param [Google::Apis::VmmigrationV1alpha1::RemoveGroupMigrationRequest] remove_group_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_group_migration(group, remove_group_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+group}:removeGroupMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::RemoveGroupMigrationRequest::Representation
          command.request_object = remove_group_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['group'] = group unless group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::VmmigrationV1alpha1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:cancel', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Empty::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Empty::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}/operations', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Source in a given project and location.
        # @param [String] parent
        #   Required. The Source's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::Source] source_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] source_id
        #   Required. The source identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source(parent, source_object = nil, request_id: nil, source_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/sources', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['sourceId'] = source_id unless source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Source.
        # @param [String] name
        #   Required. The Source name.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and t he request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_source(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List remote source's inventory of VMs. The remote source is the onprem vCenter
        # (remote in the sense it's not in Compute Engine). The inventory describes the
        # list of existing VMs in that source. Note that this operation lists the VMs on
        # the remote source, as opposed to listing the MigratingVms resources in the
        # vmmigration service.
        # @param [String] source
        #   Required. The name of the Source.
        # @param [Boolean] force_refresh
        #   If this flag is set to true, the source will be queried instead of using
        #   cached results. Using this flag will make the call slower.
        # @param [Fixnum] page_size
        #   The maximum number of VMs to return. The service may return fewer than this
        #   value. For AWS source: If unspecified, at most 500 VMs will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000. For VMWare
        #   source: If unspecified, all VMs will be returned. There is no limit for
        #   maximum value.
        # @param [String] page_token
        #   A page token, received from a previous `FetchInventory` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `FetchInventory` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::FetchInventoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::FetchInventoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_source_inventory(source, force_refresh: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+source}:fetchInventory', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::FetchInventoryResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::FetchInventoryResponse
          command.params['source'] = source unless source.nil?
          command.query['forceRefresh'] = force_refresh unless force_refresh.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Source.
        # @param [String] name
        #   Required. The Source name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Source] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Source]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Source::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Source
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Sources in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of sources.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of sources to return. The service may return
        #   fewer than this value. If unspecified, at most 500 sources will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListSources` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSources` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sources(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/sources', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListSourcesResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Source.
        # @param [String] name
        #   Output only. The Source name.
        # @param [Google::Apis::VmmigrationV1alpha1::Source] source_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the Source
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_source(name, source_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DatacenterConnector in a given Source.
        # @param [String] parent
        #   Required. The DatacenterConnector's parent. Required. The Source in where the
        #   new DatacenterConnector will be created. For example: `projects/my-project/
        #   locations/us-central1/sources/my-source`
        # @param [Google::Apis::VmmigrationV1alpha1::DatacenterConnector] datacenter_connector_object
        # @param [String] datacenter_connector_id
        #   Required. The datacenterConnector identifier.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source_datacenter_connector(parent, datacenter_connector_object = nil, datacenter_connector_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/datacenterConnectors', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::DatacenterConnector::Representation
          command.request_object = datacenter_connector_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['datacenterConnectorId'] = datacenter_connector_id unless datacenter_connector_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single DatacenterConnector.
        # @param [String] name
        #   Required. The DatacenterConnector name.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   after the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_source_datacenter_connector(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single DatacenterConnector.
        # @param [String] name
        #   Required. The name of the DatacenterConnector.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::DatacenterConnector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::DatacenterConnector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_datacenter_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::DatacenterConnector::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::DatacenterConnector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DatacenterConnectors in a given Source.
        # @param [String] parent
        #   Required. The parent, which owns this collection of connectors.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of connectors to return. The service may return
        #   fewer than this value. If unspecified, at most 500 sources will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListDatacenterConnectors`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDatacenterConnectors` must match the call that
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
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListDatacenterConnectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListDatacenterConnectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_datacenter_connectors(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/datacenterConnectors', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListDatacenterConnectorsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListDatacenterConnectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrades the appliance relate to this DatacenterConnector to the in-place
        # updateable version.
        # @param [String] datacenter_connector
        #   Required. The DatacenterConnector name.
        # @param [Google::Apis::VmmigrationV1alpha1::UpgradeApplianceRequest] upgrade_appliance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upgrade_datacenter_connector_appliance(datacenter_connector, upgrade_appliance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+datacenterConnector}:upgradeAppliance', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::UpgradeApplianceRequest::Representation
          command.request_object = upgrade_appliance_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['datacenterConnector'] = datacenter_connector unless datacenter_connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new MigratingVm in a given Source.
        # @param [String] parent
        #   Required. The MigratingVm's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::MigratingVm] migrating_vm_object
        # @param [String] migrating_vm_id
        #   Required. The migratingVm identifier.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source_migrating_vm(parent, migrating_vm_object = nil, migrating_vm_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/migratingVms', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::MigratingVm::Representation
          command.request_object = migrating_vm_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['migratingVmId'] = migrating_vm_id unless migrating_vm_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single MigratingVm.
        # @param [String] name
        #   Required. The name of the MigratingVm.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_source_migrating_vm(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks a migration as completed, deleting migration resources that are no
        # longer being used. Only applicable after cutover is done.
        # @param [String] migrating_vm
        #   Required. The name of the MigratingVm.
        # @param [Google::Apis::VmmigrationV1alpha1::FinalizeMigrationRequest] finalize_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_migrating_vm_migration(migrating_vm, finalize_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+migratingVm}:finalizeMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::FinalizeMigrationRequest::Representation
          command.request_object = finalize_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['migratingVm'] = migrating_vm unless migrating_vm.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single MigratingVm.
        # @param [String] name
        #   Required. The name of the MigratingVm.
        # @param [String] view
        #   Optional. The level of details of the migrating VM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::MigratingVm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::MigratingVm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_migrating_vm(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::MigratingVm::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::MigratingVm
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists MigratingVms in a given Source.
        # @param [String] parent
        #   Required. The parent, which owns this collection of MigratingVms.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of migrating VMs to return. The service may
        #   return fewer than this value. If unspecified, at most 500 migrating VMs will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListMigratingVms` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMigratingVms` must match the call that provided
        #   the page token.
        # @param [String] view
        #   Optional. The level of details of each migrating VM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListMigratingVmsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListMigratingVmsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_migrating_vms(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/migratingVms', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListMigratingVmsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListMigratingVmsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single MigratingVm.
        # @param [String] name
        #   Output only. The identifier of the MigratingVm.
        # @param [Google::Apis::VmmigrationV1alpha1::MigratingVm] migrating_vm_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the MigratingVm
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_source_migrating_vm(name, migrating_vm_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::MigratingVm::Representation
          command.request_object = migrating_vm_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses a migration for a VM. If cycle tasks are running they will be cancelled,
        # preserving source task data. Further replication cycles will not be triggered
        # while the VM is paused.
        # @param [String] migrating_vm
        #   Required. The name of the MigratingVm.
        # @param [Google::Apis::VmmigrationV1alpha1::PauseMigrationRequest] pause_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_migrating_vm_migration(migrating_vm, pause_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+migratingVm}:pauseMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::PauseMigrationRequest::Representation
          command.request_object = pause_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['migratingVm'] = migrating_vm unless migrating_vm.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes a migration for a VM. When called on a paused migration, will start
        # the process of uploading data and creating snapshots; when called on a
        # completed cut-over migration, will update the migration to active state and
        # start the process of uploading data and creating snapshots.
        # @param [String] migrating_vm
        #   Required. The name of the MigratingVm.
        # @param [Google::Apis::VmmigrationV1alpha1::ResumeMigrationRequest] resume_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_migrating_vm_migration(migrating_vm, resume_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+migratingVm}:resumeMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::ResumeMigrationRequest::Representation
          command.request_object = resume_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['migratingVm'] = migrating_vm unless migrating_vm.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts migration for a VM. Starts the process of uploading data and creating
        # snapshots, in replication cycles scheduled by the policy.
        # @param [String] migrating_vm
        #   Required. The name of the MigratingVm.
        # @param [Google::Apis::VmmigrationV1alpha1::StartMigrationRequest] start_migration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_migrating_vm_migration(migrating_vm, start_migration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+migratingVm}:startMigration', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::StartMigrationRequest::Representation
          command.request_object = start_migration_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['migratingVm'] = migrating_vm unless migrating_vm.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates the cancellation of a running clone job.
        # @param [String] name
        #   Required. The clone job id
        # @param [Google::Apis::VmmigrationV1alpha1::CancelCloneJobRequest] cancel_clone_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_clone_job(name, cancel_clone_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:cancel', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::CancelCloneJobRequest::Representation
          command.request_object = cancel_clone_job_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a Clone of a specific migrating VM.
        # @param [String] parent
        #   Required. The Clone's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::CloneJob] clone_job_object
        # @param [String] clone_job_id
        #   Required. The clone job identifier.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source_migrating_vm_clone_job(parent, clone_job_object = nil, clone_job_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/cloneJobs', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::CloneJob::Representation
          command.request_object = clone_job_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['cloneJobId'] = clone_job_id unless clone_job_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single CloneJob.
        # @param [String] name
        #   Required. The name of the CloneJob.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::CloneJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::CloneJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_migrating_vm_clone_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::CloneJob::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::CloneJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CloneJobs of a given migrating VM.
        # @param [String] parent
        #   Required. The parent, which owns this collection of source VMs.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of clone jobs to return. The service may return
        #   fewer than this value. If unspecified, at most 500 clone jobs will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListCloneJobs` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCloneJobs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListCloneJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListCloneJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_migrating_vm_clone_jobs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/cloneJobs', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListCloneJobsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListCloneJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates the cancellation of a running cutover job.
        # @param [String] name
        #   Required. The cutover job id
        # @param [Google::Apis::VmmigrationV1alpha1::CancelCutoverJobRequest] cancel_cutover_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_cutover_job(name, cancel_cutover_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:cancel', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::CancelCutoverJobRequest::Representation
          command.request_object = cancel_cutover_job_request_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a Cutover of a specific migrating VM. The returned LRO is completed
        # when the cutover job resource is created and the job is initiated.
        # @param [String] parent
        #   Required. The Cutover's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::CutoverJob] cutover_job_object
        # @param [String] cutover_job_id
        #   Required. The cutover job identifier.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source_migrating_vm_cutover_job(parent, cutover_job_object = nil, cutover_job_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/cutoverJobs', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::CutoverJob::Representation
          command.request_object = cutover_job_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['cutoverJobId'] = cutover_job_id unless cutover_job_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single CutoverJob.
        # @param [String] name
        #   Required. The name of the CutoverJob.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::CutoverJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::CutoverJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_migrating_vm_cutover_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::CutoverJob::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::CutoverJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CutoverJobs of a given migrating VM.
        # @param [String] parent
        #   Required. The parent, which owns this collection of migrating VMs.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of cutover jobs to return. The service may return
        #   fewer than this value. If unspecified, at most 500 cutover jobs will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListCutoverJobs` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListCutoverJobs` must match the call that provided the
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
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListCutoverJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListCutoverJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_migrating_vm_cutover_jobs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/cutoverJobs', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListCutoverJobsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListCutoverJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ReplicationCycle.
        # @param [String] name
        #   Required. The name of the ReplicationCycle.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ReplicationCycle] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ReplicationCycle]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_migrating_vm_replication_cycle(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ReplicationCycle::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ReplicationCycle
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ReplicationCycles in a given MigratingVM.
        # @param [String] parent
        #   Required. The parent, which owns this collection of ReplicationCycles.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of replication cycles to return. The service may
        #   return fewer than this value. If unspecified, at most 100 migrating VMs will
        #   be returned. The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListReplicationCycles` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListReplicationCycles` must match the call that
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
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListReplicationCyclesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListReplicationCyclesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_migrating_vm_replication_cycles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/replicationCycles', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListReplicationCyclesResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListReplicationCyclesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new UtilizationReport.
        # @param [String] parent
        #   Required. The Utilization Report's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::UtilizationReport] utilization_report_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] utilization_report_id
        #   Required. The ID to use for the report, which will become the final component
        #   of the reports's resource name. This value maximum length is 63 characters,
        #   and valid characters are /a-z-/. It must start with an english letter and must
        #   not end with a hyphen.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source_utilization_report(parent, utilization_report_object = nil, request_id: nil, utilization_report_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/utilizationReports', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::UtilizationReport::Representation
          command.request_object = utilization_report_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['utilizationReportId'] = utilization_report_id unless utilization_report_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Utilization Report.
        # @param [String] name
        #   Required. The Utilization Report name.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and t he request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_source_utilization_report(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single Utilization Report.
        # @param [String] name
        #   Required. The Utilization Report name.
        # @param [String] view
        #   Optional. The level of details of the report. Defaults to FULL
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::UtilizationReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::UtilizationReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_utilization_report(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::UtilizationReport::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::UtilizationReport
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Utilization Reports of the given Source.
        # @param [String] parent
        #   Required. The Utilization Reports parent.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reports to return. The service may return
        #   fewer than this value. If unspecified, at most 500 reports will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListUtilizationReports` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUtilizationReports` must match the call that
        #   provided the page token.
        # @param [String] view
        #   Optional. The level of details of each report. Defaults to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListUtilizationReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListUtilizationReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_utilization_reports(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/utilizationReports', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListUtilizationReportsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListUtilizationReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new TargetProject in a given project. NOTE: TargetProject is a
        # global resource; hence the only supported value for location is `global`.
        # @param [String] parent
        #   Required. The TargetProject's parent.
        # @param [Google::Apis::VmmigrationV1alpha1::TargetProject] target_project_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] target_project_id
        #   Required. The target_project identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_target_project(parent, target_project_object = nil, request_id: nil, target_project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/targetProjects', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::TargetProject::Representation
          command.request_object = target_project_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single TargetProject. NOTE: TargetProject is a global resource;
        # hence the only supported value for location is `global`.
        # @param [String] name
        #   Required. The TargetProject name.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and t he request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_target_project(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single TargetProject. NOTE: TargetProject is a global
        # resource; hence the only supported value for location is `global`.
        # @param [String] name
        #   Required. The TargetProject name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::TargetProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::TargetProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_target_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::TargetProject::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::TargetProject
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TargetProjects in a given project. NOTE: TargetProject is a global
        # resource; hence the only supported value for location is `global`.
        # @param [String] parent
        #   Required. The parent, which owns this collection of targets.
        # @param [String] filter
        #   Optional. The filter request.
        # @param [String] order_by
        #   Optional. the order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of targets to return. The service may return
        #   fewer than this value. If unspecified, at most 500 targets will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Required. A page token, received from a previous `ListTargets` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListTargets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::ListTargetProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::ListTargetProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_target_projects(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/targetProjects', options)
          command.response_representation = Google::Apis::VmmigrationV1alpha1::ListTargetProjectsResponse::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::ListTargetProjectsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single TargetProject. NOTE: TargetProject is a
        # global resource; hence the only supported value for location is `global`.
        # @param [String] name
        #   Output only. The name of the target project.
        # @param [Google::Apis::VmmigrationV1alpha1::TargetProject] target_project_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   since the first request. For example, consider a situation where you make an
        #   initial request and t he request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the
        #   TargetProject resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmmigrationV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmmigrationV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_target_project(name, target_project_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::VmmigrationV1alpha1::TargetProject::Representation
          command.request_object = target_project_object
          command.response_representation = Google::Apis::VmmigrationV1alpha1::Operation::Representation
          command.response_class = Google::Apis::VmmigrationV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
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
