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
    module SecretmanagerV1
      # Secret Manager API
      #
      # Stores sensitive data such as API keys, passwords, and certificates. Provides
      #  convenience while improving security.
      #
      # @example
      #    require 'google/apis/secretmanager_v1'
      #
      #    Secretmanager = Google::Apis::SecretmanagerV1 # Alias the module
      #    service = Secretmanager::SecretManagerService.new
      #
      # @see https://cloud.google.com/secret-manager/
      class SecretManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://secretmanager.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecretmanagerV1::Location::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
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
        # @yieldparam result [Google::Apis::SecretmanagerV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::SecretmanagerV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::SecretmanagerV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SecretVersion containing secret data and attaches it to an
        # existing Secret.
        # @param [String] parent
        #   Required. The resource name of the Secret to associate with the SecretVersion
        #   in the format `projects/*/secrets/*`.
        # @param [Google::Apis::SecretmanagerV1::AddSecretVersionRequest] add_secret_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::SecretVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::SecretVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_secret_version(parent, add_secret_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:addVersion', options)
          command.request_representation = Google::Apis::SecretmanagerV1::AddSecretVersionRequest::Representation
          command.request_object = add_secret_version_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::SecretVersion::Representation
          command.response_class = Google::Apis::SecretmanagerV1::SecretVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Secret containing no SecretVersions.
        # @param [String] parent
        #   Required. The resource name of the project to associate with the Secret, in
        #   the format `projects/*`.
        # @param [Google::Apis::SecretmanagerV1::Secret] secret_object
        # @param [String] secret_id
        #   Required. This must be unique within the project. A secret ID is a string with
        #   a maximum length of 255 characters and can contain uppercase and lowercase
        #   letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Secret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Secret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_secret(parent, secret_object = nil, secret_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/secrets', options)
          command.request_representation = Google::Apis::SecretmanagerV1::Secret::Representation
          command.request_object = secret_object
          command.response_representation = Google::Apis::SecretmanagerV1::Secret::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Secret
          command.params['parent'] = parent unless parent.nil?
          command.query['secretId'] = secret_id unless secret_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Secret.
        # @param [String] name
        #   Required. The resource name of the Secret to delete in the format `projects/*/
        #   secrets/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecretmanagerV1::Empty::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata for a given Secret.
        # @param [String] name
        #   Required. The resource name of the Secret, in the format `projects/*/secrets/*`
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Secret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Secret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecretmanagerV1::Secret::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Secret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a secret. Returns empty policy if the
        # secret exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned. Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected. Requests for
        #   policies with any conditional bindings must specify version 3. Policies
        #   without any conditional bindings may specify any valid value or leave the
        #   field unset. To learn which resources support conditions in their IAM policies,
        #   see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        #   resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_secret_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::SecretmanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Secrets.
        # @param [String] parent
        #   Required. The resource name of the project associated with the Secrets, in the
        #   format `projects/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to be returned in a single page. If
        #   set to 0, the server decides the number of results to return. If the number is
        #   greater than 25000, it is capped at 25000.
        # @param [String] page_token
        #   Optional. Pagination token, returned earlier via ListSecretsResponse.
        #   next_page_token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::ListSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::ListSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/secrets', options)
          command.response_representation = Google::Apis::SecretmanagerV1::ListSecretsResponse::Representation
          command.response_class = Google::Apis::SecretmanagerV1::ListSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates metadata of an existing Secret.
        # @param [String] name
        #   Output only. The resource name of the Secret in the format `projects/*/secrets/
        #   *`.
        # @param [Google::Apis::SecretmanagerV1::Secret] secret_object
        # @param [String] update_mask
        #   Required. Specifies the fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Secret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Secret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_secret(name, secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecretmanagerV1::Secret::Representation
          command.request_object = secret_object
          command.response_representation = Google::Apis::SecretmanagerV1::Secret::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Secret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified secret. Replaces any existing
        # policy. Permissions on SecretVersions are enforced according to the policy set
        # on the associated Secret.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::SecretmanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_secret_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SecretmanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecretmanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has for the specified secret. If the secret
        # does not exist, this call returns an empty set of permissions, not a NOT_FOUND
        # error. Note: This operation is designed to be used for building permission-
        # aware UIs and command-line tools, not for authorization checking. This
        # operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::SecretmanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_secret_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SecretmanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SecretmanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accesses a SecretVersion. This call returns the secret data. `projects/*/
        # secrets/*/versions/latest` is an alias to the `latest` SecretVersion.
        # @param [String] name
        #   Required. The resource name of the SecretVersion in the format `projects/*/
        #   secrets/*/versions/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::AccessSecretVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::AccessSecretVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_secret_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:access', options)
          command.response_representation = Google::Apis::SecretmanagerV1::AccessSecretVersionResponse::Representation
          command.response_class = Google::Apis::SecretmanagerV1::AccessSecretVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and
        # irrevocably destroys the secret data.
        # @param [String] name
        #   Required. The resource name of the SecretVersion to destroy in the format `
        #   projects/*/secrets/*/versions/*`.
        # @param [Google::Apis::SecretmanagerV1::DestroySecretVersionRequest] destroy_secret_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::SecretVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::SecretVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def destroy_secret_version(name, destroy_secret_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:destroy', options)
          command.request_representation = Google::Apis::SecretmanagerV1::DestroySecretVersionRequest::Representation
          command.request_object = destroy_secret_version_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::SecretVersion::Representation
          command.response_class = Google::Apis::SecretmanagerV1::SecretVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.
        # @param [String] name
        #   Required. The resource name of the SecretVersion to disable in the format `
        #   projects/*/secrets/*/versions/*`.
        # @param [Google::Apis::SecretmanagerV1::DisableSecretVersionRequest] disable_secret_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::SecretVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::SecretVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_secret_version(name, disable_secret_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::SecretmanagerV1::DisableSecretVersionRequest::Representation
          command.request_object = disable_secret_version_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::SecretVersion::Representation
          command.response_class = Google::Apis::SecretmanagerV1::SecretVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
        # @param [String] name
        #   Required. The resource name of the SecretVersion to enable in the format `
        #   projects/*/secrets/*/versions/*`.
        # @param [Google::Apis::SecretmanagerV1::EnableSecretVersionRequest] enable_secret_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::SecretVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::SecretVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_secret_version(name, enable_secret_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::SecretmanagerV1::EnableSecretVersionRequest::Representation
          command.request_object = enable_secret_version_request_object
          command.response_representation = Google::Apis::SecretmanagerV1::SecretVersion::Representation
          command.response_class = Google::Apis::SecretmanagerV1::SecretVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is
        # an alias to the `latest` SecretVersion.
        # @param [String] name
        #   Required. The resource name of the SecretVersion in the format `projects/*/
        #   secrets/*/versions/*`. `projects/*/secrets/*/versions/latest` is an alias to
        #   the `latest` SecretVersion.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::SecretVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::SecretVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_secret_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecretmanagerV1::SecretVersion::Representation
          command.response_class = Google::Apis::SecretmanagerV1::SecretVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SecretVersions. This call does not return secret data.
        # @param [String] parent
        #   Required. The resource name of the Secret associated with the SecretVersions
        #   to list, in the format `projects/*/secrets/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to be returned in a single page. If
        #   set to 0, the server decides the number of results to return. If the number is
        #   greater than 25000, it is capped at 25000.
        # @param [String] page_token
        #   Optional. Pagination token, returned earlier via ListSecretVersionsResponse.
        #   next_page_token][].
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecretmanagerV1::ListSecretVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecretmanagerV1::ListSecretVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_secret_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::SecretmanagerV1::ListSecretVersionsResponse::Representation
          command.response_class = Google::Apis::SecretmanagerV1::ListSecretVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
