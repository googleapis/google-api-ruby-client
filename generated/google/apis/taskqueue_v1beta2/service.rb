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
    module TaskqueueV1beta2
      # TaskQueue API
      #
      # Accesses a Google App Engine Pull Task Queue over REST.
      #
      # @example
      #    require 'google/apis/taskqueue_v1beta2'
      #
      #    Taskqueue = Google::Apis::TaskqueueV1beta2 # Alias the module
      #    service = Taskqueue::TaskqueueService.new
      #
      # @see https://developers.google.com/appengine/docs/python/taskqueue/rest
      class TaskqueueService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'taskqueue/v1beta2/projects/')
          @batch_path = 'batch/taskqueue/v1beta2'
        end
        
        # Get detailed information about a TaskQueue.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        #   The id of the taskqueue to get the properties of.
        # @param [Boolean] get_stats
        #   Whether to get stats. Optional.
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::TaskQueue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::TaskQueue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_taskqueue(project, taskqueue, get_stats: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/taskqueues/{taskqueue}', options)
          command.response_representation = Google::Apis::TaskqueueV1beta2::TaskQueue::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::TaskQueue
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.query['getStats'] = get_stats unless get_stats.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a task from a TaskQueue.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        #   The taskqueue to delete a task from.
        # @param [String] task
        #   The id of the task to delete.
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
        def delete_task(project, taskqueue, task, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/taskqueues/{taskqueue}/tasks/{task}', options)
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.params['task'] = task unless task.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a particular task from a TaskQueue.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        #   The taskqueue in which the task belongs.
        # @param [String] task
        #   The task to get properties of.
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_task(project, taskqueue, task, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/taskqueues/{taskqueue}/tasks/{task}', options)
          command.response_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Task
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.params['task'] = task unless task.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Insert a new task in a TaskQueue
        # @param [String] project
        #   The project under which the queue lies
        # @param [String] taskqueue
        #   The taskqueue to insert the task into
        # @param [Google::Apis::TaskqueueV1beta2::Task] task_object
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_task(project, taskqueue, task_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/taskqueues/{taskqueue}/tasks', options)
          command.request_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Task
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lease 1 or more tasks from a TaskQueue.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        #   The taskqueue to lease a task from.
        # @param [Fixnum] num_tasks
        #   The number of tasks to lease.
        # @param [Fixnum] lease_secs
        #   The lease in seconds.
        # @param [Boolean] group_by_tag
        #   When true, all returned tasks will have the same tag
        # @param [String] tag
        #   The tag allowed for tasks in the response. Must only be specified if
        #   group_by_tag is true. If group_by_tag is true and tag is not specified the tag
        #   will be that of the oldest task by eta, i.e. the first available tag
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Tasks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Tasks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lease_task(project, taskqueue, num_tasks, lease_secs, group_by_tag: nil, tag: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/taskqueues/{taskqueue}/tasks/lease', options)
          command.response_representation = Google::Apis::TaskqueueV1beta2::Tasks::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Tasks
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.query['groupByTag'] = group_by_tag unless group_by_tag.nil?
          command.query['leaseSecs'] = lease_secs unless lease_secs.nil?
          command.query['numTasks'] = num_tasks unless num_tasks.nil?
          command.query['tag'] = tag unless tag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Tasks in a TaskQueue
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        #   The id of the taskqueue to list tasks from.
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Tasks2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Tasks2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tasks(project, taskqueue, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/taskqueues/{taskqueue}/tasks', options)
          command.response_representation = Google::Apis::TaskqueueV1beta2::Tasks2::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Tasks2
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update tasks that are leased out of a TaskQueue. This method supports patch
        # semantics.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        # @param [String] task
        # @param [Fixnum] new_lease_seconds
        #   The new lease in seconds.
        # @param [Google::Apis::TaskqueueV1beta2::Task] task_object
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_task(project, taskqueue, task, new_lease_seconds, task_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, '{project}/taskqueues/{taskqueue}/tasks/{task}', options)
          command.request_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Task
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.params['task'] = task unless task.nil?
          command.query['newLeaseSeconds'] = new_lease_seconds unless new_lease_seconds.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update tasks that are leased out of a TaskQueue.
        # @param [String] project
        #   The project under which the queue lies.
        # @param [String] taskqueue
        # @param [String] task
        # @param [Fixnum] new_lease_seconds
        #   The new lease in seconds.
        # @param [Google::Apis::TaskqueueV1beta2::Task] task_object
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
        # @yieldparam result [Google::Apis::TaskqueueV1beta2::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TaskqueueV1beta2::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_task(project, taskqueue, task, new_lease_seconds, task_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/taskqueues/{taskqueue}/tasks/{task}', options)
          command.request_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TaskqueueV1beta2::Task::Representation
          command.response_class = Google::Apis::TaskqueueV1beta2::Task
          command.params['project'] = project unless project.nil?
          command.params['taskqueue'] = taskqueue unless taskqueue.nil?
          command.params['task'] = task unless task.nil?
          command.query['newLeaseSeconds'] = new_lease_seconds unless new_lease_seconds.nil?
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
