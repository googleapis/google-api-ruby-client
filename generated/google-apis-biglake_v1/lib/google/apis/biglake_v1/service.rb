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
    module BiglakeV1
      # BigLake API
      #
      # The BigLake API provides access to BigLake Metastore, a serverless, fully
      #  managed, and highly available metastore for open-source data that can be used
      #  for querying Apache Iceberg tables in BigQuery.
      #
      # @example
      #    require 'google/apis/biglake_v1'
      #
      #    Biglake = Google::Apis::BiglakeV1 # Alias the module
      #    service = Biglake::BigLakeServiceService.new
      #
      # @see https://cloud.google.com/bigquery/
      class BigLakeServiceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://biglake.googleapis.com/', '',
                client_name: 'google-apis-biglake_v1',
                client_version: Google::Apis::BiglakeV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new catalog.
        # @param [String] parent
        #   Required. The parent resource where this catalog will be created. Format:
        #   projects/`project_id_or_number`/locations/`location_id`
        # @param [Google::Apis::BiglakeV1::Catalog] catalog_object
        # @param [String] catalog_id
        #   Required. The ID to use for the catalog, which will become the final component
        #   of the catalog's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Catalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Catalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog(parent, catalog_object = nil, catalog_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/catalogs', options)
          command.request_representation = Google::Apis::BiglakeV1::Catalog::Representation
          command.request_object = catalog_object
          command.response_representation = Google::Apis::BiglakeV1::Catalog::Representation
          command.response_class = Google::Apis::BiglakeV1::Catalog
          command.params['parent'] = parent unless parent.nil?
          command.query['catalogId'] = catalog_id unless catalog_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing catalog specified by the catalog ID.
        # @param [String] name
        #   Required. The name of the catalog to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Catalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Catalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Catalog::Representation
          command.response_class = Google::Apis::BiglakeV1::Catalog
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the catalog specified by the resource name.
        # @param [String] name
        #   Required. The name of the catalog to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Catalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Catalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Catalog::Representation
          command.response_class = Google::Apis::BiglakeV1::Catalog
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all catalogs in a specified project.
        # @param [String] parent
        #   Required. The parent, which owns this collection of catalogs. Format: projects/
        #   `project_id_or_number`/locations/`location_id`
        # @param [Fixnum] page_size
        #   The maximum number of catalogs to return. The service may return fewer than
        #   this value. If unspecified, at most 50 catalogs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListCatalogs` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListCatalogs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::ListCatalogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::ListCatalogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalogs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/catalogs', options)
          command.response_representation = Google::Apis::BiglakeV1::ListCatalogsResponse::Representation
          command.response_class = Google::Apis::BiglakeV1::ListCatalogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new database.
        # @param [String] parent
        #   Required. The parent resource where this database will be created. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`
        # @param [Google::Apis::BiglakeV1::Database] database_object
        # @param [String] database_id
        #   Required. The ID to use for the database, which will become the final
        #   component of the database's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_database(parent, database_object = nil, database_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases', options)
          command.request_representation = Google::Apis::BiglakeV1::Database::Representation
          command.request_object = database_object
          command.response_representation = Google::Apis::BiglakeV1::Database::Representation
          command.response_class = Google::Apis::BiglakeV1::Database
          command.params['parent'] = parent unless parent.nil?
          command.query['databaseId'] = database_id unless database_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing database specified by the database ID.
        # @param [String] name
        #   Required. The name of the database to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/databases/`
        #   database_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Database::Representation
          command.response_class = Google::Apis::BiglakeV1::Database
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the database specified by the resource name.
        # @param [String] name
        #   Required. The name of the database to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/databases/`
        #   database_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Database::Representation
          command.response_class = Google::Apis::BiglakeV1::Database
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all databases in a specified catalog.
        # @param [String] parent
        #   Required. The parent, which owns this collection of databases. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`
        # @param [Fixnum] page_size
        #   The maximum number of databases to return. The service may return fewer than
        #   this value. If unspecified, at most 50 databases will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListDatabases` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListDatabases` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::ListDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::ListDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_databases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databases', options)
          command.response_representation = Google::Apis::BiglakeV1::ListDatabasesResponse::Representation
          command.response_class = Google::Apis::BiglakeV1::ListDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing database specified by the database ID.
        # @param [String] name
        #   Output only. The resource name. Format: projects/`project_id_or_number`/
        #   locations/`location_id`/catalogs/`catalog_id`/databases/`database_id`
        # @param [Google::Apis::BiglakeV1::Database] database_object
        # @param [String] update_mask
        #   The list of fields to update. For the `FieldMask` definition, see https://
        #   developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask If not set, defaults to all of the fields that are allowed to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_database(name, database_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BiglakeV1::Database::Representation
          command.request_object = database_object
          command.response_representation = Google::Apis::BiglakeV1::Database::Representation
          command.response_class = Google::Apis::BiglakeV1::Database
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new table.
        # @param [String] parent
        #   Required. The parent resource where this table will be created. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/
        #   databases/`database_id`
        # @param [Google::Apis::BiglakeV1::Table] table_object
        # @param [String] table_id
        #   Required. The ID to use for the table, which will become the final component
        #   of the table's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_catalog_database_table(parent, table_object = nil, table_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tables', options)
          command.request_representation = Google::Apis::BiglakeV1::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BiglakeV1::Table::Representation
          command.response_class = Google::Apis::BiglakeV1::Table
          command.params['parent'] = parent unless parent.nil?
          command.query['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing table specified by the table ID.
        # @param [String] name
        #   Required. The name of the table to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/databases/`
        #   database_id`/tables/`table_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_catalog_database_table(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Table::Representation
          command.response_class = Google::Apis::BiglakeV1::Table
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the table specified by the resource name.
        # @param [String] name
        #   Required. The name of the table to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/databases/`
        #   database_id`/tables/`table_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_catalog_database_table(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BiglakeV1::Table::Representation
          command.response_class = Google::Apis::BiglakeV1::Table
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all tables in a specified database.
        # @param [String] parent
        #   Required. The parent, which owns this collection of tables. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/catalogs/`catalog_id`/databases/`
        #   database_id`
        # @param [Fixnum] page_size
        #   The maximum number of tables to return. The service may return fewer than this
        #   value. If unspecified, at most 50 tables will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListTables` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTables` must match the call that provided the page token.
        # @param [String] view
        #   The view for the returned tables.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::ListTablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::ListTablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_catalog_database_tables(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tables', options)
          command.response_representation = Google::Apis::BiglakeV1::ListTablesResponse::Representation
          command.response_class = Google::Apis::BiglakeV1::ListTablesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing table specified by the table ID.
        # @param [String] name
        #   Output only. The resource name. Format: projects/`project_id_or_number`/
        #   locations/`location_id`/catalogs/`catalog_id`/databases/`database_id`/tables/`
        #   table_id`
        # @param [Google::Apis::BiglakeV1::Table] table_object
        # @param [String] update_mask
        #   The list of fields to update. For the `FieldMask` definition, see https://
        #   developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask If not set, defaults to all of the fields that are allowed to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_catalog_database_table(name, table_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BiglakeV1::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BiglakeV1::Table::Representation
          command.response_class = Google::Apis::BiglakeV1::Table
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames an existing table specified by the table ID.
        # @param [String] name
        #   Required. The table's `name` field is used to identify the table to rename.
        #   Format: projects/`project_id_or_number`/locations/`location_id`/catalogs/`
        #   catalog_id`/databases/`database_id`/tables/`table_id`
        # @param [Google::Apis::BiglakeV1::RenameTableRequest] rename_table_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BiglakeV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BiglakeV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_table(name, rename_table_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rename', options)
          command.request_representation = Google::Apis::BiglakeV1::RenameTableRequest::Representation
          command.request_object = rename_table_request_object
          command.response_representation = Google::Apis::BiglakeV1::Table::Representation
          command.response_class = Google::Apis::BiglakeV1::Table
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
