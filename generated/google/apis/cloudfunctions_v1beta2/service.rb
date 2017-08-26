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
    module CloudfunctionsV1beta2
      # Google Cloud Functions API
      #
      # API for managing lightweight user-provided functions executed in response to
      #  events.
      #
      # @example
      #    require 'google/apis/cloudfunctions_v1beta2'
      #
      #    Cloudfunctions = Google::Apis::CloudfunctionsV1beta2 # Alias the module
      #    service = Cloudfunctions::CloudFunctionsService.new
      #
      # @see https://cloud.google.com/functions
      class CloudFunctionsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudfunctions.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the
        # server doesn't support this method, it returns `UNIMPLEMENTED`.
        # NOTE: the `name` binding allows API services to override the binding
        # to use different resource name schemes, such as `users/*/operations`. To
        # override the binding, API services can add a binding such as
        # `"/v1/`name=users/*`/operations"` to their service configuration.
        # For backwards compatibility, the default name includes the operations
        # collection id, however overriding users must ensure the name binding
        # is the parent resource, without the operations collection id.
        # @param [String] filter
        #   The standard list filter.
        # @param [String] name
        #   The name of the operation's parent resource.
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
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(filter: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta2/operations', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::ListOperationsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta2/{+name}/locations', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invokes synchronously deployed function. To be used for testing, very
        # limited traffic allowed.
        # @param [String] name
        #   The name of the function to be called.
        # @param [Google::Apis::CloudfunctionsV1beta2::CallFunctionRequest] call_function_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::CallFunctionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::CallFunctionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def call_function(name, call_function_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta2/{+name}:call', options)
          command.request_representation = Google::Apis::CloudfunctionsV1beta2::CallFunctionRequest::Representation
          command.request_object = call_function_request_object
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::CallFunctionResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::CallFunctionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new function. If a function with the given name already exists in
        # the specified project, the long running operation will return
        # `ALREADY_EXISTS` error.
        # @param [String] location
        #   The project and location in which the function should be created, specified
        #   in the format `projects/*/locations/*`
        # @param [Google::Apis::CloudfunctionsV1beta2::CloudFunction] cloud_function_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_function(location, cloud_function_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta2/{+location}/functions', options)
          command.request_representation = Google::Apis::CloudfunctionsV1beta2::CloudFunction::Representation
          command.request_object = cloud_function_object
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::Operation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a function with the given name from the specified project. If the
        # given function is used by some trigger, the trigger will be updated to
        # remove this function.
        # @param [String] name
        #   The name of the function which should be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_function(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a function with the given name from the requested project.
        # @param [String] name
        #   The name of the function which details should be obtained.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::CloudFunction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::CloudFunction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_function(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::CloudFunction::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::CloudFunction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of functions that belong to the requested project.
        # @param [String] location
        #   The project and location from which the function should be listed,
        #   specified in the format `projects/*/locations/*`
        #   If you want to list functions in all locations, use "-" in place of a
        #   location.
        # @param [Fixnum] page_size
        #   Maximum number of functions to return per call.
        # @param [String] page_token
        #   The value returned by the last
        #   `ListFunctionsResponse`; indicates that
        #   this is a continuation of a prior `ListFunctions` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::ListFunctionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::ListFunctionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_functions(location, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta2/{+location}/functions', options)
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::ListFunctionsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::ListFunctionsResponse
          command.params['location'] = location unless location.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates existing function.
        # @param [String] name
        #   The name of the function to be updated.
        # @param [Google::Apis::CloudfunctionsV1beta2::CloudFunction] cloud_function_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_function(name, cloud_function_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::CloudfunctionsV1beta2::CloudFunction::Representation
          command.request_object = cloud_function_object
          command.response_representation = Google::Apis::CloudfunctionsV1beta2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV1beta2::Operation
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
