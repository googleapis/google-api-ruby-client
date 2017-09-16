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
    module ReplicapoolV1beta2
      # Google Compute Engine Instance Group Manager API
      #
      # [Deprecated. Please use Instance Group Manager in Compute API] Provides groups
      #  of homogenous Compute Engine instances.
      #
      # @example
      #    require 'google/apis/replicapool_v1beta2'
      #
      #    Replicapool = Google::Apis::ReplicapoolV1beta2 # Alias the module
      #    service = Replicapool::ReplicapoolService.new
      #
      # @see https://developers.google.com/compute/docs/instance-groups/manager/v1beta2
      class ReplicapoolService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'replicapool/v1beta2/projects/')
          @batch_path = 'batch/replicapool/v1beta2'
        end
        
        # Removes the specified instances from the managed instance group, and from any
        # target pools of which they were members, without deleting the instances.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ReplicapoolV1beta2::AbandonInstancesRequest] abandon_instances_request_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def abandon_instances(project, zone, instance_group_manager, abandon_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/abandonInstances', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::AbandonInstancesRequest::Representation
          command.request_object = abandon_instances_request_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the instance group manager and all instances contained within. If you'
        # d like to delete the manager without deleting the instances, you must first
        # abandon the instances to remove them from the group.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   Name of the Instance Group Manager resource to delete.
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_group_manager(project, zone, instance_group_manager, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified instances. The instances are deleted, then removed from
        # the instance group and any target pools of which they were a member. The
        # targetSize of the instance group manager is reduced by the number of instances
        # deleted.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ReplicapoolV1beta2::DeleteInstancesRequest] delete_instances_request_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instances(project, zone, instance_group_manager, delete_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/deleteInstances', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::DeleteInstancesRequest::Representation
          command.request_object = delete_instances_request_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified Instance Group Manager resource.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   Name of the instance resource to return.
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::InstanceGroupManager] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::InstanceGroupManager]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_group_manager(project, zone, instance_group_manager, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::InstanceGroupManager::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::InstanceGroupManager
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instance group manager, as well as the instance group and the
        # specified number of instances.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [Fixnum] size
        #   Number of instances that should exist.
        # @param [Google::Apis::ReplicapoolV1beta2::InstanceGroupManager] instance_group_manager_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance_group_manager(project, zone, size, instance_group_manager_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::InstanceGroupManager::Representation
          command.request_object = instance_group_manager_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['size'] = size unless size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Instance Group Manager resources contained within the
        # specified zone.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::InstanceGroupManagerList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::InstanceGroupManagerList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_group_managers(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/instanceGroupManagers', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::InstanceGroupManagerList::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::InstanceGroupManagerList
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
        
        # Recreates the specified instances. The instances are deleted, then recreated
        # using the instance group manager's current instance template.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ReplicapoolV1beta2::RecreateInstancesRequest] recreate_instances_request_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recreate_instances(project, zone, instance_group_manager, recreate_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/recreateInstances', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::RecreateInstancesRequest::Representation
          command.request_object = recreate_instances_request_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resizes the managed instance group up or down. If resized up, new instances
        # are created using the current instance template. If resized down, instances
        # are removed in the order outlined in Resizing a managed instance group.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Fixnum] size
        #   Number of instances that should exist in this Instance Group Manager.
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resize_instance(project, zone, instance_group_manager, size, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resize', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['size'] = size unless size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the instance template to use when creating new instances in this group.
        # Existing instances are not affected.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ReplicapoolV1beta2::SetInstanceTemplateRequest] set_instance_template_request_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_template(project, zone, instance_group_manager, set_instance_template_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::SetInstanceTemplateRequest::Representation
          command.request_object = set_instance_template_request_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the target pools to which all new instances in this group are
        # assigned. Existing instances in the group are not affected.
        # @param [String] project
        #   The Google Developers Console project name.
        # @param [String] zone
        #   The name of the zone in which the instance group manager resides.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ReplicapoolV1beta2::SetTargetPoolsRequest] set_target_pools_request_object
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_pools(project, zone, instance_group_manager, set_target_pools_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setTargetPools', options)
          command.request_representation = Google::Apis::ReplicapoolV1beta2::SetTargetPoolsRequest::Representation
          command.request_object = set_target_pools_request_object
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations/{operation}', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::Operation::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::Operation
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
        # @yieldparam result [Google::Apis::ReplicapoolV1beta2::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReplicapoolV1beta2::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations', options)
          command.response_representation = Google::Apis::ReplicapoolV1beta2::OperationList::Representation
          command.response_class = Google::Apis::ReplicapoolV1beta2::OperationList
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
