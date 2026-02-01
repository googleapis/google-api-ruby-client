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
        
        # Lists information about the supported locations for this service. This method
        # can be called in two ways: * **List all public locations:** Use the path `GET /
        # v1/locations`. * **List project-visible locations:** Use the path `GET /v1/
        # projects/`project_id`/locations`. This may include public locations as well as
        # private or other locations specifically visible to the project.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. Do not use this field. It is unsupported and is ignored unless
        #   explicitly documented otherwise. This is primarily for internal usage.
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
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
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
        
        # Initiates a failover to target autonomous database from the associated primary
        # database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::FailoverAutonomousDatabaseRequest] failover_autonomous_database_request_object
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
        def failover_autonomous_database(name, failover_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:failover', options)
          command.request_representation = Google::Apis::OracledatabaseV1::FailoverAutonomousDatabaseRequest::Representation
          command.request_object = failover_autonomous_database_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
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
        
        # Updates the parameters of a single Autonomous Database.
        # @param [String] name
        #   Identifier. The name of the Autonomous Database resource in the following
        #   format: projects/`project`/locations/`region`/autonomousDatabases/`
        #   autonomous_database`
        # @param [Google::Apis::OracledatabaseV1::AutonomousDatabase] autonomous_database_object
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   Exadata resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_autonomous_database(name, autonomous_database_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::OracledatabaseV1::AutonomousDatabase::Representation
          command.request_object = autonomous_database_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        
        # Initiates a switchover of specified autonomous database to the associated peer
        # database.
        # @param [String] name
        #   Required. The name of the Autonomous Database in the following format:
        #   projects/`project`/locations/`location`/autonomousDatabases/`
        #   autonomous_database`.
        # @param [Google::Apis::OracledatabaseV1::SwitchoverAutonomousDatabaseRequest] switchover_autonomous_database_request_object
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
        def switchover_autonomous_database(name, switchover_autonomous_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:switchover', options)
          command.request_representation = Google::Apis::OracledatabaseV1::SwitchoverAutonomousDatabaseRequest::Representation
          command.request_object = switchover_autonomous_database_request_object
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
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
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
        def list_project_location_cloud_exadata_infrastructures(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/cloudExadataInfrastructures', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListCloudExadataInfrastructuresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
        #   `project`/locations/`location`/cloudVmClusters/`cloudVmCluster`. .
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
        
        # List DatabaseCharacterSets for the given project and location.
        # @param [String] parent
        #   Required. The parent value for DatabaseCharacterSets in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only the **
        #   character_set_type** field is supported in the following format: `
        #   character_set_type="`characterSetType`"`. Accepted values include `DATABASE`
        #   and `NATIONAL`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of DatabaseCharacterSets to return. The service
        #   may return fewer than this value. If unspecified, at most 50
        #   DatabaseCharacterSets will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDatabaseCharacterSets`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDatabaseCharacterSets` must match the call that
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDatabaseCharacterSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDatabaseCharacterSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_database_character_sets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databaseCharacterSets', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDatabaseCharacterSetsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDatabaseCharacterSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Database.
        # @param [String] name
        #   Required. The name of the Database resource in the following format: projects/`
        #   project`/locations/`region`/databases/`database`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Database::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Database
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Databases for the given project, location and DbSystem.
        # @param [String] parent
        #   Required. The parent resource name in the following format: projects/`project`/
        #   locations/`region`
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. list for
        #   container databases is supported only with a valid dbSystem (full resource
        #   name) filter in this format: `dbSystem="projects/`project`/locations/`location`
        #   /dbSystems/`dbSystemId`"`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 Databases will be returned. The maximum value is 1000; values above 1000
        #   will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying the requested page of results to return. All
        #   fields except the filter should remain the same as in the request that
        #   provided this page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_databases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databases', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDatabasesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DbSystemInitialStorageSizes for the given project and location.
        # @param [String] parent
        #   Required. The parent value for the DbSystemInitialStorageSize resource with
        #   the format: projects/`project`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 DbSystemInitialStorageSizes will be returned. The maximum value is 1000;
        #   values above 1000 will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying the requested page of results to return. All
        #   fields except the filter should remain the same as in the request that
        #   provided this page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbSystemInitialStorageSizesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbSystemInitialStorageSizesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_db_system_initial_storage_sizes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbSystemInitialStorageSizes', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbSystemInitialStorageSizesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbSystemInitialStorageSizesResponse
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
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only the
        #   gcp_oracle_zone_id field is supported in this format: `gcp_oracle_zone_id="`
        #   gcp_oracle_zone_id`"`.
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
        def list_project_location_db_system_shapes(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbSystemShapes', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbSystemShapesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DbSystem in a given project and location.
        # @param [String] parent
        #   Required. The value for parent of the DbSystem in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::DbSystem] db_system_object
        # @param [String] db_system_id
        #   Required. The ID of the DbSystem to create. This value is restricted to (^[a-z]
        #   ([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63 characters in length.
        #   The value must start with a letter and end with a letter or a number.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
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
        def create_project_location_db_system(parent, db_system_object = nil, db_system_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dbSystems', options)
          command.request_representation = Google::Apis::OracledatabaseV1::DbSystem::Representation
          command.request_object = db_system_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['dbSystemId'] = db_system_id unless db_system_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single DbSystem.
        # @param [String] name
        #   Required. The name of the DbSystem in the following format: projects/`project`/
        #   locations/`location`/dbSystems/`db_system`.
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
        def delete_project_location_db_system(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single DbSystem.
        # @param [String] name
        #   Required. The name of the DbSystem in the following format: projects/`project`/
        #   locations/`location`/dbSystems/`db_system`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::DbSystem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::DbSystem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_db_system(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::DbSystem::Representation
          command.response_class = Google::Apis::OracledatabaseV1::DbSystem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DbSystems for the given project and location.
        # @param [String] parent
        #   Required. The parent value for DbSystems in the following format: projects/`
        #   project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   DbSystems will be returned. The maximum value is 1000; values above 1000 will
        #   be coerced to 1000.
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbSystemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbSystemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_db_systems(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbSystems', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbSystemsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbSystemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List DbVersions for the given project and location.
        # @param [String] parent
        #   Required. The parent value for the DbVersion resource with the format:
        #   projects/`project`/locations/`location`
        # @param [String] filter
        #   Optional. Filter expression that matches a subset of the DbVersions to show.
        #   The supported filter for dbSystem creation is `db_system_shape = `
        #   db_system_shape` AND storage_management = `storage_management``. If no filter
        #   is provided, all DbVersions will be returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 DbVersions will be returned. The maximum value is 1000; values above 1000
        #   will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying the requested page of results to return. All
        #   fields except the filter should remain the same as in the request that
        #   provided this page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListDbVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListDbVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_db_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dbVersions', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListDbVersionsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListDbVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
        
        # Creates a new Exadb (Exascale) VM Cluster resource.
        # @param [String] parent
        #   Required. The value for parent of the ExadbVmCluster in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::ExadbVmCluster] exadb_vm_cluster_object
        # @param [String] exadb_vm_cluster_id
        #   Required. The ID of the ExadbVmCluster to create. This value is restricted to (
        #   ^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63 characters in
        #   length. The value must start with a letter and end with a letter or a number.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
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
        def create_project_location_exadb_vm_cluster(parent, exadb_vm_cluster_object = nil, exadb_vm_cluster_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/exadbVmClusters', options)
          command.request_representation = Google::Apis::OracledatabaseV1::ExadbVmCluster::Representation
          command.request_object = exadb_vm_cluster_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['exadbVmClusterId'] = exadb_vm_cluster_id unless exadb_vm_cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Exadb (Exascale) VM Cluster.
        # @param [String] name
        #   Required. The name of the ExadbVmCluster in the following format: projects/`
        #   project`/locations/`location`/exadbVmClusters/`exadb_vm_cluster`.
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
        def delete_project_location_exadb_vm_cluster(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Exadb (Exascale) VM Cluster.
        # @param [String] name
        #   Required. The name of the ExadbVmCluster in the following format: projects/`
        #   project`/locations/`location`/exadbVmClusters/`exadb_vm_cluster`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ExadbVmCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ExadbVmCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_exadb_vm_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ExadbVmCluster::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ExadbVmCluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Exadb (Exascale) VM Clusters for the given project and location.
        # @param [String] parent
        #   Required. The parent value for ExadbVmClusters in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   ExadbVmClusters will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListExadbVmClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListExadbVmClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_exadb_vm_clusters(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/exadbVmClusters', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListExadbVmClustersResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListExadbVmClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single Exadb (Exascale) VM Cluster. To add virtual machines to
        # existing exadb vm cluster, only pass the node count.
        # @param [String] name
        #   Identifier. The name of the ExadbVmCluster resource in the following format:
        #   projects/`project`/locations/`region`/exadbVmClusters/`exadb_vm_cluster`
        # @param [Google::Apis::OracledatabaseV1::ExadbVmCluster] exadb_vm_cluster_object
        # @param [String] request_id
        #   Optional. An optional ID to identify the request. This value is used to
        #   identify duplicate requests. If you make a request with the same request ID
        #   and the original request is still in progress or completed, the server ignores
        #   the second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. A mask specifying which fields in th VM Cluster should be updated. A
        #   field specified in the mask is overwritten. If a mask isn't provided then all
        #   the fields in the VM Cluster are overwritten.
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
        def patch_project_location_exadb_vm_cluster(name, exadb_vm_cluster_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::OracledatabaseV1::ExadbVmCluster::Representation
          command.request_object = exadb_vm_cluster_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes virtual machines from an existing exadb vm cluster.
        # @param [String] name
        #   Required. The name of the ExadbVmCluster in the following format: projects/`
        #   project`/locations/`location`/exadbVmClusters/`exadb_vm_cluster`.
        # @param [Google::Apis::OracledatabaseV1::RemoveVirtualMachineExadbVmClusterRequest] remove_virtual_machine_exadb_vm_cluster_request_object
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
        def remove_virtual_machine_exadb_vm_cluster(name, remove_virtual_machine_exadb_vm_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:removeVirtualMachine', options)
          command.request_representation = Google::Apis::OracledatabaseV1::RemoveVirtualMachineExadbVmClusterRequest::Representation
          command.request_object = remove_virtual_machine_exadb_vm_cluster_request_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the database nodes of a VM Cluster.
        # @param [String] parent
        #   Required. The parent value for database node in the following format: projects/
        #   `project`/locations/`location`/cloudVmClusters/`cloudVmCluster`. .
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
        def list_project_location_exadb_vm_cluster_db_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Creates a new ExascaleDB Storage Vault resource.
        # @param [String] parent
        #   Required. The value for parent of the ExascaleDbStorageVault in the following
        #   format: projects/`project`/locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::ExascaleDbStorageVault] exascale_db_storage_vault_object
        # @param [String] exascale_db_storage_vault_id
        #   Required. The ID of the ExascaleDbStorageVault to create. This value is
        #   restricted to (^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$) and must be a maximum of 63
        #   characters in length. The value must start with a letter and end with a letter
        #   or a number.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
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
        def create_project_location_exascale_db_storage_vault(parent, exascale_db_storage_vault_object = nil, exascale_db_storage_vault_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/exascaleDbStorageVaults', options)
          command.request_representation = Google::Apis::OracledatabaseV1::ExascaleDbStorageVault::Representation
          command.request_object = exascale_db_storage_vault_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['exascaleDbStorageVaultId'] = exascale_db_storage_vault_id unless exascale_db_storage_vault_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ExascaleDB Storage Vault.
        # @param [String] name
        #   Required. The name of the ExascaleDbStorageVault in the following format:
        #   projects/`project`/locations/`location`/exascaleDbStorageVaults/`
        #   exascale_db_storage_vault`.
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
        def delete_project_location_exascale_db_storage_vault(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ExascaleDB Storage Vault.
        # @param [String] name
        #   Required. The name of the ExascaleDbStorageVault in the following format:
        #   projects/`project`/locations/`location`/exascaleDbStorageVaults/`
        #   exascale_db_storage_vault`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ExascaleDbStorageVault] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ExascaleDbStorageVault]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_exascale_db_storage_vault(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ExascaleDbStorageVault::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ExascaleDbStorageVault
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the ExascaleDB Storage Vaults for the given project and location.
        # @param [String] parent
        #   Required. The parent value for ExascaleDbStorageVault in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter the
        #   list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request. Order results
        #   as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   ExascaleDbStorageVaults will be returned. The maximum value is 1000; values
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListExascaleDbStorageVaultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListExascaleDbStorageVaultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_exascale_db_storage_vaults(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/exascaleDbStorageVaults', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListExascaleDbStorageVaultsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListExascaleDbStorageVaultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only the
        #   shape, gcp_oracle_zone and gi_version fields are supported in this format: `
        #   shape="`shape`"`.
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
        def list_project_location_gi_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/giVersions', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListGiVersionsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListGiVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the valid minor versions for the given project, location, gi version
        # and shape family.
        # @param [String] parent
        #   Required. The parent value for the MinorVersion resource with the format:
        #   projects/`project`/locations/`location`/giVersions/`gi_version`
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Only
        #   shapeFamily and gcp_oracle_zone_id are supported in this format: `shape_family=
        #   "`shapeFamily`" AND gcp_oracle_zone_id="`gcp_oracle_zone_id`"`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, a maximum of
        #   50 System Versions will be returned. The maximum value is 1000; values above
        #   1000 will be reset to 1000.
        # @param [String] page_token
        #   Optional. A token identifying the requested page of results to return. All
        #   fields except the filter should remain the same as in the request that
        #   provided this page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListMinorVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListMinorVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gi_version_minor_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/minorVersions', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListMinorVersionsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListMinorVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ODB Network in a given project and location.
        # @param [String] parent
        #   Required. The parent value for the OdbNetwork in the following format:
        #   projects/`project`/locations/`location`.
        # @param [Google::Apis::OracledatabaseV1::OdbNetwork] odb_network_object
        # @param [String] odb_network_id
        #   Required. The ID of the OdbNetwork to create. This value is restricted to (^[a-
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
        def create_project_location_odb_network(parent, odb_network_object = nil, odb_network_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/odbNetworks', options)
          command.request_representation = Google::Apis::OracledatabaseV1::OdbNetwork::Representation
          command.request_object = odb_network_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['odbNetworkId'] = odb_network_id unless odb_network_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ODB Network.
        # @param [String] name
        #   Required. The name of the resource in the following format: projects/`project`/
        #   locations/`location`/odbNetworks/`odb_network`.
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
        def delete_project_location_odb_network(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ODB Network.
        # @param [String] name
        #   Required. The name of the OdbNetwork in the following format: projects/`
        #   project`/locations/`location`/odbNetworks/`odb_network`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::OdbNetwork] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::OdbNetwork]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_odb_network(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::OdbNetwork::Representation
          command.response_class = Google::Apis::OracledatabaseV1::OdbNetwork
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the ODB Networks in a given project and location.
        # @param [String] parent
        #   Required. The parent value for the ODB Network in the following format:
        #   projects/`project`/locations/`location`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   ODB Networks will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListOdbNetworksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListOdbNetworksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_odb_networks(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/odbNetworks', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListOdbNetworksResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListOdbNetworksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ODB Subnet in a given ODB Network.
        # @param [String] parent
        #   Required. The parent value for the OdbSubnet in the following format: projects/
        #   `project`/locations/`location`/odbNetworks/`odb_network`.
        # @param [Google::Apis::OracledatabaseV1::OdbSubnet] odb_subnet_object
        # @param [String] odb_subnet_id
        #   Required. The ID of the OdbSubnet to create. This value is restricted to (^[a-
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
        def create_project_location_odb_network_odb_subnet(parent, odb_subnet_object = nil, odb_subnet_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/odbSubnets', options)
          command.request_representation = Google::Apis::OracledatabaseV1::OdbSubnet::Representation
          command.request_object = odb_subnet_object
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['odbSubnetId'] = odb_subnet_id unless odb_subnet_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ODB Subnet.
        # @param [String] name
        #   Required. The name of the resource in the following format: projects/`project`/
        #   locations/`region`/odbNetworks/`odb_network`/odbSubnets/`odb_subnet`.
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
        def delete_project_location_odb_network_odb_subnet(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::Operation::Representation
          command.response_class = Google::Apis::OracledatabaseV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ODB Subnet.
        # @param [String] name
        #   Required. The name of the OdbSubnet in the following format: projects/`project`
        #   /locations/`location`/odbNetworks/`odb_network`/odbSubnets/`odb_subnet`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::OdbSubnet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::OdbSubnet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_odb_network_odb_subnet(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::OdbSubnet::Representation
          command.response_class = Google::Apis::OracledatabaseV1::OdbSubnet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the ODB Subnets in a given ODB Network.
        # @param [String] parent
        #   Required. The parent value for the OdbSubnet in the following format: projects/
        #   `project`/locations/`location`/odbNetworks/`odb_network`.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request.
        # @param [String] order_by
        #   Optional. An expression for ordering the results of the request.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, at most 50
        #   ODB Networks will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListOdbSubnetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListOdbSubnetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_odb_network_odb_subnets(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/odbSubnets', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListOdbSubnetsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListOdbSubnetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
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
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single PluggableDatabase.
        # @param [String] name
        #   Required. The name of the PluggableDatabase resource in the following format:
        #   projects/`project`/locations/`region`/pluggableDatabases/`pluggable_database`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OracledatabaseV1::PluggableDatabase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::PluggableDatabase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_pluggable_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OracledatabaseV1::PluggableDatabase::Representation
          command.response_class = Google::Apis::OracledatabaseV1::PluggableDatabase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the PluggableDatabases for the given project, location and Container
        # Database.
        # @param [String] parent
        #   Required. The parent, which owns this collection of PluggableDatabases. Format:
        #   projects/`project`/locations/`location`
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. List for
        #   pluggable databases is supported only with a valid container database (full
        #   resource name) filter in this format: `database="projects/`project`/locations/`
        #   location`/databases/`database`"`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of PluggableDatabases to return. The service may
        #   return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPluggableDatabases` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListPluggableDatabases` must match the call that
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
        # @yieldparam result [Google::Apis::OracledatabaseV1::ListPluggableDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OracledatabaseV1::ListPluggableDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_pluggable_databases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/pluggableDatabases', options)
          command.response_representation = Google::Apis::OracledatabaseV1::ListPluggableDatabasesResponse::Representation
          command.response_class = Google::Apis::OracledatabaseV1::ListPluggableDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
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
