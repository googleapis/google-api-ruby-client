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
    module OsconfigV1beta
      # OS Config API
      #
      # OS management tools that can be used for patch management, patch compliance,
      #  and configuration management on VM instances.
      #
      # @example
      #    require 'google/apis/osconfig_v1beta'
      #
      #    Osconfig = Google::Apis::OsconfigV1beta # Alias the module
      #    service = Osconfig::OSConfigService.new
      #
      # @see https://cloud.google.com/compute/docs/manage-os
      class OSConfigService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://osconfig.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Create an OS Config guest policy.
        # @param [String] parent
        #   Required. The resource name of the parent using one of the following forms: `
        #   projects/`project_number``.
        # @param [Google::Apis::OsconfigV1beta::GuestPolicy] guest_policy_object
        # @param [String] guest_policy_id
        #   Required. The logical name of the guest policy in the project with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::GuestPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::GuestPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_guest_policy(parent, guest_policy_object = nil, guest_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/guestPolicies', options)
          command.request_representation = Google::Apis::OsconfigV1beta::GuestPolicy::Representation
          command.request_object = guest_policy_object
          command.response_representation = Google::Apis::OsconfigV1beta::GuestPolicy::Representation
          command.response_class = Google::Apis::OsconfigV1beta::GuestPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['guestPolicyId'] = guest_policy_id unless guest_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an OS Config guest policy.
        # @param [String] name
        #   Required. The resource name of the guest policy using one of the following
        #   forms: `projects/`project_number`/guestPolicies/`guest_policy_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_guest_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1beta::Empty::Representation
          command.response_class = Google::Apis::OsconfigV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an OS Config guest policy.
        # @param [String] name
        #   Required. The resource name of the guest policy using one of the following
        #   forms: `projects/`project_number`/guestPolicies/`guest_policy_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::GuestPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::GuestPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_guest_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1beta::GuestPolicy::Representation
          command.response_class = Google::Apis::OsconfigV1beta::GuestPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a page of OS Config guest policies.
        # @param [String] parent
        #   Required. The resource name of the parent using one of the following forms: `
        #   projects/`project_number``.
        # @param [Fixnum] page_size
        #   The maximum number of guest policies to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `ListGuestPolicies` that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::ListGuestPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::ListGuestPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_guest_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/guestPolicies', options)
          command.response_representation = Google::Apis::OsconfigV1beta::ListGuestPoliciesResponse::Representation
          command.response_class = Google::Apis::OsconfigV1beta::ListGuestPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an OS Config guest policy.
        # @param [String] name
        #   Required. Unique name of the resource in this project using one of the
        #   following forms: `projects/`project_number`/guestPolicies/`guest_policy_id``.
        # @param [Google::Apis::OsconfigV1beta::GuestPolicy] guest_policy_object
        # @param [String] update_mask
        #   Field mask that controls which fields of the guest policy should be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::GuestPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::GuestPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_guest_policy(name, guest_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV1beta::GuestPolicy::Representation
          command.request_object = guest_policy_object
          command.response_representation = Google::Apis::OsconfigV1beta::GuestPolicy::Representation
          command.response_class = Google::Apis::OsconfigV1beta::GuestPolicy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an OS Config patch deployment.
        # @param [String] parent
        #   Required. The project to apply this patch deployment to in the form `projects/*
        #   `.
        # @param [Google::Apis::OsconfigV1beta::PatchDeployment] patch_deployment_object
        # @param [String] patch_deployment_id
        #   Required. A name for the patch deployment in the project. When creating a name
        #   the following rules apply: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_patch_deployment(parent, patch_deployment_object = nil, patch_deployment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/patchDeployments', options)
          command.request_representation = Google::Apis::OsconfigV1beta::PatchDeployment::Representation
          command.request_object = patch_deployment_object
          command.response_representation = Google::Apis::OsconfigV1beta::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1beta::PatchDeployment
          command.params['parent'] = parent unless parent.nil?
          command.query['patchDeploymentId'] = patch_deployment_id unless patch_deployment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an OS Config patch deployment.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_patch_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1beta::Empty::Representation
          command.response_class = Google::Apis::OsconfigV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an OS Config patch deployment.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_patch_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1beta::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1beta::PatchDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a page of OS Config patch deployments.
        # @param [String] parent
        #   Required. The resource name of the parent in the form `projects/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of patch deployments to return. Default is 100.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to
        #   ListPatchDeployments that indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::ListPatchDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::ListPatchDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_deployments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/patchDeployments', options)
          command.response_representation = Google::Apis::OsconfigV1beta::ListPatchDeploymentsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1beta::ListPatchDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel a patch job. The patch job must be active. Canceled patch jobs cannot
        # be restarted.
        # @param [String] name
        #   Required. Name of the patch in the form `projects/*/patchJobs/*`
        # @param [Google::Apis::OsconfigV1beta::CancelPatchJobRequest] cancel_patch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_patch_job(name, cancel_patch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV1beta::CancelPatchJobRequest::Representation
          command.request_object = cancel_patch_job_request_object
          command.response_representation = Google::Apis::OsconfigV1beta::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1beta::PatchJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch VM instances by creating and running a patch job.
        # @param [String] parent
        #   Required. The project in which to run this patch in the form `projects/*`
        # @param [Google::Apis::OsconfigV1beta::ExecutePatchJobRequest] execute_patch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_patch_job(parent, execute_patch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/patchJobs:execute', options)
          command.request_representation = Google::Apis::OsconfigV1beta::ExecutePatchJobRequest::Representation
          command.request_object = execute_patch_job_request_object
          command.response_representation = Google::Apis::OsconfigV1beta::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1beta::PatchJob
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the patch job. This can be used to track the progress of an ongoing patch
        # job or review the details of completed jobs.
        # @param [String] name
        #   Required. Name of the patch in the form `projects/*/patchJobs/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_patch_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1beta::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1beta::PatchJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of patch jobs.
        # @param [String] parent
        #   Required. In the form of `projects/*`
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by patch jobs
        #   to be included in the response. Currently, filtering is only available on the
        #   patch_deployment field.
        # @param [Fixnum] page_size
        #   The maximum number of instance status to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call that indicates where this
        #   listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::ListPatchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::ListPatchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_jobs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/patchJobs', options)
          command.response_representation = Google::Apis::OsconfigV1beta::ListPatchJobsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1beta::ListPatchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of instance details for a given patch job.
        # @param [String] parent
        #   Required. The parent for the instances are in the form of `projects/*/
        #   patchJobs/*`.
        # @param [String] filter
        #   A filter expression that filters results listed in the response. This field
        #   supports filtering results by instance zone, name, state, or `failure_reason`.
        # @param [Fixnum] page_size
        #   The maximum number of instance details records to return. Default is 100.
        # @param [String] page_token
        #   A pagination token returned from a previous call that indicates where this
        #   listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::ListPatchJobInstanceDetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::ListPatchJobInstanceDetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_job_instance_details(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/instanceDetails', options)
          command.response_representation = Google::Apis::OsconfigV1beta::ListPatchJobInstanceDetailsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1beta::ListPatchJobInstanceDetailsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup the effective guest policy that applies to a VM instance. This lookup
        # merges all policies that are assigned to the instance ancestry.
        # @param [String] instance
        #   Required. The VM instance whose policies are being looked up.
        # @param [Google::Apis::OsconfigV1beta::LookupEffectiveGuestPolicyRequest] lookup_effective_guest_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1beta::EffectiveGuestPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1beta::EffectiveGuestPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_instance_effective_guest_policy(instance, lookup_effective_guest_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+instance}:lookupEffectiveGuestPolicy', options)
          command.request_representation = Google::Apis::OsconfigV1beta::LookupEffectiveGuestPolicyRequest::Representation
          command.request_object = lookup_effective_guest_policy_request_object
          command.response_representation = Google::Apis::OsconfigV1beta::EffectiveGuestPolicy::Representation
          command.response_class = Google::Apis::OsconfigV1beta::EffectiveGuestPolicy
          command.params['instance'] = instance unless instance.nil?
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
