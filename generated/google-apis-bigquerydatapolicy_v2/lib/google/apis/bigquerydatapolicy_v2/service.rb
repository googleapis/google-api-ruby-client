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
    module BigquerydatapolicyV2
      # BigQuery Data Policy API
      #
      # Allows users to manage BigQuery data policies.
      #
      # @example
      #    require 'google/apis/bigquerydatapolicy_v2'
      #
      #    Bigquerydatapolicy = Google::Apis::BigquerydatapolicyV2 # Alias the module
      #    service = Bigquerydatapolicy::BigQueryDataPolicyServiceService.new
      #
      # @see https://cloud.google.com/bigquery/docs/column-data-masking
      class BigQueryDataPolicyServiceService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://bigquerydatapolicy.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-bigquerydatapolicy_v2',
                client_version: Google::Apis::BigquerydatapolicyV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds new grantees to a data policy. The new grantees will be added to the
        # existing grantees. If the request contains a duplicate grantee, the grantee
        # will be ignored. If the request contains a grantee that already exists, the
        # grantee will be ignored.
        # @param [String] data_policy
        #   Required. Resource name of this data policy, in the format of `projects/`
        #   project_number`/locations/`location_id`/dataPolicies/`data_policy_id``.
        # @param [Google::Apis::BigquerydatapolicyV2::AddGranteesRequest] add_grantees_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::DataPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::DataPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_data_policy_grantees(data_policy, add_grantees_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+dataPolicy}:addGrantees', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::AddGranteesRequest::Representation
          command.request_object = add_grantees_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::DataPolicy
          command.params['dataPolicy'] = data_policy unless data_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new data policy under a project with the given `data_policy_id` (
        # used as the display name), and data policy type.
        # @param [String] parent
        #   Required. Resource name of the project that the data policy will belong to.
        #   The format is `projects/`project_number`/locations/`location_id``.
        # @param [Google::Apis::BigquerydatapolicyV2::CreateDataPolicyRequest] create_data_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::DataPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::DataPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_data_policy(parent, create_data_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/dataPolicies', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::CreateDataPolicyRequest::Representation
          command.request_object = create_data_policy_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::DataPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the data policy specified by its resource name.
        # @param [String] name
        #   Required. Resource name of the data policy to delete. Format is `projects/`
        #   project_number`/locations/`location_id`/dataPolicies/`id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatapolicyV2::Empty::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the data policy specified by its resource name.
        # @param [String] name
        #   Required. Resource name of the requested data policy. Format is `projects/`
        #   project_number`/locations/`location_id`/dataPolicies/`id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::DataPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::DataPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::DataPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for the specified data policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigquerydatapolicyV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_data_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::Policy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all of the data policies in the specified parent project.
        # @param [String] parent
        #   Required. Resource name of the project for which to list data policies. Format
        #   is `projects/`project_number`/locations/`location_id``.
        # @param [String] filter
        #   Optional. Filters the data policies by policy tags that they are associated
        #   with. Currently filter only supports "policy_tag" based filtering and OR based
        #   predicates. Sample filter can be "policy_tag: projects/1/locations/us/
        #   taxonomies/2/policyTags/3". You may also use wildcard such as "policy_tag:
        #   projects/1/locations/us/taxonomies/2*". Please note that OR predicates cannot
        #   be used with wildcard filters.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of data policies to return. Must be a value
        #   between 1 and 1000. If not set, defaults to 50.
        # @param [String] page_token
        #   Optional. The `nextPageToken` value returned from a previous list request, if
        #   any. If not set, defaults to an empty string.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::ListDataPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::ListDataPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_policies(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/dataPolicies', options)
          command.response_representation = Google::Apis::BigquerydatapolicyV2::ListDataPoliciesResponse::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::ListDataPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata for an existing data policy. The target data policy can
        # be specified by the resource name.
        # @param [String] name
        #   Identifier. Resource name of this data policy, in the format of `projects/`
        #   project_number`/locations/`location_id`/dataPolicies/`data_policy_id``.
        # @param [Google::Apis::BigquerydatapolicyV2::DataPolicy] data_policy_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the data policy is not found, a new data policy
        #   will be created. In this situation, update_mask is ignored.
        # @param [String] update_mask
        #   Optional. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask If not set, defaults to all of the fields that are
        #   allowed to update. Updates to the `name` and `dataPolicyId` fields are not
        #   allowed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::DataPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::DataPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_policy(name, data_policy_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.request_object = data_policy_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::DataPolicy
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes grantees from a data policy. The grantees will be removed from the
        # existing grantees. If the request contains a grantee that does not exist, the
        # grantee will be ignored.
        # @param [String] data_policy
        #   Required. Resource name of this data policy, in the format of `projects/`
        #   project_number`/locations/`location_id`/dataPolicies/`data_policy_id``.
        # @param [Google::Apis::BigquerydatapolicyV2::RemoveGranteesRequest] remove_grantees_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::DataPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::DataPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_data_policy_grantees(data_policy, remove_grantees_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+dataPolicy}:removeGrantees', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::RemoveGranteesRequest::Representation
          command.request_object = remove_grantees_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::DataPolicy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::DataPolicy
          command.params['dataPolicy'] = data_policy unless data_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for the specified data policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigquerydatapolicyV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_data_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::Policy::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permission on the specified data policy resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigquerydatapolicyV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatapolicyV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatapolicyV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_data_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigquerydatapolicyV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigquerydatapolicyV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigquerydatapolicyV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
