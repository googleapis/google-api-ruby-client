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
    module FirestoreV1
      # Cloud Firestore API
      #
      # Accesses the NoSQL document database built for automatic scaling, high
      #  performance, and ease of application development.
      #
      # @example
      #    require 'google/apis/firestore_v1'
      #
      #    Firestore = Google::Apis::FirestoreV1 # Alias the module
      #    service = Firestore::FirestoreService.new
      #
      # @see https://cloud.google.com/firestore
      class FirestoreService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firestore.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-firestore_v1',
                client_version: Google::Apis::FirestoreV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Bulk deletes a subset of documents from Google Cloud Firestore. Documents
        # created or updated after the underlying system starts to process the request
        # will not be deleted. The bulk delete occurs in the background and its progress
        # can be monitored and managed via the Operation resource that is created. For
        # more details on bulk delete behavior, refer to: https://cloud.google.com/
        # firestore/docs/manage-data/bulk-delete
        # @param [String] name
        #   Required. Database to operate. Should be of the form: `projects/`project_id`/
        #   databases/`database_id``.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BulkDeleteDocumentsRequest] google_firestore_admin_v1_bulk_delete_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_database_delete_documents(name, google_firestore_admin_v1_bulk_delete_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:bulkDeleteDocuments', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BulkDeleteDocumentsRequest::Representation
          command.request_object = google_firestore_admin_v1_bulk_delete_documents_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new database by cloning an existing one. The new database must be in
        # the same cloud region or multi-region location as the existing database. This
        # behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a
        # new empty database, a new database is created with the database type, index
        # configuration, and documents from an existing database. The long-running
        # operation can be used to track the progress of the clone, with the Operation's
        # metadata field type being the CloneDatabaseMetadata. The response type is the
        # Database if the clone was successful. The new database is not readable or
        # writeable until the LRO has completed.
        # @param [String] parent
        #   Required. The project to clone the database in. Format is `projects/`
        #   project_id``.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1CloneDatabaseRequest] google_firestore_admin_v1_clone_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_project_database(parent, google_firestore_admin_v1_clone_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases:clone', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1CloneDatabaseRequest::Representation
          command.request_object = google_firestore_admin_v1_clone_database_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a database.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database] google_firestore_admin_v1_database_object
        # @param [String] database_id
        #   Required. The ID to use for the database, which will become the final
        #   component of the database's resource name. This value should be 4-63
        #   characters. Valid characters are /a-z-/ with first character a letter and the
        #   last a letter or a number. Must not be UUID-like /[0-9a-f]`8`(-[0-9a-f]`4`)`3`-
        #   [0-9a-f]`12`/. "(default)" database ID is also valid.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_database(parent, google_firestore_admin_v1_database_object = nil, database_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database::Representation
          command.request_object = google_firestore_admin_v1_database_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['databaseId'] = database_id unless database_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a database.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id``
        # @param [String] etag
        #   The current etag of the Database. If an etag is provided and does not match
        #   the current etag of the database, deletion will be blocked and a
        #   FAILED_PRECONDITION error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a copy of all or a subset of documents from Google Cloud Firestore to
        # another storage system, such as Google Cloud Storage. Recent updates to
        # documents may not be reflected in the export. The export occurs in the
        # background and its progress can be monitored and managed via the Operation
        # resource that is created. The output of an export may only be used once the
        # associated operation is done. If an export operation is cancelled before
        # completion it may leave partial data behind in Google Cloud Storage. For more
        # details on export behavior and output format, refer to: https://cloud.google.
        # com/firestore/docs/manage-data/export-import
        # @param [String] name
        #   Required. Database to export. Should be of the form: `projects/`project_id`/
        #   databases/`database_id``.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ExportDocumentsRequest] google_firestore_admin_v1_export_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_database_documents(name, google_firestore_admin_v1_export_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:exportDocuments', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ExportDocumentsRequest::Representation
          command.request_object = google_firestore_admin_v1_export_documents_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a database.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports documents into Google Cloud Firestore. Existing documents with the
        # same name are overwritten. The import occurs in the background and its
        # progress can be monitored and managed via the Operation resource that is
        # created. If an ImportDocuments operation is cancelled, it is possible that a
        # subset of the data has already been imported to Cloud Firestore.
        # @param [String] name
        #   Required. Database to import into. Should be of the form: `projects/`
        #   project_id`/databases/`database_id``.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ImportDocumentsRequest] google_firestore_admin_v1_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_database_documents(name, google_firestore_admin_v1_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:importDocuments', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ImportDocumentsRequest::Representation
          command.request_object = google_firestore_admin_v1_import_documents_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the databases in the project.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id``
        # @param [Boolean] show_deleted
        #   If true, also returns deleted resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_databases(parent, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databases', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListDatabasesResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a database.
        # @param [String] name
        #   The resource name of the Database. Format: `projects/`project`/databases/`
        #   database``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database] google_firestore_admin_v1_database_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_database(name, google_firestore_admin_v1_database_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database::Representation
          command.request_object = google_firestore_admin_v1_database_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new database by restoring from an existing backup. The new database
        # must be in the same cloud region or multi-region location as the existing
        # backup. This behaves similar to FirestoreAdmin.CreateDatabase except instead
        # of creating a new empty database, a new database is created with the database
        # type, index configuration, and documents from an existing backup. The long-
        # running operation can be used to track the progress of the restore, with the
        # Operation's metadata field type being the RestoreDatabaseMetadata. The
        # response type is the Database if the restore was successful. The new database
        # is not readable or writeable until the LRO has completed.
        # @param [String] parent
        #   Required. The project to restore the database in. Format is `projects/`
        #   project_id``.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1RestoreDatabaseRequest] google_firestore_admin_v1_restore_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_database(parent, google_firestore_admin_v1_restore_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases:restore', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1RestoreDatabaseRequest::Representation
          command.request_object = google_firestore_admin_v1_restore_database_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a backup schedule on a database. At most two backup schedules can be
        # configured on a database, one daily backup schedule and one weekly backup
        # schedule.
        # @param [String] parent
        #   Required. The parent database. Format `projects/`project`/databases/`database``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule] google_firestore_admin_v1_backup_schedule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_database_backup_schedule(parent, google_firestore_admin_v1_backup_schedule_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/backupSchedules', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule::Representation
          command.request_object = google_firestore_admin_v1_backup_schedule_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a backup schedule.
        # @param [String] name
        #   Required. The name of the backup schedule. Format `projects/`project`/
        #   databases/`database`/backupSchedules/`backup_schedule``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database_backup_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a backup schedule.
        # @param [String] name
        #   Required. The name of the backup schedule. Format `projects/`project`/
        #   databases/`database`/backupSchedules/`backup_schedule``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_backup_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List backup schedules.
        # @param [String] parent
        #   Required. The parent database. Format is `projects/`project`/databases/`
        #   database``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupSchedulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupSchedulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_backup_schedules(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupSchedules', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupSchedulesResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupSchedulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a backup schedule.
        # @param [String] name
        #   Output only. The unique backup schedule identifier across all locations and
        #   databases for the given project. This will be auto-assigned. Format is `
        #   projects/`project`/databases/`database`/backupSchedules/`backup_schedule``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule] google_firestore_admin_v1_backup_schedule_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_database_backup_schedule(name, google_firestore_admin_v1_backup_schedule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule::Representation
          command.request_object = google_firestore_admin_v1_backup_schedule_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the metadata and configuration for a Field.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   collectionGroups/`collection_id`/fields/`field_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_collection_group_field(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the field configuration and metadata for this database. Currently,
        # FirestoreAdmin.ListFields only supports listing fields that have been
        # explicitly overridden. To issue this query, call FirestoreAdmin.ListFields
        # with the filter set to `indexConfig.usesAncestorConfig:false` or `ttlConfig:*`.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id`/databases/`
        #   database_id`/collectionGroups/`collection_id``
        # @param [String] filter
        #   The filter to apply to list results. Currently, FirestoreAdmin.ListFields only
        #   supports listing fields that have been explicitly overridden. To issue this
        #   query, call FirestoreAdmin.ListFields with a filter that includes `indexConfig.
        #   usesAncestorConfig:false` or `ttlConfig:*`.
        # @param [Fixnum] page_size
        #   The number of results to return.
        # @param [String] page_token
        #   A page token, returned from a previous call to FirestoreAdmin.ListFields, that
        #   may be used to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListFieldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListFieldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_collection_group_fields(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/fields', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListFieldsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListFieldsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a field configuration. Currently, field updates apply only to single
        # field index configuration. However, calls to FirestoreAdmin.UpdateField should
        # provide a field mask to avoid changing any configuration that the caller isn't
        # aware of. The field mask should be specified as: `` paths: "index_config" ``.
        # This call returns a google.longrunning.Operation which may be used to track
        # the status of the field update. The metadata for the operation will be the
        # type FieldOperationMetadata. To configure the default field settings for the
        # database, use the special `Field` with resource name: `projects/`project_id`/
        # databases/`database_id`/collectionGroups/__default__/fields/*`.
        # @param [String] name
        #   Required. A field name of the form: `projects/`project_id`/databases/`
        #   database_id`/collectionGroups/`collection_id`/fields/`field_path`` A field
        #   path can be a simple field name, e.g. `address` or a path to fields within `
        #   map_value` , e.g. `address.city`, or a special field path. The only valid
        #   special field is `*`, which represents any field. Field paths can be quoted
        #   using `` ` `` (backtick). The only character that must be escaped within a
        #   quoted field path is the backtick character itself, escaped using a backslash.
        #   Special characters in field paths that must be quoted include: `*`, `.`, `` ` `
        #   ` (backtick), `[`, `]`, as well as any ascii symbolic characters. Examples: ``
        #   `address.city` `` represents a field named `address.city`, not the map key `
        #   city` in the field `address`. `` `*` `` represents a field named `*`, not any
        #   field. A special `Field` contains the default indexing settings for all fields.
        #   This field's resource name is: `projects/`project_id`/databases/`database_id`/
        #   collectionGroups/__default__/fields/*` Indexes defined on this `Field` will be
        #   applied to all fields which do not have their own `Field` index configuration.
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field] google_firestore_admin_v1_field_object
        # @param [String] update_mask
        #   A mask, relative to the field. If specified, only configuration specified by
        #   this field_mask will be updated in the field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_database_collection_group_field(name, google_firestore_admin_v1_field_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field::Representation
          command.request_object = google_firestore_admin_v1_field_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a composite index. This returns a google.longrunning.Operation which
        # may be used to track the status of the creation. The metadata for the
        # operation will be the type IndexOperationMetadata.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id`/databases/`
        #   database_id`/collectionGroups/`collection_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index] google_firestore_admin_v1_index_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_database_collection_group_index(parent, google_firestore_admin_v1_index_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/indexes', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index::Representation
          command.request_object = google_firestore_admin_v1_index_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a composite index.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   collectionGroups/`collection_id`/indexes/`index_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database_collection_group_index(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a composite index.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   collectionGroups/`collection_id`/indexes/`index_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_collection_group_index(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists composite indexes.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id`/databases/`
        #   database_id`/collectionGroups/`collection_id``
        # @param [String] filter
        #   The filter to apply to list results.
        # @param [Fixnum] page_size
        #   The number of results to return.
        # @param [String] page_token
        #   A page token, returned from a previous call to FirestoreAdmin.ListIndexes,
        #   that may be used to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListIndexesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListIndexesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_collection_group_indexes(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/indexes', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListIndexesResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListIndexesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets multiple documents. Documents returned by this method are not guaranteed
        # to be returned in the same order that they were requested.
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::BatchGetDocumentsRequest] batch_get_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::BatchGetDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::BatchGetDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_get_documents(database, batch_get_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:batchGet', options)
          command.request_representation = Google::Apis::FirestoreV1::BatchGetDocumentsRequest::Representation
          command.request_object = batch_get_documents_request_object
          command.response_representation = Google::Apis::FirestoreV1::BatchGetDocumentsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::BatchGetDocumentsResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a batch of write operations. The BatchWrite method does not apply the
        # write operations atomically and can apply them out of order. Method does not
        # allow more than one write per document. Each write succeeds or fails
        # independently. See the BatchWriteResponse for the success status of each write.
        # If you require an atomically applied set of writes, use Commit instead.
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::BatchWriteRequest] batch_write_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::BatchWriteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::BatchWriteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_document_write(database, batch_write_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:batchWrite', options)
          command.request_representation = Google::Apis::FirestoreV1::BatchWriteRequest::Representation
          command.request_object = batch_write_request_object
          command.response_representation = Google::Apis::FirestoreV1::BatchWriteResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::BatchWriteResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a new transaction.
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::BeginTransactionRequest] begin_transaction_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::BeginTransactionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::BeginTransactionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def begin_document_transaction(database, begin_transaction_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:beginTransaction', options)
          command.request_representation = Google::Apis::FirestoreV1::BeginTransactionRequest::Representation
          command.request_object = begin_transaction_request_object
          command.response_representation = Google::Apis::FirestoreV1::BeginTransactionResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::BeginTransactionResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Commits a transaction, while optionally updating documents.
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::CommitRequest] commit_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::CommitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::CommitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_document(database, commit_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:commit', options)
          command.request_representation = Google::Apis::FirestoreV1::CommitRequest::Representation
          command.request_object = commit_request_object
          command.response_representation = Google::Apis::FirestoreV1::CommitResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::CommitResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document.
        # @param [String] parent
        #   Required. The parent resource. For example: `projects/`project_id`/databases/`
        #   database_id`/documents` or `projects/`project_id`/databases/`database_id`/
        #   documents/chatrooms/`chatroom_id``
        # @param [String] collection_id
        #   Required. The collection ID, relative to `parent`, to list. For example: `
        #   chatrooms`.
        # @param [Google::Apis::FirestoreV1::Document] document_object
        # @param [String] document_id
        #   The client-assigned document ID to use for this document. Optional. If not
        #   specified, an ID will be assigned by the service.
        # @param [Array<String>, String] mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_database_document_document(parent, collection_id, document_object = nil, document_id: nil, mask_field_paths: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/{collectionId}', options)
          command.request_representation = Google::Apis::FirestoreV1::Document::Representation
          command.request_object = document_object
          command.response_representation = Google::Apis::FirestoreV1::Document::Representation
          command.response_class = Google::Apis::FirestoreV1::Document
          command.params['parent'] = parent unless parent.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['mask.fieldPaths'] = mask_field_paths unless mask_field_paths.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a document.
        # @param [String] name
        #   Required. The resource name of the Document to delete. In the format: `
        #   projects/`project_id`/databases/`database_id`/documents/`document_path``.
        # @param [Boolean] current_document_exists
        #   When set to `true`, the target document must exist. When set to `false`, the
        #   target document must not exist.
        # @param [String] current_document_update_time
        #   When set, the target document must exist and have been last updated at that
        #   time. Timestamp must be microsecond aligned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database_document(name, current_document_exists: nil, current_document_update_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['currentDocument.exists'] = current_document_exists unless current_document_exists.nil?
          command.query['currentDocument.updateTime'] = current_document_update_time unless current_document_update_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single document.
        # @param [String] name
        #   Required. The resource name of the Document to get. In the format: `projects/`
        #   project_id`/databases/`database_id`/documents/`document_path``.
        # @param [Array<String>, String] mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [String] read_time
        #   Reads the version of the document at the given time. This must be a
        #   microsecond precision timestamp within the past one hour, or if Point-in-Time
        #   Recovery is enabled, can additionally be a whole minute timestamp within the
        #   past 7 days.
        # @param [String] transaction
        #   Reads the document in a transaction.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_document(name, mask_field_paths: nil, read_time: nil, transaction: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Document::Representation
          command.response_class = Google::Apis::FirestoreV1::Document
          command.params['name'] = name unless name.nil?
          command.query['mask.fieldPaths'] = mask_field_paths unless mask_field_paths.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['transaction'] = transaction unless transaction.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists documents.
        # @param [String] parent
        #   Required. The parent resource name. In the format: `projects/`project_id`/
        #   databases/`database_id`/documents` or `projects/`project_id`/databases/`
        #   database_id`/documents/`document_path``. For example: `projects/my-project/
        #   databases/my-database/documents` or `projects/my-project/databases/my-database/
        #   documents/chatrooms/my-chatroom`
        # @param [String] collection_id
        #   Optional. The collection ID, relative to `parent`, to list. For example: `
        #   chatrooms` or `messages`. This is optional, and when not provided, Firestore
        #   will list documents from all collections under the provided `parent`.
        # @param [Array<String>, String] mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [String] order_by
        #   Optional. The optional ordering of the documents to return. For example: `
        #   priority desc, __name__ desc`. This mirrors the `ORDER BY` used in Firestore
        #   queries but in a string representation. When absent, documents are ordered
        #   based on `__name__ ASC`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of documents to return in a single response.
        #   Firestore may return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDocuments` response.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters (with the exception of `page_size`) must match the values set in
        #   the request that generated the page token.
        # @param [String] read_time
        #   Perform the read at the provided time. This must be a microsecond precision
        #   timestamp within the past one hour, or if Point-in-Time Recovery is enabled,
        #   can additionally be a whole minute timestamp within the past 7 days.
        # @param [Boolean] show_missing
        #   If the list should show missing documents. A document is missing if it does
        #   not exist, but there are sub-documents nested underneath it. When true, such
        #   missing documents will be returned with a key but will not have fields, `
        #   create_time`, or `update_time` set. Requests with `show_missing` may not
        #   specify `where` or `order_by`.
        # @param [String] transaction
        #   Perform the read as part of an already active transaction.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_documents(parent, collection_id, mask_field_paths: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, show_missing: nil, transaction: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/{collectionId}', options)
          command.response_representation = Google::Apis::FirestoreV1::ListDocumentsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['mask.fieldPaths'] = mask_field_paths unless mask_field_paths.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['showMissing'] = show_missing unless show_missing.nil?
          command.query['transaction'] = transaction unless transaction.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the collection IDs underneath a document.
        # @param [String] parent
        #   Required. The parent document. In the format: `projects/`project_id`/databases/
        #   `database_id`/documents/`document_path``. For example: `projects/my-project/
        #   databases/my-database/documents/chatrooms/my-chatroom`
        # @param [Google::Apis::FirestoreV1::ListCollectionIdsRequest] list_collection_ids_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::ListCollectionIdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::ListCollectionIdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_document_collection_ids(parent, list_collection_ids_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:listCollectionIds', options)
          command.request_representation = Google::Apis::FirestoreV1::ListCollectionIdsRequest::Representation
          command.request_object = list_collection_ids_request_object
          command.response_representation = Google::Apis::FirestoreV1::ListCollectionIdsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::ListCollectionIdsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists documents.
        # @param [String] parent
        #   Required. The parent resource name. In the format: `projects/`project_id`/
        #   databases/`database_id`/documents` or `projects/`project_id`/databases/`
        #   database_id`/documents/`document_path``. For example: `projects/my-project/
        #   databases/my-database/documents` or `projects/my-project/databases/my-database/
        #   documents/chatrooms/my-chatroom`
        # @param [String] collection_id
        #   Optional. The collection ID, relative to `parent`, to list. For example: `
        #   chatrooms` or `messages`. This is optional, and when not provided, Firestore
        #   will list documents from all collections under the provided `parent`.
        # @param [Array<String>, String] mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [String] order_by
        #   Optional. The optional ordering of the documents to return. For example: `
        #   priority desc, __name__ desc`. This mirrors the `ORDER BY` used in Firestore
        #   queries but in a string representation. When absent, documents are ordered
        #   based on `__name__ ASC`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of documents to return in a single response.
        #   Firestore may return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDocuments` response.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters (with the exception of `page_size`) must match the values set in
        #   the request that generated the page token.
        # @param [String] read_time
        #   Perform the read at the provided time. This must be a microsecond precision
        #   timestamp within the past one hour, or if Point-in-Time Recovery is enabled,
        #   can additionally be a whole minute timestamp within the past 7 days.
        # @param [Boolean] show_missing
        #   If the list should show missing documents. A document is missing if it does
        #   not exist, but there are sub-documents nested underneath it. When true, such
        #   missing documents will be returned with a key but will not have fields, `
        #   create_time`, or `update_time` set. Requests with `show_missing` may not
        #   specify `where` or `order_by`.
        # @param [String] transaction
        #   Perform the read as part of an already active transaction.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_document_documents(parent, collection_id, mask_field_paths: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, show_missing: nil, transaction: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/{collectionId}', options)
          command.response_representation = Google::Apis::FirestoreV1::ListDocumentsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['mask.fieldPaths'] = mask_field_paths unless mask_field_paths.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['showMissing'] = show_missing unless show_missing.nil?
          command.query['transaction'] = transaction unless transaction.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Listens to changes. This method is only available via gRPC or WebChannel (not
        # REST).
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::ListenRequest] listen_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::ListenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::ListenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listen_document(database, listen_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:listen', options)
          command.request_representation = Google::Apis::FirestoreV1::ListenRequest::Representation
          command.request_object = listen_request_object
          command.response_representation = Google::Apis::FirestoreV1::ListenResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::ListenResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Partitions a query by returning partition cursors that can be used to run the
        # query in parallel. The returned partition cursors are split points that can be
        # used by RunQuery as starting/end points for the query results.
        # @param [String] parent
        #   Required. The parent resource name. In the format: `projects/`project_id`/
        #   databases/`database_id`/documents`. Document resource names are not supported;
        #   only database resource names can be specified.
        # @param [Google::Apis::FirestoreV1::PartitionQueryRequest] partition_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::PartitionQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::PartitionQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def partition_document_query(parent, partition_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:partitionQuery', options)
          command.request_representation = Google::Apis::FirestoreV1::PartitionQueryRequest::Representation
          command.request_object = partition_query_request_object
          command.response_representation = Google::Apis::FirestoreV1::PartitionQueryResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::PartitionQueryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or inserts a document.
        # @param [String] name
        #   The resource name of the document, for example `projects/`project_id`/
        #   databases/`database_id`/documents/`document_path``.
        # @param [Google::Apis::FirestoreV1::Document] document_object
        # @param [Boolean] current_document_exists
        #   When set to `true`, the target document must exist. When set to `false`, the
        #   target document must not exist.
        # @param [String] current_document_update_time
        #   When set, the target document must exist and have been last updated at that
        #   time. Timestamp must be microsecond aligned.
        # @param [Array<String>, String] mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [Array<String>, String] update_mask_field_paths
        #   The list of field paths in the mask. See Document.fields for a field path
        #   syntax reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_database_document(name, document_object = nil, current_document_exists: nil, current_document_update_time: nil, mask_field_paths: nil, update_mask_field_paths: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirestoreV1::Document::Representation
          command.request_object = document_object
          command.response_representation = Google::Apis::FirestoreV1::Document::Representation
          command.response_class = Google::Apis::FirestoreV1::Document
          command.params['name'] = name unless name.nil?
          command.query['currentDocument.exists'] = current_document_exists unless current_document_exists.nil?
          command.query['currentDocument.updateTime'] = current_document_update_time unless current_document_update_time.nil?
          command.query['mask.fieldPaths'] = mask_field_paths unless mask_field_paths.nil?
          command.query['updateMask.fieldPaths'] = update_mask_field_paths unless update_mask_field_paths.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back a transaction.
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``.
        # @param [Google::Apis::FirestoreV1::RollbackRequest] rollback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_document(database, rollback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:rollback', options)
          command.request_representation = Google::Apis::FirestoreV1::RollbackRequest::Representation
          command.request_object = rollback_request_object
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs an aggregation query. Rather than producing Document results like
        # Firestore.RunQuery, this API allows running an aggregation to produce a series
        # of AggregationResult server-side. High-Level Example: ``` -- Return the number
        # of documents in table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k
        # where a = true ); ```
        # @param [String] parent
        #   Required. The parent resource name. In the format: `projects/`project_id`/
        #   databases/`database_id`/documents` or `projects/`project_id`/databases/`
        #   database_id`/documents/`document_path``. For example: `projects/my-project/
        #   databases/my-database/documents` or `projects/my-project/databases/my-database/
        #   documents/chatrooms/my-chatroom`
        # @param [Google::Apis::FirestoreV1::RunAggregationQueryRequest] run_aggregation_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::RunAggregationQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::RunAggregationQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_document_aggregation_query(parent, run_aggregation_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:runAggregationQuery', options)
          command.request_representation = Google::Apis::FirestoreV1::RunAggregationQueryRequest::Representation
          command.request_object = run_aggregation_query_request_object
          command.response_representation = Google::Apis::FirestoreV1::RunAggregationQueryResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::RunAggregationQueryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a query.
        # @param [String] parent
        #   Required. The parent resource name. In the format: `projects/`project_id`/
        #   databases/`database_id`/documents` or `projects/`project_id`/databases/`
        #   database_id`/documents/`document_path``. For example: `projects/my-project/
        #   databases/my-database/documents` or `projects/my-project/databases/my-database/
        #   documents/chatrooms/my-chatroom`
        # @param [Google::Apis::FirestoreV1::RunQueryRequest] run_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::RunQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::RunQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_document_query(parent, run_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:runQuery', options)
          command.request_representation = Google::Apis::FirestoreV1::RunQueryRequest::Representation
          command.request_object = run_query_request_object
          command.response_representation = Google::Apis::FirestoreV1::RunQueryResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::RunQueryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Streams batches of document updates and deletes, in order. This method is only
        # available via gRPC or WebChannel (not REST).
        # @param [String] database
        #   Required. The database name. In the format: `projects/`project_id`/databases/`
        #   database_id``. This is only required in the first message.
        # @param [Google::Apis::FirestoreV1::WriteRequest] write_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::WriteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::WriteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_document(database, write_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/documents:write', options)
          command.request_representation = Google::Apis::FirestoreV1::WriteRequest::Representation
          command.request_object = write_request_object
          command.response_representation = Google::Apis::FirestoreV1::WriteResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::WriteResponse
          command.params['database'] = database unless database.nil?
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
        # @param [Google::Apis::FirestoreV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_database_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
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
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
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
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a user creds.
        # @param [String] parent
        #   Required. A parent name of the form `projects/`project_id`/databases/`
        #   database_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] google_firestore_admin_v1_user_creds_object
        # @param [String] user_creds_id
        #   Required. The ID to use for the user creds, which will become the final
        #   component of the user creds's resource name. This value should be 4-63
        #   characters. Valid characters are /a-z-/ with first character a letter and the
        #   last a letter or a number. Must not be UUID-like /[0-9a-f]`8`(-[0-9a-f]`4`)`3`-
        #   [0-9a-f]`12`/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_database_user_cred(parent, google_firestore_admin_v1_user_creds_object = nil, user_creds_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userCreds', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.request_object = google_firestore_admin_v1_user_creds_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds
          command.params['parent'] = parent unless parent.nil?
          command.query['userCredsId'] = user_creds_id unless user_creds_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user creds.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   userCreds/`user_creds_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_database_user_cred(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a user creds. No-op if the user creds are already disabled.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   userCreds/`user_creds_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1DisableUserCredsRequest] google_firestore_admin_v1_disable_user_creds_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_database_user_cred(name, google_firestore_admin_v1_disable_user_creds_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1DisableUserCredsRequest::Representation
          command.request_object = google_firestore_admin_v1_disable_user_creds_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a user creds. No-op if the user creds are already enabled.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   userCreds/`user_creds_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1EnableUserCredsRequest] google_firestore_admin_v1_enable_user_creds_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_database_user_cred(name, google_firestore_admin_v1_enable_user_creds_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1EnableUserCredsRequest::Representation
          command.request_object = google_firestore_admin_v1_enable_user_creds_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user creds resource. Note that the returned resource does not contain
        # the secret value itself.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   userCreds/`user_creds_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_database_user_cred(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all user creds in the database. Note that the returned resource does not
        # contain the secret value itself.
        # @param [String] parent
        #   Required. A parent database name of the form `projects/`project_id`/databases/`
        #   database_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListUserCredsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListUserCredsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_database_user_creds(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userCreds', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListUserCredsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListUserCredsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets the password of a user creds.
        # @param [String] name
        #   Required. A name of the form `projects/`project_id`/databases/`database_id`/
        #   userCreds/`user_creds_id``
        # @param [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ResetUserPasswordRequest] google_firestore_admin_v1_reset_user_password_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_project_database_user_cred_password(name, google_firestore_admin_v1_reset_user_password_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resetPassword', options)
          command.request_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ResetUserPasswordRequest::Representation
          command.request_object = google_firestore_admin_v1_reset_user_password_request_object
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # @yieldparam result [Google::Apis::FirestoreV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Location::Representation
          command.response_class = Google::Apis::FirestoreV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
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
        # @yieldparam result [Google::Apis::FirestoreV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::FirestoreV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a backup.
        # @param [String] name
        #   Required. Name of the backup to delete. format is `projects/`project`/
        #   locations/`location`/backups/`backup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::Empty::Representation
          command.response_class = Google::Apis::FirestoreV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a backup.
        # @param [String] name
        #   Required. Name of the backup to fetch. Format is `projects/`project`/locations/
        #   `location`/backups/`backup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Backup::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the backups.
        # @param [String] parent
        #   Required. The location to list backups from. Format is `projects/`project`/
        #   locations/`location``. Use ``location` = '-'` to list backups from all
        #   locations for the given project. This allows listing backups from a single
        #   location or from all locations.
        # @param [String] filter
        #   An expression that filters the list of returned backups. A filter expression
        #   consists of a field name, a comparison operator, and a value for filtering.
        #   The value must be a string, a number, or a boolean. The comparison operator
        #   must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the
        #   contains operator. Filter rules are not case sensitive. The following fields
        #   in the Backup are eligible for filtering: * `database_uid` (supports `=` only)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backups(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backups', options)
          command.response_representation = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupsResponse::Representation
          command.response_class = Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
