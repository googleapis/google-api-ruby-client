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
    module FirebasedatabaseV1beta
      # Firebase Realtime Database API
      #
      # The Firebase Realtime Database API enables programmatic provisioning and
      #  management of Realtime Database instances.
      #
      # @example
      #    require 'google/apis/firebasedatabase_v1beta'
      #
      #    Firebasedatabase = Google::Apis::FirebasedatabaseV1beta # Alias the module
      #    service = Firebasedatabase::FirebaseRealtimeDatabaseService.new
      #
      # @see https://firebase.google.com/docs/reference/rest/database/database-management/rest/
      class FirebaseRealtimeDatabaseService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://firebasedatabase.googleapis.com/', '',
                client_name: 'google-apis-firebasedatabase_v1beta',
                client_version: Google::Apis::FirebasedatabaseV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Requests that a new DatabaseInstance be created. The state of a successfully
        # created DatabaseInstance is ACTIVE. Only available for projects on the Blaze
        # plan. Projects can be upgraded using the Cloud Billing API https://cloud.
        # google.com/billing/reference/rest/v1/projects/updateBillingInfo. Note that it
        # might take a few minutes for billing enablement state to propagate to Firebase
        # systems.
        # @param [String] parent
        #   Required. The parent project for which to create a database instance, in the
        #   form: `projects/`project-number`/locations/`location-id``.
        # @param [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] database_instance_object
        # @param [String] database_id
        #   The globally unique identifier of the database instance.
        # @param [Boolean] validate_only
        #   When set to true, the request will be validated but not submitted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_instance(parent, database_instance_object = nil, database_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/instances', options)
          command.request_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
          command.params['parent'] = parent unless parent.nil?
          command.query['databaseId'] = database_id unless database_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks a DatabaseInstance to be deleted. The DatabaseInstance will be set to
        # the DELETED state for 20 days, and will be purged within 30 days. The default
        # database cannot be deleted. IDs for deleted database instances may never be
        # recovered or re-used. The Database may only be deleted if it is already in a
        # DISABLED state.
        # @param [String] name
        #   Required. The fully qualified resource name of the database instance, in the
        #   form: `projects/`project-number`/locations/`location-id`/instances/`database-
        #   id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a DatabaseInstance. The database can be re-enabled later using
        # ReenableDatabaseInstance. When a database is disabled, all reads and writes
        # are denied, including view access in the Firebase console.
        # @param [String] name
        #   Required. The fully qualified resource name of the database instance, in the
        #   form: `projects/`project-number`/locations/`location-id`/instances/`database-
        #   id``
        # @param [Google::Apis::FirebasedatabaseV1beta::DisableDatabaseInstanceRequest] disable_database_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_database_instance(name, disable_database_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:disable', options)
          command.request_representation = Google::Apis::FirebasedatabaseV1beta::DisableDatabaseInstanceRequest::Representation
          command.request_object = disable_database_instance_request_object
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the DatabaseInstance identified by the specified resource name.
        # @param [String] name
        #   Required. The fully qualified resource name of the database instance, in the
        #   form: `projects/`project-number`/locations/`location-id`/instances/`database-
        #   id``. `database-id` is a globally unique identifier across all parent
        #   collections. For convenience, this method allows you to supply `-` as a
        #   wildcard character in place of specific collections under `projects` and `
        #   locations`. The resulting wildcarding form of the method is: `projects/-/
        #   locations/-/instances/`database-id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each DatabaseInstance associated with the specified parent project. The
        # list items are returned in no particular order, but will be a consistent view
        # of the database instances when additional requests are made with a `pageToken`.
        # The resulting list contains instances in any STATE. The list results may be
        # stale by a few seconds. Use GetDatabaseInstance for consistent reads.
        # @param [String] parent
        #   Required. The parent project for which to list database instances, in the form:
        #   `projects/`project-number`/locations/`location-id`` To list across all
        #   locations, use a parent in the form: `projects/`project-number`/locations/-`
        # @param [Fixnum] page_size
        #   The maximum number of database instances to return in the response. The server
        #   may return fewer than this at its discretion. If no value is specified (or too
        #   large a value is specified), then the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to `ListDatabaseInstances` indicating
        #   where in the set of database instances to resume listing.
        # @param [Boolean] show_deleted
        #   Indicate that DatabaseInstances in the `DELETED` state should also be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::ListDatabaseInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::ListDatabaseInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/instances', options)
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::ListDatabaseInstancesResponse::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::ListDatabaseInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a DatabaseInstance. The database must have been disabled previously
        # using DisableDatabaseInstance. The state of a successfully reenabled
        # DatabaseInstance is ACTIVE.
        # @param [String] name
        #   Required. The fully qualified resource name of the database instance, in the
        #   form: `projects/`project-number`/locations/`location-id`/instances/`database-
        #   id``
        # @param [Google::Apis::FirebasedatabaseV1beta::ReenableDatabaseInstanceRequest] reenable_database_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reenable_database_instance(name, reenable_database_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:reenable', options)
          command.request_representation = Google::Apis::FirebasedatabaseV1beta::ReenableDatabaseInstanceRequest::Representation
          command.request_object = reenable_database_instance_request_object
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a DatabaseInstance that was previously marked to be deleted. After
        # the delete method is used, DatabaseInstances are set to the DELETED state for
        # 20 days, and will be purged within 30 days. Databases in the DELETED state can
        # be undeleted without losing any data. This method may only be used on a
        # DatabaseInstance in the DELETED state. Purged DatabaseInstances may not be
        # recovered.
        # @param [String] name
        #   Required. The fully qualified resource name of the database instance, in the
        #   form: `projects/`project-number`/locations/`location-id`/instances/`database-
        #   id``
        # @param [Google::Apis::FirebasedatabaseV1beta::UndeleteDatabaseInstanceRequest] undelete_database_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasedatabaseV1beta::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_database_instance(name, undelete_database_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:undelete', options)
          command.request_representation = Google::Apis::FirebasedatabaseV1beta::UndeleteDatabaseInstanceRequest::Representation
          command.request_object = undelete_database_instance_request_object
          command.response_representation = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance::Representation
          command.response_class = Google::Apis::FirebasedatabaseV1beta::DatabaseInstance
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
