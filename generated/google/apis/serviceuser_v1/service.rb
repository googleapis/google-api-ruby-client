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
    module ServiceuserV1
      # Service User API
      #
      # Enables services that service consumers want to use on Google Cloud Platform,
      #  lists the available or enabled services, or disables services that service
      #  consumers no longer use.
      #
      # @example
      #    require 'google/apis/serviceuser_v1'
      #
      #    Serviceuser = Google::Apis::ServiceuserV1 # Alias the module
      #    service = Serviceuser::ServiceUserService.new
      #
      # @see https://cloud.google.com/service-management/
      class ServiceUserService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://serviceuser.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Disable a service so it can no longer be used with a
        # project. This prevents unintended usage that may cause unexpected billing
        # charges or security leaks.
        # Operation<response: google.protobuf.Empty>
        # @param [String] name
        #   Name of the consumer and the service to disable for that consumer.
        #   The Service User implementation accepts the following forms for consumer:
        #   - "project:<project_id>"
        #   A valid path would be:
        #   - projects/my-project/services/servicemanagement.googleapis.com
        # @param [Google::Apis::ServiceuserV1::DisableServiceRequest] disable_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceuserV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceuserV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_service(name, disable_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::ServiceuserV1::DisableServiceRequest::Representation
          command.request_object = disable_service_request_object
          command.response_representation = Google::Apis::ServiceuserV1::Operation::Representation
          command.response_class = Google::Apis::ServiceuserV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable a service so it can be used with a project.
        # See [Cloud Auth Guide](https://cloud.google.com/docs/authentication) for
        # more information.
        # Operation<response: google.protobuf.Empty>
        # @param [String] name
        #   Name of the consumer and the service to enable for that consumer.
        #   A valid path would be:
        #   - projects/my-project/services/servicemanagement.googleapis.com
        # @param [Google::Apis::ServiceuserV1::EnableServiceRequest] enable_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceuserV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceuserV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_service(name, enable_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::ServiceuserV1::EnableServiceRequest::Representation
          command.request_object = enable_service_request_object
          command.response_representation = Google::Apis::ServiceuserV1::Operation::Representation
          command.response_class = Google::Apis::ServiceuserV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List enabled services for the specified consumer.
        # @param [String] parent
        #   List enabled services for the specified parent.
        #   An example valid parent would be:
        #   - projects/my-project
        # @param [Fixnum] page_size
        #   Requested size of the next page of data.
        # @param [String] page_token
        #   Token identifying which result to start with; returned by a previous list
        #   call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceuserV1::ListEnabledServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceuserV1::ListEnabledServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_services(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+parent}/services', options)
          command.response_representation = Google::Apis::ServiceuserV1::ListEnabledServicesResponse::Representation
          command.response_class = Google::Apis::ServiceuserV1::ListEnabledServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search available services.
        # When no filter is specified, returns all accessible services. For
        # authenticated users, also returns all services the calling user has
        # "servicemanagement.services.bind" permission for.
        # @param [Fixnum] page_size
        #   Requested size of the next page of data.
        # @param [String] page_token
        #   Token identifying which result to start with; returned by a previous list
        #   call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceuserV1::SearchServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceuserV1::SearchServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_services(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/services:search', options)
          command.response_representation = Google::Apis::ServiceuserV1::SearchServicesResponse::Representation
          command.response_class = Google::Apis::ServiceuserV1::SearchServicesResponse
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
