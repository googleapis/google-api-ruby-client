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
    module OracledatabaseV1
      # Oracle Database@Google Cloud API
      #
      # The Oracle Database@Google Cloud API provides a set of APIs to manage Oracle
      #  database services, such as Exadata and Autonomous Databases.
      #
      # @example
      #    require 'google/apis/oracledatabase_v1'
      #
      #    Oracledatabase = Google::Apis::OracledatabaseV1 # Alias the module
      #    service = Oracledatabase::OracleDatabaseService.new
      #
      # @see https://cloud.google.com/oracle/database/docs
      class OracleDatabaseService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://oracledatabase.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-oracledatabase_v1',
                client_version: Google::Apis::OracledatabaseV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Location::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Location
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the long-term and automatic backups of an Autonomous Database.
        # @param [String] parent
        #   Required. The parent value for ListAutonomousDatabaseBackups in the following
        #   format: projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only the **
        #   autonomous_database_id** field is supported in the following format: `
        #   autonomous_database_id="`autonomous_database_id`"`. The accepted values must
        #   be a valid Autonomous Database ID, limited to the naming restrictions of the
        #   ID: ^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$). The ID must start with a letter, end
        #   with a letter or a number, and be a maximum of 63 characters.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   Autonomous DB Backups will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListAutonomousDatabaseBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListAutonomousDatabaseBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autonomous_database_backups(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autonomousDatabaseBackups', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListAutonomousDatabaseBackupsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListAutonomousDatabaseBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Autonomous Database Character Sets in a given project and location.
        # @param [String] parent
        #   Required. The parent value for the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only the **
        #   character_set_type** field is supported in the following format: `
        #   character_set_type="`characterSetType`"`. Accepted values include `DATABASE`
        #   and `NATIONAL`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   Autonomous DB Character Sets will be returned. The maximum value is 1000;
        #   values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListAutonomousDatabaseCharacterSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListAutonomousDatabaseCharacterSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autonomous_database_character_sets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autonomousDatabaseCharacterSets', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListAutonomousDatabaseCharacterSetsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListAutonomousDatabaseCharacterSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Autonomous Database in a given project and location.
        # @param [String] parent
        #   Required. The name of the parent in the following format: projects/`project`/
        #   locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::AutonomousDatabase] autonomous_database_object
        # @param [String] autonomous_database_id
        #   Required. The ID of the Autonomous Database to create. This value is
        #   restricted to (^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63
        #   characters in length. The value must start with a letter and end with a letter
        #   or a number.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_autonomous_database(parent, autonomous_database_object = nil, autonomous_database_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/autonomousDatabases', options)
          command.request_representation = Google::Apis::OracledatabaseV1::AutonomousDatabase::Representation
          command.request_object = autonomous_database_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['autonomousDatabaseId'] = autonomous_database_id unless autonomous_database_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Autonomous Database.
        # @param [String] name
        #   Required. The name of the resource in the following format: projects/`project`/
        #   locations/`location`/autonomousDatabases/`autonomous_database`.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_autonomous_database(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a wallet for an Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletRequest] generate_autonomous_database_wallet_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_autonomous_database_wallet(name, generate_autonomous_database_wallet_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:generateWallet', options)
          command.request_representation = Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletRequest::Representation
          command.request_object = generate_autonomous_database_wallet_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::GenerateAutonomousDatabaseWalletResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a single Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::AutonomousDatabase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::AutonomousDatabase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_autonomous_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::AutonomousDatabase::Representation
          command.response_class = Google::Apis::OracledatabaseV1::AutonomousDatabase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Autonomous Databases in a given project and location.
        # @param [String] parent
        #   Required. The parent value for the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   Autonomous Database will be returned. The maximum value is 1000; values above
        #   1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListAutonomousDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListAutonomousDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autonomous_databases(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autonomousDatabases', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListAutonomousDatabasesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListAutonomousDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restarts an Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::RestartAutonomousDatabaseRequest] restart_autonomous_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_autonomous_database(name, restart_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:restart', options)
          command.request_representation = Google::Apis::OracledatabaseV1::RestartAutonomousDatabaseRequest::Representation
          command.request_object = restart_autonomous_database_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a single Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::RestoreAutonomousDatabaseRequest] restore_autonomous_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_autonomous_database(name, restore_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:restore', options)
          command.request_representation = Google::Apis::OracledatabaseV1::RestoreAutonomousDatabaseRequest::Representation
          command.request_object = restore_autonomous_database_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts an Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::StartAutonomousDatabaseRequest] start_autonomous_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_autonomous_database(name, start_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:start', options)
          command.request_representation = Google::Apis::OracledatabaseV1::StartAutonomousDatabaseRequest::Representation
          command.request_object = start_autonomous_database_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops an Autonomous Database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::StopAutonomousDatabaseRequest] stop_autonomous_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_autonomous_database(name, stop_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::OracledatabaseV1::StopAutonomousDatabaseRequest::Representation
          command.request_object = stop_autonomous_database_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the available Autonomous Database versions for a project and
        # location.
        # @param [String] parent
        #   Required. The parent value for the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   Autonomous DB Versions will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListAutonomousDbVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListAutonomousDbVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autonomous_db_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autonomousDbVersions', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListAutonomousDbVersionsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListAutonomousDbVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Exadata Infrastructure in a given project and location.
        # @param [String] parent
        #   Required. The parent value for CloudExadataInfrastructure in the following
        #   format: projects/`project`/locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::CloudExadataInfrastructure] cloud_exadata_infrastructure_object
        # @param [String] cloud_exadata_infrastructure_id
        #   Required. The ID of the Exadata Infrastructure to create. This value is
        #   restricted to (^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63
        #   characters in length. The value must start with a letter and end with a letter
        #   or a number.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cloud_exadata_infrastructure(parent, cloud_exadata_infrastructure_object = nil, cloud_exadata_infrastructure_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/cloudExadataInfrastructures', options)
          command.request_representation = Google::Apis::OracledatabaseV1::CloudExadataInfrastructure::Representation
          command.request_object = cloud_exadata_infrastructure_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['cloudExadataInfrastructureId'] = cloud_exadata_infrastructure_id unless cloud_exadata_infrastructure_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Exadata Infrastructure.
        # @param [String] name
        #   Required. The name of the Cloud Exadata Infrastructure in the following format:
        #   projects/`project`/locations/`location`/cloudExadataInfrastructures/`
        #   cloud_exadata_infrastructure`.
        # @param [Boolean] force
        #   Optional. If set to true, all VM clusters for this Exadata Infrastructure will
        #   be deleted. An Exadata Infrastructure can only be deleted once all its VM
        #   clusters have been deleted.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cloud_exadata_infrastructure(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Exadata Infrastructure.
        # @param [String] name
        #   Required. The name of the Cloud Exadata Infrastructure in the following format:
        #   projects/`project`/locations/`location`/cloudExadataInfrastructures/`
        #   cloud_exadata_infrastructure`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::CloudExadataInfrastructure] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::CloudExadataInfrastructure]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cloud_exadata_infrastructure(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::CloudExadataInfrastructure::Representation
          command.response_class = Google::Apis::OracledatabaseV1::CloudExadataInfrastructure
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Exadata Infrastructures in a given project and location.
        # @param [String] parent
        #   Required. The parent value for CloudExadataInfrastructure in the following
        #   format: projects/`project`/locations/`location`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   Exadata infrastructures will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cloud_exadata_infrastructures(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/cloudExadataInfrastructures', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the database servers of an Exadata Infrastructure instance.
        # @param [String] parent
        #   Required. The parent value for database server in the following format:
        #   projects/`project`/locations/`location`/cloudExadataInfrastructures/`
        #   cloudExadataInfrastructure`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 db servers will be returned. The maximum value is 1000; values above 1000
        #   will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbServersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbServersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cloud_exadata_infrastructure_db_servers(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbServers', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbServersResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbServersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new VM Cluster in a given project and location.
        # @param [String] parent
        #   Required. The name of the parent in the following format: projects/`project`/
        #   locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::CloudVmCluster] cloud_vm_cluster_object
        # @param [String] cloud_vm_cluster_id
        #   Required. The ID of the VM Cluster to create. This value is restricted to (^[a-
        #   z]([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63 characters in
        #   length. The value must start with a letter and end with a letter or a number.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cloud_vm_cluster(parent, cloud_vm_cluster_object = nil, cloud_vm_cluster_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/cloudVmClusters', options)
          command.request_representation = Google::Apis::OracledatabaseV1::CloudVmCluster::Representation
          command.request_object = cloud_vm_cluster_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['cloudVmClusterId'] = cloud_vm_cluster_id unless cloud_vm_cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single VM Cluster.
        # @param [String] name
        #   Required. The name of the Cloud VM Cluster in the following format: projects/`
        #   project`/locations/`location`/cloudVmClusters/`cloud_vm_cluster`.
        # @param [Boolean] force
        #   Optional. If set to true, all child resources for the VM Cluster will be
        #   deleted. A VM Cluster can only be deleted once all its child resources have
        #   been deleted.
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cloud_vm_cluster(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single VM Cluster.
        # @param [String] name
        #   Required. The name of the Cloud VM Cluster in the following format: projects/`
        #   project`/locations/`location`/cloudVmClusters/`cloud_vm_cluster`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::CloudVmCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::CloudVmCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cloud_vm_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::CloudVmCluster::Representation
          command.response_class = Google::Apis::OracledatabaseV1::CloudVmCluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the VM Clusters in a given project and location.
        # @param [String] parent
        #   Required. The name of the parent in the following format: projects/`project`/
        #   locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The number of VM clusters to return. If unspecified, at most 50 VM
        #   clusters will be returned. The maximum value is 1,000.
        # @param [String] page_token
        #   Optional. A token identifying the page of results the server returns.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListCloudVmClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListCloudVmClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cloud_vm_clusters(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/cloudVmClusters', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListCloudVmClustersResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListCloudVmClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the database nodes of a VM Cluster.
        # @param [String] parent
        #   Required. The parent value for database node in the following format: projects/
        #   `project`/locations/`location`/cloudVmClusters/`cloudVmCluster`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50 db
        #   nodes will be returned. The maximum value is 1000; values above 1000 will be
        #   coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the node should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cloud_vm_cluster_db_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbNodes', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbNodesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the database system shapes available for the project and location.
        # @param [String] parent
        #   Required. The parent value for Database System Shapes in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   database system shapes will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_db_system_shapes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbSystemShapes', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the entitlements in a given project.
        # @param [String] parent
        #   Required. The parent value for the entitlement in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 entitlements will be returned. The maximum value is 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListEntitlementsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListEntitlementsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entitlements(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entitlements', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListEntitlementsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListEntitlementsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the valid Oracle Grid Infrastructure (GI) versions for the given
        # project and location.
        # @param [String] parent
        #   Required. The parent value for Grid Infrastructure Version in the following
        #   format: Format: projects/`project`/locations/`location`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 Oracle Grid Infrastructure (GI) versions will be returned. The maximum
        #   value is 1000; values above 1000 will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListGiVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListGiVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gi_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/giVersions', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListGiVersionsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListGiVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::OracledatabaseV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::OracledatabaseV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Empty::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Empty
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Empty::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Empty
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
