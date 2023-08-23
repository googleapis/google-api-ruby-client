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
    module DataprocV1beta2
      # Cloud Dataproc API
      #
      # Manages Hadoop-based clusters and jobs on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/dataproc_v1beta2'
      #
      #    Dataproc = Google::Apis::DataprocV1beta2 # Alias the module
      #    service = Dataproc::DataprocService.new
      #
      # @see https://cloud.google.com/dataproc/
      class DataprocService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dataproc.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates new autoscaling policy.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.create, the resource name has the following format:
        #   projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.create, the resource name has the following format:
        #   projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_autoscaling_policy(parent, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/autoscalingPolicies', options)
          command.request_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an autoscaling policy. It is an error to delete an autoscaling policy
        # that is in use by one or more clusters.
        # @param [String] name
        #   Required. The "resource name" of the autoscaling policy, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.delete, the resource name of the policy has the following
        #   format: projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id`
        #   For projects.locations.autoscalingPolicies.delete, the resource name of the
        #   policy has the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves autoscaling policy.
        # @param [String] name
        #   Required. The "resource name" of the autoscaling policy, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.get, the resource name of the policy has the following
        #   format: projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id`
        #   For projects.locations.autoscalingPolicies.get, the resource name of the
        #   policy has the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_autoscaling_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists autoscaling policies in the project.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.list, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.list, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return in each response. Must be
        #   less than or equal to 1000. Defaults to 100.
        # @param [String] page_token
        #   Optional. The page token, returned by a previous call, to request the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autoscaling_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+parent}/autoscalingPolicies', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_autoscaling_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_autoscaling_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates (replaces) autoscaling policy.Disabled check for update_mask, because
        # all updates will be full replacements.
        # @param [String] name
        #   Output only. The "resource name" of the autoscaling policy, as described in
        #   https://cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies, the resource name of the policy has the following format:
        #   projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id` For
        #   projects.locations.autoscalingPolicies, the resource name of the policy has
        #   the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [Google::Apis::DataprocV1beta2::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_autoscaling_policy(name, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new workflow template.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.create, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_workflow_template(parent, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/workflowTemplates', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a workflow template. It does not cancel in-progress workflows.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.delete, the resource name of the template has the following
        #   format: projects/`project_id`/regions/`region`/workflowTemplates/`template_id`
        #   For projects.locations.workflowTemplates.instantiate, the resource name of the
        #   template has the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Fixnum] version
        #   Optional. The version of workflow template to delete. If specified, will only
        #   delete the template if the current server version matches specified version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the latest workflow template.Can retrieve previously instantiated
        # template by specifying optional version parameter.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.get, the resource name of the template has the following
        #   format: projects/`project_id`/regions/`region`/workflowTemplates/`template_id`
        #   For projects.locations.workflowTemplates.get, the resource name of the
        #   template has the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Fixnum] version
        #   Optional. The version of workflow template to retrieve. Only previously
        #   instantiated versions can be retrieved.If unspecified, retrieves the current
        #   version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workflow_template_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Instantiates a template and begins execution.The returned Operation can be
        # used to track execution of workflow by polling operations.get. The Operation
        # will complete when entire workflow is finished.The running workflow can be
        # aborted via operations.cancel. This will cause any inflight jobs to be
        # cancelled and workflow-owned clusters to be deleted.The Operation.metadata
        # will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#workflowmetadata). Also see Using
        # WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/
        # debugging#using_workflowmetadata).On successful completion, Operation.response
        # will be Empty.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.instantiate, the resource name of the template has the
        #   following format: projects/`project_id`/regions/`region`/workflowTemplates/`
        #   template_id` For projects.locations.workflowTemplates.instantiate, the
        #   resource name of the template has the following format: projects/`project_id`/
        #   locations/`location`/workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1beta2::InstantiateWorkflowTemplateRequest] instantiate_workflow_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_location_workflow_template(name, instantiate_workflow_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+name}:instantiate', options)
          command.request_representation = Google::Apis::DataprocV1beta2::InstantiateWorkflowTemplateRequest::Representation
          command.request_object = instantiate_workflow_template_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Instantiates a template and begins execution.This method is equivalent to
        # executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate,
        # DeleteWorkflowTemplate.The returned Operation can be used to track execution
        # of workflow by polling operations.get. The Operation will complete when entire
        # workflow is finished.The running workflow can be aborted via operations.cancel.
        # This will cause any inflight jobs to be cancelled and workflow-owned clusters
        # to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.
        # google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#
        # workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/
        # dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
        # successful completion, Operation.response will be Empty.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,instantiateinline, the resource name of the region has the
        #   following format: projects/`project_id`/regions/`region` For projects.
        #   locations.workflowTemplates.instantiateinline, the resource name of the
        #   location has the following format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] instance_id
        #   Deprecated. Please use request_id field instead.
        # @param [String] request_id
        #   Optional. A tag that prevents multiple concurrent workflow instances with the
        #   same tag from running. This mitigates risk of concurrent instances started due
        #   to retries.It is recommended to always set this value to a UUID (https://en.
        #   wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only
        #   letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The
        #   maximum length is 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_location_workflow_template_inline(parent, workflow_template_object = nil, instance_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/workflowTemplates:instantiateInline', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['instanceId'] = instance_id unless instance_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists workflows that match the specified filter in the request.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,list, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.list, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return in each response.
        # @param [String] page_token
        #   Optional. The page token, returned by a previous call, to request the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_workflow_templates(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+parent}/workflowTemplates', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_workflow_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_workflow_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates (replaces) workflow template. The updated template must contain
        # version that matches the current server version.
        # @param [String] name
        #   Output only. The resource name of the workflow template, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates, the resource name of the template has the following format:
        #   projects/`project_id`/regions/`region`/workflowTemplates/`template_id` For
        #   projects.locations.workflowTemplates, the resource name of the template has
        #   the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_workflow_template(name, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new autoscaling policy.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.create, the resource name has the following format:
        #   projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.create, the resource name has the following format:
        #   projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_autoscaling_policy(parent, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/autoscalingPolicies', options)
          command.request_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an autoscaling policy. It is an error to delete an autoscaling policy
        # that is in use by one or more clusters.
        # @param [String] name
        #   Required. The "resource name" of the autoscaling policy, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.delete, the resource name of the policy has the following
        #   format: projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id`
        #   For projects.locations.autoscalingPolicies.delete, the resource name of the
        #   policy has the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves autoscaling policy.
        # @param [String] name
        #   Required. The "resource name" of the autoscaling policy, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.get, the resource name of the policy has the following
        #   format: projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id`
        #   For projects.locations.autoscalingPolicies.get, the resource name of the
        #   policy has the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_autoscaling_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists autoscaling policies in the project.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.list, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.list, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return in each response. Must be
        #   less than or equal to 1000. Defaults to 100.
        # @param [String] page_token
        #   Optional. The page token, returned by a previous call, to request the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_autoscaling_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+parent}/autoscalingPolicies', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListAutoscalingPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_region_autoscaling_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_region_autoscaling_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates (replaces) autoscaling policy.Disabled check for update_mask, because
        # all updates will be full replacements.
        # @param [String] name
        #   Output only. The "resource name" of the autoscaling policy, as described in
        #   https://cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies, the resource name of the policy has the following format:
        #   projects/`project_id`/regions/`region`/autoscalingPolicies/`policy_id` For
        #   projects.locations.autoscalingPolicies, the resource name of the policy has
        #   the following format: projects/`project_id`/locations/`location`/
        #   autoscalingPolicies/`policy_id`
        # @param [Google::Apis::DataprocV1beta2::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_region_autoscaling_policy(name, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1beta2::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a cluster in a project. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#clusteroperationmetadata).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [Google::Apis::DataprocV1beta2::Cluster] cluster_object
        # @param [String] request_id
        #   Optional. A unique id used to identify the request. If the server receives two
        #   CreateClusterRequest requests with the same id, then the second request will
        #   be ignored and the first google.longrunning.Operation created and stored in
        #   the backend is returned.It is recommended to always set this value to a UUID (
        #   https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
        #   contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        #   ). The maximum length is 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_cluster(project_id, region, cluster_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/clusters', options)
          command.request_representation = Google::Apis::DataprocV1beta2::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a cluster in a project. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#clusteroperationmetadata).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [String] cluster_uuid
        #   Optional. Specifying the cluster_uuid means the RPC should fail (with error
        #   NOT_FOUND) if cluster with specified UUID does not exist.
        # @param [String] request_id
        #   Optional. A unique id used to identify the request. If the server receives two
        #   DeleteClusterRequest requests with the same id, then the second request will
        #   be ignored and the first google.longrunning.Operation created and stored in
        #   the backend is returned.It is recommended to always set this value to a UUID (
        #   https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
        #   contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        #   ). The maximum length is 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_cluster(project_id, region, cluster_name, cluster_uuid: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['clusterUuid'] = cluster_uuid unless cluster_uuid.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets cluster diagnostic information. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#clusteroperationmetadata). After the operation
        # completes, Operation.response contains Empty.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1beta2::DiagnoseClusterRequest] diagnose_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def diagnose_cluster(project_id, region, cluster_name, diagnose_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose', options)
          command.request_representation = Google::Apis::DataprocV1beta2::DiagnoseClusterRequest::Representation
          command.request_object = diagnose_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the resource representation for a cluster in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_cluster(project_id, region, cluster_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Cluster::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Cluster
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_cluster_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inject encrypted credentials into all of the VMs in a cluster.The target
        # cluster must be a personal auth cluster assigned to the user who is issuing
        # the RPC.
        # @param [String] project
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to,
        #   of the form projects/.
        # @param [String] region
        #   Required. The region containing the cluster, of the form regions/.
        # @param [String] cluster
        #   Required. The cluster, in the form clusters/.
        # @param [Google::Apis::DataprocV1beta2::InjectCredentialsRequest] inject_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inject_cluster_credentials(project, region, cluster, inject_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+project}/{+region}/{+cluster}:injectCredentials', options)
          command.request_representation = Google::Apis::DataprocV1beta2::InjectCredentialsRequest::Representation
          command.request_object = inject_credentials_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['cluster'] = cluster unless cluster.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all regions/`region`/clusters in a project alphabetically.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] filter
        #   Optional. A filter constraining the clusters to list. Filters are case-
        #   sensitive and have the following syntax:field = value AND field = value ...
        #   where field is one of status.state, clusterName, or labels.[KEY], and [KEY] is
        #   a label key. value can be * to match all values. status.state can be one of
        #   the following: ACTIVE, INACTIVE, CREATING, RUNNING, ERROR, DELETING, or
        #   UPDATING. ACTIVE contains the CREATING, UPDATING, and RUNNING states. INACTIVE
        #   contains the DELETING and ERROR states. clusterName is the name of the cluster
        #   provided at creation time. Only the logical AND operator is supported; space-
        #   separated items are treated as having an implicit AND operator.Example filter:
        #   status.state = ACTIVE AND clusterName = mycluster AND labels.env = staging AND
        #   labels.starred = *
        # @param [Fixnum] page_size
        #   Optional. The standard List page size.
        # @param [String] page_token
        #   Optional. The standard List page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_clusters(project_id, region, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/projects/{projectId}/regions/{region}/clusters', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListClustersResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListClustersResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a cluster in a project. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#clusteroperationmetadata).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1beta2::Cluster] cluster_object
        # @param [String] graceful_decommission_timeout
        #   Optional. Timeout for graceful YARN decomissioning. Graceful decommissioning
        #   allows removing nodes from the cluster without interrupting jobs in progress.
        #   Timeout specifies how long to wait for jobs in progress to finish before
        #   forcefully removing nodes (and potentially interrupting jobs). Default timeout
        #   is 0 (for forceful decommission), and the maximum allowed timeout is 1 day (
        #   see JSON representation of Duration (https://developers.google.com/protocol-
        #   buffers/docs/proto3#json)).Only supported on Dataproc image versions 1.2 and
        #   higher.
        # @param [String] request_id
        #   Optional. A unique id used to identify the request. If the server receives two
        #   UpdateClusterRequest requests with the same id, then the second request will
        #   be ignored and the first google.longrunning.Operation created and stored in
        #   the backend is returned.It is recommended to always set this value to a UUID (
        #   https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
        #   contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        #   ). The maximum length is 40 characters.
        # @param [String] update_mask
        #   Required. Specifies the path, relative to Cluster, of the field to update. For
        #   example, to change the number of workers in a cluster to 5, the update_mask
        #   parameter would be specified as config.worker_config.num_instances, and the
        #   PATCH request body would specify the new value, as follows: ` "config":` "
        #   workerConfig":` "numInstances":"5" ` ` ` Similarly, to change the number of
        #   preemptible workers in a cluster to 5, the update_mask parameter would be
        #   config.secondary_worker_config.num_instances, and the PATCH request body would
        #   be set as follows: ` "config":` "secondaryWorkerConfig":` "numInstances":"5" `
        #   ` ` *Note:* currently only the following fields can be updated: *Mask* *
        #   Purpose* labels Updates labels config.worker_config.num_instances Resize
        #   primary worker group config.secondary_worker_config.num_instances Resize
        #   secondary worker group config.lifecycle_config.auto_delete_ttl Reset MAX TTL
        #   duration config.lifecycle_config.auto_delete_time Update MAX TTL deletion
        #   timestamp config.lifecycle_config.idle_delete_ttl Update Idle TTL duration
        #   config.autoscaling_config.policy_uri Use, stop using, or change autoscaling
        #   policies
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_region_cluster(project_id, region, cluster_name, cluster_object = nil, graceful_decommission_timeout: nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['gracefulDecommissionTimeout'] = graceful_decommission_timeout unless graceful_decommission_timeout.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a cluster in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1beta2::StartClusterRequest] start_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_cluster(project_id, region, cluster_name, start_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}:start', options)
          command.request_representation = Google::Apis::DataprocV1beta2::StartClusterRequest::Representation
          command.request_object = start_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops a cluster in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1beta2::StopClusterRequest] stop_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_cluster(project_id, region, cluster_name, stop_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop', options)
          command.request_representation = Google::Apis::DataprocV1beta2::StopClusterRequest::Representation
          command.request_object = stop_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_cluster_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a job cancellation request. To access the job resource after
        # cancellation, call regions/`region`/jobs.list (https://cloud.google.com/
        # dataproc/docs/reference/rest/v1beta2/projects.regions.jobs/list) or regions/`
        # region`/jobs.get (https://cloud.google.com/dataproc/docs/reference/rest/
        # v1beta2/projects.regions.jobs/get).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] job_id
        #   Required. The job ID.
        # @param [Google::Apis::DataprocV1beta2::CancelJobRequest] cancel_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_job(project_id, region, job_id, cancel_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel', options)
          command.request_representation = Google::Apis::DataprocV1beta2::CancelJobRequest::Representation
          command.request_object = cancel_job_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Job::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the job from the project. If the job is active, the delete fails, and
        # the response returns FAILED_PRECONDITION.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] job_id
        #   Required. The job ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_job(project_id, region, job_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the resource representation for a job in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] job_id
        #   Required. The job ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_job(project_id, region, job_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Job::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_job_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists regions/`region`/jobs in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Optional. If set, the returned jobs list includes only jobs that were
        #   submitted to the named cluster.
        # @param [String] filter
        #   Optional. A filter constraining the jobs to list. Filters are case-sensitive
        #   and have the following syntax:field = value AND field = value ...where field
        #   is status.state or labels.[KEY], and [KEY] is a label key. value can be * to
        #   match all values. status.state can be either ACTIVE or NON_ACTIVE. Only the
        #   logical AND operator is supported; space-separated items are treated as having
        #   an implicit AND operator.Example filter:status.state = ACTIVE AND labels.env =
        #   staging AND labels.starred = *
        # @param [String] job_state_matcher
        #   Optional. Specifies enumerated categories of jobs to list. (default = match
        #   ALL jobs).If filter is provided, jobStateMatcher will be ignored.
        # @param [Fixnum] page_size
        #   Optional. The number of results to return in each response.
        # @param [String] page_token
        #   Optional. The page token, returned by a previous call, to request the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_jobs(project_id, region, cluster_name: nil, filter: nil, job_state_matcher: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/projects/{projectId}/regions/{region}/jobs', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListJobsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['jobStateMatcher'] = job_state_matcher unless job_state_matcher.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a job in a project.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] job_id
        #   Required. The job ID.
        # @param [Google::Apis::DataprocV1beta2::Job] job_object
        # @param [String] update_mask
        #   Required. Specifies the path, relative to Job, of the field to update. For
        #   example, to update the labels of a Job the update_mask parameter would be
        #   specified as labels, and the PATCH request body would specify the new value. *
        #   Note:* Currently, labels is the only field that can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_region_job(project_id, region, job_id, job_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::DataprocV1beta2::Job::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_job_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits a job to a cluster.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [Google::Apis::DataprocV1beta2::SubmitJobRequest] submit_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_job(project_id, region, submit_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/jobs:submit', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SubmitJobRequest::Representation
          command.request_object = submit_job_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Job::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits job to a cluster.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [Google::Apis::DataprocV1beta2::SubmitJobRequest] submit_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_project_region_job_as_operation(project_id, region, submit_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/projects/{projectId}/regions/{region}/jobs:submitAsOperation', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SubmitJobRequest::Representation
          command.request_object = submit_job_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_job_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_region_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+name}:cancel', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns google.rpc.Code.
        # UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_operation_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding
        # allows API services to override the binding to use different resource name
        # schemes, such as users/*/operations. To override the binding, API services can
        # add a binding such as "/v1/`name=users/*`/operations" to their service
        # configuration. For backwards compatibility, the default name includes the
        # operations collection id, however overriding users must ensure the name
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
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_operation_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_operation_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new workflow template.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.create, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_workflow_template(parent, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/workflowTemplates', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a workflow template. It does not cancel in-progress workflows.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.delete, the resource name of the template has the following
        #   format: projects/`project_id`/regions/`region`/workflowTemplates/`template_id`
        #   For projects.locations.workflowTemplates.instantiate, the resource name of the
        #   template has the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Fixnum] version
        #   Optional. The version of workflow template to delete. If specified, will only
        #   delete the template if the current server version matches specified version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Empty::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Empty
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the latest workflow template.Can retrieve previously instantiated
        # template by specifying optional version parameter.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.get, the resource name of the template has the following
        #   format: projects/`project_id`/regions/`region`/workflowTemplates/`template_id`
        #   For projects.locations.workflowTemplates.get, the resource name of the
        #   template has the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Fixnum] version
        #   Optional. The version of workflow template to retrieve. Only previously
        #   instantiated versions can be retrieved.If unspecified, retrieves the current
        #   version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned.Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected.Requests for policies
        #   with any conditional bindings must specify version 3. Policies without any
        #   conditional bindings may specify any valid value or leave the field unset.To
        #   learn which resources support conditions in their IAM policies, see the IAM
        #   documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_workflow_template_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Instantiates a template and begins execution.The returned Operation can be
        # used to track execution of workflow by polling operations.get. The Operation
        # will complete when entire workflow is finished.The running workflow can be
        # aborted via operations.cancel. This will cause any inflight jobs to be
        # cancelled and workflow-owned clusters to be deleted.The Operation.metadata
        # will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1beta2#workflowmetadata). Also see Using
        # WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/
        # debugging#using_workflowmetadata).On successful completion, Operation.response
        # will be Empty.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.instantiate, the resource name of the template has the
        #   following format: projects/`project_id`/regions/`region`/workflowTemplates/`
        #   template_id` For projects.locations.workflowTemplates.instantiate, the
        #   resource name of the template has the following format: projects/`project_id`/
        #   locations/`location`/workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1beta2::InstantiateWorkflowTemplateRequest] instantiate_workflow_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_region_workflow_template(name, instantiate_workflow_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+name}:instantiate', options)
          command.request_representation = Google::Apis::DataprocV1beta2::InstantiateWorkflowTemplateRequest::Representation
          command.request_object = instantiate_workflow_template_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Instantiates a template and begins execution.This method is equivalent to
        # executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate,
        # DeleteWorkflowTemplate.The returned Operation can be used to track execution
        # of workflow by polling operations.get. The Operation will complete when entire
        # workflow is finished.The running workflow can be aborted via operations.cancel.
        # This will cause any inflight jobs to be cancelled and workflow-owned clusters
        # to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.
        # google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#
        # workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/
        # dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
        # successful completion, Operation.response will be Empty.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,instantiateinline, the resource name of the region has the
        #   following format: projects/`project_id`/regions/`region` For projects.
        #   locations.workflowTemplates.instantiateinline, the resource name of the
        #   location has the following format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] instance_id
        #   Deprecated. Please use request_id field instead.
        # @param [String] request_id
        #   Optional. A tag that prevents multiple concurrent workflow instances with the
        #   same tag from running. This mitigates risk of concurrent instances started due
        #   to retries.It is recommended to always set this value to a UUID (https://en.
        #   wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only
        #   letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The
        #   maximum length is 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_region_workflow_template_inline(parent, workflow_template_object = nil, instance_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/workflowTemplates:instantiateInline', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::Operation::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['instanceId'] = instance_id unless instance_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists workflows that match the specified filter in the request.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates,list, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.list, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return in each response.
        # @param [String] page_token
        #   Optional. The page token, returned by a previous call, to request the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_workflow_templates(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+parent}/workflowTemplates', options)
          command.response_representation = Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::ListWorkflowTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_region_workflow_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::Policy::Representation
          command.response_class = Google::Apis::DataprocV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DataprocV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_region_workflow_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates (replaces) workflow template. The updated template must contain
        # version that matches the current server version.
        # @param [String] name
        #   Output only. The resource name of the workflow template, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates, the resource name of the template has the following format:
        #   projects/`project_id`/regions/`region`/workflowTemplates/`template_id` For
        #   projects.locations.workflowTemplates, the resource name of the template has
        #   the following format: projects/`project_id`/locations/`location`/
        #   workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1beta2::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1beta2::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1beta2::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_region_workflow_template(name, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1beta2::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1beta2::WorkflowTemplate
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
