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
    module AutoscalerV1beta2
      # Google Compute Engine Autoscaler API
      #
      # The Google Compute Engine Autoscaler API provides autoscaling for groups of
      #  Cloud VMs.
      #
      # @example
      #    require 'google/apis/autoscaler_v1beta2'
      #
      #    Autoscaler = Google::Apis::AutoscalerV1beta2 # Alias the module
      #    service = Autoscaler::AutoscalerService.new
      #
      # @see http://developers.google.com/compute/docs/autoscaler
      class AutoscalerService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'autoscaler/v1beta2/')
        end
        
        # Deletes the specified Autoscaler resource.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [String] autoscaler
        #   Name of the Autoscaler resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_autoscaler(project, zone, autoscaler, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'projects/{project}/zones/{zone}/autoscalers/{autoscaler}', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::Operation::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Autoscaler resource.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [String] autoscaler
        #   Name of the Autoscaler resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Autoscaler] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Autoscaler]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_autoscaler(project, zone, autoscaler, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/zones/{zone}/autoscalers/{autoscaler}', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::Autoscaler::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Autoscaler
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds new Autoscaler resource.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [Google::Apis::AutoscalerV1beta2::Autoscaler] autoscaler_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_autoscaler(project, zone, autoscaler_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'projects/{project}/zones/{zone}/autoscalers', options)
          command.request_representation = Google::Apis::AutoscalerV1beta2::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::AutoscalerV1beta2::Operation::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Autoscaler resources in this zone.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [String] filter
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::ListAutoscalerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::ListAutoscalerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_autoscalers(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{project}/zones/{zone}/autoscalers', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::ListAutoscalerResponse::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::ListAutoscalerResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the Autoscaler resource. This method supports
        # patch semantics.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [String] autoscaler
        #   Name of the Autoscaler resource.
        # @param [Google::Apis::AutoscalerV1beta2::Autoscaler] autoscaler_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_autoscaler(project, zone, autoscaler, autoscaler_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'projects/{project}/zones/{zone}/autoscalers/{autoscaler}', options)
          command.request_representation = Google::Apis::AutoscalerV1beta2::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::AutoscalerV1beta2::Operation::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the Autoscaler resource.
        # @param [String] project
        #   Project ID of Autoscaler resource.
        # @param [String] zone
        #   Zone name of Autoscaler resource.
        # @param [String] autoscaler
        #   Name of the Autoscaler resource.
        # @param [Google::Apis::AutoscalerV1beta2::Autoscaler] autoscaler_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_autoscaler(project, zone, autoscaler, autoscaler_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'projects/{project}/zones/{zone}/autoscalers/{autoscaler}', options)
          command.request_representation = Google::Apis::AutoscalerV1beta2::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::AutoscalerV1beta2::Operation::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified zone-specific operation resource.
        # @param [String] project
        # @param [String] zone
        # @param [String] operation
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/zones/{zone}/operations/{operation}', options)
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified zone-specific operation resource.
        # @param [String] project
        # @param [String] zone
        # @param [String] operation
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations/{operation}', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::Operation::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of operation resources contained within the specified zone.
        # @param [String] project
        # @param [String] zone
        # @param [String] filter
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::OperationList::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::OperationList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] filter
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AutoscalerV1beta2::ZoneList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AutoscalerV1beta2::ZoneList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zones(filter: nil, max_results: nil, page_token: nil, project: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'zones', options)
          command.response_representation = Google::Apis::AutoscalerV1beta2::ZoneList::Representation
          command.response_class = Google::Apis::AutoscalerV1beta2::ZoneList
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['project'] = project unless project.nil?
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
