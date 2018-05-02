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
    module SqladminV1beta3
      # Cloud SQL Administration API
      #
      # Creates and configures Cloud SQL instances, which provide fully-managed MySQL
      #  databases.
      #
      # @example
      #    require 'google/apis/sqladmin_v1beta3'
      #
      #    Sqladmin = Google::Apis::SqladminV1beta3 # Alias the module
      #    service = Sqladmin::SQLAdminService.new
      #
      # @see https://cloud.google.com/sql/docs/reference/latest
      class SQLAdminService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'sql/v1beta3/')
          @batch_path = 'batch/sqladmin/v1beta3'
        end
        
        # Retrieves information about a specified backup run for a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] backup_configuration
        #   Identifier for the backup configuration. This gets generated automatically
        #   when a backup configuration is created.
        # @param [String] due_time
        #   The start time of the four-hour backup window. The backup can occur any time
        #   in the window. The time is in RFC 3339 format, for example 2012-11-15T16:19:00.
        #   094Z.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::BackupRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::BackupRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_run(project, instance, backup_configuration, due_time, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/backupRuns/{backupConfiguration}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::BackupRun::Representation
          command.response_class = Google::Apis::SqladminV1beta3::BackupRun
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['backupConfiguration'] = backup_configuration unless backup_configuration.nil?
          command.query['dueTime'] = due_time unless due_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all backup runs associated with a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] backup_configuration
        #   Identifier for the backup configuration. This gets generated automatically
        #   when a backup configuration is created.
        # @param [Fixnum] max_results
        #   Maximum number of backup runs per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::BackupRunsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::BackupRunsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backup_runs(project, instance, backup_configuration, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/backupRuns', options)
          command.response_representation = Google::Apis::SqladminV1beta3::BackupRunsListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::BackupRunsListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['backupConfiguration'] = backup_configuration unless backup_configuration.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all database flags that can be set for Google Cloud SQL instances.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::FlagsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::FlagsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_flags(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'flags', options)
          command.response_representation = Google::Apis::SqladminV1beta3::FlagsListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::FlagsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Cloud SQL instance as a clone of a source instance.
        # @param [String] project
        #   Project ID of the source as well as the clone Cloud SQL instance.
        # @param [Google::Apis::SqladminV1beta3::InstancesCloneRequest] instances_clone_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesCloneResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesCloneResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_instance(project, instances_clone_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/clone', options)
          command.request_representation = Google::Apis::SqladminV1beta3::InstancesCloneRequest::Representation
          command.request_object = instances_clone_request_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesCloneResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesCloneResponse
          command.params['project'] = project unless project.nil?
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
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'projects/{project}/instances/{instance}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesDeleteResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesDeleteResponse
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
        # @param [Google::Apis::SqladminV1beta3::InstancesExportRequest] instances_export_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesExportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesExportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_instance(project, instance, instances_export_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/export', options)
          command.request_representation = Google::Apis::SqladminV1beta3::InstancesExportRequest::Representation
          command.request_object = instances_export_request_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesExportResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesExportResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::DatabaseInstance::Representation
          command.response_class = Google::Apis::SqladminV1beta3::DatabaseInstance
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports data into a Cloud SQL instance from a MySQL dump file stored in a
        # Google Cloud Storage bucket.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta3::InstancesImportRequest] instances_import_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesImportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesImportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_instance(project, instance, instances_import_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/import', options)
          command.request_representation = Google::Apis::SqladminV1beta3::InstancesImportRequest::Representation
          command.request_object = instances_import_request_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesImportResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesImportResponse
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
        # @param [Google::Apis::SqladminV1beta3::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance(project, database_instance_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances', options)
          command.request_representation = Google::Apis::SqladminV1beta3::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesInsertResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesInsertResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instances for a given project, in alphabetical order by instance name.
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
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instances(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings of a Cloud SQL instance. This method supports patch
        # semantics.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta3::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_instance(project, instance, database_instance_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'projects/{project}/instances/{instance}', options)
          command.request_representation = Google::Apis::SqladminV1beta3::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesUpdateResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesUpdateResponse
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
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesPromoteReplicaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesPromoteReplicaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_instance_replica(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/promoteReplica', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesPromoteReplicaResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesPromoteReplicaResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all client certificates and generates a new server SSL certificate for
        # a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesResetSslConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesResetSslConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance_ssl_config(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/resetSslConfig', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesResetSslConfigResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesResetSslConfigResponse
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
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesRestartResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesRestartResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_instance(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/restart', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesRestartResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesRestartResponse
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
        # @param [String] backup_configuration
        #   The identifier of the backup configuration. This gets generated automatically
        #   when a backup configuration is created.
        # @param [String] due_time
        #   The start time of the four-hour backup window. The backup can occur any time
        #   in the window. The time is in RFC 3339 format, for example 2012-11-15T16:19:00.
        #   094Z.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesRestoreBackupResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesRestoreBackupResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_instance_backup(project, instance, backup_configuration, due_time, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/restoreBackup', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesRestoreBackupResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesRestoreBackupResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['backupConfiguration'] = backup_configuration unless backup_configuration.nil?
          command.query['dueTime'] = due_time unless due_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the password for the root user of the specified Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta3::InstanceSetRootPasswordRequest] instance_set_root_password_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesSetRootPasswordResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesSetRootPasswordResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_root_password(project, instance, instance_set_root_password_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/setRootPassword', options)
          command.request_representation = Google::Apis::SqladminV1beta3::InstanceSetRootPasswordRequest::Representation
          command.request_object = instance_set_root_password_request_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesSetRootPasswordResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesSetRootPasswordResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings of a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta3::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstancesUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstancesUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_instance(project, instance, database_instance_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'projects/{project}/instances/{instance}', options)
          command.request_representation = Google::Apis::SqladminV1beta3::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta3::InstancesUpdateResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstancesUpdateResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about a specific operation that was performed on a Cloud
        # SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] operation
        #   Instance operation ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::InstanceOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::InstanceOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, instance, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/operations/{operation}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::InstanceOperation::Representation
          command.response_class = Google::Apis::SqladminV1beta3::InstanceOperation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations that have been performed on a Cloud SQL instance.
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
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::OperationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::OperationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, instance, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/operations', options)
          command.response_representation = Google::Apis::SqladminV1beta3::OperationsListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::OperationsListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an SSL certificate from a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance to be deleted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::SslCertsDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::SslCertsDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::SslCertsDeleteResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::SslCertsDeleteResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an SSL certificate as specified by its SHA-1 fingerprint.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::SslCert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::SslCert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}', options)
          command.response_representation = Google::Apis::SqladminV1beta3::SslCert::Representation
          command.response_class = Google::Apis::SqladminV1beta3::SslCert
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an SSL certificate and returns the certificate, the associated private
        # key, and the server certificate authority.
        # @param [String] project
        #   Project ID of the project to which the newly created Cloud SQL instances
        #   should belong.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta3::SslCertsInsertRequest] ssl_certs_insert_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::SslCertsInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::SslCertsInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_ssl_cert(project, instance, ssl_certs_insert_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/instances/{instance}/sslCerts', options)
          command.request_representation = Google::Apis::SqladminV1beta3::SslCertsInsertRequest::Representation
          command.request_object = ssl_certs_insert_request_object
          command.response_representation = Google::Apis::SqladminV1beta3::SslCertsInsertResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::SslCertsInsertResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the current SSL certificates defined for a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project for which to list Cloud SQL instances.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::SslCertsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::SslCertsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_ssl_certs(project, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/instances/{instance}/sslCerts', options)
          command.response_representation = Google::Apis::SqladminV1beta3::SslCertsListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::SslCertsListResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists service tiers that can be used to create Google Cloud SQL instances.
        # @param [String] project
        #   Project ID of the project for which to list tiers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta3::TiersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta3::TiersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tiers(project, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/tiers', options)
          command.response_representation = Google::Apis::SqladminV1beta3::TiersListResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta3::TiersListResponse
          command.params['project'] = project unless project.nil?
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
