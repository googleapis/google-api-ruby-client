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
    module ReplicapoolupdaterV1beta1
      # Google Compute Engine Instance Group Updater API
      #
      # [Deprecated. Please use compute.instanceGroupManagers.update method.
      #  replicapoolupdater API will be disabled after December 30th, 2016] Updates
      #  groups of Compute Engine instances.
      #
      # @example
      #    require 'google/apis/replicapoolupdater_v1beta1'
      #
      #    Replicapoolupdater = Google::Apis::ReplicapoolupdaterV1beta1 # Alias the module
      #    service = Replicapoolupdater::ReplicapoolupdaterService.new
      #
      # @see https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service
      class ReplicapoolupdaterService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'replicapoolupdater/v1beta1/projects/')
          @batch_path = 'batch/replicapoolupdater/v1beta1'
        end
        
        # Cancels an update. The update must be PAUSED before it can be cancelled. This
        # has no effect if the update is already CANCELLED.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_rolling_update(project, zone, rolling_update, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/cancel', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about an update.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_rolling_update(project, zone, rolling_update, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts and starts a new update.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate] rolling_update_object
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_rolling_update(project, zone, rolling_update_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/rollingUpdates', options)
          command.request_representation = Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Representation
          command.request_object = rolling_update_object
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists recent updates for a given managed instance group, in reverse
        # chronological order and paginated format.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_rolling_updates(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/rollingUpdates', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateList::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateList
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
        
        # Lists the current status for each instance within a given update.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_updates(project, zone, rolling_update, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/instanceUpdates', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateList::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no effect
        # if invoked when the state of the update is PAUSED.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_rolling_update(project, zone, rolling_update, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/pause', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Continues an update in PAUSED state. Has no effect if invoked when the state
        # of the update is ROLLED_OUT.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_rolling_update(project, zone, rolling_update, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/resume', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no effect
        # if invoked when the state of the update is ROLLED_BACK.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the update's target resides.
        # @param [String] rolling_update
        #   The name of the update.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_rolling_update(project, zone, rolling_update, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/rollback', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['rollingUpdate'] = rolling_update unless rolling_update.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified zone-specific operation resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the operation resource to return.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations/{operation}', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Operation resources contained within the specified zone.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ReplicapoolupdaterV1beta1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations', options)
          command.response_representation = Google::Apis::ReplicapoolupdaterV1beta1::OperationList::Representation
          command.response_class = Google::Apis::ReplicapoolupdaterV1beta1::OperationList
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
