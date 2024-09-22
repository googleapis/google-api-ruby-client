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
    module BackupdrV1
      # Backup and DR Service API
      #
      # 
      #
      # @example
      #    require 'google/apis/backupdr_v1'
      #
      #    Backupdr = Google::Apis::BackupdrV1 # Alias the module
      #    service = Backupdr::BackupdrService.new
      #
      # @see https://cloud.google.com/backup-disaster-recovery
      class BackupdrService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://backupdr.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-backupdr_v1',
                client_version: Google::Apis::BackupdrV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::BackupdrV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Location::Representation
          command.response_class = Google::Apis::BackupdrV1::Location
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
        # @yieldparam result [Google::Apis::BackupdrV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::BackupdrV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a BackupPlanAssociation
        # @param [String] parent
        #   Required. The backup plan association project and location in the format `
        #   projects/`project_id`/locations/`location``. In Cloud BackupDR locations map
        #   to GCP regions, for example **us-central1**.
        # @param [Google::Apis::BackupdrV1::BackupPlanAssociation] backup_plan_association_object
        # @param [String] backup_plan_association_id
        #   Required. The name of the backup plan association to create. The name must be
        #   unique for the specified project and location.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_backup_plan_association(parent, backup_plan_association_object = nil, backup_plan_association_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/backupPlanAssociations', options)
          command.request_representation = Google::Apis::BackupdrV1::BackupPlanAssociation::Representation
          command.request_object = backup_plan_association_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupPlanAssociationId'] = backup_plan_association_id unless backup_plan_association_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single BackupPlanAssociation.
        # @param [String] name
        #   Required. Name of the backup plan association resource, in the format `
        #   projects/`project`/locations/`location`/backupPlanAssociations/`
        #   backupPlanAssociationId``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup_plan_association(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single BackupPlanAssociation.
        # @param [String] name
        #   Required. Name of the backup plan association resource, in the format `
        #   projects/`project`/locations/`location`/backupPlanAssociations/`
        #   backupPlanAssociationId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::BackupPlanAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::BackupPlanAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_plan_association(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::BackupPlanAssociation::Representation
          command.response_class = Google::Apis::BackupdrV1::BackupPlanAssociation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BackupPlanAssociations in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve backup Plan
        #   Associations information, in the format `projects/`project_id`/locations/`
        #   location``. In Cloud BackupDR, locations map to GCP regions, for example **us-
        #   central1**. To retrieve backup plan associations for all locations, use "-"
        #   for the ``location`` value.
        # @param [String] filter
        #   Optional. Filtering results
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
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
        # @yieldparam result [Google::Apis::BackupdrV1::ListBackupPlanAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListBackupPlanAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_plan_associations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupPlanAssociations', options)
          command.response_representation = Google::Apis::BackupdrV1::ListBackupPlanAssociationsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListBackupPlanAssociationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Triggers a new Backup.
        # @param [String] name
        #   Required. Name of the backup plan association resource, in the format `
        #   projects/`project`/locations/`location`/backupPlanAssociations/`
        #   backupPlanAssociationId``
        # @param [Google::Apis::BackupdrV1::TriggerBackupRequest] trigger_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def trigger_backup_plan_association_backup(name, trigger_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:triggerBackup', options)
          command.request_representation = Google::Apis::BackupdrV1::TriggerBackupRequest::Representation
          command.request_object = trigger_backup_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a BackupPlan
        # @param [String] parent
        #   Required. The `BackupPlan` project and location in the format `projects/`
        #   project`/locations/`location``. In Cloud BackupDR locations map to GCP regions,
        #   for example **us-central1**.
        # @param [Google::Apis::BackupdrV1::BackupPlan] backup_plan_object
        # @param [String] backup_plan_id
        #   Required. The name of the `BackupPlan` to create. The name must be unique for
        #   the specified project and location.The name must start with a lowercase letter
        #   followed by up to 62 lowercase letters, numbers, or hyphens. Pattern, /a-z`,62`
        #   /.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_backup_plan(parent, backup_plan_object = nil, backup_plan_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/backupPlans', options)
          command.request_representation = Google::Apis::BackupdrV1::BackupPlan::Representation
          command.request_object = backup_plan_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupPlanId'] = backup_plan_id unless backup_plan_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single BackupPlan.
        # @param [String] name
        #   Required. The resource name of the `BackupPlan` to delete. Format: `projects/`
        #   project`/locations/`location`/backupPlans/`backup_plan``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup_plan(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single BackupPlan.
        # @param [String] name
        #   Required. The resource name of the `BackupPlan` to retrieve. Format: `projects/
        #   `project`/locations/`location`/backupPlans/`backup_plan``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::BackupPlan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::BackupPlan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_plan(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::BackupPlan::Representation
          command.response_class = Google::Apis::BackupdrV1::BackupPlan
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BackupPlans in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve `BackupPlans`
        #   information. Format: `projects/`project`/locations/`location``. In Cloud
        #   BackupDR, locations map to GCP regions, for e.g. **us-central1**. To retrieve
        #   backup plans for all locations, use "-" for the ``location`` value.
        # @param [String] filter
        #   Optional. Field match expression used to filter the results.
        # @param [String] order_by
        #   Optional. Field by which to sort the results.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `BackupPlans` to return in a single response.
        #   If not specified, a default value will be chosen by the service. Note that the
        #   response may include a partial list and a caller should only rely on the
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The value of next_page_token received from a previous `
        #   ListBackupPlans` call. Provide this to retrieve the subsequent page in a multi-
        #   page list of results. When paginating, all other parameters provided to `
        #   ListBackupPlans` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::ListBackupPlansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListBackupPlansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_plans(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupPlans', options)
          command.response_representation = Google::Apis::BackupdrV1::ListBackupPlansResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListBackupPlansResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::BackupdrV1::BackupVault] backup_vault_object
        # @param [String] backup_vault_id
        #   Required. ID of the requesting object If auto-generating ID server-side,
        #   remove this field and backup_vault_id from the method_signature of Create RPC
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
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is 'false'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_backup_vault(parent, backup_vault_object = nil, backup_vault_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/backupVaults', options)
          command.request_representation = Google::Apis::BackupdrV1::BackupVault::Representation
          command.request_object = backup_vault_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupVaultId'] = backup_vault_id unless backup_vault_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a BackupVault.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Boolean] allow_missing
        #   Optional. If true and the BackupVault is not found, the request will succeed
        #   but no action will be taken.
        # @param [String] etag
        #   The current etag of the backup vault. If an etag is provided and does not
        #   match the current etag of the connection, deletion will be blocked.
        # @param [Boolean] force
        #   Optional. If set to true, any data source from this backup vault will also be
        #   deleted.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is 'false'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup_vault(name, allow_missing: nil, etag: nil, force: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # FetchUsableBackupVaults lists usable BackupVaults in a given project and
        # location. Usable BackupVault are the ones that user has backupdr.backupVaults.
        # get permission.
        # @param [String] parent
        #   Required. The project and location for which to retrieve backupvault stores
        #   information, in the format 'projects/`project_id`/locations/`location`'. In
        #   Cloud Backup and DR, locations map to Google Cloud regions, for example **us-
        #   central1**. To retrieve backupvault stores for all locations, use "-" for the '
        #   `location`' value.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
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
        # @yieldparam result [Google::Apis::BackupdrV1::FetchUsableBackupVaultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::FetchUsableBackupVaultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_backup_vault_usable(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupVaults:fetchUsable', options)
          command.response_representation = Google::Apis::BackupdrV1::FetchUsableBackupVaultsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::FetchUsableBackupVaultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a BackupVault.
        # @param [String] name
        #   Required. Name of the backupvault store resource name, in the format 'projects/
        #   `project_id`/locations/`location`/backupVaults/`resource_name`'
        # @param [String] view
        #   Optional. Reserved for future use to provide a BASIC & FULL view of Backup
        #   Vault
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::BackupVault] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::BackupVault]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_vault(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::BackupVault::Representation
          command.response_class = Google::Apis::BackupdrV1::BackupVault
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BackupVaults in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve backupvault stores
        #   information, in the format 'projects/`project_id`/locations/`location`'. In
        #   Cloud Backup and DR, locations map to Google Cloud regions, for example **us-
        #   central1**. To retrieve backupvault stores for all locations, use "-" for the '
        #   `location`' value.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] view
        #   Optional. Reserved for future use to provide a BASIC & FULL view of Backup
        #   Vault.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::ListBackupVaultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListBackupVaultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_vaults(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupVaults', options)
          command.response_representation = Google::Apis::BackupdrV1::ListBackupVaultsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListBackupVaultsResponse
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
        
        # Updates the settings of a BackupVault.
        # @param [String] name
        #   Output only. Identifier. The resource name.
        # @param [Google::Apis::BackupdrV1::BackupVault] backup_vault_object
        # @param [Boolean] force
        #   Optional. If set to true, will not check plan duration against backup vault
        #   enforcement duration.
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   BackupVault resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then the
        #   request will fail.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is 'false'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_backup_vault(name, backup_vault_object = nil, force: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BackupdrV1::BackupVault::Representation
          command.request_object = backup_vault_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a BackupVault resource. A caller is not
        # required to have Google IAM permission to make this request.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BackupdrV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_backup_vault_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BackupdrV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BackupdrV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Internal only. Abandons a backup.
        # @param [String] data_source
        #   Required. The resource name of the instance, in the format 'projects/*/
        #   locations/*/backupVaults/*/dataSources/'.
        # @param [Google::Apis::BackupdrV1::AbandonBackupRequest] abandon_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def abandon_data_source_backup(data_source, abandon_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+dataSource}:abandonBackup', options)
          command.request_representation = Google::Apis::BackupdrV1::AbandonBackupRequest::Representation
          command.request_object = abandon_backup_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Internal only. Fetch access token for a given data source.
        # @param [String] name
        #   Required. The resource name for the location for which static IPs should be
        #   returned. Must be in the format 'projects/*/locations/*/backupVaults/*/
        #   dataSources'.
        # @param [Google::Apis::BackupdrV1::FetchAccessTokenRequest] fetch_access_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::FetchAccessTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::FetchAccessTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_data_source_access_token(name, fetch_access_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:fetchAccessToken', options)
          command.request_representation = Google::Apis::BackupdrV1::FetchAccessTokenRequest::Representation
          command.request_object = fetch_access_token_request_object
          command.response_representation = Google::Apis::BackupdrV1::FetchAccessTokenResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::FetchAccessTokenResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Internal only. Finalize a backup that was started by a call to InitiateBackup.
        # @param [String] data_source
        #   Required. The resource name of the instance, in the format 'projects/*/
        #   locations/*/backupVaults/*/dataSources/'.
        # @param [Google::Apis::BackupdrV1::FinalizeBackupRequest] finalize_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_data_source_backup(data_source, finalize_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+dataSource}:finalizeBackup', options)
          command.request_representation = Google::Apis::BackupdrV1::FinalizeBackupRequest::Representation
          command.request_object = finalize_backup_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a DataSource.
        # @param [String] name
        #   Required. Name of the data source resource name, in the format 'projects/`
        #   project_id`/locations/`location`/backupVaults/`resource_name`/dataSource/`
        #   resource_name`'
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_vault_data_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::DataSource::Representation
          command.response_class = Google::Apis::BackupdrV1::DataSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Internal only. Initiates a backup.
        # @param [String] data_source
        #   Required. The resource name of the instance, in the format 'projects/*/
        #   locations/*/backupVaults/*/dataSources/'.
        # @param [Google::Apis::BackupdrV1::InitiateBackupRequest] initiate_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::InitiateBackupResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::InitiateBackupResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initiate_data_source_backup(data_source, initiate_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+dataSource}:initiateBackup', options)
          command.request_representation = Google::Apis::BackupdrV1::InitiateBackupRequest::Representation
          command.request_object = initiate_backup_request_object
          command.response_representation = Google::Apis::BackupdrV1::InitiateBackupResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::InitiateBackupResponse
          command.params['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataSources in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve data sources
        #   information, in the format 'projects/`project_id`/locations/`location`'. In
        #   Cloud Backup and DR, locations map to Google Cloud regions, for example **us-
        #   central1**. To retrieve data sources for all locations, use "-" for the '`
        #   location`' value.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
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
        # @yieldparam result [Google::Apis::BackupdrV1::ListDataSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListDataSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_vault_data_sources(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataSources', options)
          command.response_representation = Google::Apis::BackupdrV1::ListDataSourcesResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListDataSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings of a DataSource.
        # @param [String] name
        #   Output only. Identifier. The resource name.
        # @param [Google::Apis::BackupdrV1::DataSource] data_source_object
        # @param [Boolean] allow_missing
        #   Optional. Enable upsert.
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   DataSource resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then the request will
        #   fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_backup_vault_data_source(name, data_source_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BackupdrV1::DataSource::Representation
          command.request_object = data_source_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataSource. This is a custom method instead of a standard delete
        # method because external clients will not delete DataSources except for
        # BackupDR backup appliances.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BackupdrV1::RemoveDataSourceRequest] remove_data_source_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_data_source(name, remove_data_source_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:remove', options)
          command.request_representation = Google::Apis::BackupdrV1::RemoveDataSourceRequest::Representation
          command.request_object = remove_data_source_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the internal status of a DataSource.
        # @param [String] data_source
        #   Required. The resource name of the instance, in the format 'projects/*/
        #   locations/*/backupVaults/*/dataSources/'.
        # @param [Google::Apis::BackupdrV1::SetInternalStatusRequest] set_internal_status_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_data_source_internal_status(data_source, set_internal_status_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+dataSource}:setInternalStatus', options)
          command.request_representation = Google::Apis::BackupdrV1::SetInternalStatusRequest::Representation
          command.request_object = set_internal_status_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Backup.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup_vault_data_source_backup(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a Backup.
        # @param [String] name
        #   Required. Name of the data source resource name, in the format 'projects/`
        #   project_id`/locations/`location`/backupVaults/`backupVault`/dataSources/`
        #   datasource`/backups/`backup`'
        # @param [String] view
        #   Optional. Reserved for future use to provide a BASIC & FULL view of Backup
        #   resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_vault_data_source_backup(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Backup::Representation
          command.response_class = Google::Apis::BackupdrV1::Backup
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Backups in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve backup information,
        #   in the format 'projects/`project_id`/locations/`location`'. In Cloud Backup
        #   and DR, locations map to Google Cloud regions, for example **us-central1**. To
        #   retrieve data sources for all locations, use "-" for the '`location`' value.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] view
        #   Optional. Reserved for future use to provide a BASIC & FULL view of Backup
        #   resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_vault_data_source_backups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backups', options)
          command.response_representation = Google::Apis::BackupdrV1::ListBackupsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListBackupsResponse
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
        
        # Updates the settings of a Backup.
        # @param [String] name
        #   Output only. Identifier. Name of the resource.
        # @param [Google::Apis::BackupdrV1::Backup] backup_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   Backup resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then the request will
        #   fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_backup_vault_data_source_backup(name, backup_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BackupdrV1::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restore from a Backup
        # @param [String] name
        #   Required. The resource name of the Backup instance, in the format 'projects/*/
        #   locations/*/backupVaults/*/dataSources/*/backups/'.
        # @param [Google::Apis::BackupdrV1::RestoreBackupRequest] restore_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_backup(name, restore_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:restore', options)
          command.request_representation = Google::Apis::BackupdrV1::RestoreBackupRequest::Representation
          command.request_object = restore_backup_request_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ManagementServer in a given project and location.
        # @param [String] parent
        #   Required. The management server project and location in the format 'projects/`
        #   project_id`/locations/`location`'. In Cloud Backup and DR locations map to
        #   Google Cloud regions, for example **us-central1**.
        # @param [Google::Apis::BackupdrV1::ManagementServer] management_server_object
        # @param [String] management_server_id
        #   Required. The name of the management server to create. The name must be unique
        #   for the specified project and location.
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_management_server(parent, management_server_object = nil, management_server_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/managementServers', options)
          command.request_representation = Google::Apis::BackupdrV1::ManagementServer::Representation
          command.request_object = management_server_object
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['managementServerId'] = management_server_id unless management_server_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ManagementServer.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_management_server(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ManagementServer.
        # @param [String] name
        #   Required. Name of the management server resource name, in the format 'projects/
        #   `project_id`/locations/`location`/managementServers/`resource_name`'
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::ManagementServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ManagementServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_management_server(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::ManagementServer::Representation
          command.response_class = Google::Apis::BackupdrV1::ManagementServer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_management_server_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BackupdrV1::Policy::Representation
          command.response_class = Google::Apis::BackupdrV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ManagementServers in a given project and location.
        # @param [String] parent
        #   Required. The project and location for which to retrieve management servers
        #   information, in the format 'projects/`project_id`/locations/`location`'. In
        #   Cloud BackupDR, locations map to Google Cloud regions, for example **us-
        #   central1**. To retrieve management servers for all locations, use "-" for the '
        #   `location`' value.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
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
        # @yieldparam result [Google::Apis::BackupdrV1::ListManagementServersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListManagementServersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_management_servers(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/managementServers', options)
          command.response_representation = Google::Apis::BackupdrV1::ListManagementServersResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListManagementServersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BackupdrV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_management_server_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BackupdrV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BackupdrV1::Policy::Representation
          command.response_class = Google::Apis::BackupdrV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BackupdrV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_management_server_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BackupdrV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BackupdrV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @param [Google::Apis::BackupdrV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BackupdrV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::BackupdrV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::BackupdrV1::Empty::Representation
          command.response_class = Google::Apis::BackupdrV1::Empty
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
        # @yieldparam result [Google::Apis::BackupdrV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Empty::Representation
          command.response_class = Google::Apis::BackupdrV1::Empty
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
        # @yieldparam result [Google::Apis::BackupdrV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BackupdrV1::Operation::Representation
          command.response_class = Google::Apis::BackupdrV1::Operation
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
        # @yieldparam result [Google::Apis::BackupdrV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BackupdrV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::BackupdrV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::BackupdrV1::ListOperationsResponse
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
