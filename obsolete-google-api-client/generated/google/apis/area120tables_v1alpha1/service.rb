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
    module Area120tablesV1alpha1
      # Area120 Tables API
      #
      # 
      #
      # @example
      #    require 'google/apis/area120tables_v1alpha1'
      #
      #    Area120tables = Google::Apis::Area120tablesV1alpha1 # Alias the module
      #    service = Area120tables::Area120TablesService.new
      #
      # @see https://tables.area120.google.com
      class Area120TablesService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://area120tables.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets a table. Returns NOT_FOUND if the table does not exist.
        # @param [String] name
        #   Required. The name of the table to retrieve. Format: tables/`table`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Table::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Table
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists tables for the user.
        # @param [Fixnum] page_size
        #   The maximum number of tables to return. The service may return fewer than this
        #   value. If unspecified, at most 20 tables are returned. The maximum value is
        #   100; values above 100 are coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous `ListTables` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTables` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::ListTablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::ListTablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tables(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/tables', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::ListTablesResponse::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::ListTablesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple rows.
        # @param [String] parent
        #   Required. The parent table where the rows will be created. Format: tables/`
        #   table`
        # @param [Google::Apis::Area120tablesV1alpha1::BatchCreateRowsRequest] batch_create_rows_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::BatchCreateRowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::BatchCreateRowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_rows(parent, batch_create_rows_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/rows:batchCreate', options)
          command.request_representation = Google::Apis::Area120tablesV1alpha1::BatchCreateRowsRequest::Representation
          command.request_object = batch_create_rows_request_object
          command.response_representation = Google::Apis::Area120tablesV1alpha1::BatchCreateRowsResponse::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::BatchCreateRowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates multiple rows.
        # @param [String] parent
        #   Required. The parent table shared by all rows being updated. Format: tables/`
        #   table`
        # @param [Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsRequest] batch_update_rows_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_rows(parent, batch_update_rows_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/rows:batchUpdate', options)
          command.request_representation = Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsRequest::Representation
          command.request_object = batch_update_rows_request_object
          command.response_representation = Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsResponse::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::BatchUpdateRowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a row.
        # @param [String] parent
        #   Required. The parent table where this row will be created. Format: tables/`
        #   table`
        # @param [Google::Apis::Area120tablesV1alpha1::Row] row_object
        # @param [String] view
        #   Optional. Column key to use for values in the row. Defaults to user entered
        #   name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Row] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Row]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_table_row(parent, row_object = nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/rows', options)
          command.request_representation = Google::Apis::Area120tablesV1alpha1::Row::Representation
          command.request_object = row_object
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Row::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Row
          command.params['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a row.
        # @param [String] name
        #   Required. The name of the row to delete. Format: tables/`table`/rows/`row`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_table_row(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Empty::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a row. Returns NOT_FOUND if the row does not exist in the table.
        # @param [String] name
        #   Required. The name of the row to retrieve. Format: tables/`table`/rows/`row`
        # @param [String] view
        #   Optional. Column key to use for values in the row. Defaults to user entered
        #   name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Row] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Row]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table_row(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Row::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Row
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists rows in a table. Returns NOT_FOUND if the table does not exist.
        # @param [String] parent
        #   Required. The parent table. Format: tables/`table`
        # @param [Fixnum] page_size
        #   The maximum number of rows to return. The service may return fewer than this
        #   value. If unspecified, at most 50 rows are returned. The maximum value is 1,
        #   000; values above 1,000 are coerced to 1,000.
        # @param [String] page_token
        #   A page token, received from a previous `ListRows` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListRows` must match the call that provided the page token.
        # @param [String] view
        #   Optional. Column key to use for values in the row. Defaults to user entered
        #   name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::ListRowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::ListRowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_rows(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/rows', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::ListRowsResponse::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::ListRowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a row.
        # @param [String] name
        #   The resource name of the row. Row names have the form `tables/`table`/rows/`
        #   row``. The name is ignored when creating a row.
        # @param [Google::Apis::Area120tablesV1alpha1::Row] row_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] view
        #   Optional. Column key to use for values in the row. Defaults to user entered
        #   name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Row] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Row]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_table_row(name, row_object = nil, update_mask: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::Area120tablesV1alpha1::Row::Representation
          command.request_object = row_object
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Row::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Row
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a workspace. Returns NOT_FOUND if the workspace does not exist.
        # @param [String] name
        #   Required. The name of the workspace to retrieve. Format: workspaces/`workspace`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::Workspace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::Workspace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_workspace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::Workspace::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::Workspace
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists workspaces for the user.
        # @param [Fixnum] page_size
        #   The maximum number of workspaces to return. The service may return fewer than
        #   this value. If unspecified, at most 10 workspaces are returned. The maximum
        #   value is 25; values above 25 are coerced to 25.
        # @param [String] page_token
        #   A page token, received from a previous `ListWorkspaces` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListWorkspaces` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Area120tablesV1alpha1::ListWorkspacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Area120tablesV1alpha1::ListWorkspacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_workspaces(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/workspaces', options)
          command.response_representation = Google::Apis::Area120tablesV1alpha1::ListWorkspacesResponse::Representation
          command.response_class = Google::Apis::Area120tablesV1alpha1::ListWorkspacesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
