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
    module CloudbuildV2
      # Cloud Build API
      #
      # Creates and manages builds on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/cloudbuild_v2'
      #
      #    Cloudbuild = Google::Apis::CloudbuildV2 # Alias the module
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
          super('https://cloudbuild.googleapis.com/', '',
                client_name: 'google-apis-cloudbuild_v2',
                client_version: Google::Apis::CloudbuildV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a Connection.
        # @param [String] parent
        #   Required. Project and location where the connection will be created. Format: `
        #   projects/*/locations/*`.
        # @param [Google::Apis::CloudbuildV2::Connection] connection_object
        # @param [String] connection_id
        #   Required. The ID to use for the Connection, which will become the final
        #   component of the Connection's resource name. Names must be unique per-project
        #   per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection(parent, connection_object = nil, connection_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/connections', options)
          command.request_representation = Google::Apis::CloudbuildV2::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectionId'] = connection_id unless connection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single connection.
        # @param [String] name
        #   Required. The name of the Connection to delete. Format: `projects/*/locations/*
        #   /connections/*`.
        # @param [String] etag
        #   The current etag of the connection. If an etag is provided and does not match
        #   the current etag of the connection, deletion will be blocked and an ABORTED
        #   error will be returned.
        # @param [Boolean] validate_only
        #   If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection(name, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # FetchLinkableRepositories get repositories from SCM that are accessible and
        # could be added to the connection.
        # @param [String] connection
        #   Required. The name of the Connection. Format: `projects/*/locations/*/
        #   connections/*`.
        # @param [Fixnum] page_size
        #   Number of results to return in the list. Default to 20.
        # @param [String] page_token
        #   Page start.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::FetchLinkableRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::FetchLinkableRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_linkable_repositories(connection, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+connection}:fetchLinkableRepositories', options)
          command.response_representation = Google::Apis::CloudbuildV2::FetchLinkableRepositoriesResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::FetchLinkableRepositoriesResponse
          command.params['connection'] = connection unless connection.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single connection.
        # @param [String] name
        #   Required. The name of the Connection to retrieve. Format: `projects/*/
        #   locations/*/connections/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV2::Connection::Representation
          command.response_class = Google::Apis::CloudbuildV2::Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::CloudbuildV2::Policy::Representation
          command.response_class = Google::Apis::CloudbuildV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of Connections. Format: `
        #   projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   Page start.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connections(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/connections', options)
          command.response_representation = Google::Apis::CloudbuildV2::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single connection.
        # @param [String] name
        #   Immutable. The resource name of the connection, in the format `projects/`
        #   project`/locations/`location`/connections/`connection_id``.
        # @param [Google::Apis::CloudbuildV2::Connection] connection_object
        # @param [Boolean] allow_missing
        #   If set to true, and the connection is not found a new connection will be
        #   created. In this situation `update_mask` is ignored. The creation will succeed
        #   only if the input connection has all the necessary information (e.g a
        #   github_config with both user_oauth_token and installation_id properties).
        # @param [String] etag
        #   The current etag of the connection. If an etag is provided and does not match
        #   the current etag of the connection, update will be blocked and an ABORTED
        #   error will be returned.
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection(name, connection_object = nil, allow_missing: nil, etag: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV2::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessWebhook is called by the external SCM for notifying of events.
        # @param [String] parent
        #   Required. Project and location where the webhook will be received. Format: `
        #   projects/*/locations/*`.
        # @param [Google::Apis::CloudbuildV2::HttpBody] http_body_object
        # @param [String] webhook_key
        #   Arbitrary additional key to find the maching repository for a webhook event if
        #   needed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_connection_webhook(parent, http_body_object = nil, webhook_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/connections:processWebhook', options)
          command.request_representation = Google::Apis::CloudbuildV2::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV2::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV2::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['webhookKey'] = webhook_key unless webhook_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::CloudbuildV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_connection_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudbuildV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudbuildV2::Policy::Representation
          command.response_class = Google::Apis::CloudbuildV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::CloudbuildV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_connection_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudbuildV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudbuildV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches read token of a given repository.
        # @param [String] repository
        #   Required. The resource name of the repository in the format `projects/*/
        #   locations/*/connections/*/repositories/*`.
        # @param [Google::Apis::CloudbuildV2::FetchReadTokenRequest] fetch_read_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::FetchReadTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::FetchReadTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_connection_repository_read_token(repository, fetch_read_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+repository}:accessReadToken', options)
          command.request_representation = Google::Apis::CloudbuildV2::FetchReadTokenRequest::Representation
          command.request_object = fetch_read_token_request_object
          command.response_representation = Google::Apis::CloudbuildV2::FetchReadTokenResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::FetchReadTokenResponse
          command.params['repository'] = repository unless repository.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches read/write token of a given repository.
        # @param [String] repository
        #   Required. The resource name of the repository in the format `projects/*/
        #   locations/*/connections/*/repositories/*`.
        # @param [Google::Apis::CloudbuildV2::FetchReadWriteTokenRequest] fetch_read_write_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::FetchReadWriteTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::FetchReadWriteTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def access_project_location_connection_repository_read_write_token(repository, fetch_read_write_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+repository}:accessReadWriteToken', options)
          command.request_representation = Google::Apis::CloudbuildV2::FetchReadWriteTokenRequest::Representation
          command.request_object = fetch_read_write_token_request_object
          command.response_representation = Google::Apis::CloudbuildV2::FetchReadWriteTokenResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::FetchReadWriteTokenResponse
          command.params['repository'] = repository unless repository.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple repositories inside a connection.
        # @param [String] parent
        #   Required. The connection to contain all the repositories being created. Format:
        #   projects/*/locations/*/connections/* The parent field in the
        #   CreateRepositoryRequest messages must either be empty or match this field.
        # @param [Google::Apis::CloudbuildV2::BatchCreateRepositoriesRequest] batch_create_repositories_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_repository_create_repositories(parent, batch_create_repositories_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/repositories:batchCreate', options)
          command.request_representation = Google::Apis::CloudbuildV2::BatchCreateRepositoriesRequest::Representation
          command.request_object = batch_create_repositories_request_object
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Repository.
        # @param [String] parent
        #   Required. The connection to contain the repository. If the request is part of
        #   a BatchCreateRepositoriesRequest, this field should be empty or match the
        #   parent specified there.
        # @param [Google::Apis::CloudbuildV2::Repository] repository_object
        # @param [String] repository_id
        #   Required. The ID to use for the repository, which will become the final
        #   component of the repository's resource name. This ID should be unique in the
        #   connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection_repository(parent, repository_object = nil, repository_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/repositories', options)
          command.request_representation = Google::Apis::CloudbuildV2::Repository::Representation
          command.request_object = repository_object
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['repositoryId'] = repository_id unless repository_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single repository.
        # @param [String] name
        #   Required. The name of the Repository to delete. Format: `projects/*/locations/*
        #   /connections/*/repositories/*`.
        # @param [String] etag
        #   The current etag of the repository. If an etag is provided and does not match
        #   the current etag of the repository, deletion will be blocked and an ABORTED
        #   error will be returned.
        # @param [Boolean] validate_only
        #   If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_repository(name, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch the list of branches or tags for a given repository.
        # @param [String] repository
        #   Required. The resource name of the repository in the format `projects/*/
        #   locations/*/connections/*/repositories/*`.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Default to 100.
        # @param [String] page_token
        #   Optional. Page start.
        # @param [String] ref_type
        #   Type of refs to fetch
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::FetchGitRefsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::FetchGitRefsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_repository_git_refs(repository, page_size: nil, page_token: nil, ref_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+repository}:fetchGitRefs', options)
          command.response_representation = Google::Apis::CloudbuildV2::FetchGitRefsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::FetchGitRefsResponse
          command.params['repository'] = repository unless repository.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['refType'] = ref_type unless ref_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single repository.
        # @param [String] name
        #   Required. The name of the Repository to retrieve. Format: `projects/*/
        #   locations/*/connections/*/repositories/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Repository] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Repository]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_repository(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV2::Repository::Representation
          command.response_class = Google::Apis::CloudbuildV2::Repository
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Repositories in a given connection.
        # @param [String] parent
        #   Required. The parent, which owns this collection of Repositories. Format: `
        #   projects/*/locations/*/connections/*`.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. Expressions
        #   must follow API improvement proposal [AIP-160](https://google.aip.dev/160). e.
        #   g. `remote_uri:"https://github.com*"`.
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   Page start.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::ListRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::ListRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_repositories(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/repositories', options)
          command.response_representation = Google::Apis::CloudbuildV2::ListRepositoriesResponse::Representation
          command.response_class = Google::Apis::CloudbuildV2::ListRepositoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @param [Google::Apis::CloudbuildV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudbuildV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::CloudbuildV2::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV2::Empty
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
        # @yieldparam result [Google::Apis::CloudbuildV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV2::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV2::Operation
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
