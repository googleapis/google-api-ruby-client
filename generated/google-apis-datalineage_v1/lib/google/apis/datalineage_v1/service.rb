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
    module DatalineageV1
      # Data Lineage API
      #
      # 
      #
      # @example
      #    require 'google/apis/datalineage_v1'
      #
      #    Datalineage = Google::Apis::DatalineageV1 # Alias the module
      #    service = Datalineage::DatalineageService.new
      #
      # @see https://cloud.google.com/data-catalog
      class DatalineageService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datalineage.googleapis.com/', '',
                client_name: 'google-apis-datalineage_v1',
                client_version: Google::Apis::DatalineageV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieve information about LineageProcesses associated with specific links.
        # LineageProcesses are transformation pipelines that result in data flowing from
        # **source** to **target** assets. Links between assets represent this operation.
        # If you have specific link names, you can use this method to verify which
        # LineageProcesses contribute to creating those links. See the SearchLinks
        # method for more information on how to retrieve link name. You can retrieve the
        # LineageProcess information in every project where you have the `datalineage.
        # events.get` permission. The project provided in the URL is used for Billing
        # and Quota.
        # @param [String] parent
        #   Required. The project and location where you want to search.
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest] google_cloud_datacatalog_lineage_v1_batch_search_link_processes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_search_link_processes(parent, google_cloud_datacatalog_lineage_v1_batch_search_link_processes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:batchSearchLinkProcesses', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_batch_search_link_processes_request_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a list of links connected to a specific asset. Links represent the
        # data flow between **source** (upstream) and **target** (downstream) assets in
        # transformation pipelines. Links are stored in the same project as the Lineage
        # Events that create them. You can retrieve links in every project where you
        # have the `datalineage.events.get` permission. The project provided in the URL
        # is used for Billing and Quota.
        # @param [String] parent
        #   Required. The project and location you want search in.
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksRequest] google_cloud_datacatalog_lineage_v1_search_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_links(parent, google_cloud_datacatalog_lineage_v1_search_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:searchLinks', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksRequest::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_search_links_request_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLinksResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @param [Google::Apis::DatalineageV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new process.
        # @param [String] parent
        #   Required. The name of the project and its location that should own the process.
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process] google_cloud_datacatalog_lineage_v1_process_object
        # @param [String] request_id
        #   A unique identifier for this request. Restricted to 36 ASCII characters. A
        #   random UUID is recommended. This request is idempotent only if a `request_id`
        #   is provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_process(parent, google_cloud_datacatalog_lineage_v1_process_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/processes', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_process_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the process with the specified name.
        # @param [String] name
        #   Required. The name of the process to delete.
        # @param [Boolean] allow_missing
        #   If set to true and the process is not found, the request succeeds but the
        #   server doesn't perform any actions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_process(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of the specified process.
        # @param [String] name
        #   Required. The name of the process to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_process(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List processes in the given project and location. List order is descending by
        # insertion time.
        # @param [String] parent
        #   Required. The name of the project and its location that owns this collection
        #   of processes.
        # @param [Fixnum] page_size
        #   The maximum number of processes to return. The service may return fewer than
        #   this value. If unspecified, at most 50 processes are returned. The maximum
        #   value is 100; values greater than 100 are cut to 100.
        # @param [String] page_token
        #   The page token received from a previous `ListProcesses` call. Specify it to
        #   get the next page. When paginating, all other parameters specified in this
        #   call must match the parameters of the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListProcessesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListProcessesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/processes', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListProcessesResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListProcessesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a process.
        # @param [String] name
        #   Immutable. The resource name of the lineage process. Format: `projects/`
        #   project`/locations/`location`/processes/`process``. Can be specified or auto-
        #   assigned. `process` must be not longer than 200 characters and only contain
        #   characters in a set: `a-zA-Z0-9_-:.`
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process] google_cloud_datacatalog_lineage_v1_process_object
        # @param [Boolean] allow_missing
        #   If set to true and the process is not found, the request inserts it.
        # @param [String] update_mask
        #   The list of fields to update. Currently not used. The whole message is updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_process(name, google_cloud_datacatalog_lineage_v1_process_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_process_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new run.
        # @param [String] parent
        #   Required. The name of the process that should own the run.
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run] google_cloud_datacatalog_lineage_v1_run_object
        # @param [String] request_id
        #   A unique identifier for this request. Restricted to 36 ASCII characters. A
        #   random UUID is recommended. This request is idempotent only if a `request_id`
        #   is provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_process_run(parent, google_cloud_datacatalog_lineage_v1_run_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/runs', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_run_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the run with the specified name.
        # @param [String] name
        #   Required. The name of the run to delete.
        # @param [Boolean] allow_missing
        #   If set to true and the run is not found, the request succeeds but the server
        #   doesn't perform any actions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_process_run(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of the specified run.
        # @param [String] name
        #   Required. The name of the run to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_process_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists runs in the given project and location. List order is descending by `
        # start_time`.
        # @param [String] parent
        #   Required. The name of process that owns this collection of runs.
        # @param [Fixnum] page_size
        #   The maximum number of runs to return. The service may return fewer than this
        #   value. If unspecified, at most 50 runs are returned. The maximum value is 100;
        #   values greater than 100 are cut to 100.
        # @param [String] page_token
        #   The page token received from a previous `ListRuns` call. Specify it to get the
        #   next page. When paginating, all other parameters specified in this call must
        #   match the parameters of the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_process_runs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/runs', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListRunsResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a run.
        # @param [String] name
        #   Immutable. The resource name of the run. Format: `projects/`project`/locations/
        #   `location`/processes/`process`/runs/`run``. Can be specified or auto-assigned.
        #   `run` must be not longer than 200 characters and only contain characters in a
        #   set: `a-zA-Z0-9_-:.`
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run] google_cloud_datacatalog_lineage_v1_run_object
        # @param [Boolean] allow_missing
        #   If set to true and the run is not found, the request creates it.
        # @param [String] update_mask
        #   The list of fields to update. Currently not used. The whole message is updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_process_run(name, google_cloud_datacatalog_lineage_v1_run_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_run_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new lineage event.
        # @param [String] parent
        #   Required. The name of the run that should own the lineage event.
        # @param [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent] google_cloud_datacatalog_lineage_v1_lineage_event_object
        # @param [String] request_id
        #   A unique identifier for this request. Restricted to 36 ASCII characters. A
        #   random UUID is recommended. This request is idempotent only if a `request_id`
        #   is provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_process_run_lineage_event(parent, google_cloud_datacatalog_lineage_v1_lineage_event_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/lineageEvents', options)
          command.request_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent::Representation
          command.request_object = google_cloud_datacatalog_lineage_v1_lineage_event_object
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the lineage event with the specified name.
        # @param [String] name
        #   Required. The name of the lineage event to delete.
        # @param [Boolean] allow_missing
        #   If set to true and the lineage event is not found, the request succeeds but
        #   the server doesn't perform any actions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_process_run_lineage_event(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a specified lineage event.
        # @param [String] name
        #   Required. The name of the lineage event to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_process_run_lineage_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists lineage events in the given project and location. The list order is not
        # defined.
        # @param [String] parent
        #   Required. The name of the run that owns the collection of lineage events to
        #   get.
        # @param [Fixnum] page_size
        #   The maximum number of lineage events to return. The service may return fewer
        #   events than this value. If unspecified, at most 50 events are returned. The
        #   maximum value is 100; values greater than 100 are cut to 100.
        # @param [String] page_token
        #   The page token received from a previous `ListLineageEvents` call. Specify it
        #   to get the next page. When paginating, all other parameters specified in this
        #   call must match the parameters of the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListLineageEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListLineageEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_process_run_lineage_events(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/lineageEvents', options)
          command.response_representation = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListLineageEventsResponse::Representation
          command.response_class = Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ListLineageEventsResponse
          command.params['parent'] = parent unless parent.nil?
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
