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
    module RunV1alpha1
      # Cloud Run Admin API
      #
      # Deploy and manage user provided container images that scale automatically
      #  based on incoming requests. The Cloud Run Admin API follows the Knative
      #  Serving API specification.
      #
      # @example
      #    require 'google/apis/run_v1alpha1'
      #
      #    Run = Google::Apis::RunV1alpha1 # Alias the module
      #    service = Run::CloudRunService.new
      #
      # @see https://cloud.google.com/run/
      class CloudRunService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://run.googleapis.com/', '',
                client_name: 'google-apis-run_v1alpha1',
                client_version: Google::Apis::RunV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create a job.
        # @param [String] parent
        #   Required. The namespace in which the job should be created. Replace `
        #   namespace_id` with the project ID or number.
        # @param [Google::Apis::RunV1alpha1::Job] job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1alpha1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1alpha1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_namespace_job(parent, job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/run.googleapis.com/v1alpha1/{+parent}/jobs', options)
          command.request_representation = Google::Apis::RunV1alpha1::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::RunV1alpha1::Job::Representation
          command.response_class = Google::Apis::RunV1alpha1::Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a job.
        # @param [String] name
        #   Required. The name of the job to delete. For Cloud Run (fully managed),
        #   replace `namespace_id` with the project ID or number.
        # @param [String] api_version
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] kind
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Optional. Specifies the propagation policy of delete. Cloud Run currently
        #   ignores this setting, and deletes in the background. Please see kubernetes.io/
        #   docs/concepts/workloads/controllers/garbage-collection/ for more information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_job(name, api_version: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/run.googleapis.com/v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::RunV1alpha1::Empty::Representation
          command.response_class = Google::Apis::RunV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a job.
        # @param [String] name
        #   Required. The name of the job to retrieve. For Cloud Run (fully managed),
        #   replace `namespace_id` with the project ID or number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1alpha1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1alpha1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::RunV1alpha1::Job::Representation
          command.response_class = Google::Apis::RunV1alpha1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List jobs.
        # @param [String] parent
        #   Required. The namespace from which the jobs should be listed. Replace `
        #   namespace_id` with the project ID or number.
        # @param [String] continue
        #   Optional. Optional encoded string to continue paging.
        # @param [String] field_selector
        #   Optional. Allows to filter resources based on a specific value for a field
        #   name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not
        #   currently used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Optional. Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Optional. Allows to filter resources based on a label. Supported operations
        #   are =, !=, exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   Optional. The baseline resource version from which the list or watch operation
        #   should start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Optional. Flag that indicates that the client expects to watch this resource
        #   as well. Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1alpha1::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1alpha1::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_jobs(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1alpha1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::RunV1alpha1::ListJobsResponse::Representation
          command.response_class = Google::Apis::RunV1alpha1::ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
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
