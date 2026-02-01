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
    module DataprocV1
      # Cloud Dataproc API
      #
      # Manages Hadoop-based clusters and jobs on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/dataproc_v1'
      #
      #    Dataproc = Google::Apis::DataprocV1 # Alias the module
      #    service = Dataproc::DataprocService.new
      #
      # @see https://cloud.google.com/dataproc/
      class DataprocService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://dataproc.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-dataproc_v1',
                client_version: Google::Apis::DataprocV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates new autoscaling policy.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.create, the resource name of the location has the
        #   following format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_autoscaling_policy(parent, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/autoscalingPolicies', options)
          command.request_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_autoscaling_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_autoscaling_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autoscalingPolicies', options)
          command.response_representation = Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_autoscaling_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_autoscaling_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
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
        # @param [Google::Apis::DataprocV1::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_autoscaling_policy(name, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyze a Batch for possible recommendations and insights.
        # @param [String] name
        #   Required. The fully qualified name of the batch to analyze in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
        # @param [Google::Apis::DataprocV1::AnalyzeBatchRequest] analyze_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_batch(name, analyze_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:analyze', options)
          command.request_representation = Google::Apis::DataprocV1::AnalyzeBatchRequest::Representation
          command.request_object = analyze_batch_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a batch workload that executes asynchronously.
        # @param [String] parent
        #   Required. The parent resource where this batch will be created.
        # @param [Google::Apis::DataprocV1::Batch] batch_object
        # @param [String] batch_id
        #   Optional. The ID to use for the batch, which will become the final component
        #   of the batch's resource name.This value must be 4-63 characters. Valid
        #   characters are /[a-z][0-9]-/.
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the service receives
        #   two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with
        #   the same request_id, the second request is ignored and the Operation that
        #   corresponds to the first Batch created and stored in the backend is returned.
        #   Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/
        #   Universally_unique_identifier).The value must contain only letters (a-z, A-Z),
        #   numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_batch(parent, batch_object = nil, batch_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/batches', options)
          command.request_representation = Google::Apis::DataprocV1::Batch::Representation
          command.request_object = batch_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['batchId'] = batch_id unless batch_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the batch workload resource. If the batch is not in a CANCELLED,
        # SUCCEEDED or FAILED State, the delete operation fails and the response returns
        # FAILED_PRECONDITION.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_batch(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the batch workload resource representation.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Batch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Batch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_batch(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Batch::Representation
          command.response_class = Google::Apis::DataprocV1::Batch
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists batch workloads.
        # @param [String] parent
        #   Required. The parent, which owns this collection of batches.
        # @param [String] filter
        #   Optional. A filter for the batches to return in the response.A filter is a
        #   logical expression constraining the values of various fields in each batch
        #   resource. Filters are case sensitive, and may contain multiple clauses
        #   combined with logical operators (AND/OR). Supported fields are batch_id,
        #   batch_uuid, state, create_time, and labels.e.g. state = RUNNING and
        #   create_time < "2023-01-01T00:00:00Z" filters for batches in state RUNNING that
        #   were created before 2023-01-01. state = RUNNING and labels.environment=
        #   production filters for batches in state in a RUNNING state that have a
        #   production environment label.See https://google.aip.dev/assets/misc/ebnf-
        #   filtering.txt for a detailed description of the filter syntax and a list of
        #   supported comparisons.
        # @param [String] order_by
        #   Optional. Field(s) on which to sort the list of batches.Currently the only
        #   supported sort orders are unspecified (empty) and create_time desc to sort by
        #   most recently created batches first.See https://google.aip.dev/132#ordering
        #   for more details.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of batches to return in each response. The
        #   service may return fewer than this value. The default page size is 20; the
        #   maximum page size is 1000.
        # @param [String] page_token
        #   Optional. A page token received from a previous ListBatches call. Provide this
        #   token to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::ListBatchesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListBatchesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_batches(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/batches', options)
          command.response_representation = Google::Apis::DataprocV1::ListBatchesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListBatchesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain high level information corresponding to a single Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:access', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain environment details for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationEnvironmentInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationEnvironmentInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_environment_info(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessEnvironmentInfo', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationEnvironmentInfoResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationEnvironmentInfoResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark job for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] job_id
        #   Required. Job ID to fetch data for.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_job(name, job_id: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessJob', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationJobResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationJobResponse
          command.params['name'] = name unless name.nil?
          command.query['jobId'] = job_id unless job_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the
        # number of clusters returned as part of the graph to 10000.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] execution_id
        #   Required. Execution ID
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationSqlSparkPlanGraphResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationSqlSparkPlanGraphResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_sql_plan(name, execution_id: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessSqlPlan', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationSqlSparkPlanGraphResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationSqlSparkPlanGraphResponse
          command.params['name'] = name unless name.nil?
          command.query['executionId'] = execution_id unless execution_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a particular SQL Query for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Boolean] details
        #   Optional. Lists/ hides details of Spark plan nodes. True is set to list and
        #   false to hide.
        # @param [Fixnum] execution_id
        #   Required. Execution ID
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Boolean] plan_description
        #   Optional. Enables/ disables physical plan description on demand
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationSqlQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationSqlQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_sql_query(name, details: nil, execution_id: nil, parent: nil, plan_description: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessSqlQuery', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationSqlQueryResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationSqlQueryResponse
          command.params['name'] = name unless name.nil?
          command.query['details'] = details unless details.nil?
          command.query['executionId'] = execution_id unless execution_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['planDescription'] = plan_description unless plan_description.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark stage attempt for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationStageAttemptResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationStageAttemptResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_stage_attempt(name, parent: nil, stage_attempt_id: nil, stage_id: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessStageAttempt', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationStageAttemptResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationStageAttemptResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain RDD operation graph for a Spark Application Stage. Limits the number of
        # clusters returned as part of the graph to 10000.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSparkApplicationStageRddOperationGraphResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSparkApplicationStageRddOperationGraphResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_batch_spark_application_stage_rdd_graph(name, parent: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessStageRddGraph', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSparkApplicationStageRddOperationGraphResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSparkApplicationStageRddOperationGraphResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain high level information and list of Spark Applications corresponding to
        # a batch
        # @param [String] parent
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
        # @param [String] application_status
        #   Optional. Search only applications in the chosen state.
        # @param [String] max_end_time
        #   Optional. Latest end timestamp to list.
        # @param [String] max_time
        #   Optional. Latest start timestamp to list.
        # @param [String] min_end_time
        #   Optional. Earliest end timestamp to list.
        # @param [String] min_time
        #   Optional. Earliest start timestamp to list.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of applications to return in each response. The
        #   service may return fewer than this. The default page size is 10; the maximum
        #   page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous SearchSparkApplications call.
        #   Provide this token to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_applications(parent, application_status: nil, max_end_time: nil, max_time: nil, min_end_time: nil, min_time: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sparkApplications:search', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['applicationStatus'] = application_status unless application_status.nil?
          command.query['maxEndTime'] = max_end_time unless max_end_time.nil?
          command.query['maxTime'] = max_time unless max_time.nil?
          command.query['minEndTime'] = min_end_time unless min_end_time.nil?
          command.query['minTime'] = min_time unless min_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain executor summary with respect to a spark stage attempt.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of executors to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   AccessSparkApplicationExecutorsList call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationExecutorStageSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationExecutorStageSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_executor_stage_summary(name, page_size: nil, page_token: nil, parent: nil, stage_attempt_id: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchExecutorStageSummary', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationExecutorStageSummaryResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationExecutorStageSummaryResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to executors for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] executor_status
        #   Optional. Filter to select whether active/ dead or all executors should be
        #   selected.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of executors to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   AccessSparkApplicationExecutorsList call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationExecutorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationExecutorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_executors(name, executor_status: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchExecutors', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationExecutorsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationExecutorsResponse
          command.params['name'] = name unless name.nil?
          command.query['executorStatus'] = executor_status unless executor_status.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain list of spark jobs corresponding to a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] job_status
        #   Optional. List only jobs in the specific state.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of jobs to return in each response. The service may
        #   return fewer than this. The default page size is 10; the maximum page size is
        #   100.
        # @param [String] page_token
        #   Optional. A page token received from a previous SearchSparkApplicationJobs
        #   call. Provide this token to retrieve the subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_jobs(name, job_status: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchJobs', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationJobsResponse
          command.params['name'] = name unless name.nil?
          command.query['jobStatus'] = job_status unless job_status.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to SQL Queries for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Boolean] details
        #   Optional. Lists/ hides details of Spark plan nodes. True is set to list and
        #   false to hide.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of queries to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSparkApplicationSqlQueries call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Boolean] plan_description
        #   Optional. Enables/ disables physical plan description on demand
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationSqlQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationSqlQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_sql_queries(name, details: nil, page_size: nil, page_token: nil, parent: nil, plan_description: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchSqlQueries', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationSqlQueriesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationSqlQueriesResponse
          command.params['name'] = name unless name.nil?
          command.query['details'] = details unless details.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['planDescription'] = plan_description unless plan_description.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to tasks for a spark stage attempt for a Spark
        # Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of tasks to return in each response. The service may
        #   return fewer than this. The default page size is 10; the maximum page size is
        #   100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   ListSparkApplicationStageAttemptTasks call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Boolean] sort_runtime
        #   Optional. Sort the tasks by runtime.
        # @param [Fixnum] stage_attempt_id
        #   Optional. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Optional. Stage ID
        # @param [String] task_status
        #   Optional. List only tasks in the state.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_stage_attempt_tasks(name, page_size: nil, page_token: nil, parent: nil, sort_runtime: nil, stage_attempt_id: nil, stage_id: nil, task_status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStageAttemptTasks', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptTasksResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptTasksResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['sortRuntime'] = sort_runtime unless sort_runtime.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['taskStatus'] = task_status unless task_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark stage attempts for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of stage attempts (paging based on stage_attempt_id)
        #   to return in each response. The service may return fewer than this. The
        #   default page size is 10; the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSparkApplicationStageAttempts call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Fixnum] stage_id
        #   Required. Stage ID for which attempts are to be fetched
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_stage_attempts(name, page_size: nil, page_token: nil, parent: nil, stage_id: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStageAttempts', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationStageAttemptsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to stages for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of stages (paging based on stage_id) to return in
        #   each response. The service may return fewer than this. The default page size
        #   is 10; the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   FetchSparkApplicationStagesList call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] stage_status
        #   Optional. List only stages in the given state.
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSparkApplicationStagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSparkApplicationStagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_batch_spark_application_stages(name, page_size: nil, page_token: nil, parent: nil, stage_status: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStages', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSparkApplicationStagesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSparkApplicationStagesResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageStatus'] = stage_status unless stage_status.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Executor Summary for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSparkApplicationExecutorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSparkApplicationExecutorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_batch_spark_application_executors(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeExecutors', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSparkApplicationExecutorsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSparkApplicationExecutorsResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Jobs for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSparkApplicationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSparkApplicationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_batch_spark_application_jobs(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeJobs', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSparkApplicationJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSparkApplicationJobsResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Tasks for a Spark Application Stage Attempt
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSparkApplicationStageAttemptTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSparkApplicationStageAttemptTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_batch_spark_application_stage_attempt_tasks(name, parent: nil, stage_attempt_id: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeStageAttemptTasks', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSparkApplicationStageAttemptTasksResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSparkApplicationStageAttemptTasksResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Stages for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the batch to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Batch) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSparkApplicationStagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSparkApplicationStagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_batch_spark_application_stages(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeStages', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSparkApplicationStagesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSparkApplicationStagesResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Write wrapper objects from dataplane to spanner
        # @param [String] name
        #   Required. The fully qualified name of the spark application to write data
        #   about in the format "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/
        #   BATCH_ID/sparkApplications/APPLICATION_ID"
        # @param [Google::Apis::DataprocV1::WriteSparkApplicationContextRequest] write_spark_application_context_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WriteSparkApplicationContextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WriteSparkApplicationContextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_spark_application_context(name, write_spark_application_context_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:write', options)
          command.request_representation = Google::Apis::DataprocV1::WriteSparkApplicationContextRequest::Representation
          command.request_object = write_spark_application_context_request_object
          command.response_representation = Google::Apis::DataprocV1::WriteSparkApplicationContextResponse::Representation
          command.response_class = Google::Apis::DataprocV1::WriteSparkApplicationContextResponse
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to true, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field.This can only be true when reading across collections. For
        #   example, when parent is set to "projects/example/locations/-".This field is
        #   not supported by default and will result in an UNIMPLEMENTED error if set
        #   unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a session template synchronously.
        # @param [String] parent
        #   Required. The parent resource where this session template will be created.
        # @param [Google::Apis::DataprocV1::SessionTemplate] session_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SessionTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SessionTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_session_template(parent, session_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/sessionTemplates', options)
          command.request_representation = Google::Apis::DataprocV1::SessionTemplate::Representation
          command.request_object = session_template_object
          command.response_representation = Google::Apis::DataprocV1::SessionTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::SessionTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a session template.
        # @param [String] name
        #   Required. The name of the session template resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_session_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the resource representation for a session template.
        # @param [String] name
        #   Required. The name of the session template to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SessionTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SessionTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_session_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::SessionTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::SessionTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists session templates.
        # @param [String] parent
        #   Required. The parent that owns this collection of session templates.
        # @param [String] filter
        #   Optional. A filter for the session templates to return in the response.
        #   Filters are case sensitive and have the following syntax:field = value AND
        #   field = value ...
        # @param [Fixnum] page_size
        #   Optional. The maximum number of sessions to return in each response. The
        #   service may return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token received from a previous ListSessions call. Provide
        #   this token to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::ListSessionTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListSessionTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_session_templates(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sessionTemplates', options)
          command.response_representation = Google::Apis::DataprocV1::ListSessionTemplatesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListSessionTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the session template synchronously.
        # @param [String] name
        #   Required. Identifier. The resource name of the session template.
        # @param [Google::Apis::DataprocV1::SessionTemplate] session_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SessionTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SessionTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_session_template(name, session_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1::SessionTemplate::Representation
          command.request_object = session_template_object
          command.response_representation = Google::Apis::DataprocV1::SessionTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::SessionTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an interactive session asynchronously.
        # @param [String] parent
        #   Required. The parent resource where this session will be created.
        # @param [Google::Apis::DataprocV1::Session] session_object
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the service receives
        #   two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/
        #   rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s
        #   with the same ID, the second request is ignored, and the first Session is
        #   created and stored in the backend.Recommendation: Set this value to a UUID (
        #   https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must
        #   contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        #   ). The maximum length is 40 characters.
        # @param [String] session_id
        #   Required. The ID to use for the session, which becomes the final component of
        #   the session's resource name.This value must be 4-63 characters. Valid
        #   characters are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_session(parent, session_object = nil, request_id: nil, session_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DataprocV1::Session::Representation
          command.request_object = session_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['sessionId'] = session_id unless session_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the interactive session resource. If the session is not in terminal
        # state, it is terminated, and then deleted.
        # @param [String] name
        #   Required. The name of the session resource to delete.
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the service receives
        #   two DeleteSessionRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteSessionRequest)s with
        #   the same ID, the second request is ignored.Recommendation: Set this value to a
        #   UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
        #   must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
        #   hyphens (-). The maximum length is 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_session(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the resource representation for an interactive session.
        # @param [String] name
        #   Required. The name of the session to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Session] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Session]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Session::Representation
          command.response_class = Google::Apis::DataprocV1::Session
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists interactive sessions.
        # @param [String] parent
        #   Required. The parent, which owns this collection of sessions.
        # @param [String] filter
        #   Optional. A filter for the sessions to return in the response.A filter is a
        #   logical expression constraining the values of various fields in each session
        #   resource. Filters are case sensitive, and may contain multiple clauses
        #   combined with logical operators (AND, OR). Supported fields are session_id,
        #   session_uuid, state, create_time, and labels.Example: state = ACTIVE and
        #   create_time < "2023-01-01T00:00:00Z" is a filter for sessions in an ACTIVE
        #   state that were created before 2023-01-01. state = ACTIVE and labels.
        #   environment=production is a filter for sessions in an ACTIVE state that have a
        #   production environment label.See https://google.aip.dev/assets/misc/ebnf-
        #   filtering.txt for a detailed description of the filter syntax and a list of
        #   supported comparators.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of sessions to return in each response. The
        #   service may return fewer than this value.
        # @param [String] page_token
        #   Optional. A page token received from a previous ListSessions call. Provide
        #   this token to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::ListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sessions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DataprocV1::ListSessionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Terminates the interactive session.
        # @param [String] name
        #   Required. The name of the session resource to terminate.
        # @param [Google::Apis::DataprocV1::TerminateSessionRequest] terminate_session_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def terminate_session(name, terminate_session_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:terminate', options)
          command.request_representation = Google::Apis::DataprocV1::TerminateSessionRequest::Representation
          command.request_object = terminate_session_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain high level information corresponding to a single Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:access', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain environment details for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationEnvironmentInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationEnvironmentInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_environment_info(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessEnvironmentInfo', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationEnvironmentInfoResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationEnvironmentInfoResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark job for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] job_id
        #   Required. Job ID to fetch data for.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_job(name, job_id: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessJob', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationJobResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationJobResponse
          command.params['name'] = name unless name.nil?
          command.query['jobId'] = job_id unless job_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the
        # number of clusters returned as part of the graph to 10000.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] execution_id
        #   Required. Execution ID
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlSparkPlanGraphResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlSparkPlanGraphResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_sql_plan(name, execution_id: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessSqlPlan', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlSparkPlanGraphResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlSparkPlanGraphResponse
          command.params['name'] = name unless name.nil?
          command.query['executionId'] = execution_id unless execution_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a particular SQL Query for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Boolean] details
        #   Optional. Lists/ hides details of Spark plan nodes. True is set to list and
        #   false to hide.
        # @param [Fixnum] execution_id
        #   Required. Execution ID
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Boolean] plan_description
        #   Optional. Enables/ disables physical plan description on demand
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_sql_query(name, details: nil, execution_id: nil, parent: nil, plan_description: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessSqlQuery', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlQueryResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationSqlQueryResponse
          command.params['name'] = name unless name.nil?
          command.query['details'] = details unless details.nil?
          command.query['executionId'] = execution_id unless execution_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['planDescription'] = plan_description unless plan_description.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark stage attempt for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationStageAttemptResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationStageAttemptResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_stage_attempt(name, parent: nil, stage_attempt_id: nil, stage_id: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessStageAttempt', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationStageAttemptResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationStageAttemptResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain RDD operation graph for a Spark Application Stage. Limits the number of
        # clusters returned as part of the graph to 10000.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AccessSessionSparkApplicationStageRddOperationGraphResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AccessSessionSparkApplicationStageRddOperationGraphResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_session_spark_application_stage_rdd_graph(name, parent: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:accessStageRddGraph', options)
          command.response_representation = Google::Apis::DataprocV1::AccessSessionSparkApplicationStageRddOperationGraphResponse::Representation
          command.response_class = Google::Apis::DataprocV1::AccessSessionSparkApplicationStageRddOperationGraphResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain high level information and list of Spark Applications corresponding to
        # a batch
        # @param [String] parent
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID"
        # @param [String] application_status
        #   Optional. Search only applications in the chosen state.
        # @param [String] max_end_time
        #   Optional. Latest end timestamp to list.
        # @param [String] max_time
        #   Optional. Latest start timestamp to list.
        # @param [String] min_end_time
        #   Optional. Earliest end timestamp to list.
        # @param [String] min_time
        #   Optional. Earliest start timestamp to list.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of applications to return in each response. The
        #   service may return fewer than this. The default page size is 10; the maximum
        #   page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous SearchSessionSparkApplications
        #   call. Provide this token to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_applications(parent, application_status: nil, max_end_time: nil, max_time: nil, min_end_time: nil, min_time: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sparkApplications:search', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['applicationStatus'] = application_status unless application_status.nil?
          command.query['maxEndTime'] = max_end_time unless max_end_time.nil?
          command.query['maxTime'] = max_time unless max_time.nil?
          command.query['minEndTime'] = min_end_time unless min_end_time.nil?
          command.query['minTime'] = min_time unless min_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain executor summary with respect to a spark stage attempt.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of executors to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationExecutorStageSummary call. Provide this token to
        #   retrieve the subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorStageSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorStageSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_executor_stage_summary(name, page_size: nil, page_token: nil, parent: nil, stage_attempt_id: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchExecutorStageSummary', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorStageSummaryResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorStageSummaryResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to executors for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] executor_status
        #   Optional. Filter to select whether active/ dead or all executors should be
        #   selected.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of executors to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationExecutors call. Provide this token to retrieve
        #   the subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_executors(name, executor_status: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchExecutors', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationExecutorsResponse
          command.params['name'] = name unless name.nil?
          command.query['executorStatus'] = executor_status unless executor_status.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain list of spark jobs corresponding to a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Array<Fixnum>, Fixnum] job_ids
        #   Optional. List of Job IDs to filter by if provided.
        # @param [String] job_status
        #   Optional. List only jobs in the specific state.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of jobs to return in each response. The service may
        #   return fewer than this. The default page size is 10; the maximum page size is
        #   100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationJobs call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_jobs(name, job_ids: nil, job_status: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchJobs', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationJobsResponse
          command.params['name'] = name unless name.nil?
          command.query['jobIds'] = job_ids unless job_ids.nil?
          command.query['jobStatus'] = job_status unless job_status.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to SQL Queries for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Boolean] details
        #   Optional. Lists/ hides details of Spark plan nodes. True is set to list and
        #   false to hide.
        # @param [Array<String>, String] operation_ids
        #   Optional. List of Spark Connect operation IDs to filter by if provided.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of queries to return in each response. The service
        #   may return fewer than this. The default page size is 10; the maximum page size
        #   is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationSqlQueries call. Provide this token to retrieve
        #   the subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Boolean] plan_description
        #   Optional. Enables/ disables physical plan description on demand
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationSqlQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationSqlQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_sql_queries(name, details: nil, operation_ids: nil, page_size: nil, page_token: nil, parent: nil, plan_description: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchSqlQueries', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationSqlQueriesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationSqlQueriesResponse
          command.params['name'] = name unless name.nil?
          command.query['details'] = details unless details.nil?
          command.query['operationIds'] = operation_ids unless operation_ids.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['planDescription'] = plan_description unless plan_description.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to tasks for a spark stage attempt for a Spark
        # Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of tasks to return in each response. The service may
        #   return fewer than this. The default page size is 10; the maximum page size is
        #   100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationStageAttemptTasks call. Provide this token to
        #   retrieve the subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Boolean] sort_runtime
        #   Optional. Sort the tasks by runtime.
        # @param [Fixnum] stage_attempt_id
        #   Optional. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Optional. Stage ID
        # @param [String] task_status
        #   Optional. List only tasks in the state.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_stage_attempt_tasks(name, page_size: nil, page_token: nil, parent: nil, sort_runtime: nil, stage_attempt_id: nil, stage_id: nil, task_status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStageAttemptTasks', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptTasksResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptTasksResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['sortRuntime'] = sort_runtime unless sort_runtime.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['taskStatus'] = task_status unless task_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to a spark stage attempts for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of stage attempts (paging based on stage_attempt_id)
        #   to return in each response. The service may return fewer than this. The
        #   default page size is 10; the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationStageAttempts call. Provide this token to
        #   retrieve the subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Fixnum] stage_id
        #   Required. Stage ID for which attempts are to be fetched
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_stage_attempts(name, page_size: nil, page_token: nil, parent: nil, stage_id: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStageAttempts', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationStageAttemptsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain data corresponding to stages for a Spark Application.
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of stages (paging based on stage_id) to return in
        #   each response. The service may return fewer than this. The default page size
        #   is 10; the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token received from a previous
        #   SearchSessionSparkApplicationStages call. Provide this token to retrieve the
        #   subsequent page.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Array<Fixnum>, Fixnum] stage_ids
        #   Optional. List of Stage IDs to filter by if provided.
        # @param [String] stage_status
        #   Optional. List only stages in the given state.
        # @param [String] summary_metrics_mask
        #   Optional. The list of summary metrics fields to include. Empty list will
        #   default to skip all summary metrics fields. Example, if the response should
        #   include TaskQuantileMetrics, the request should have task_quantile_metrics in
        #   summary_metrics_mask field
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SearchSessionSparkApplicationStagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SearchSessionSparkApplicationStagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_session_spark_application_stages(name, page_size: nil, page_token: nil, parent: nil, stage_ids: nil, stage_status: nil, summary_metrics_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:searchStages', options)
          command.response_representation = Google::Apis::DataprocV1::SearchSessionSparkApplicationStagesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SearchSessionSparkApplicationStagesResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageIds'] = stage_ids unless stage_ids.nil?
          command.query['stageStatus'] = stage_status unless stage_status.nil?
          command.query['summaryMetricsMask'] = summary_metrics_mask unless summary_metrics_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Executor Summary for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationExecutorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationExecutorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_session_spark_application_executors(name, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeExecutors', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationExecutorsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationExecutorsResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Jobs for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [Array<Fixnum>, Fixnum] job_ids
        #   Optional. List of Job IDs to filter by if provided.
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_session_spark_application_jobs(name, job_ids: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeJobs', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationJobsResponse
          command.params['name'] = name unless name.nil?
          command.query['jobIds'] = job_ids unless job_ids.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Tasks for a Spark Application Stage Attempt
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Fixnum] stage_attempt_id
        #   Required. Stage Attempt ID
        # @param [Fixnum] stage_id
        #   Required. Stage ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStageAttemptTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStageAttemptTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_session_spark_application_stage_attempt_tasks(name, parent: nil, stage_attempt_id: nil, stage_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeStageAttemptTasks', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStageAttemptTasksResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStageAttemptTasksResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageAttemptId'] = stage_attempt_id unless stage_attempt_id.nil?
          command.query['stageId'] = stage_id unless stage_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtain summary of Stages for a Spark Application
        # @param [String] name
        #   Required. The fully qualified name of the session to retrieve in the format "
        #   projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/
        #   sparkApplications/APPLICATION_ID"
        # @param [String] parent
        #   Required. Parent (Session) resource reference.
        # @param [Array<Fixnum>, Fixnum] stage_ids
        #   Optional. List of Stage IDs to filter by if provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def summarize_project_location_session_spark_application_stages(name, parent: nil, stage_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:summarizeStages', options)
          command.response_representation = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStagesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::SummarizeSessionSparkApplicationStagesResponse
          command.params['name'] = name unless name.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['stageIds'] = stage_ids unless stage_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Write wrapper objects from dataplane to spanner
        # @param [String] name
        #   Required. The fully qualified name of the spark application to write data
        #   about in the format "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/
        #   SESSION_ID/sparkApplications/APPLICATION_ID"
        # @param [Google::Apis::DataprocV1::WriteSessionSparkApplicationContextRequest] write_session_spark_application_context_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WriteSessionSparkApplicationContextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WriteSessionSparkApplicationContextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_session_spark_application_context(name, write_session_spark_application_context_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:write', options)
          command.request_representation = Google::Apis::DataprocV1::WriteSessionSparkApplicationContextRequest::Representation
          command.request_object = write_session_spark_application_context_request_object
          command.response_representation = Google::Apis::DataprocV1::WriteSessionSparkApplicationContextResponse::Representation
          command.response_class = Google::Apis::DataprocV1::WriteSessionSparkApplicationContextResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new workflow template.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.create, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_workflow_template(parent, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/workflowTemplates', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workflow_template_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (
        # https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#
        # using_workflowmetadata).On successful completion, Operation.response will be
        # Empty.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.instantiate, the resource name of the template has the
        #   following format: projects/`project_id`/regions/`region`/workflowTemplates/`
        #   template_id` For projects.locations.workflowTemplates.instantiate, the
        #   resource name of the template has the following format: projects/`project_id`/
        #   locations/`location`/workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1::InstantiateWorkflowTemplateRequest] instantiate_workflow_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_location_workflow_template(name, instantiate_workflow_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:instantiate', options)
          command.request_representation = Google::Apis::DataprocV1::InstantiateWorkflowTemplateRequest::Representation
          command.request_object = instantiate_workflow_template_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
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
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_location_workflow_template_inline(parent, workflow_template_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/workflowTemplates:instantiateInline', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::ListWorkflowTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListWorkflowTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_workflow_templates(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/workflowTemplates', options)
          command.response_representation = Google::Apis::DataprocV1::ListWorkflowTemplatesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListWorkflowTemplatesResponse
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_workflow_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_workflow_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
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
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_workflow_template(name, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new autoscaling policy.
        # @param [String] parent
        #   Required. The "resource name" of the region or location, as described in https:
        #   //cloud.google.com/apis/design/resource_names. For projects.regions.
        #   autoscalingPolicies.create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   autoscalingPolicies.create, the resource name of the location has the
        #   following format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_autoscaling_policy(parent, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/autoscalingPolicies', options)
          command.request_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_autoscaling_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_autoscaling_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_autoscaling_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autoscalingPolicies', options)
          command.response_representation = Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListAutoscalingPoliciesResponse
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_region_autoscaling_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_region_autoscaling_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
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
        # @param [Google::Apis::DataprocV1::AutoscalingPolicy] autoscaling_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::AutoscalingPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::AutoscalingPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_region_autoscaling_policy(name, autoscaling_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.request_object = autoscaling_policy_object
          command.response_representation = Google::Apis::DataprocV1::AutoscalingPolicy::Representation
          command.response_class = Google::Apis::DataprocV1::AutoscalingPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a cluster in a project. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#clusteroperationmetadata).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [Google::Apis::DataprocV1::Cluster] cluster_object
        # @param [String] action_on_failed_primary_workers
        #   Optional. Failure action when primary worker creation fails.
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the server receives two
        #   CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with
        #   the same id, then the second request will be ignored and the first google.
        #   longrunning.Operation created and stored in the backend is returned.It is
        #   recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/
        #   Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        #   numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_cluster(project_id, region, cluster_object = nil, action_on_failed_primary_workers: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/clusters', options)
          command.request_representation = Google::Apis::DataprocV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.query['actionOnFailedPrimaryWorkers'] = action_on_failed_primary_workers unless action_on_failed_primary_workers.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a cluster in a project. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#clusteroperationmetadata).
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
        # @param [String] graceful_termination_timeout
        #   Optional. The graceful termination timeout for the deletion of the cluster.
        #   Indicate the time the request will wait to complete the running jobs on the
        #   cluster before its forceful deletion. Default value is 0 indicating that the
        #   user has not enabled the graceful termination. Value can be between 60 second
        #   and 6 Hours, in case the graceful termination is enabled. (There is no
        #   separate flag to check the enabling or disabling of graceful termination, it
        #   can be checked by the values in the field).
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the server receives two
        #   DeleteClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteClusterRequest)s with
        #   the same id, then the second request will be ignored and the first google.
        #   longrunning.Operation created and stored in the backend is returned.It is
        #   recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/
        #   Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        #   numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_cluster(project_id, region, cluster_name, cluster_uuid: nil, graceful_termination_timeout: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['clusterUuid'] = cluster_uuid unless cluster_uuid.nil?
          command.query['gracefulTerminationTimeout'] = graceful_termination_timeout unless graceful_termination_timeout.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets cluster diagnostic information. The returned Operation.metadata will be
        # ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/
        # google.cloud.dataproc.v1#clusteroperationmetadata). After the operation
        # completes, Operation.response contains DiagnoseClusterResults (https://cloud.
        # google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#
        # diagnoseclusterresults).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the cluster belongs
        #   to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1::DiagnoseClusterRequest] diagnose_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def diagnose_cluster(project_id, region, cluster_name, diagnose_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose', options)
          command.request_representation = Google::Apis::DataprocV1::DiagnoseClusterRequest::Representation
          command.request_object = diagnose_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        # @yieldparam result [Google::Apis::DataprocV1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_cluster(project_id, region, cluster_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.response_representation = Google::Apis::DataprocV1::Cluster::Representation
          command.response_class = Google::Apis::DataprocV1::Cluster
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
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_cluster_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # @param [Google::Apis::DataprocV1::InjectCredentialsRequest] inject_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inject_cluster_credentials(project, region, cluster, inject_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+project}/{+region}/{+cluster}:injectCredentials', options)
          command.request_representation = Google::Apis::DataprocV1::InjectCredentialsRequest::Representation
          command.request_object = inject_credentials_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        #   the following: ACTIVE, INACTIVE, CREATING, RUNNING, ERROR, DELETING, UPDATING,
        #   STOPPING, or STOPPED. ACTIVE contains the CREATING, UPDATING, and RUNNING
        #   states. INACTIVE contains the DELETING, ERROR, STOPPING, and STOPPED states.
        #   clusterName is the name of the cluster provided at creation time. Only the
        #   logical AND operator is supported; space-separated items are treated as having
        #   an implicit AND operator.Example filter:status.state = ACTIVE AND clusterName =
        #   mycluster AND labels.env = staging AND labels.starred = *
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
        # @yieldparam result [Google::Apis::DataprocV1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_clusters(project_id, region, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/regions/{region}/clusters', options)
          command.response_representation = Google::Apis::DataprocV1::ListClustersResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListClustersResponse
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
        # google.cloud.dataproc.v1#clusteroperationmetadata). The cluster must be in a
        # RUNNING state or an error is returned.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1::Cluster] cluster_object
        # @param [String] graceful_decommission_timeout
        #   Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning
        #   allows removing nodes from the cluster without interrupting jobs in progress.
        #   Timeout specifies how long to wait for jobs in progress to finish before
        #   forcefully removing nodes (and potentially interrupting jobs). Default timeout
        #   is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (
        #   see JSON representation of Duration (https://developers.google.com/protocol-
        #   buffers/docs/proto3#json)).Only supported on Dataproc image versions 1.2 and
        #   higher.
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the server receives two
        #   UpdateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.UpdateClusterRequest)s with
        #   the same id, then the second request will be ignored and the first google.
        #   longrunning.Operation created and stored in the backend is returned.It is
        #   recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/
        #   Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        #   numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] update_mask
        #   Required. Specifies the path, relative to Cluster, of the field to update. For
        #   example, to change the number of workers in a cluster to 5, the update_mask
        #   parameter would be specified as config.worker_config.num_instances, and the
        #   PATCH request body would specify the new value, as follows: ` "config":` "
        #   workerConfig":` "numInstances":"5" ` ` ` Similarly, to change the number of
        #   preemptible workers in a cluster to 5, the update_mask parameter would be
        #   config.secondary_worker_config.num_instances, and the PATCH request body would
        #   be set as follows: ` "config":` "secondaryWorkerConfig":` "numInstances":"5" `
        #   ` ` *Note:* Currently, only the following fields can be updated: *Mask* *
        #   Purpose* *labels* Update labels *config.worker_config.num_instances* Resize
        #   primary worker group *config.secondary_worker_config.num_instances* Resize
        #   secondary worker group config.autoscaling_config.policy_uri Use, stop using,
        #   or change autoscaling policies
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_cluster(project_id, region, cluster_name, cluster_object = nil, graceful_decommission_timeout: nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}', options)
          command.request_representation = Google::Apis::DataprocV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        
        # Repairs a cluster.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project the cluster belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] cluster_name
        #   Required. The cluster name.
        # @param [Google::Apis::DataprocV1::RepairClusterRequest] repair_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def repair_cluster(project_id, region, cluster_name, repair_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:repair', options)
          command.request_representation = Google::Apis::DataprocV1::RepairClusterRequest::Representation
          command.request_object = repair_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['region'] = region unless region.nil?
          command.params['clusterName'] = cluster_name unless cluster_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        # @param [Google::Apis::DataprocV1::StartClusterRequest] start_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_cluster(project_id, region, cluster_name, start_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:start', options)
          command.request_representation = Google::Apis::DataprocV1::StartClusterRequest::Representation
          command.request_object = start_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        # @param [Google::Apis::DataprocV1::StopClusterRequest] stop_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_cluster(project_id, region, cluster_name, stop_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop', options)
          command.request_representation = Google::Apis::DataprocV1::StopClusterRequest::Representation
          command.request_object = stop_cluster_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_cluster_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a node group in a cluster. The returned Operation.metadata is
        # NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/
        # rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
        # @param [String] parent
        #   Required. The parent resource where this node group will be created. Format:
        #   projects/`project`/regions/`region`/clusters/`cluster`
        # @param [Google::Apis::DataprocV1::NodeGroup] node_group_object
        # @param [String] node_group_id
        #   Optional. An optional node group ID. Generated if not specified.The ID must
        #   contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-
        #   ). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33
        #   characters.
        # @param [String] parent_operation_id
        #   Optional. operation id of the parent operation sending the create request
        # @param [String] request_id
        #   Optional. A unique ID used to identify the request. If the server receives two
        #   CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/
        #   google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequest) with
        #   the same ID, the second request is ignored and the first google.longrunning.
        #   Operation created and stored in the backend is returned.Recommendation: Set
        #   this value to a UUID (https://en.wikipedia.org/wiki/
        #   Universally_unique_identifier).The ID must contain only letters (a-z, A-Z),
        #   numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_cluster_node_group(parent, node_group_object = nil, node_group_id: nil, parent_operation_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/nodeGroups', options)
          command.request_representation = Google::Apis::DataprocV1::NodeGroup::Representation
          command.request_object = node_group_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['nodeGroupId'] = node_group_id unless node_group_id.nil?
          command.query['parentOperationId'] = parent_operation_id unless parent_operation_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the resource representation for a node group in a cluster.
        # @param [String] name
        #   Required. The name of the node group to retrieve. Format: projects/`project`/
        #   regions/`region`/clusters/`cluster`/nodeGroups/`nodeGroup`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::NodeGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::NodeGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_cluster_node_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::NodeGroup::Representation
          command.response_class = Google::Apis::DataprocV1::NodeGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Repair nodes in a node group.
        # @param [String] name
        #   Required. The name of the node group to resize. Format: projects/`project`/
        #   regions/`region`/clusters/`cluster`/nodeGroups/`nodeGroup`
        # @param [Google::Apis::DataprocV1::RepairNodeGroupRequest] repair_node_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def repair_node_group(name, repair_node_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:repair', options)
          command.request_representation = Google::Apis::DataprocV1::RepairNodeGroupRequest::Representation
          command.request_object = repair_node_group_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resizes a node group in a cluster. The returned Operation.metadata is
        # NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/
        # rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
        # @param [String] name
        #   Required. The name of the node group to resize. Format: projects/`project`/
        #   regions/`region`/clusters/`cluster`/nodeGroups/`nodeGroup`
        # @param [Google::Apis::DataprocV1::ResizeNodeGroupRequest] resize_node_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resize_node_group(name, resize_node_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resize', options)
          command.request_representation = Google::Apis::DataprocV1::ResizeNodeGroupRequest::Representation
          command.request_object = resize_node_group_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a job cancellation request. To access the job resource after
        # cancellation, call regions/`region`/jobs.list (https://cloud.google.com/
        # dataproc/docs/reference/rest/v1/projects.regions.jobs/list) or regions/`region`
        # /jobs.get (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.
        # regions.jobs/get).
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform project that the job belongs to.
        # @param [String] region
        #   Required. The Dataproc region in which to handle the request.
        # @param [String] job_id
        #   Required. The job ID.
        # @param [Google::Apis::DataprocV1::CancelJobRequest] cancel_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_job(project_id, region, job_id, cancel_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel', options)
          command.request_representation = Google::Apis::DataprocV1::CancelJobRequest::Representation
          command.request_object = cancel_job_request_object
          command.response_representation = Google::Apis::DataprocV1::Job::Representation
          command.response_class = Google::Apis::DataprocV1::Job
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_job(project_id, region, job_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job(project_id, region, job_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.response_representation = Google::Apis::DataprocV1::Job::Representation
          command.response_class = Google::Apis::DataprocV1::Job
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
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_jobs(project_id, region, cluster_name: nil, filter: nil, job_state_matcher: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/regions/{region}/jobs', options)
          command.response_representation = Google::Apis::DataprocV1::ListJobsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListJobsResponse
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
        # @param [Google::Apis::DataprocV1::Job] job_object
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
        # @yieldparam result [Google::Apis::DataprocV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_region_job(project_id, region, job_id, job_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/projects/{projectId}/regions/{region}/jobs/{jobId}', options)
          command.request_representation = Google::Apis::DataprocV1::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::DataprocV1::Job::Representation
          command.response_class = Google::Apis::DataprocV1::Job
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_job_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        # @param [Google::Apis::DataprocV1::SubmitJobRequest] submit_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_job(project_id, region, submit_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/jobs:submit', options)
          command.request_representation = Google::Apis::DataprocV1::SubmitJobRequest::Representation
          command.request_object = submit_job_request_object
          command.response_representation = Google::Apis::DataprocV1::Job::Representation
          command.response_class = Google::Apis::DataprocV1::Job
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
        # @param [Google::Apis::DataprocV1::SubmitJobRequest] submit_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_project_region_job_as_operation(project_id, region, submit_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/regions/{region}/jobs:submitAsOperation', options)
          command.request_representation = Google::Apis::DataprocV1::SubmitJobRequest::Representation
          command.request_object = submit_job_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_job_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to true, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field.This can only be true when reading across collections. For
        #   example, when parent is set to "projects/example/locations/-".This field is
        #   not supported by default and will result in an UNIMPLEMENTED error if set
        #   unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_operation_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_operation_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new workflow template.
        # @param [String] parent
        #   Required. The resource name of the region or location, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.create, the resource name of the region has the following
        #   format: projects/`project_id`/regions/`region` For projects.locations.
        #   workflowTemplates.create, the resource name of the location has the following
        #   format: projects/`project_id`/locations/`location`
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_region_workflow_template(parent, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/workflowTemplates', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
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
        # @yieldparam result [Google::Apis::DataprocV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_region_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::Empty::Representation
          command.response_class = Google::Apis::DataprocV1::Empty
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
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_workflow_template(name, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
          command.params['name'] = name unless name.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_region_workflow_template_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
          command.params['resource'] = resource unless resource.nil?
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
        # google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (
        # https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#
        # using_workflowmetadata).On successful completion, Operation.response will be
        # Empty.
        # @param [String] name
        #   Required. The resource name of the workflow template, as described in https://
        #   cloud.google.com/apis/design/resource_names. For projects.regions.
        #   workflowTemplates.instantiate, the resource name of the template has the
        #   following format: projects/`project_id`/regions/`region`/workflowTemplates/`
        #   template_id` For projects.locations.workflowTemplates.instantiate, the
        #   resource name of the template has the following format: projects/`project_id`/
        #   locations/`location`/workflowTemplates/`template_id`
        # @param [Google::Apis::DataprocV1::InstantiateWorkflowTemplateRequest] instantiate_workflow_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_region_workflow_template(name, instantiate_workflow_template_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:instantiate', options)
          command.request_representation = Google::Apis::DataprocV1::InstantiateWorkflowTemplateRequest::Representation
          command.request_object = instantiate_workflow_template_request_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
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
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
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
        # @yieldparam result [Google::Apis::DataprocV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instantiate_project_region_workflow_template_inline(parent, workflow_template_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/workflowTemplates:instantiateInline', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::Operation::Representation
          command.response_class = Google::Apis::DataprocV1::Operation
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DataprocV1::ListWorkflowTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::ListWorkflowTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_region_workflow_templates(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/workflowTemplates', options)
          command.response_representation = Google::Apis::DataprocV1::ListWorkflowTemplatesResponse::Representation
          command.response_class = Google::Apis::DataprocV1::ListWorkflowTemplatesResponse
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_region_workflow_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataprocV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DataprocV1::Policy::Representation
          command.response_class = Google::Apis::DataprocV1::Policy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataprocV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_region_workflow_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataprocV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataprocV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataprocV1::TestIamPermissionsResponse
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
        # @param [Google::Apis::DataprocV1::WorkflowTemplate] workflow_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataprocV1::WorkflowTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::WorkflowTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_region_workflow_template(name, workflow_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.request_object = workflow_template_object
          command.response_representation = Google::Apis::DataprocV1::WorkflowTemplate::Representation
          command.response_class = Google::Apis::DataprocV1::WorkflowTemplate
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
