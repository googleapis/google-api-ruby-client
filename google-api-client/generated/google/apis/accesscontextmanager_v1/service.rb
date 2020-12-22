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
    module AccesscontextmanagerV1
      # Access Context Manager API
      #
      # An API for setting attribute based access control to requests to GCP services.
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
          super('https://accesscontextmanager.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Create an `AccessPolicy`. Fails if this organization already has a `
        # AccessPolicy`. The longrunning Operation will have a successful status once
        # the `AccessPolicy` has propagated to long-lasting storage. Syntactic and basic
        # semantic errors will be returned in `metadata` as a BadRequest proto.
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
        
        # Delete an AccessPolicy by resource name. The longrunning Operation will have a
        # successful status once the AccessPolicy has been removed from long-lasting
        # storage.
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
        
        # Get an AccessPolicy by name.
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
        
        # List all AccessPolicies under a container.
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
        
        # Update an AccessPolicy. The longrunning Operation from this RPC will have a
        # successful status once the changes to the AccessPolicy have propagated to long-
        # lasting storage. Syntactic and basic semantic errors will be returned in `
        # metadata` as a BadRequest proto.
        # @param [String] name
        #   Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/`
        #   policy_id``
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
        
        # Create an Access Level. The longrunning operation from this RPC will have a
        # successful status once the Access Level has propagated to long-lasting storage.
        # Access Levels containing errors will result in an error response for the
        # first error encountered.
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
        
        # Delete an Access Level by resource name. The longrunning operation from this
        # RPC will have a successful status once the Access Level has been removed from
        # long-lasting storage.
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
        
        # Get an Access Level by resource name.
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
        
        # List all Access Levels for an access policy.
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
        
        # Update an Access Level. The longrunning operation from this RPC will have a
        # successful status once the changes to the Access Level have propagated to long-
        # lasting storage. Access Levels containing errors will result in an error
        # response for the first error encountered.
        # @param [String] name
        #   Required. Resource name for the Access Level. The `short_name` component must
        #   begin with a letter and only include alphanumeric and '_'. Format: `
        #   accessPolicies/`policy_id`/accessLevels/`short_name``. The maximum length of
        #   the `short_name` component is 50 characters.
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
        
        # Replace all existing Access Levels in an Access Policy with the Access Levels
        # provided. This is done atomically. The longrunning operation from this RPC
        # will have a successful status once all replacements have propagated to long-
        # lasting storage. Replacements containing errors will result in an error
        # response for the first error encountered. Replacement will be cancelled on
        # error, existing Access Levels will not be affected. Operation.response field
        # will contain ReplaceAccessLevelsResponse. Removing Access Levels contained in
        # existing Service Perimeters will result in error.
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
        
        # Commit the dry-run spec for all the Service Perimeters in an Access Policy. A
        # commit operation on a Service Perimeter involves copying its `spec` field to
        # that Service Perimeter's `status` field. Only Service Perimeters with `
        # use_explicit_dry_run_spec` field set to true are affected by a commit
        # operation. The longrunning operation from this RPC will have a successful
        # status once the dry-run specs for all the Service Perimeters have been
        # committed. If a commit fails, it will cause the longrunning operation to
        # return an error response and the entire commit operation will be cancelled.
        # When successful, Operation.response field will contain
        # CommitServicePerimetersResponse. The `dry_run` and the `spec` fields will be
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
        
        # Create a Service Perimeter. The longrunning operation from this RPC will have
        # a successful status once the Service Perimeter has propagated to long-lasting
        # storage. Service Perimeters containing errors will result in an error response
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
        
        # Delete a Service Perimeter by resource name. The longrunning operation from
        # this RPC will have a successful status once the Service Perimeter has been
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
        
        # Get a Service Perimeter by resource name.
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
        
        # List all Service Perimeters for an access policy.
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
        
        # Update a Service Perimeter. The longrunning operation from this RPC will have
        # a successful status once the changes to the Service Perimeter have propagated
        # to long-lasting storage. Service Perimeter containing errors will result in an
        # error response for the first error encountered.
        # @param [String] name
        #   Required. Resource name for the ServicePerimeter. The `short_name` component
        #   must begin with a letter and only include alphanumeric and '_'. Format: `
        #   accessPolicies/`policy_id`/servicePerimeters/`short_name``
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
        
        # Replace all existing Service Perimeters in an Access Policy with the Service
        # Perimeters provided. This is done atomically. The longrunning operation from
        # this RPC will have a successful status once all replacements have propagated
        # to long-lasting storage. Replacements containing errors will result in an
        # error response for the first error encountered. Replacement will be cancelled
        # on error, existing Service Perimeters will not be affected. Operation.response
        # field will contain ReplaceServicePerimetersResponse.
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
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
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
        # will ignore it. Fails if a resource already exists with the same group_key.
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
        #   group_key cannot be changed, update_mask is required and must always be:
        #   update_mask ` paths: "access_levels" `
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
