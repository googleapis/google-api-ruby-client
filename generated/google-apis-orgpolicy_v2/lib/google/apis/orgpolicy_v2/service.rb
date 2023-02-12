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
    module OrgpolicyV2
      # Organization Policy API
      #
      # The Org Policy API allows users to configure governance rules on their GCP
      #  resources across the Cloud Resource Hierarchy.
      #
      # @example
      #    require 'google/apis/orgpolicy_v2'
      #
      #    Orgpolicy = Google::Apis::OrgpolicyV2 # Alias the module
      #    service = Orgpolicy::OrgPolicyAPIService.new
      #
      # @see https://cloud.google.com/orgpolicy/docs/reference/rest/index.html
      class OrgPolicyAPIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://orgpolicy.googleapis.com/', '',
                client_name: 'google-apis-orgpolicy_v2',
                client_version: Google::Apis::OrgpolicyV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists constraints that could be applied on the specified resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that parents the constraint. Must be in
        #   one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_constraints(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/constraints', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the
        # given Google Cloud resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that will parent the new policy. Must be
        #   in one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_policy(parent, google_cloud_orgpolicy_v2_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policies', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or organization policy does not exist.
        # @param [String] name
        #   Required. Name of the policy to delete. See the policy entry for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND`
        # is returned. The `etag` value can be used with `UpdatePolicy()` to update a
        # policy during read-modify-write.
        # @param [String] name
        #   Required. Resource name of the policy. See `Policy` for naming requirements.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective policy on a resource. This is the result of merging
        # policies in the resource hierarchy and evaluating conditions. The returned
        # policy will not have an `etag` or `condition` set because it is an evaluated
        # policy across multiple resources. Subtrees of Resource Manager resource
        # hierarchy with 'under:' prefix will not be expanded.
        # @param [String] name
        #   Required. The effective policy to compute. See `Policy` for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_policy_effective_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:getEffectivePolicy', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all of the policies that exist on a particular resource.
        # @param [String] parent
        #   Required. The target Google Cloud resource that parents the set of constraints
        #   and policies that will be returned from this call. Must be in one of the
        #   following forms: * `projects/`project_number`` * `projects/`project_id`` * `
        #   folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policies', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.
        # Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request
        # does not match the persisted etag of the policy Note: the supplied policy will
        # perform a full overwrite of all fields.
        # @param [String] name
        #   Immutable. The resource name of the policy. Must be one of the following forms,
        #   where constraint_name is the name of the constraint which this policy
        #   configures: * `projects/`project_number`/policies/`constraint_name`` * `
        #   folders/`folder_id`/policies/`constraint_name`` * `organizations/`
        #   organization_id`/policies/`constraint_name`` For example, "projects/123/
        #   policies/compute.disableSerialPortAccess". Note: `projects/`project_id`/
        #   policies/`constraint_name`` is also an acceptable name for API requests, but
        #   responses will return the name using the equivalent project number.
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] update_mask
        #   Field mask used to specify the fields to be overwritten in the policy by the
        #   set. The fields specified in the update_mask are relative to the policy, not
        #   the full request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_policy(name, google_cloud_orgpolicy_v2_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists constraints that could be applied on the specified resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that parents the constraint. Must be in
        #   one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_constraints(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/constraints', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the organization does not exist. Returns a `google.rpc.
        # Status` with `google.rpc.Code.ALREADY_EXISTS` if the constraint already exists
        # on the given organization.
        # @param [String] parent
        #   Required. Must be in the following form: * `organizations/`organization_id``
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint] google_cloud_orgpolicy_v2_custom_constraint_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_custom_constraint(parent, google_cloud_orgpolicy_v2_custom_constraint_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/customConstraints', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
          command.request_object = google_cloud_orgpolicy_v2_custom_constraint_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a custom constraint. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the constraint does not exist.
        # @param [String] name
        #   Required. Name of the custom constraint to delete. See the custom constraint
        #   entry for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_custom_constraint(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the custom constraint does not exist.
        # @param [String] name
        #   Required. Resource name of the custom constraint. See the custom constraint
        #   entry for naming requirements.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_custom_constraint(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all of the custom constraints that exist on a particular
        # organization resource.
        # @param [String] parent
        #   Required. The target Google Cloud resource that parents the set of custom
        #   constraints that will be returned from this call. Must be in one of the
        #   following forms: * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListCustomConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListCustomConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_custom_constraints(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/customConstraints', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListCustomConstraintsResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListCustomConstraintsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the constraint does not exist. Note: the supplied policy
        # will perform a full overwrite of all fields.
        # @param [String] name
        #   Immutable. Name of the constraint. This is unique within the organization.
        #   Format of the name should be * `organizations/`organization_id`/
        #   customConstraints/`custom_constraint_id`` Example: `organizations/123/
        #   customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters
        #   and the minimum length is 1. Note that the prefix `organizations/`
        #   organization_id`/customConstraints/` is not counted.
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint] google_cloud_orgpolicy_v2_custom_constraint_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_custom_constraint(name, google_cloud_orgpolicy_v2_custom_constraint_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
          command.request_object = google_cloud_orgpolicy_v2_custom_constraint_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the
        # given Google Cloud resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that will parent the new policy. Must be
        #   in one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_policy(parent, google_cloud_orgpolicy_v2_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policies', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or organization policy does not exist.
        # @param [String] name
        #   Required. Name of the policy to delete. See the policy entry for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND`
        # is returned. The `etag` value can be used with `UpdatePolicy()` to update a
        # policy during read-modify-write.
        # @param [String] name
        #   Required. Resource name of the policy. See `Policy` for naming requirements.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective policy on a resource. This is the result of merging
        # policies in the resource hierarchy and evaluating conditions. The returned
        # policy will not have an `etag` or `condition` set because it is an evaluated
        # policy across multiple resources. Subtrees of Resource Manager resource
        # hierarchy with 'under:' prefix will not be expanded.
        # @param [String] name
        #   Required. The effective policy to compute. See `Policy` for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_policy_effective_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:getEffectivePolicy', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all of the policies that exist on a particular resource.
        # @param [String] parent
        #   Required. The target Google Cloud resource that parents the set of constraints
        #   and policies that will be returned from this call. Must be in one of the
        #   following forms: * `projects/`project_number`` * `projects/`project_id`` * `
        #   folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policies', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.
        # Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request
        # does not match the persisted etag of the policy Note: the supplied policy will
        # perform a full overwrite of all fields.
        # @param [String] name
        #   Immutable. The resource name of the policy. Must be one of the following forms,
        #   where constraint_name is the name of the constraint which this policy
        #   configures: * `projects/`project_number`/policies/`constraint_name`` * `
        #   folders/`folder_id`/policies/`constraint_name`` * `organizations/`
        #   organization_id`/policies/`constraint_name`` For example, "projects/123/
        #   policies/compute.disableSerialPortAccess". Note: `projects/`project_id`/
        #   policies/`constraint_name`` is also an acceptable name for API requests, but
        #   responses will return the name using the equivalent project number.
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] update_mask
        #   Field mask used to specify the fields to be overwritten in the policy by the
        #   set. The fields specified in the update_mask are relative to the policy, not
        #   the full request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_policy(name, google_cloud_orgpolicy_v2_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists constraints that could be applied on the specified resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that parents the constraint. Must be in
        #   one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_constraints(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/constraints', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListConstraintsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the
        # given Google Cloud resource.
        # @param [String] parent
        #   Required. The Google Cloud resource that will parent the new policy. Must be
        #   in one of the following forms: * `projects/`project_number`` * `projects/`
        #   project_id`` * `folders/`folder_id`` * `organizations/`organization_id``
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_policy(parent, google_cloud_orgpolicy_v2_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policies', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or organization policy does not exist.
        # @param [String] name
        #   Required. Name of the policy to delete. See the policy entry for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND`
        # is returned. The `etag` value can be used with `UpdatePolicy()` to update a
        # policy during read-modify-write.
        # @param [String] name
        #   Required. Resource name of the policy. See `Policy` for naming requirements.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the effective policy on a resource. This is the result of merging
        # policies in the resource hierarchy and evaluating conditions. The returned
        # policy will not have an `etag` or `condition` set because it is an evaluated
        # policy across multiple resources. Subtrees of Resource Manager resource
        # hierarchy with 'under:' prefix will not be expanded.
        # @param [String] name
        #   Required. The effective policy to compute. See `Policy` for naming rules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_policy_effective_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:getEffectivePolicy', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all of the policies that exist on a particular resource.
        # @param [String] parent
        #   Required. The target Google Cloud resource that parents the set of constraints
        #   and policies that will be returned from this call. Must be in one of the
        #   following forms: * `projects/`project_number`` * `projects/`project_id`` * `
        #   folders/`folder_id`` * `organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Size of the pages to be returned. This is currently unsupported and will be
        #   ignored. The server may at any point start using this field to limit page size.
        # @param [String] page_token
        #   Page token used to retrieve the next page. This is currently unsupported and
        #   will be ignored. The server may at any point start using this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policies', options)
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ListPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.
        # NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.
        # Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request
        # does not match the persisted etag of the policy Note: the supplied policy will
        # perform a full overwrite of all fields.
        # @param [String] name
        #   Immutable. The resource name of the policy. Must be one of the following forms,
        #   where constraint_name is the name of the constraint which this policy
        #   configures: * `projects/`project_number`/policies/`constraint_name`` * `
        #   folders/`folder_id`/policies/`constraint_name`` * `organizations/`
        #   organization_id`/policies/`constraint_name`` For example, "projects/123/
        #   policies/compute.disableSerialPortAccess". Note: `projects/`project_id`/
        #   policies/`constraint_name`` is also an acceptable name for API requests, but
        #   responses will return the name using the equivalent project number.
        # @param [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] google_cloud_orgpolicy_v2_policy_object
        # @param [String] update_mask
        #   Field mask used to specify the fields to be overwritten in the policy by the
        #   set. The fields specified in the update_mask are relative to the policy, not
        #   the full request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_policy(name, google_cloud_orgpolicy_v2_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.request_object = google_cloud_orgpolicy_v2_policy_object
          command.response_representation = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
          command.response_class = Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy
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
