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
    module CloudbuildV1alpha2
      # Cloud Build API
      #
      # Creates and manages builds on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/cloudbuild_v1alpha2'
      #
      #    Cloudbuild = Google::Apis::CloudbuildV1alpha2 # Alias the module
      #    service = Cloudbuild::CloudBuildService.new
      #
      # @see https://cloud.google.com/cloud-build/docs/
      class CloudBuildService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudbuild.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a `WorkerPool` to run the builds, and returns the new worker pool.
        # @param [String] parent
        #   Required. The parent resource where this book will be created.
        #   Format: projects/`project`
        # @param [Google::Apis::CloudbuildV1alpha2::WorkerPool] worker_pool_object
        # @param [String] worker_pool_id
        #   Required. Immutable. The ID to use for the `WorkerPool`, which will become the
        #   final component
        #   of the resource name.
        #   This value should be 1-63 characters, and valid characters
        #   are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1alpha2::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1alpha2::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_worker_pool(parent, worker_pool_object = nil, worker_pool_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha2/{+parent}/workerPools', options)
          command.request_representation = Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
          command.response_class = Google::Apis::CloudbuildV1alpha2::WorkerPool
          command.params['parent'] = parent unless parent.nil?
          command.query['workerPoolId'] = worker_pool_id unless worker_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `WorkerPool`.
        # @param [String] name
        #   Required. The name of the `WorkerPool` to delete.
        #   Format: projects/`project`/workerPools/`workerPool`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1alpha2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1alpha2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_worker_pool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1alpha2::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1alpha2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details of a `WorkerPool`.
        # @param [String] name
        #   Required. The name of the `WorkerPool` to retrieve.
        #   Format: projects/`project`/workerPools/`workerPool`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1alpha2::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1alpha2::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_worker_pool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
          command.response_class = Google::Apis::CloudbuildV1alpha2::WorkerPool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `WorkerPool`s by project.
        # @param [String] parent
        #   Required. The parent, which owns this collection of `WorkerPools`.
        #   Format: projects/`project`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1alpha2::ListWorkerPoolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1alpha2::ListWorkerPoolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_worker_pools(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha2/{+parent}/workerPools', options)
          command.response_representation = Google::Apis::CloudbuildV1alpha2::ListWorkerPoolsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1alpha2::ListWorkerPoolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `WorkerPool`.
        # @param [String] name
        #   Output only. The resource name of the `WorkerPool`.
        #   Format of the name is `projects/`project_id`/workerPools/`worker_pool_id``,
        #   where the value of `worker_pool_id` is provided in the CreateWorkerPool
        #   request.
        # @param [Google::Apis::CloudbuildV1alpha2::WorkerPool] worker_pool_object
        # @param [String] update_mask
        #   A mask specifying which fields in `WorkerPool` should be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1alpha2::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1alpha2::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_worker_pool(name, worker_pool_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha2/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
          command.response_class = Google::Apis::CloudbuildV1alpha2::WorkerPool
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
