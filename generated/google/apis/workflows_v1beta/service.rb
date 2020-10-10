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
    module WorkflowsV1beta
      # Workflows API
      #
      # Orchestrate Workflows consisting of Google Cloud APIs, SaaS APIs or private
      #  API endpoints.
      #
      # @example
      #    require 'google/apis/workflows_v1beta'
      #
      #    Workflows = Google::Apis::WorkflowsV1beta # Alias the module
      #    service = Workflows::WorkflowsService.new
      #
      # @see https://cloud.google.com/workflows
      class WorkflowsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://workflows.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::Location::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
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
        # @yieldparam result [Google::Apis::WorkflowsV1beta::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/locations', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::ListLocationsResponse::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::Empty::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Empty
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
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::Operation::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
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
        # @yieldparam result [Google::Apis::WorkflowsV1beta::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::ListOperationsResponse::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new workflow. If a workflow with the specified name already exists
        # in the specified project and location, the long running operation will return
        # ALREADY_EXISTS error.
        # @param [String] parent
        #   Required. Project and location in which the workflow should be created. Format:
        #   projects/`project`/locations/`location`
        # @param [Google::Apis::WorkflowsV1beta::Workflow] workflow_object
        # @param [String] workflow_id
        #   Required. The ID of the workflow to be created. It has to fulfill the
        #   following requirements: * Must contain only letters, numbers, underscores and
        #   hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must
        #   end with a number or a letter. * Must be unique within the customer project
        #   and location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_workflow(parent, workflow_object = nil, workflow_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/workflows', options)
          command.request_representation = Google::Apis::WorkflowsV1beta::Workflow::Representation
          command.request_object = workflow_object
          command.response_representation = Google::Apis::WorkflowsV1beta::Operation::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['workflowId'] = workflow_id unless workflow_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a workflow with the specified name. This method also cancels and
        # deletes all running executions of the workflow.
        # @param [String] name
        #   Required. Name of the workflow to be deleted. Format: projects/`project`/
        #   locations/`location`/workflows/`workflow`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_workflow(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::Operation::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Workflow.
        # @param [String] name
        #   Required. Name of the workflow which information should be retrieved. Format:
        #   projects/`project`/locations/`location`/workflows/`workflow`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Workflow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Workflow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workflow(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::Workflow::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Workflow
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Workflows in a given project and location. The default order is not
        # specified.
        # @param [String] parent
        #   Required. Project and location from which the workflows should be listed.
        #   Format: projects/`project`/locations/`location`
        # @param [String] filter
        #   Filter to restrict results to specific workflows.
        # @param [String] order_by
        #   Comma-separated list of fields that that specify the order of the results.
        #   Default sorting order for a field is ascending. To specify descending order
        #   for a field, append a " desc" suffix. If not specified, the results will be
        #   returned in an unspecified order.
        # @param [Fixnum] page_size
        #   Maximum number of workflows to return per call. The service may return fewer
        #   than this value. If the value is not specified, a default value of 500 will be
        #   used. The maximum permitted value is 1000 and values greater than 1000 will be
        #   coerced down to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListWorkflows` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListWorkflows` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkflowsV1beta::ListWorkflowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::ListWorkflowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_workflows(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/workflows', options)
          command.response_representation = Google::Apis::WorkflowsV1beta::ListWorkflowsResponse::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::ListWorkflowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing workflow. Running this method has no impact on already
        # running executions of the workflow. A new revision of the workflow may be
        # created as a result of a successful update operation. In that case, such
        # revision will be used in new workflow executions.
        # @param [String] name
        #   The resource name of the workflow. Format: projects/`project`/locations/`
        #   location`/workflows/`workflow`
        # @param [Google::Apis::WorkflowsV1beta::Workflow] workflow_object
        # @param [String] update_mask
        #   List of fields to be updated. If not present, the entire workflow will be
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkflowsV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkflowsV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_workflow(name, workflow_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::WorkflowsV1beta::Workflow::Representation
          command.request_object = workflow_object
          command.response_representation = Google::Apis::WorkflowsV1beta::Operation::Representation
          command.response_class = Google::Apis::WorkflowsV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
