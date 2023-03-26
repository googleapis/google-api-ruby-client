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
    module AccesscontextmanagerV1
      # Access Context Manager API
      #
      # An API for setting attribute based access control to requests to Google Cloud
      #  services.
      #
      # @example
      #    require 'google/apis/accesscontextmanager_v1'
      #
      #    Accesscontextmanager = Google::Apis::AccesscontextmanagerV1 # Alias the module
      #    service = Accesscontextmanager::AccessContextManagerService.new
      #
      # @see https://cloud.google.com/access-context-manager/docs/reference/rest/
      class AccessContextManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://accesscontextmanager.googleapis.com/', '',
                client_name: 'google-apis-accesscontextmanager_v1',
                client_version: Google::Apis::AccesscontextmanagerV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates an access policy. This method fails if the organization already has an
        # access policy. The long-running operation has a successful status after the
        # access policy propagates to long-lasting storage. Syntactic and basic semantic
        # errors are returned in `metadata` as a BadRequest proto.
        # @param [Google::Apis::AccesscontextmanagerV1::AccessPolicy] access_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_access_policy(access_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accessPolicies', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AccessPolicy::Representation
          command.request_object = access_policy_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an access policy based on the resource name. The long-running
        # operation has a successful status after the access policy is removed from long-
        # lasting storage.
        # @param [String] name
        #   Required. Resource name for the access policy to delete. Format `
        #   accessPolicies/`policy_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_access_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns an access policy based on the name.
        # @param [String] name
        #   Required. Resource name for the access policy to get. Format `accessPolicies/`
        #   policy_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::AccessPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::AccessPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_access_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::AccessPolicy::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::AccessPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for the specified Access Context Manager access policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::AccesscontextmanagerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_access_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Policy::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all access policies in an organization.
        # @param [Fixnum] page_size
        #   Number of AccessPolicy instances to include in the list. Default 100.
        # @param [String] page_token
        #   Next page token for the next batch of AccessPolicy instances. Defaults to the
        #   first page of results.
        # @param [String] parent
        #   Required. Resource name for the container to list AccessPolicy instances from.
        #   Format: `organizations/`org_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListAccessPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListAccessPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_access_policies(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/accessPolicies', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListAccessPoliciesResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListAccessPoliciesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an access policy. The long-running operation from this RPC has a
        # successful status after the changes to the access policy propagate to long-
        # lasting storage.
        # @param [String] name
        #   Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/`
        #   access_policy``
        # @param [Google::Apis::AccesscontextmanagerV1::AccessPolicy] access_policy_object
        # @param [String] update_mask
        #   Required. Mask to control which fields get updated. Must be non-empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_access_policy(name, access_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AccessPolicy::Representation
          command.request_object = access_policy_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for the specified Access Context Manager access policy.
        # This method replaces the existing IAM policy on the access policy. The IAM
        # policy controls the set of users who can perform specific operations on the
        # Access Context Manager access policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::AccesscontextmanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_access_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Policy::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM permissions that the caller has on the specified Access
        # Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or
        # ServicePerimeter. This method does not support other resources.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_access_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an access level. The long-running operation from this RPC has a
        # successful status after the access level propagates to long-lasting storage.
        # If access levels contain errors, an error response is returned for the first
        # error encountered.
        # @param [String] parent
        #   Required. Resource name for the access policy which owns this Access Level.
        #   Format: `accessPolicies/`policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::AccessLevel] access_level_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_access_policy_access_level(parent, access_level_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/accessLevels', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
          command.request_object = access_level_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an access level based on the resource name. The long-running operation
        # from this RPC has a successful status after the access level has been removed
        # from long-lasting storage.
        # @param [String] name
        #   Required. Resource name for the Access Level. Format: `accessPolicies/`
        #   policy_id`/accessLevels/`access_level_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_access_policy_access_level(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an access level based on the resource name.
        # @param [String] name
        #   Required. Resource name for the Access Level. Format: `accessPolicies/`
        #   policy_id`/accessLevels/`access_level_id``
        # @param [String] access_level_format
        #   Whether to return `BasicLevels` in the Cloud Common Expression Language rather
        #   than as `BasicLevels`. Defaults to AS_DEFINED, where Access Levels are
        #   returned as `BasicLevels` or `CustomLevels` based on how they were created. If
        #   set to CEL, all Access Levels are returned as `CustomLevels`. In the CEL case,
        #   `BasicLevels` are translated to equivalent `CustomLevels`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::AccessLevel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::AccessLevel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_access_policy_access_level(name, access_level_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::AccessLevel
          command.params['name'] = name unless name.nil?
          command.query['accessLevelFormat'] = access_level_format unless access_level_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all access levels for an access policy.
        # @param [String] parent
        #   Required. Resource name for the access policy to list Access Levels from.
        #   Format: `accessPolicies/`policy_id``
        # @param [String] access_level_format
        #   Whether to return `BasicLevels` in the Cloud Common Expression language, as `
        #   CustomLevels`, rather than as `BasicLevels`. Defaults to returning `
        #   AccessLevels` in the format they were defined.
        # @param [Fixnum] page_size
        #   Number of Access Levels to include in the list. Default 100.
        # @param [String] page_token
        #   Next page token for the next batch of Access Level instances. Defaults to the
        #   first page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListAccessLevelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListAccessLevelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_access_policy_access_levels(parent, access_level_format: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/accessLevels', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListAccessLevelsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListAccessLevelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['accessLevelFormat'] = access_level_format unless access_level_format.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an access level. The long-running operation from this RPC has a
        # successful status after the changes to the access level propagate to long-
        # lasting storage. If access levels contain errors, an error response is
        # returned for the first error encountered.
        # @param [String] name
        #   Resource name for the `AccessLevel`. Format: `accessPolicies/`access_policy`/
        #   accessLevels/`access_level``. The `access_level` component must begin with a
        #   letter, followed by alphanumeric characters or `_`. Its maximum length is 50
        #   characters. After you create an `AccessLevel`, you cannot change its `name`.
        # @param [Google::Apis::AccesscontextmanagerV1::AccessLevel] access_level_object
        # @param [String] update_mask
        #   Required. Mask to control which fields get updated. Must be non-empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_access_policy_access_level(name, access_level_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AccessLevel::Representation
          command.request_object = access_level_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces all existing access levels in an access policy with the access levels
        # provided. This is done atomically. The long-running operation from this RPC
        # has a successful status after all replacements propagate to long-lasting
        # storage. If the replacement contains errors, an error response is returned for
        # the first error encountered. Upon error, the replacement is cancelled, and
        # existing access levels are not affected. The Operation.response field contains
        # ReplaceAccessLevelsResponse. Removing access levels contained in existing
        # service perimeters result in an error.
        # @param [String] parent
        #   Required. Resource name for the access policy which owns these Access Levels.
        #   Format: `accessPolicies/`policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::ReplaceAccessLevelsRequest] replace_access_levels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_access_policy_access_level_all(parent, replace_access_levels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/accessLevels:replaceAll', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::ReplaceAccessLevelsRequest::Representation
          command.request_object = replace_access_levels_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM permissions that the caller has on the specified Access
        # Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or
        # ServicePerimeter. This method does not support other resources.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_access_level_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an authorized orgs desc. The long-running operation from this RPC has
        # a successful status after the authorized orgs desc propagates to long-lasting
        # storage. If a authorized orgs desc contains errors, an error response is
        # returned for the first error encountered. The name of this `AuthorizedOrgsDesc`
        # will be assigned during creation.
        # @param [String] parent
        #   Required. Resource name for the access policy which owns this Authorized Orgs
        #   Desc. Format: `accessPolicies/`policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc] authorized_orgs_desc_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_access_policy_authorized_orgs_desc(parent, authorized_orgs_desc_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/authorizedOrgsDescs', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc::Representation
          command.request_object = authorized_orgs_desc_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an authorized orgs desc based on the resource name. The long-running
        # operation from this RPC has a successful status after the authorized orgs desc
        # is removed from long-lasting storage.
        # @param [String] name
        #   Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/`
        #   policy_id`/authorizedOrgsDesc/`authorized_orgs_desc_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_access_policy_authorized_orgs_desc(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an authorized orgs desc based on the resource name.
        # @param [String] name
        #   Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/`
        #   policy_id`/authorizedOrgsDescs/`authorized_orgs_descs_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_access_policy_authorized_orgs_desc(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all authorized orgs descs for an access policy.
        # @param [String] parent
        #   Required. Resource name for the access policy to list Authorized Orgs Desc
        #   from. Format: `accessPolicies/`policy_id``
        # @param [Fixnum] page_size
        #   Number of Authorized Orgs Descs to include in the list. Default 100.
        # @param [String] page_token
        #   Next page token for the next batch of Authorized Orgs Desc instances. Defaults
        #   to the first page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListAuthorizedOrgsDescsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListAuthorizedOrgsDescsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_access_policy_authorized_orgs_descs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizedOrgsDescs', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListAuthorizedOrgsDescsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListAuthorizedOrgsDescsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an authorized orgs desc. The long-running operation from this RPC has
        # a successful status after the authorized orgs desc propagates to long-lasting
        # storage. If a authorized orgs desc contains errors, an error response is
        # returned for the first error encountered. Only the organization list in `
        # AuthorizedOrgsDesc` can be updated. The name, authorization_type, asset_type
        # and authorization_direction cannot be updated.
        # @param [String] name
        #   Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/`
        #   access_policy`/authorizedOrgsDescs/`authorized_orgs_desc``. The `
        #   authorized_orgs_desc` component must begin with a letter, followed by
        #   alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you
        #   cannot change its `name`.
        # @param [Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc] authorized_orgs_desc_object
        # @param [String] update_mask
        #   Required. Mask to control which fields get updated. Must be non-empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_access_policy_authorized_orgs_desc(name, authorized_orgs_desc_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc::Representation
          command.request_object = authorized_orgs_desc_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Commits the dry-run specification for all the service perimeters in an access
        # policy. A commit operation on a service perimeter involves copying its `spec`
        # field to the `status` field of the service perimeter. Only service perimeters
        # with `use_explicit_dry_run_spec` field set to true are affected by a commit
        # operation. The long-running operation from this RPC has a successful status
        # after the dry-run specifications for all the service perimeters have been
        # committed. If a commit fails, it causes the long-running operation to return
        # an error response and the entire commit operation is cancelled. When
        # successful, the Operation.response field contains
        # CommitServicePerimetersResponse. The `dry_run` and the `spec` fields are
        # cleared after a successful commit operation.
        # @param [String] parent
        #   Required. Resource name for the parent Access Policy which owns all Service
        #   Perimeters in scope for the commit operation. Format: `accessPolicies/`
        #   policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::CommitServicePerimetersRequest] commit_service_perimeters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_service_perimeters(parent, commit_service_perimeters_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/servicePerimeters:commit', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::CommitServicePerimetersRequest::Representation
          command.request_object = commit_service_perimeters_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a service perimeter. The long-running operation from this RPC has a
        # successful status after the service perimeter propagates to long-lasting
        # storage. If a service perimeter contains errors, an error response is returned
        # for the first error encountered.
        # @param [String] parent
        #   Required. Resource name for the access policy which owns this Service
        #   Perimeter. Format: `accessPolicies/`policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::ServicePerimeter] service_perimeter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_access_policy_service_perimeter(parent, service_perimeter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/servicePerimeters', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
          command.request_object = service_perimeter_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a service perimeter based on the resource name. The long-running
        # operation from this RPC has a successful status after the service perimeter is
        # removed from long-lasting storage.
        # @param [String] name
        #   Required. Resource name for the Service Perimeter. Format: `accessPolicies/`
        #   policy_id`/servicePerimeters/`service_perimeter_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_access_policy_service_perimeter(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a service perimeter based on the resource name.
        # @param [String] name
        #   Required. Resource name for the Service Perimeter. Format: `accessPolicies/`
        #   policy_id`/servicePerimeters/`service_perimeters_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ServicePerimeter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ServicePerimeter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_access_policy_service_perimeter(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ServicePerimeter
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all service perimeters for an access policy.
        # @param [String] parent
        #   Required. Resource name for the access policy to list Service Perimeters from.
        #   Format: `accessPolicies/`policy_id``
        # @param [Fixnum] page_size
        #   Number of Service Perimeters to include in the list. Default 100.
        # @param [String] page_token
        #   Next page token for the next batch of Service Perimeter instances. Defaults to
        #   the first page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListServicePerimetersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListServicePerimetersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_access_policy_service_perimeters(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/servicePerimeters', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListServicePerimetersResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListServicePerimetersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a service perimeter. The long-running operation from this RPC has a
        # successful status after the service perimeter propagates to long-lasting
        # storage. If a service perimeter contains errors, an error response is returned
        # for the first error encountered.
        # @param [String] name
        #   Resource name for the `ServicePerimeter`. Format: `accessPolicies/`
        #   access_policy`/servicePerimeters/`service_perimeter``. The `service_perimeter`
        #   component must begin with a letter, followed by alphanumeric characters or `_`.
        #   After you create a `ServicePerimeter`, you cannot change its `name`.
        # @param [Google::Apis::AccesscontextmanagerV1::ServicePerimeter] service_perimeter_object
        # @param [String] update_mask
        #   Required. Mask to control which fields get updated. Must be non-empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_access_policy_service_perimeter(name, service_perimeter_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::ServicePerimeter::Representation
          command.request_object = service_perimeter_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replace all existing service perimeters in an access policy with the service
        # perimeters provided. This is done atomically. The long-running operation from
        # this RPC has a successful status after all replacements propagate to long-
        # lasting storage. Replacements containing errors result in an error response
        # for the first error encountered. Upon an error, replacement are cancelled and
        # existing service perimeters are not affected. The Operation.response field
        # contains ReplaceServicePerimetersResponse.
        # @param [String] parent
        #   Required. Resource name for the access policy which owns these Service
        #   Perimeters. Format: `accessPolicies/`policy_id``
        # @param [Google::Apis::AccesscontextmanagerV1::ReplaceServicePerimetersRequest] replace_service_perimeters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_access_policy_service_perimeter_all(parent, replace_service_perimeters_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/servicePerimeters:replaceAll', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::ReplaceServicePerimetersRequest::Representation
          command.request_object = replace_service_perimeters_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM permissions that the caller has on the specified Access
        # Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or
        # ServicePerimeter. This method does not support other resources.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_perimeter_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::AccesscontextmanagerV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Empty
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
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GcpUserAccessBinding. If the client specifies a name, the server
        # ignores it. Fails if a resource already exists with the same group_key.
        # Completion of this long-running operation does not necessarily signify that
        # the new binding is deployed onto all affected users, which may take more time.
        # @param [String] parent
        #   Required. Example: "organizations/256"
        # @param [Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding] gcp_user_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_gcp_user_access_binding(parent, gcp_user_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/gcpUserAccessBindings', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding::Representation
          command.request_object = gcp_user_access_binding_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GcpUserAccessBinding. Completion of this long-running operation does
        # not necessarily signify that the binding deletion is deployed onto all
        # affected users, which may take more time.
        # @param [String] name
        #   Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_gcp_user_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the GcpUserAccessBinding with the given name.
        # @param [String] name
        #   Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_gcp_user_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GcpUserAccessBindings for a Google Cloud organization.
        # @param [String] parent
        #   Required. Example: "organizations/256"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return. The server may return fewer items.
        #   If left blank, the server may return any number of items.
        # @param [String] page_token
        #   Optional. If left blank, returns the first page. To enumerate all items, use
        #   the next_page_token from your previous list operation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::ListGcpUserAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::ListGcpUserAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_gcp_user_access_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/gcpUserAccessBindings', options)
          command.response_representation = Google::Apis::AccesscontextmanagerV1::ListGcpUserAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::ListGcpUserAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GcpUserAccessBinding. Completion of this long-running operation does
        # not necessarily signify that the changed binding is deployed onto all affected
        # users, which may take more time.
        # @param [String] name
        #   Immutable. Assigned by the server during creation. The last segment has an
        #   arbitrary length and has only URI unreserved characters (as defined by [RFC
        #   3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should
        #   not be specified by the client during creation. Example: "organizations/256/
        #   gcpUserAccessBindings/b3-BhcX_Ud5N"
        # @param [Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding] gcp_user_access_binding_object
        # @param [String] update_mask
        #   Required. Only the fields specified in this mask are updated. Because name and
        #   group_key cannot be changed, update_mask is required and may only contain the
        #   following fields: `access_levels`, `dry_run_access_levels`. update_mask `
        #   paths: "access_levels" `
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AccesscontextmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AccesscontextmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_gcp_user_access_binding(name, gcp_user_access_binding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding::Representation
          command.request_object = gcp_user_access_binding_object
          command.response_representation = Google::Apis::AccesscontextmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AccesscontextmanagerV1::Operation
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
