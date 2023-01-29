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
    module NotebooksV1
      # Notebooks API
      #
      # Notebooks API is used to manage notebook resources in Google Cloud.
      #
      # @example
      #    require 'google/apis/notebooks_v1'
      #
      #    Notebooks = Google::Apis::NotebooksV1 # Alias the module
      #    service = Notebooks::AIPlatformNotebooksService.new
      #
      # @see https://cloud.google.com/notebooks/docs/
      class AIPlatformNotebooksService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://notebooks.googleapis.com/', '',
                client_name: 'google-apis-notebooks_v1',
                client_version: Google::Apis::NotebooksV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::NotebooksV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Location::Representation
          command.response_class = Google::Apis::NotebooksV1::Location
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
        # @yieldparam result [Google::Apis::NotebooksV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::NotebooksV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Environment.
        # @param [String] parent
        #   Required. Format: `projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::Environment] environment_object
        # @param [String] environment_id
        #   Required. User-defined unique ID of this environment. The `environment_id`
        #   must be 1 to 63 characters long and contain only lowercase letters, numeric
        #   characters, and dashes. The first character must be a lowercase letter and the
        #   last character cannot be a dash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_environment(parent, environment_object = nil, environment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/environments', options)
          command.request_representation = Google::Apis::NotebooksV1::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Environment.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/environments/`
        #   environment_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Environment.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/environments/`
        #   environment_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Environment::Representation
          command.response_class = Google::Apis::NotebooksV1::Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists environments in a project.
        # @param [String] parent
        #   Required. Format: `projects/`project_id`/locations/`location``
        # @param [Fixnum] page_size
        #   Maximum return size of the list call.
        # @param [String] page_token
        #   A previous returned page token that can be used to continue listing from the
        #   last result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/environments', options)
          command.response_representation = Google::Apis::NotebooksV1::ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Execution in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::Execution] execution_object
        # @param [String] execution_id
        #   Required. User-defined unique ID of this execution.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_execution(parent, execution_object = nil, execution_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/executions', options)
          command.request_representation = Google::Apis::NotebooksV1::Execution::Representation
          command.request_object = execution_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['executionId'] = execution_id unless execution_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes execution
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/executions/`
        #   execution_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of executions
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/executions/`
        #   execution_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Execution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Execution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Execution::Representation
          command.response_class = Google::Apis::NotebooksV1::Execution
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists executions in a given project and location
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [String] filter
        #   Filter applied to resulting executions. Currently only supports filtering
        #   executions by a specified `schedule_id`. Format: `schedule_id=`
        # @param [String] order_by
        #   Sort by field.
        # @param [Fixnum] page_size
        #   Maximum return size of the list call.
        # @param [String] page_token
        #   A previous returned page token that can be used to continue listing from the
        #   last result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::ListExecutionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListExecutionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_executions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/executions', options)
          command.response_representation = Google::Apis::NotebooksV1::ListExecutionsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListExecutionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Instance in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::Instance] instance_object
        # @param [String] instance_id
        #   Required. User-defined unique ID of this instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_instance(parent, instance_object = nil, instance_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::NotebooksV1::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['instanceId'] = instance_id unless instance_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Diagnostic File and runs Diagnostic Tool given an Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::DiagnoseInstanceRequest] diagnose_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def diagnose_instance(name, diagnose_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:diagnose', options)
          command.request_representation = Google::Apis::NotebooksV1::DiagnoseInstanceRequest::Representation
          command.request_object = diagnose_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Instance::Representation
          command.response_class = Google::Apis::NotebooksV1::Instance
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
        # @yieldparam result [Google::Apis::NotebooksV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NotebooksV1::Policy::Representation
          command.response_class = Google::Apis::NotebooksV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check if a notebook instance is healthy.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::GetInstanceHealthResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::GetInstanceHealthResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_instance_health(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getInstanceHealth', options)
          command.response_representation = Google::Apis::NotebooksV1::GetInstanceHealthResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::GetInstanceHealthResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check if a notebook instance is upgradable.
        # @param [String] notebook_instance
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [String] type
        #   Optional. The optional UpgradeType. Setting this field will search for
        #   additional compute images to upgrade this instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::IsInstanceUpgradeableResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::IsInstanceUpgradeableResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def is_project_location_instance_upgradeable(notebook_instance, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+notebookInstance}:isUpgradeable', options)
          command.response_representation = Google::Apis::NotebooksV1::IsInstanceUpgradeableResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::IsInstanceUpgradeableResponse
          command.params['notebookInstance'] = notebook_instance unless notebook_instance.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instances in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Fixnum] page_size
        #   Maximum return size of the list call.
        # @param [String] page_token
        #   A previous returned page token that can be used to continue listing from the
        #   last result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::NotebooksV1::ListInstancesResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers an existing legacy notebook instance to the Notebooks API server.
        # Legacy instances are instances created with the legacy Compute Engine calls.
        # They are not manageable by the Notebooks API out of the box. This call makes
        # these instances manageable by the Notebooks API.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::RegisterInstanceRequest] register_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_instance(parent, register_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances:register', options)
          command.request_representation = Google::Apis::NotebooksV1::RegisterInstanceRequest::Representation
          command.request_object = register_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows notebook instances to report their latest instance information to the
        # Notebooks API server. The server will merge the reported information to the
        # instance metadata store. Do not use this method directly.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::ReportInstanceInfoRequest] report_instance_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_instance_info(name, report_instance_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:report', options)
          command.request_representation = Google::Apis::NotebooksV1::ReportInstanceInfoRequest::Representation
          command.request_object = report_instance_info_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports and processes an instance event.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::ReportInstanceEventRequest] report_instance_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_project_location_instance_event(name, report_instance_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reportEvent', options)
          command.request_representation = Google::Apis::NotebooksV1::ReportInstanceEventRequest::Representation
          command.request_object = report_instance_event_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets a notebook instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::ResetInstanceRequest] reset_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance(name, reset_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reset', options)
          command.request_representation = Google::Apis::NotebooksV1::ResetInstanceRequest::Representation
          command.request_object = reset_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rollbacks a notebook instance to the previous version.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::RollbackInstanceRequest] rollback_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_instance(name, rollback_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rollback', options)
          command.request_representation = Google::Apis::NotebooksV1::RollbackInstanceRequest::Representation
          command.request_object = rollback_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the guest accelerators of a single Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::SetInstanceAcceleratorRequest] set_instance_accelerator_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_instance_accelerator(name, set_instance_accelerator_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:setAccelerator', options)
          command.request_representation = Google::Apis::NotebooksV1::SetInstanceAcceleratorRequest::Representation
          command.request_object = set_instance_accelerator_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::NotebooksV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NotebooksV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::NotebooksV1::Policy::Representation
          command.response_class = Google::Apis::NotebooksV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces all the labels of an Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::SetInstanceLabelsRequest] set_instance_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_instance_labels(name, set_instance_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:setLabels', options)
          command.request_representation = Google::Apis::NotebooksV1::SetInstanceLabelsRequest::Representation
          command.request_object = set_instance_labels_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the machine type of a single Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::SetInstanceMachineTypeRequest] set_instance_machine_type_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_instance_machine_type(name, set_instance_machine_type_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:setMachineType', options)
          command.request_representation = Google::Apis::NotebooksV1::SetInstanceMachineTypeRequest::Representation
          command.request_object = set_instance_machine_type_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a notebook instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::StartInstanceRequest] start_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_instance(name, start_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:start', options)
          command.request_representation = Google::Apis::NotebooksV1::StartInstanceRequest::Representation
          command.request_object = start_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops a notebook instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::StopInstanceRequest] stop_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_instance(name, stop_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::NotebooksV1::StopInstanceRequest::Representation
          command.request_object = stop_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::NotebooksV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_instance_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NotebooksV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::NotebooksV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Notebook Instance configurations.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::UpdateInstanceConfigRequest] update_instance_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_instance_config(name, update_instance_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:updateConfig', options)
          command.request_representation = Google::Apis::NotebooksV1::UpdateInstanceConfigRequest::Representation
          command.request_object = update_instance_config_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add/update metadata items for an instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsRequest] update_instance_metadata_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_instance_metadata_items(name, update_instance_metadata_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:updateMetadataItems', options)
          command.request_representation = Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsRequest::Representation
          command.request_object = update_instance_metadata_items_request_object
          command.response_representation = Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::UpdateInstanceMetadataItemsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Shielded instance configuration of a single Instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::UpdateShieldedInstanceConfigRequest] update_shielded_instance_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_shielded_instance_config(name, update_shielded_instance_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:updateShieldedInstanceConfig', options)
          command.request_representation = Google::Apis::NotebooksV1::UpdateShieldedInstanceConfigRequest::Representation
          command.request_object = update_shielded_instance_config_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrades a notebook instance to the latest version.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::UpgradeInstanceRequest] upgrade_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upgrade_instance(name, upgrade_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:upgrade', options)
          command.request_representation = Google::Apis::NotebooksV1::UpgradeInstanceRequest::Representation
          command.request_object = upgrade_instance_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows notebook instances to call this endpoint to upgrade themselves. Do not
        # use this method directly.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/instances/`
        #   instance_id``
        # @param [Google::Apis::NotebooksV1::UpgradeInstanceInternalRequest] upgrade_instance_internal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upgrade_project_location_instance_internal(name, upgrade_instance_internal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:upgradeInternal', options)
          command.request_representation = Google::Apis::NotebooksV1::UpgradeInstanceInternalRequest::Representation
          command.request_object = upgrade_instance_internal_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::NotebooksV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::NotebooksV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::NotebooksV1::Empty::Representation
          command.response_class = Google::Apis::NotebooksV1::Empty
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
        # @yieldparam result [Google::Apis::NotebooksV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Empty::Representation
          command.response_class = Google::Apis::NotebooksV1::Empty
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
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
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
        # @yieldparam result [Google::Apis::NotebooksV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::NotebooksV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Runtime in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::Runtime] runtime_object
        # @param [String] request_id
        #   Idempotent request UUID.
        # @param [String] runtime_id
        #   Required. User-defined unique ID of this Runtime.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_runtime(parent, runtime_object = nil, request_id: nil, runtime_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/runtimes', options)
          command.request_representation = Google::Apis::NotebooksV1::Runtime::Representation
          command.request_object = runtime_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['runtimeId'] = runtime_id unless runtime_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Runtime.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [String] request_id
        #   Idempotent request UUID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_runtime(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Diagnostic File and runs Diagnostic Tool given a Runtime.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtimes_id``
        # @param [Google::Apis::NotebooksV1::DiagnoseRuntimeRequest] diagnose_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def diagnose_runtime(name, diagnose_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:diagnose', options)
          command.request_representation = Google::Apis::NotebooksV1::DiagnoseRuntimeRequest::Representation
          command.request_object = diagnose_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Runtime. The location must be a regional endpoint
        # rather than zonal.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Runtime] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Runtime]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_runtime(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Runtime::Representation
          command.response_class = Google::Apis::NotebooksV1::Runtime
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
        # @yieldparam result [Google::Apis::NotebooksV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_runtime_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NotebooksV1::Policy::Representation
          command.response_class = Google::Apis::NotebooksV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Runtimes in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Fixnum] page_size
        #   Maximum return size of the list call.
        # @param [String] page_token
        #   A previous returned page token that can be used to continue listing from the
        #   last result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::ListRuntimesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListRuntimesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_runtimes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/runtimes', options)
          command.response_representation = Google::Apis::NotebooksV1::ListRuntimesResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListRuntimesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Notebook Runtime configuration.
        # @param [String] name
        #   Output only. The resource name of the runtime. Format: `projects/`project`/
        #   locations/`location`/runtimes/`runtimeId``
        # @param [Google::Apis::NotebooksV1::Runtime] runtime_object
        # @param [String] request_id
        #   Idempotent request UUID.
        # @param [String] update_mask
        #   Required. Specifies the path, relative to `Runtime`, of the field to update.
        #   For example, to change the software configuration kernels, the `update_mask`
        #   parameter would be specified as `software_config.kernels`, and the `PATCH`
        #   request body would specify the new value, as follows: ` "software_config":` "
        #   kernels": [` 'repository': 'gcr.io/deeplearning-platform-release/pytorch-gpu',
        #   'tag': 'latest' `], ` ` Currently, only the following fields can be updated: -
        #   `software_config.kernels` - `software_config.post_startup_script` - `
        #   software_config.custom_gpu_driver_path` - `software_config.idle_shutdown` - `
        #   software_config.idle_shutdown_timeout` - `software_config.disable_terminal` - `
        #   labels`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_runtime(name, runtime_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::NotebooksV1::Runtime::Representation
          command.request_object = runtime_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an access token for the consumer service account that the customer
        # attached to the runtime. Only accessible from the tenant instance.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalRequest] refresh_runtime_token_internal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refresh_runtime_token_internal(name, refresh_runtime_token_internal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:refreshRuntimeTokenInternal', options)
          command.request_representation = Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalRequest::Representation
          command.request_object = refresh_runtime_token_internal_request_object
          command.response_representation = Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::RefreshRuntimeTokenInternalResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report and process a runtime event.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::ReportRuntimeEventRequest] report_runtime_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_project_location_runtime_event(name, report_runtime_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reportEvent', options)
          command.request_representation = Google::Apis::NotebooksV1::ReportRuntimeEventRequest::Representation
          command.request_object = report_runtime_event_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets a Managed Notebook Runtime.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::ResetRuntimeRequest] reset_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_runtime(name, reset_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reset', options)
          command.request_representation = Google::Apis::NotebooksV1::ResetRuntimeRequest::Representation
          command.request_object = reset_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::NotebooksV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_runtime_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NotebooksV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::NotebooksV1::Policy::Representation
          command.response_class = Google::Apis::NotebooksV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a Managed Notebook Runtime. Perform "Start" on GPU instances; "Resume"
        # on CPU instances See: https://cloud.google.com/compute/docs/instances/stop-
        # start-instance https://cloud.google.com/compute/docs/instances/suspend-resume-
        # instance
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::StartRuntimeRequest] start_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_runtime(name, start_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:start', options)
          command.request_representation = Google::Apis::NotebooksV1::StartRuntimeRequest::Representation
          command.request_object = start_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops a Managed Notebook Runtime. Perform "Stop" on GPU instances; "Suspend"
        # on CPU instances See: https://cloud.google.com/compute/docs/instances/stop-
        # start-instance https://cloud.google.com/compute/docs/instances/suspend-resume-
        # instance
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::StopRuntimeRequest] stop_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_runtime(name, stop_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::NotebooksV1::StopRuntimeRequest::Representation
          command.request_object = stop_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Switch a Managed Notebook Runtime.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::SwitchRuntimeRequest] switch_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def switch_runtime(name, switch_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:switch', options)
          command.request_representation = Google::Apis::NotebooksV1::SwitchRuntimeRequest::Representation
          command.request_object = switch_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::NotebooksV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_runtime_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NotebooksV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::NotebooksV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrades a Managed Notebook Runtime to the latest version.
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/runtimes/`
        #   runtime_id``
        # @param [Google::Apis::NotebooksV1::UpgradeRuntimeRequest] upgrade_runtime_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upgrade_runtime(name, upgrade_runtime_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:upgrade', options)
          command.request_representation = Google::Apis::NotebooksV1::UpgradeRuntimeRequest::Representation
          command.request_object = upgrade_runtime_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Scheduled Notebook in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [Google::Apis::NotebooksV1::Schedule] schedule_object
        # @param [String] schedule_id
        #   Required. User-defined unique ID of this schedule.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_schedule(parent, schedule_object = nil, schedule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/schedules', options)
          command.request_representation = Google::Apis::NotebooksV1::Schedule::Representation
          command.request_object = schedule_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['scheduleId'] = schedule_id unless schedule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes schedule and all underlying jobs
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/schedules/`
        #   schedule_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of schedule
        # @param [String] name
        #   Required. Format: `projects/`project_id`/locations/`location`/schedules/`
        #   schedule_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Schedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Schedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::NotebooksV1::Schedule::Representation
          command.response_class = Google::Apis::NotebooksV1::Schedule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists schedules in a given project and location.
        # @param [String] parent
        #   Required. Format: `parent=projects/`project_id`/locations/`location``
        # @param [String] filter
        #   Filter applied to resulting schedules.
        # @param [String] order_by
        #   Field to order results by.
        # @param [Fixnum] page_size
        #   Maximum return size of the list call.
        # @param [String] page_token
        #   A previous returned page token that can be used to continue listing from the
        #   last result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::ListSchedulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::ListSchedulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schedules(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/schedules', options)
          command.response_representation = Google::Apis::NotebooksV1::ListSchedulesResponse::Representation
          command.response_class = Google::Apis::NotebooksV1::ListSchedulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Triggers execution of an existing schedule.
        # @param [String] name
        #   Required. Format: `parent=projects/`project_id`/locations/`location`/schedules/
        #   `schedule_id``
        # @param [Google::Apis::NotebooksV1::TriggerScheduleRequest] trigger_schedule_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NotebooksV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NotebooksV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def trigger_schedule(name, trigger_schedule_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:trigger', options)
          command.request_representation = Google::Apis::NotebooksV1::TriggerScheduleRequest::Representation
          command.request_object = trigger_schedule_request_object
          command.response_representation = Google::Apis::NotebooksV1::Operation::Representation
          command.response_class = Google::Apis::NotebooksV1::Operation
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
