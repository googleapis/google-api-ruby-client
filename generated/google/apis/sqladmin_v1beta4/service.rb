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
    module SqladminV1beta4
      # Cloud SQL Administration API
      #
      # API for Cloud SQL database instance management.
      #
      # @example
      #    require 'google/apis/sqladmin_v1beta4'
      #
      #    Sqladmin = Google::Apis::SqladminV1beta4 # Alias the module
      #    service = Sqladmin::SQLAdminService.new
      #
      # @see https://developers.google.com/cloud-sql/docs/admin-api/
      class SQLAdminService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'sql/v1beta4/')
        end

        # Retrieves a resource containing information about a backup run.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] id
        #   The ID of this Backup Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::BackupRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::BackupRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_run(project, instance, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/backupRuns/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::BackupRunRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::BackupRun
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all backup runs associated with a given instance and configuration in
        # the reverse chronological order of the enqueued time.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Fixnum] max_results
        #   Maximum number of backup runs per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::BackupRunsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::BackupRunsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backup_runs(project, instance, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/backupRuns'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::BackupRunsListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::BackupRunsListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a resource containing information about a database inside a Cloud SQL
        # instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be deleted in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_database(project, instance, database, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases/{database}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a resource containing information about a database inside a Cloud
        # SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_database(project, instance, database, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases/{database}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::DatabaseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Database
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Inserts a resource containing information about a database inside a Cloud SQL
        # instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::Database] database
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_database(project, instance, database = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseRepresentation
          command.request_object = database
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists databases in the specified Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project for which to list Cloud SQL instances.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::DatabasesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::DatabasesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_databases(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::DatabasesListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::DatabasesListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a resource containing information about a database inside a Cloud SQL
        # instance. This method supports patch semantics.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be updated in the instance.
        # @param [Google::Apis::SqladminV1beta4::Database] database_object
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_database(project, instance, database, database_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases/{database}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseRepresentation
          command.request_object = database_object
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a resource containing information about a database inside a Cloud SQL
        # instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be updated in the instance.
        # @param [Google::Apis::SqladminV1beta4::Database] database_object
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_database(project, instance, database, database_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/databases/{database}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseRepresentation
          command.request_object = database_object
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # List all available database flags for Google Cloud SQL instances.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::FlagsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::FlagsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_flags(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'flags'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::FlagsListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::FlagsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Creates a Cloud SQL instance as a clone of the source instance.
        # @param [String] project
        #   Project ID of the source as well as the clone Cloud SQL instance.
        # @param [String] instance
        #   The ID of the Cloud SQL instance to be cloned (source). This does not include
        #   the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesCloneRequest] instances_clone_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_instance(project, instance, instances_clone_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/clone'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesCloneRequestRepresentation
          command.request_object = instances_clone_request
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance to be deleted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Exports data from a Cloud SQL instance to a Google Cloud Storage bucket as a
        # MySQL dump file.
        # @param [String] project
        #   Project ID of the project that contains the instance to be exported.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesExportRequest] instances_export_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_instance(project, instance, instances_export_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/export'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesExportRequestRepresentation
          command.request_object = instances_export_request
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a resource containing information about a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::DatabaseInstanceRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::DatabaseInstance
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Imports data into a Cloud SQL instance from a MySQL dump file in Google Cloud
        # Storage.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesImportRequest] instances_import_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_instance(project, instance, instances_import_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/import'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesImportRequestRepresentation
          command.request_object = instances_import_request
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project to which the newly created Cloud SQL instances
        #   should belong.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance(project, database_instance = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstanceRepresentation
          command.request_object = database_instance
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists instances under a given project in the alphabetical order of the
        # instance name.
        # @param [String] project
        #   Project ID of the project for which to list Cloud SQL instances.
        # @param [Fixnum] max_results
        #   The maximum number of results to return per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::InstancesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::InstancesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instances(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::InstancesListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::InstancesListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates settings of a Cloud SQL instance. Caution: This is not a partial
        # update, so you must include values for all the settings that you want to
        # retain. For partial updates, use patch.. This method supports patch semantics.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_instance(project, instance, database_instance = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstanceRepresentation
          command.request_object = database_instance
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Promotes the read replica instance to be a stand-alone Cloud SQL instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_replica(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/promoteReplica'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes all client certificates and generates a new server SSL certificate for
        # the instance. The changes will not take effect until the instance is restarted.
        # Existing instances without a server certificate will need to call this once
        # to set a server certificate.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_ssl_config(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/resetSslConfig'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Restarts a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance to be restarted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/restart'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Restores a backup of a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesRestoreBackupRequest] instances_restore_backup_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_backup(project, instance, instances_restore_backup_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/restoreBackup'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesRestoreBackupRequestRepresentation
          command.request_object = instances_restore_backup_request
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Starts the replication in the read replica instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_replica(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/startReplica'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Stops the replication in the read replica instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_replica(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/stopReplica'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates settings of a Cloud SQL instance. Caution: This is not a partial
        # update, so you must include values for all the settings that you want to
        # retain. For partial updates, use patch.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_instance(project, instance, database_instance = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstanceRepresentation
          command.request_object = database_instance
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves an instance operation that has been performed on an instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] operation
        #   Instance operation ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all instance operations that have been performed on the given Cloud SQL
        # instance in the reverse chronological order of the start time.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Fixnum] max_results
        #   Maximum number of operations per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::OperationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::OperationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, instance: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationsListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::OperationsListResponse
          command.params['project'] = project unless project.nil?
          command.query['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the SSL certificate. The change will not take effect until the
        # instance is restarted.
        # @param [String] project
        #   Project ID of the project that contains the instance to be deleted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a particular SSL certificate. Does not include the private key (
        # required for usage). The private key must be saved from the response to
        # initial creation.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SslCert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SslCert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::SslCertRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::SslCert
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an SSL certificate and returns it along with the private key and
        # server certificate authority. The new certificate will not be usable until the
        # instance is restarted.
        # @param [String] project
        #   Project ID of the project to which the newly created Cloud SQL instances
        #   should belong.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::SslCertsInsertRequest] ssl_certs_insert_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SslCertsInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SslCertsInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_ssl_cert(project, instance, ssl_certs_insert_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/sslCerts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::SslCertsInsertRequestRepresentation
          command.request_object = ssl_certs_insert_request
          command.response_representation = Google::Apis::SqladminV1beta4::SslCertsInsertResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::SslCertsInsertResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all of the current SSL certificates for the instance.
        # @param [String] project
        #   Project ID of the project for which to list Cloud SQL instances.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SslCertsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SslCertsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_ssl_certs(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/sslCerts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::SslCertsListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::SslCertsListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Lists all available service tiers for Google Cloud SQL, for example D1, D2.
        # For related information, see Pricing.
        # @param [String] project
        #   Project ID of the project for which to list tiers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::TiersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::TiersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tiers(project, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/tiers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::TiersListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::TiersListResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a user from a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] host
        #   Host of the user in the instance.
        # @param [String] name
        #   Name of the user in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user(project, instance, host: nil, name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/users'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['host'] = host unless host.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new user in a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::User] user
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user(project, instance, user = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/users'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::UserRepresentation
          command.request_object = user
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists users in the specified Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::UsersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::UsersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/users'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::SqladminV1beta4::UsersListResponseRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::UsersListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing user in a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::User] user
        #   
        # @param [String] host
        #   Host of the user in the instance.
        # @param [String] name
        #   Name of the user in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user(project, instance, user = nil, host: nil, name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{project}/instances/{instance}/users'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::SqladminV1beta4::UserRepresentation
          command.request_object = user
          command.response_representation = Google::Apis::SqladminV1beta4::OperationRepresentation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['host'] = host unless host.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
